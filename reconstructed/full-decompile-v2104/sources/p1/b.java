package p1;

/* JADX INFO: compiled from: DateException.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends java.lang.RuntimeException {
    public b(java.lang.Throwable th) {
        super(r1.a.a(th), th);
    }

    public b(java.lang.String str) {
        super(str);
    }

    public b(java.lang.String str, java.lang.Object... objArr) {
        super(b2.c.i(str, objArr));
    }

    public b(java.lang.String str, java.lang.Throwable th) {
        super(str, th);
    }
}
