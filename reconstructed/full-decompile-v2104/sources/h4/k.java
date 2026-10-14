package h4;

/* JADX INFO: compiled from: RequestLine.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k {
    public static java.lang.String a(c4.y yVar, java.net.Proxy.Type type) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(yVar.k());
        sb.append(' ');
        if (b(yVar, type)) {
            sb.append(yVar.m());
        } else {
            sb.append(c(yVar.m()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    public static boolean b(c4.y yVar, java.net.Proxy.Type type) {
        return !yVar.j() && type == java.net.Proxy.Type.HTTP;
    }

    public static java.lang.String c(c4.r rVar) {
        java.lang.String strK = rVar.k();
        java.lang.String strM = rVar.m();
        if (strM == null) {
            return strK;
        }
        return strK + '?' + strM;
    }
}
