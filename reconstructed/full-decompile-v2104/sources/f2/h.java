package f2;

/* JADX INFO: compiled from: JSONException.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h extends java.lang.RuntimeException {
    public h(java.lang.Throwable th) {
        super(r1.a.a(th), th);
    }

    public h(java.lang.String str) {
        super(str);
    }

    public h(java.lang.String str, java.lang.Object... objArr) {
        super(b2.c.i(str, objArr));
    }

    public h(java.lang.String str, java.lang.Throwable th) {
        super(str, th);
    }
}
