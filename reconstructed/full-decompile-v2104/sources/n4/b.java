package n4;

/* JADX INFO: compiled from: LogFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static n4.b f5259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f5260b;

    public static void a() {
        if (f5260b) {
            return;
        }
        f5260b = true;
        c();
    }

    public static synchronized void c() {
        try {
            java.lang.String property = java.lang.System.getProperty("snmp4j.LogFactory", null);
            if (property != null) {
                try {
                    f5259a = (n4.b) java.lang.Class.forName(property).newInstance();
                } catch (java.lang.ClassNotFoundException e5) {
                    throw new java.lang.RuntimeException(e5);
                } catch (java.lang.IllegalAccessException e6) {
                    throw new java.lang.RuntimeException(e6);
                } catch (java.lang.InstantiationException e7) {
                    throw new java.lang.RuntimeException(e7);
                }
            }
        } catch (java.lang.SecurityException e8) {
            throw new java.lang.RuntimeException(e8);
        }
    }

    public static n4.a d(java.lang.Class cls) {
        a();
        n4.b bVar = f5259a;
        return bVar == null ? n4.c.f5261a : bVar.b(cls.getName());
    }

    public n4.a b(java.lang.String str) {
        return n4.c.f5261a;
    }
}
