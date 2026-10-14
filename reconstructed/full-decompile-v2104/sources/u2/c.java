package u2;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.Map<java.lang.reflect.Type, s2.f<?>> f6301a;

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class a<T> implements u2.h<T> {
        public a() {
        }

        @Override // u2.h
        public T a() {
            return (T) new java.util.concurrent.ConcurrentHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class b<T> implements u2.h<T> {
        public b() {
        }

        @Override // u2.h
        public T a() {
            return (T) new java.util.TreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: u2.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class C0087c<T> implements u2.h<T> {
        public C0087c() {
        }

        @Override // u2.h
        public T a() {
            return (T) new java.util.LinkedHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class d<T> implements u2.h<T> {
        public d() {
        }

        @Override // u2.h
        public T a() {
            return (T) new u2.g();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class e<T> implements u2.h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u2.k f6306a = u2.k.a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.Class f6307b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Type f6308c;

        public e(java.lang.Class cls, java.lang.reflect.Type type) {
            this.f6307b = cls;
            this.f6308c = type;
        }

        @Override // u2.h
        public T a() {
            try {
                return (T) this.f6306a.b(this.f6307b);
            } catch (java.lang.Exception e5) {
                throw new java.lang.RuntimeException("Unable to invoke no-args constructor for " + this.f6308c + ". Register an InstanceCreator with Gson for this type may fix this problem.", e5);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class f<T> implements u2.h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s2.f f6310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Type f6311b;

        public f(s2.f fVar, java.lang.reflect.Type type) {
            this.f6310a = fVar;
            this.f6311b = type;
        }

        @Override // u2.h
        public T a() {
            return (T) this.f6310a.a(this.f6311b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class g<T> implements u2.h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s2.f f6313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Type f6314b;

        public g(s2.f fVar, java.lang.reflect.Type type) {
            this.f6313a = fVar;
            this.f6314b = type;
        }

        @Override // u2.h
        public T a() {
            return (T) this.f6313a.a(this.f6314b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class h<T> implements u2.h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Constructor f6316a;

        public h(java.lang.reflect.Constructor constructor) {
            this.f6316a = constructor;
        }

        @Override // u2.h
        public T a() {
            try {
                return (T) this.f6316a.newInstance(null);
            } catch (java.lang.IllegalAccessException e5) {
                throw new java.lang.AssertionError(e5);
            } catch (java.lang.InstantiationException e6) {
                throw new java.lang.RuntimeException("Failed to invoke " + this.f6316a + " with no args", e6);
            } catch (java.lang.reflect.InvocationTargetException e7) {
                throw new java.lang.RuntimeException("Failed to invoke " + this.f6316a + " with no args", e7.getTargetException());
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class i<T> implements u2.h<T> {
        public i() {
        }

        @Override // u2.h
        public T a() {
            return (T) new java.util.TreeSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class j<T> implements u2.h<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Type f6319a;

        public j(java.lang.reflect.Type type) {
            this.f6319a = type;
        }

        @Override // u2.h
        public T a() {
            java.lang.reflect.Type type = this.f6319a;
            if (!(type instanceof java.lang.reflect.ParameterizedType)) {
                throw new s2.j("Invalid EnumSet type: " + this.f6319a.toString());
            }
            java.lang.reflect.Type type2 = ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof java.lang.Class) {
                return (T) java.util.EnumSet.noneOf((java.lang.Class) type2);
            }
            throw new s2.j("Invalid EnumSet type: " + this.f6319a.toString());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class k<T> implements u2.h<T> {
        public k() {
        }

        @Override // u2.h
        public T a() {
            return (T) new java.util.LinkedHashSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class l<T> implements u2.h<T> {
        public l() {
        }

        @Override // u2.h
        public T a() {
            return (T) new java.util.LinkedList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class m<T> implements u2.h<T> {
        public m() {
        }

        @Override // u2.h
        public T a() {
            return (T) new java.util.ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    public class n<T> implements u2.h<T> {
        public n() {
        }

        @Override // u2.h
        public T a() {
            return (T) new java.util.concurrent.ConcurrentSkipListMap();
        }
    }

    public c(java.util.Map<java.lang.reflect.Type, s2.f<?>> map) {
        this.f6301a = map;
    }

    public <T> u2.h<T> a(x2.a<T> aVar) {
        java.lang.reflect.Type typeE = aVar.e();
        java.lang.Class<? super T> clsC = aVar.c();
        s2.f<?> fVar = this.f6301a.get(typeE);
        if (fVar != null) {
            return new u2.c.f(fVar, typeE);
        }
        s2.f<?> fVar2 = this.f6301a.get(clsC);
        if (fVar2 != null) {
            return new u2.c.g(fVar2, typeE);
        }
        u2.h<T> hVarB = b(clsC);
        if (hVarB != null) {
            return hVarB;
        }
        u2.h<T> hVarC = c(typeE, clsC);
        return hVarC != null ? hVarC : d(typeE, clsC);
    }

    public final <T> u2.h<T> b(java.lang.Class<? super T> cls) {
        try {
            java.lang.reflect.Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new java.lang.Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new u2.c.h(declaredConstructor);
        } catch (java.lang.NoSuchMethodException unused) {
            return null;
        }
    }

    public final <T> u2.h<T> c(java.lang.reflect.Type type, java.lang.Class<? super T> cls) {
        if (java.util.Collection.class.isAssignableFrom(cls)) {
            if (java.util.SortedSet.class.isAssignableFrom(cls)) {
                return new u2.c.i();
            }
            if (java.util.EnumSet.class.isAssignableFrom(cls)) {
                return new u2.c.j(type);
            }
            if (java.util.Set.class.isAssignableFrom(cls)) {
                return new u2.c.k();
            }
            return java.util.Queue.class.isAssignableFrom(cls) ? new u2.c.l() : new u2.c.m();
        }
        if (!java.util.Map.class.isAssignableFrom(cls)) {
            return null;
        }
        if (java.util.concurrent.ConcurrentNavigableMap.class.isAssignableFrom(cls)) {
            return new u2.c.n();
        }
        if (java.util.concurrent.ConcurrentMap.class.isAssignableFrom(cls)) {
            return new u2.c.a();
        }
        if (java.util.SortedMap.class.isAssignableFrom(cls)) {
            return new u2.c.b();
        }
        return (!(type instanceof java.lang.reflect.ParameterizedType) || java.lang.String.class.isAssignableFrom(x2.a.b(((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0]).c())) ? new u2.c.d() : new u2.c.C0087c();
    }

    public final <T> u2.h<T> d(java.lang.reflect.Type type, java.lang.Class<? super T> cls) {
        return new u2.c.e(cls, type);
    }

    public java.lang.String toString() {
        return this.f6301a.toString();
    }
}
