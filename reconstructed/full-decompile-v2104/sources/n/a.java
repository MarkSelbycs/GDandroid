package n;

/* JADX INFO: compiled from: FontResourcesParserCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: n.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static class C0067a {
        public static int a(android.content.res.TypedArray typedArray, int i5) {
            return typedArray.getType(i5);
        }
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public interface b {
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class c implements n.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n.a.d[] f5215a;

        public c(n.a.d[] dVarArr) {
            this.f5215a = dVarArr;
        }

        public n.a.d[] a() {
            return this.f5215a;
        }
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f5216a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5217b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f5218c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.lang.String f5219d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f5220e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f5221f;

        public d(java.lang.String str, int i5, boolean z4, java.lang.String str2, int i6, int i7) {
            this.f5216a = str;
            this.f5217b = i5;
            this.f5218c = z4;
            this.f5219d = str2;
            this.f5220e = i6;
            this.f5221f = i7;
        }

        public java.lang.String a() {
            return this.f5216a;
        }

        public int b() {
            return this.f5221f;
        }

        public int c() {
            return this.f5220e;
        }

        public java.lang.String d() {
            return this.f5219d;
        }

        public int e() {
            return this.f5217b;
        }

        public boolean f() {
            return this.f5218c;
        }
    }

    /* JADX INFO: compiled from: FontResourcesParserCompat.java */
    public static final class e implements n.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final t.e f5222a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5223b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f5224c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.lang.String f5225d;

        public e(t.e eVar, int i5, int i6, java.lang.String str) {
            this.f5222a = eVar;
            this.f5224c = i5;
            this.f5223b = i6;
            this.f5225d = str;
        }

        public int a() {
            return this.f5224c;
        }

        public t.e b() {
            return this.f5222a;
        }

        public java.lang.String c() {
            return this.f5225d;
        }

        public int d() {
            return this.f5223b;
        }
    }

    public static int a(android.content.res.TypedArray typedArray, int i5) {
        return n.a.C0067a.a(typedArray, i5);
    }

    public static n.a.b b(org.xmlpull.v1.XmlPullParser xmlPullParser, android.content.res.Resources resources) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new org.xmlpull.v1.XmlPullParserException("No start tag found");
    }

    public static java.util.List<java.util.List<byte[]>> c(android.content.res.Resources resources, int i5) {
        if (i5 == 0) {
            return java.util.Collections.emptyList();
        }
        android.content.res.TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i5);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return java.util.Collections.emptyList();
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i6 = 0; i6 < typedArrayObtainTypedArray.length(); i6++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i6, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i5)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    public static n.a.b d(org.xmlpull.v1.XmlPullParser xmlPullParser, android.content.res.Resources resources) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    public static n.a.b e(org.xmlpull.v1.XmlPullParser xmlPullParser, android.content.res.Resources resources) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        android.content.res.TypedArray typedArrayObtainAttributes = resources.obtainAttributes(android.util.Xml.asAttributeSet(xmlPullParser), androidx.core.R.styleable.FontFamily);
        java.lang.String string = typedArrayObtainAttributes.getString(androidx.core.R.styleable.FontFamily_fontProviderAuthority);
        java.lang.String string2 = typedArrayObtainAttributes.getString(androidx.core.R.styleable.FontFamily_fontProviderPackage);
        java.lang.String string3 = typedArrayObtainAttributes.getString(androidx.core.R.styleable.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(androidx.core.R.styleable.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(androidx.core.R.styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(androidx.core.R.styleable.FontFamily_fontProviderFetchTimeout, 500);
        java.lang.String string4 = typedArrayObtainAttributes.getString(androidx.core.R.styleable.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            return new n.a.e(new t.e(string, string2, string3, c(resources, resourceId)), integer, integer2, string4);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new n.a.c((n.a.d[]) arrayList.toArray(new n.a.d[0]));
    }

    public static n.a.d f(org.xmlpull.v1.XmlPullParser xmlPullParser, android.content.res.Resources resources) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        android.content.res.TypedArray typedArrayObtainAttributes = resources.obtainAttributes(android.util.Xml.asAttributeSet(xmlPullParser), androidx.core.R.styleable.FontFamilyFont);
        int i5 = androidx.core.R.styleable.FontFamilyFont_fontWeight;
        if (!typedArrayObtainAttributes.hasValue(i5)) {
            i5 = androidx.core.R.styleable.FontFamilyFont_android_fontWeight;
        }
        int i6 = typedArrayObtainAttributes.getInt(i5, 400);
        int i7 = androidx.core.R.styleable.FontFamilyFont_fontStyle;
        if (!typedArrayObtainAttributes.hasValue(i7)) {
            i7 = androidx.core.R.styleable.FontFamilyFont_android_fontStyle;
        }
        boolean z4 = 1 == typedArrayObtainAttributes.getInt(i7, 0);
        int i8 = androidx.core.R.styleable.FontFamilyFont_ttcIndex;
        if (!typedArrayObtainAttributes.hasValue(i8)) {
            i8 = androidx.core.R.styleable.FontFamilyFont_android_ttcIndex;
        }
        int i9 = androidx.core.R.styleable.FontFamilyFont_fontVariationSettings;
        if (!typedArrayObtainAttributes.hasValue(i9)) {
            i9 = androidx.core.R.styleable.FontFamilyFont_android_fontVariationSettings;
        }
        java.lang.String string = typedArrayObtainAttributes.getString(i9);
        int i10 = typedArrayObtainAttributes.getInt(i8, 0);
        int i11 = androidx.core.R.styleable.FontFamilyFont_font;
        if (!typedArrayObtainAttributes.hasValue(i11)) {
            i11 = androidx.core.R.styleable.FontFamilyFont_android_font;
        }
        int resourceId = typedArrayObtainAttributes.getResourceId(i11, 0);
        java.lang.String string2 = typedArrayObtainAttributes.getString(i11);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new n.a.d(string2, i6, z4, string, i10, resourceId);
    }

    public static void g(org.xmlpull.v1.XmlPullParser xmlPullParser) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        int i5 = 1;
        while (i5 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i5++;
            } else if (next == 3) {
                i5--;
            }
        }
    }

    public static java.util.List<byte[]> h(java.lang.String[] strArr) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.String str : strArr) {
            arrayList.add(android.util.Base64.decode(str, 0));
        }
        return arrayList;
    }
}
