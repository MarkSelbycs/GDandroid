package r1;

/* JADX INFO: compiled from: UtilException.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c extends java.lang.RuntimeException {
    public c(java.lang.Throwable th) {
        super(r1.a.a(th), th);
    }

    public c(java.lang.String str, java.lang.Object... objArr) {
        super(b2.c.i(str, objArr));
    }

    public c(java.lang.Throwable th, java.lang.String str, java.lang.Object... objArr) {
        super(b2.c.i(str, objArr), th);
    }
}
