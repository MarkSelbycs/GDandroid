package o1;

/* JADX INFO: compiled from: URLConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class r0 extends n1.a<java.net.URL> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.net.URL c(java.lang.Object obj) {
        try {
            if (obj instanceof java.io.File) {
                return ((java.io.File) obj).toURI().toURL();
            }
            return obj instanceof java.net.URI ? ((java.net.URI) obj).toURL() : new java.net.URL(e(obj));
        } catch (java.lang.Exception unused) {
            return null;
        }
    }
}
