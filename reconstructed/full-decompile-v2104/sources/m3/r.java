package m3;

/* JADX INFO: compiled from: Reflection.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m3.s f5195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final q3.b[] f5196b;

    static {
        m3.s sVar = null;
        try {
            sVar = (m3.s) java.lang.Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (java.lang.ClassCastException | java.lang.ClassNotFoundException | java.lang.IllegalAccessException | java.lang.InstantiationException unused) {
        }
        if (sVar == null) {
            sVar = new m3.s();
        }
        f5195a = sVar;
        f5196b = new q3.b[0];
    }

    public static q3.d a(m3.i iVar) {
        return f5195a.a(iVar);
    }

    public static q3.b b(java.lang.Class cls) {
        return f5195a.b(cls);
    }

    public static q3.c c(java.lang.Class cls) {
        return f5195a.c(cls, "");
    }

    public static q3.f d(m3.n nVar) {
        return f5195a.d(nVar);
    }

    public static java.lang.String e(m3.h hVar) {
        return f5195a.e(hVar);
    }

    public static java.lang.String f(m3.l lVar) {
        return f5195a.f(lVar);
    }
}
