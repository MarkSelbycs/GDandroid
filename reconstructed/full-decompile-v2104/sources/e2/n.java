package e2;

/* JADX INFO: compiled from: ModifierUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n {

    /* JADX INFO: compiled from: ModifierUtil.java */
    public enum a {
        PUBLIC(1),
        PRIVATE(2),
        PROTECTED(4),
        STATIC(8),
        FINAL(16),
        SYNCHRONIZED(32),
        VOLATILE(64),
        TRANSIENT(com.alibaba.fastjson.asm.Opcodes.IOR),
        NATIVE(256),
        ABSTRACT(1024),
        STRICT(2048);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f4091a;

        a(int i5) {
            this.f4091a = i5;
        }

        public int b() {
            return this.f4091a;
        }
    }

    public static boolean a(java.lang.reflect.Field field, e2.n.a... aVarArr) {
        return (field == null || e2.c.u(aVarArr) || (field.getModifiers() & g(aVarArr)) == 0) ? false : true;
    }

    public static boolean b(java.lang.reflect.Method method, e2.n.a... aVarArr) {
        return (method == null || e2.c.u(aVarArr) || (method.getModifiers() & g(aVarArr)) == 0) ? false : true;
    }

    public static boolean c(java.lang.reflect.Method method) {
        return b(method, e2.n.a.ABSTRACT);
    }

    public static boolean d(java.lang.reflect.Field field) {
        return a(field, e2.n.a.PUBLIC);
    }

    public static boolean e(java.lang.reflect.Field field) {
        return a(field, e2.n.a.STATIC);
    }

    public static boolean f(java.lang.reflect.Method method) {
        return b(method, e2.n.a.STATIC);
    }

    public static int g(e2.n.a... aVarArr) {
        int iB = aVarArr[0].b();
        for (int i5 = 1; i5 < aVarArr.length; i5++) {
            iB |= aVarArr[i5].b();
        }
        return iB;
    }
}
