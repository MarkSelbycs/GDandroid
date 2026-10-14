package g3;

/* JADX INFO: compiled from: PlatformImplementations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: g3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PlatformImplementations.kt */
    public static final class C0055a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final g3.a.C0055a f4342a = new g3.a.C0055a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final java.lang.reflect.Method f4343b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final java.lang.reflect.Method f4344c;

        /* JADX WARN: Code duplicated, block: B:10:0x003b  */
        static {
            java.lang.reflect.Method method;
            java.lang.reflect.Method method2;
            boolean z4;
            java.lang.reflect.Method[] methods = java.lang.Throwable.class.getMethods();
            m3.k.d(methods, "throwableMethods");
            int length = methods.length;
            int i5 = 0;
            while (true) {
                method = null;
                if (i5 >= length) {
                    method2 = null;
                    break;
                }
                method2 = methods[i5];
                if (m3.k.a(method2.getName(), "addSuppressed")) {
                    java.lang.Class<?>[] parameterTypes = method2.getParameterTypes();
                    m3.k.d(parameterTypes, "it.parameterTypes");
                    if (m3.k.a(b3.k.r(parameterTypes), java.lang.Throwable.class)) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                } else {
                    z4 = false;
                }
                if (z4) {
                    break;
                } else {
                    i5++;
                }
            }
            f4343b = method2;
            for (java.lang.reflect.Method method3 : methods) {
                if (m3.k.a(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
            }
            f4344c = method;
        }
    }

    public void a(java.lang.Throwable th, java.lang.Throwable th2) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        m3.k.e(th, "cause");
        m3.k.e(th2, "exception");
        java.lang.reflect.Method method = g3.a.C0055a.f4343b;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public n3.c b() {
        return new n3.b();
    }
}
