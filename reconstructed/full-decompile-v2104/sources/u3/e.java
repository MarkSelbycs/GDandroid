package u3;

/* JADX INFO: compiled from: HandlerDispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u3.d f6378a;
    private static volatile android.view.Choreographer choreographer;

    static {
        java.lang.Object objB;
        try {
            a3.i.a aVar = a3.i.f116a;
            objB = a3.i.b(new u3.c(a(android.os.Looper.getMainLooper(), true), null, 2, null));
        } catch (java.lang.Throwable th) {
            a3.i.a aVar2 = a3.i.f116a;
            objB = a3.i.b(a3.j.a(th));
        }
        f6378a = (u3.d) (a3.i.e(objB) ? null : objB);
    }

    public static final android.os.Handler a(android.os.Looper looper, boolean z4) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        if (!z4) {
            return new android.os.Handler(looper);
        }
        java.lang.Object objInvoke = android.os.Handler.class.getDeclaredMethod("createAsync", android.os.Looper.class).invoke(null, looper);
        m3.k.c(objInvoke, "null cannot be cast to non-null type android.os.Handler");
        return (android.os.Handler) objInvoke;
    }
}
