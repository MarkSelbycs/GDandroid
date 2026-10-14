package y3;

/* JADX INFO: compiled from: FastServiceLoader.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f6917a;

    static {
        java.lang.Object objB;
        try {
            a3.i.a aVar = a3.i.f116a;
            objB = a3.i.b(java.lang.Class.forName("android.os.Build"));
        } catch (java.lang.Throwable th) {
            a3.i.a aVar2 = a3.i.f116a;
            objB = a3.i.b(a3.j.a(th));
        }
        f6917a = a3.i.f(objB);
    }

    public static final boolean a() {
        return f6917a;
    }
}
