package t;

/* JADX INFO: compiled from: FontRequest.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f6114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.String f6115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.String f6116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.List<java.util.List<byte[]>> f6117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6118e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.lang.String f6119f;

    public e(java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.List<java.util.List<byte[]>> list) {
        this.f6114a = (java.lang.String) v.h.b(str);
        this.f6115b = (java.lang.String) v.h.b(str2);
        this.f6116c = (java.lang.String) v.h.b(str3);
        this.f6117d = (java.util.List) v.h.b(list);
        this.f6119f = a(str, str2, str3);
    }

    public final java.lang.String a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        return str + "-" + str2 + "-" + str3;
    }

    public java.util.List<java.util.List<byte[]>> b() {
        return this.f6117d;
    }

    public int c() {
        return this.f6118e;
    }

    public java.lang.String d() {
        return this.f6119f;
    }

    public java.lang.String e() {
        return this.f6114a;
    }

    public java.lang.String f() {
        return this.f6115b;
    }

    public java.lang.String g() {
        return this.f6116c;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f6114a + ", mProviderPackage: " + this.f6115b + ", mQuery: " + this.f6116c + ", mCertificates:");
        for (int i5 = 0; i5 < this.f6117d.size(); i5++) {
            sb.append(" [");
            java.util.List<byte[]> list = this.f6117d.get(i5);
            for (int i6 = 0; i6 < list.size(); i6++) {
                sb.append(" \"");
                sb.append(android.util.Base64.encodeToString(list.get(i6), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f6118e);
        return sb.toString();
    }
}
