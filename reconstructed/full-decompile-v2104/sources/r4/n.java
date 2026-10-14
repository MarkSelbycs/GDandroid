package r4;

/* JADX INFO: compiled from: SshAddress.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n extends r4.o {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final n4.a f5994r = n4.b.d(r4.n.class);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.lang.String f5995p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public java.lang.String f5996q;

    @Override // r4.o, r4.r, r4.h, r4.a, r4.u
    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        r4.n nVar = (r4.n) obj;
        if (!I().equals(nVar.I()) || !this.f5995p.equals(nVar.f5995p)) {
            return false;
        }
        java.lang.String str = this.f5996q;
        java.lang.String str2 = nVar.f5996q;
        return str == null ? str2 == null : str.equals(str2);
    }

    @Override // r4.r, r4.h, r4.b
    public boolean h(java.lang.String str) {
        java.lang.String strSubstring;
        java.lang.String strSubstring2;
        int i5;
        int i6;
        try {
            int iLastIndexOf = str.lastIndexOf(58);
            java.lang.String strSubstring3 = null;
            if (iLastIndexOf < 0 || (i6 = iLastIndexOf + 1) >= str.length()) {
                strSubstring = str;
                strSubstring2 = null;
            } else {
                strSubstring = str.substring(0, iLastIndexOf);
                strSubstring2 = str.substring(i6);
            }
            int iIndexOf = strSubstring.indexOf(64);
            if (iIndexOf > 0 && (i5 = iIndexOf + 1) < strSubstring.length()) {
                strSubstring3 = strSubstring.substring(0, iIndexOf);
                strSubstring = strSubstring.substring(i5);
            }
            try {
                M(java.net.InetAddress.getByName(strSubstring));
                this.f6001h = java.lang.Integer.parseInt(strSubstring2);
                this.f5996q = strSubstring3;
                return true;
            } catch (java.net.UnknownHostException unused) {
                return false;
            }
        } catch (java.lang.Exception e5) {
            f5994r.h("Failed to parse address '" + str + "' as SSH address: " + e5.getMessage(), e5);
            return false;
        }
    }

    @Override // r4.r, r4.h, r4.a
    public int hashCode() {
        return (super.hashCode() * 31) + this.f5995p.hashCode();
    }

    @Override // r4.r, r4.h, r4.a, r4.u
    public java.lang.String toString() {
        return "SshAddress[addressURI='" + this.f5995p + "']";
    }
}
