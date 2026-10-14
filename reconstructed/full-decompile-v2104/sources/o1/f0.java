package o1;

/* JADX INFO: compiled from: PathConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f0 extends n1.a<java.nio.file.Path> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.nio.file.Path c(java.lang.Object obj) {
        try {
            if (obj instanceof java.net.URI) {
                return java.nio.file.Paths.get((java.net.URI) obj);
            }
            if (obj instanceof java.net.URL) {
                return java.nio.file.Paths.get(((java.net.URL) obj).toURI());
            }
            return obj instanceof java.io.File ? ((java.io.File) obj).toPath() : java.nio.file.Paths.get(e(obj), new java.lang.String[0]);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }
}
