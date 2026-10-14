package y3;

/* JADX INFO: compiled from: StackTraceRecovery.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.StackTraceElement f6896a = new a.a().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.String f6897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.String f6898c;

    static {
        java.lang.Object objB;
        java.lang.Object objB2;
        try {
            a3.i.a aVar = a3.i.f116a;
            objB = a3.i.b(java.lang.Class.forName("f3.a").getCanonicalName());
        } catch (java.lang.Throwable th) {
            a3.i.a aVar2 = a3.i.f116a;
            objB = a3.i.b(a3.j.a(th));
        }
        if (a3.i.c(objB) != null) {
            objB = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        f6897b = (java.lang.String) objB;
        try {
            a3.i.a aVar3 = a3.i.f116a;
            objB2 = a3.i.b(y3.g0.class.getCanonicalName());
        } catch (java.lang.Throwable th2) {
            a3.i.a aVar4 = a3.i.f116a;
            objB2 = a3.i.b(a3.j.a(th2));
        }
        if (a3.i.c(objB2) != null) {
            objB2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
        f6898c = (java.lang.String) objB2;
    }

    public static final <E extends java.lang.Throwable> E a(E e5) {
        return e5;
    }
}
