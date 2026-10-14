package okio;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class Options extends java.util.AbstractList<okio.ByteString> implements java.util.RandomAccess {
    public final okio.ByteString[] byteStrings;

    private Options(okio.ByteString[] byteStringArr) {
        this.byteStrings = byteStringArr;
    }

    public static okio.Options of(okio.ByteString... byteStringArr) {
        return new okio.Options((okio.ByteString[]) byteStringArr.clone());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.byteStrings.length;
    }

    @Override // java.util.AbstractList, java.util.List
    public okio.ByteString get(int i5) {
        return this.byteStrings[i5];
    }
}
