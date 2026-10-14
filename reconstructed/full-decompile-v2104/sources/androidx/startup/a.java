package androidx.startup;

/* JADX INFO: compiled from: AppInitializer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile androidx.startup.a f2461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.Object f2462e = new java.lang.Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.content.Context f2465c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Set<java.lang.Class<? extends i0.a<?>>> f2464b = new java.util.HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.Map<java.lang.Class<?>, java.lang.Object> f2463a = new java.util.HashMap();

    public a(android.content.Context context) {
        this.f2465c = context.getApplicationContext();
    }

    public static androidx.startup.a d(android.content.Context context) {
        if (f2461d == null) {
            synchronized (f2462e) {
                if (f2461d == null) {
                    f2461d = new androidx.startup.a(context);
                }
            }
        }
        return f2461d;
    }

    public void a() {
        try {
            try {
                k0.a.a("Startup");
                b(this.f2465c.getPackageManager().getProviderInfo(new android.content.ComponentName(this.f2465c.getPackageName(), androidx.startup.InitializationProvider.class.getName()), com.alibaba.fastjson.asm.Opcodes.IOR).metaData);
                k0.a.b();
            } catch (android.content.pm.PackageManager.NameNotFoundException e5) {
                throw new i0.b(e5);
            }
        } catch (java.lang.Throwable th) {
            k0.a.b();
            throw th;
        }
    }

    public void b(android.os.Bundle bundle) {
        java.lang.String string = this.f2465c.getString(androidx.startup.R.string.androidx_startup);
        if (bundle != null) {
            try {
                java.util.HashSet hashSet = new java.util.HashSet();
                for (java.lang.String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        java.lang.Class<?> cls = java.lang.Class.forName(str);
                        if (i0.a.class.isAssignableFrom(cls)) {
                            this.f2464b.add((java.lang.Class<? extends i0.a<?>>) cls);
                        }
                    }
                }
                java.util.Iterator<java.lang.Class<? extends i0.a<?>>> it = this.f2464b.iterator();
                while (it.hasNext()) {
                    c(it.next(), hashSet);
                }
            } catch (java.lang.ClassNotFoundException e5) {
                throw new i0.b(e5);
            }
        }
    }

    public final <T> T c(java.lang.Class<? extends i0.a<?>> cls, java.util.Set<java.lang.Class<?>> set) {
        T t5;
        if (k0.a.d()) {
            try {
                k0.a.a(cls.getSimpleName());
            } catch (java.lang.Throwable th) {
                k0.a.b();
                throw th;
            }
        }
        if (set.contains(cls)) {
            throw new java.lang.IllegalStateException(java.lang.String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
        }
        if (this.f2463a.containsKey(cls)) {
            t5 = (T) this.f2463a.get(cls);
        } else {
            set.add(cls);
            try {
                i0.a<?> aVarNewInstance = cls.getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
                java.util.List<java.lang.Class<? extends i0.a<?>>> listA = aVarNewInstance.a();
                if (!listA.isEmpty()) {
                    for (java.lang.Class<? extends i0.a<?>> cls2 : listA) {
                        if (!this.f2463a.containsKey(cls2)) {
                            c(cls2, set);
                        }
                    }
                }
                t5 = (T) aVarNewInstance.b(this.f2465c);
                set.remove(cls);
                this.f2463a.put(cls, t5);
            } catch (java.lang.Throwable th2) {
                throw new i0.b(th2);
            }
        }
        k0.a.b();
        return t5;
    }
}
