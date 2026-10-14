package o1;

/* JADX INFO: compiled from: URIConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q0 extends n1.a<java.net.URI> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.net.URI c(java.lang.Object obj) {
        try {
            if (obj instanceof java.io.File) {
                return ((java.io.File) obj).toURI();
            }
            return obj instanceof java.net.URL ? ((java.net.URL) obj).toURI() : new java.net.URI(e(obj));
        } catch (java.lang.Exception unused) {
            return null;
        }
    }
}
