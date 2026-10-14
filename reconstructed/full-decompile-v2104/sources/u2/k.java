package u2;

/* JADX INFO: compiled from: UnsafeAllocator.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class k {

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    public static class a extends u2.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Method f6369a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f6370b;

        public a(java.lang.reflect.Method method, java.lang.Object obj) {
            this.f6369a = method;
            this.f6370b = obj;
        }

        @Override // u2.k
        public <T> T b(java.lang.Class<T> cls) throws java.lang.Exception {
            return (T) this.f6369a.invoke(this.f6370b, cls);
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    public static class b extends u2.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Method f6371a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f6372b;

        public b(java.lang.reflect.Method method, int i5) {
            this.f6371a = method;
            this.f6372b = i5;
        }

        @Override // u2.k
        public <T> T b(java.lang.Class<T> cls) throws java.lang.Exception {
            return (T) this.f6371a.invoke(null, cls, java.lang.Integer.valueOf(this.f6372b));
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    public static class c extends u2.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Method f6373a;

        public c(java.lang.reflect.Method method) {
            this.f6373a = method;
        }

        @Override // u2.k
        public <T> T b(java.lang.Class<T> cls) throws java.lang.Exception {
            return (T) this.f6373a.invoke(null, cls, java.lang.Object.class);
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    public static class d extends u2.k {
        @Override // u2.k
        public <T> T b(java.lang.Class<T> cls) {
            throw new java.lang.UnsupportedOperationException("Cannot allocate " + cls);
        }
    }

    public static u2.k a() {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("sun.misc.Unsafe");
            java.lang.reflect.Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new u2.k.a(cls.getMethod("allocateInstance", java.lang.Class.class), declaredField.get(null));
        } catch (java.lang.Exception unused) {
            try {
                try {
                    java.lang.reflect.Method declaredMethod = java.io.ObjectStreamClass.class.getDeclaredMethod("getConstructorId", java.lang.Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((java.lang.Integer) declaredMethod.invoke(null, java.lang.Object.class)).intValue();
                    java.lang.reflect.Method declaredMethod2 = java.io.ObjectStreamClass.class.getDeclaredMethod("newInstance", java.lang.Class.class, java.lang.Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new u2.k.b(declaredMethod2, iIntValue);
                } catch (java.lang.Exception unused2) {
                    return new u2.k.d();
                }
            } catch (java.lang.Exception unused3) {
                java.lang.reflect.Method declaredMethod3 = java.io.ObjectInputStream.class.getDeclaredMethod("newInstance", java.lang.Class.class, java.lang.Class.class);
                declaredMethod3.setAccessible(true);
                return new u2.k.c(declaredMethod3);
            }
        }
    }

    public abstract <T> T b(java.lang.Class<T> cls) throws java.lang.Exception;
}
