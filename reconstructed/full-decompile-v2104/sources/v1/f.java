package v1;

/* JADX INFO: compiled from: Console.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f {
    public static java.lang.String a(int i5) {
        return b2.c.B("{}", i5, " ");
    }

    public static void b(java.lang.String str, java.lang.Object... objArr) {
        if (e2.c.u(objArr) || b2.c.c(str, "{}")) {
            d(str, objArr);
        } else {
            d(a(objArr.length + 1), e2.c.r(objArr, 0, str));
        }
    }

    public static void c(java.lang.Throwable th, java.lang.String str, java.lang.Object... objArr) {
        java.lang.System.err.println(b2.c.i(str, objArr));
        if (th != null) {
            th.printStackTrace(java.lang.System.err);
            java.lang.System.err.flush();
        }
    }

    public static void d(java.lang.String str, java.lang.Object... objArr) {
        c(null, str, objArr);
    }
}
