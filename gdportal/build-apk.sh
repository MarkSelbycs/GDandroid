#!/usr/bin/env bash
# build-apk.sh — 一键打包 gdportal 轻量拨号 APK
# 依赖: D:/worksoftware/android-sdk (build-tools 34 + platform 34), JDK, uber-apk-signer
set -e
cd "$(dirname "$0")"
SDK="D:/worksoftware/android-sdk"
BT="$SDK/build-tools/35.0.0"
PLAT="$SDK/platforms/android-34/android.jar"
JDK="D:/worksoftware/jdk/bin"
JAVAC="$JDK/javac.exe"
KS="$HOME/.android/debug.keystore"
KS=$(cygpath -w "$KS" 2>/dev/null || echo "$KS")
OUT=out
rm -rf $OUT && mkdir -p $OUT/classes $OUT/dex $OUT/jni

echo "[1/6] javac (core + android)"
find src android-src -name "*.java" > $OUT/sources.txt
"$JAVAC" -nowarn -d $OUT/classes -encoding UTF-8 -cp "$PLAT" "@$OUT/sources.txt" 2>/dev/null

echo "[2/6] d8 -> dex"
MSYS_NO_PATHCONV=1 "$BT/d8.bat" --lib "$PLAT" --release --min-api 28 --output $OUT/dex \
  $(find $OUT/classes -name '*.class')

echo "[3/6] aapt2 link (manifest only, no res)"
"$BT/aapt2.exe" link --manifest android-src/AndroidManifest.xml -I "$PLAT" \
  -o $OUT/base.apk --auto-add-overlay

echo "[4/6] native libs"
mkdir -p $OUT/jni/arm64-v8a $OUT/jni/armeabi-v7a
SRC=../reconstructed/native/lib
[ -f "$SRC/arm64-v8a/libdaproxy.so" ] && cp "$SRC/arm64-v8a/libdaproxy.so" $OUT/jni/arm64-v8a/
[ -f "$SRC/armeabi-v7a/libdaproxy.so" ] && cp "$SRC/armeabi-v7a/libdaproxy.so" $OUT/jni/armeabi-v7a/

echo "[5/6] assemble apk"
python -I -X utf8 - "$OUT" <<'PY'
import zipfile, sys, os
out = sys.argv[1]
z = zipfile.ZipFile(os.path.join(out, 'gdportal-unsigned.apk'), 'w', zipfile.ZIP_DEFLATED)
base = zipfile.ZipFile(os.path.join(out, 'base.apk'))
for i in base.infolist():
    data = base.read(i.filename)
    # Android 11+: resources.arsc must be STORED (uncompressed) — 否则 -124 拒装
    if i.filename == 'resources.arsc':
        zi = zipfile.ZipInfo(i.filename)
        zi.compress_type = zipfile.ZIP_STORED
        zi.external_attr = i.external_attr
        z.writestr(zi, data)
    else:
        z.writestr(i, data)
for f in os.listdir(os.path.join(out, 'dex')):
    if f.endswith('.dex'):
        z.write(os.path.join(out, 'dex', f), f)
for abi in os.listdir(os.path.join(out, 'jni')):
    for so in os.listdir(os.path.join(out, 'jni', abi)):
        z.write(os.path.join(out, 'jni', abi, so), f'lib/{abi}/{so}')
z.close()
print('assembled', os.path.getsize(os.path.join(out, 'gdportal-unsigned.apk')), 'bytes')
PY

echo "[6/6] zipalign + sign"
"$BT/zipalign.exe" -f 4 $OUT/gdportal-unsigned.apk $OUT/gdportal-aligned.apk
"$BT/apksigner.bat" sign --ks "$KS" \
  --ks-pass pass:android --key-pass pass:android \
  --out $OUT/gdportal.apk $OUT/gdportal-aligned.apk 2>&1 | tail -2 || \
java -jar D:/worksoftware/uber-apk-signer/uber-apk-signer.jar -a $OUT/gdportal-aligned.apk -o $OUT/signed

echo "DONE -> $OUT/gdportal.apk"
