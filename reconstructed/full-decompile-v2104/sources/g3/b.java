package g3;

/* JADX INFO: compiled from: PlatformImplementations.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g3.a f4345a;

    static {
        g3.a aVar;
        try {
            java.lang.Object objNewInstance = i3.a.class.newInstance();
            m3.k.d(objNewInstance, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    if (objNewInstance == null) {
                        throw new java.lang.NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    aVar = (g3.a) objNewInstance;
                    f4345a = aVar;
                } catch (java.lang.ClassNotFoundException unused) {
                    java.lang.Object objNewInstance2 = h3.a.class.newInstance();
                    m3.k.d(objNewInstance2, "forName(\"kotlin.internal…entations\").newInstance()");
                    try {
                        try {
                            if (objNewInstance2 == null) {
                                throw new java.lang.NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                            }
                            aVar = (g3.a) objNewInstance2;
                        } catch (java.lang.ClassCastException e5) {
                            java.lang.ClassLoader classLoader = objNewInstance2.getClass().getClassLoader();
                            java.lang.ClassLoader classLoader2 = g3.a.class.getClassLoader();
                            if (m3.k.a(classLoader, classLoader2)) {
                                throw e5;
                            }
                            throw new java.lang.ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader + ", base type classloader: " + classLoader2, e5);
                        }
                    } catch (java.lang.ClassNotFoundException unused2) {
                        aVar = new g3.a();
                    }
                }
            } catch (java.lang.ClassCastException e6) {
                java.lang.ClassLoader classLoader3 = objNewInstance.getClass().getClassLoader();
                java.lang.ClassLoader classLoader4 = g3.a.class.getClassLoader();
                if (m3.k.a(classLoader3, classLoader4)) {
                    throw e6;
                }
                throw new java.lang.ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader3 + ", base type classloader: " + classLoader4, e6);
            }
        } catch (java.lang.ClassNotFoundException unused3) {
            java.lang.Object objNewInstance3 = java.lang.Class.forName("kotlin.internal.JRE8PlatformImplementations").newInstance();
            m3.k.d(objNewInstance3, "forName(\"kotlin.internal…entations\").newInstance()");
            try {
                try {
                    if (objNewInstance3 == null) {
                        throw new java.lang.NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    aVar = (g3.a) objNewInstance3;
                } catch (java.lang.ClassCastException e7) {
                    java.lang.ClassLoader classLoader5 = objNewInstance3.getClass().getClassLoader();
                    java.lang.ClassLoader classLoader6 = g3.a.class.getClassLoader();
                    if (m3.k.a(classLoader5, classLoader6)) {
                        throw e7;
                    }
                    throw new java.lang.ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader5 + ", base type classloader: " + classLoader6, e7);
                }
            } catch (java.lang.ClassNotFoundException unused4) {
                java.lang.Object objNewInstance4 = java.lang.Class.forName("kotlin.internal.JRE7PlatformImplementations").newInstance();
                m3.k.d(objNewInstance4, "forName(\"kotlin.internal…entations\").newInstance()");
                try {
                    if (objNewInstance4 == null) {
                        throw new java.lang.NullPointerException("null cannot be cast to non-null type kotlin.internal.PlatformImplementations");
                    }
                    aVar = (g3.a) objNewInstance4;
                } catch (java.lang.ClassCastException e8) {
                    java.lang.ClassLoader classLoader7 = objNewInstance4.getClass().getClassLoader();
                    java.lang.ClassLoader classLoader8 = g3.a.class.getClassLoader();
                    if (m3.k.a(classLoader7, classLoader8)) {
                        throw e8;
                    }
                    throw new java.lang.ClassNotFoundException("Instance class was loaded from a different classloader: " + classLoader7 + ", base type classloader: " + classLoader8, e8);
                }
            }
        }
    }
}
