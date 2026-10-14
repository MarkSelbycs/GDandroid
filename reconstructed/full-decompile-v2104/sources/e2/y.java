package e2;

/* JADX INFO: compiled from: SerializeUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class y {
    public static <T> T a(T t5) {
        if (t5 instanceof java.io.Serializable) {
            return (T) b(c(t5));
        }
        return null;
    }

    public static <T> T b(byte[] bArr) {
        return (T) t1.d.n(new java.io.ByteArrayInputStream(bArr));
    }

    public static <T> byte[] c(T t5) {
        if (!(t5 instanceof java.io.Serializable)) {
            return null;
        }
        t1.a aVar = new t1.a();
        t1.d.r(aVar, false, (java.io.Serializable) t5);
        return aVar.c();
    }
}
