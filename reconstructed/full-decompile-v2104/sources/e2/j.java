package e2;

/* JADX INFO: compiled from: ClassLoaderUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.util.Map<java.lang.String, java.lang.Class<?>> f4078a = new a2.u(32);

    static {
        java.util.ArrayList<java.lang.Class<?>> arrayList = new java.util.ArrayList(32);
        arrayList.addAll(n1.b.f5247r.keySet());
        arrayList.add(boolean[].class);
        arrayList.add(byte[].class);
        arrayList.add(char[].class);
        arrayList.add(double[].class);
        arrayList.add(float[].class);
        arrayList.add(int[].class);
        arrayList.add(long[].class);
        arrayList.add(short[].class);
        arrayList.add(java.lang.Void.TYPE);
        for (java.lang.Class<?> cls : arrayList) {
            f4078a.put(cls.getName(), cls);
        }
    }

    public static java.lang.Class<?> b(java.lang.String str, java.lang.ClassLoader classLoader, boolean z4) {
        if (str.endsWith("[]")) {
            return java.lang.reflect.Array.newInstance(g(str.substring(0, str.length() - 2), classLoader, z4), 0).getClass();
        }
        if (str.startsWith("[L") && str.endsWith(";")) {
            return java.lang.reflect.Array.newInstance(g(str.substring(2, str.length() - 1), classLoader, z4), 0).getClass();
        }
        if (str.startsWith("[")) {
            return java.lang.reflect.Array.newInstance(g(str.substring(1), classLoader, z4), 0).getClass();
        }
        if (classLoader == null) {
            classLoader = c();
        }
        try {
            return java.lang.Class.forName(str, z4, classLoader);
        } catch (java.lang.ClassNotFoundException e5) {
            java.lang.Class<?> clsJ = j(str, classLoader, z4);
            if (clsJ != null) {
                return clsJ;
            }
            throw new r1.c(e5);
        }
    }

    public static java.lang.ClassLoader c() {
        java.lang.ClassLoader classLoaderD = d();
        if (classLoaderD != null) {
            return classLoaderD;
        }
        java.lang.ClassLoader classLoader = e2.j.class.getClassLoader();
        return classLoader == null ? e() : classLoader;
    }

    public static java.lang.ClassLoader d() {
        return java.lang.System.getSecurityManager() == null ? java.lang.Thread.currentThread().getContextClassLoader() : (java.lang.ClassLoader) java.security.AccessController.doPrivileged(new java.security.PrivilegedAction() { // from class: e2.h
            @Override // java.security.PrivilegedAction
            public final java.lang.Object run() {
                return e2.j.f();
            }
        });
    }

    public static java.lang.ClassLoader e() {
        return java.lang.System.getSecurityManager() == null ? java.lang.ClassLoader.getSystemClassLoader() : (java.lang.ClassLoader) java.security.AccessController.doPrivileged(new java.security.PrivilegedAction() { // from class: e2.i
            @Override // java.security.PrivilegedAction
            public final java.lang.Object run() {
                return java.lang.ClassLoader.getSystemClassLoader();
            }
        });
    }

    public static /* synthetic */ java.lang.ClassLoader f() {
        return java.lang.Thread.currentThread().getContextClassLoader();
    }

    public static java.lang.Class<?> g(java.lang.String str, java.lang.ClassLoader classLoader, boolean z4) throws r1.c {
        v1.e.q(str, "Name must not be null", new java.lang.Object[0]);
        java.lang.String strReplace = str.replace('/', '.');
        if (classLoader == null) {
            classLoader = c();
        }
        java.lang.Class<?> clsI = i(strReplace);
        return clsI == null ? b(strReplace, classLoader, z4) : clsI;
    }

    public static java.lang.Class<?> h(java.lang.String str, boolean z4) throws r1.c {
        return g(str, null, z4);
    }

    public static java.lang.Class<?> i(java.lang.String str) {
        if (b2.c.s(str)) {
            java.lang.String strTrim = str.trim();
            if (strTrim.length() <= 8) {
                return f4078a.get(strTrim);
            }
        }
        return null;
    }

    public static java.lang.Class<?> j(java.lang.String str, java.lang.ClassLoader classLoader, boolean z4) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf <= 0) {
            return null;
        }
        try {
            return java.lang.Class.forName(str.substring(0, iLastIndexOf) + '$' + str.substring(iLastIndexOf + 1), z4, classLoader);
        } catch (java.lang.ClassNotFoundException unused) {
            return null;
        }
    }
}
