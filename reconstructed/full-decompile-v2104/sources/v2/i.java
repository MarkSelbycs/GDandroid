package v2;

/* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i implements s2.t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u2.c f6480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.d f6481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u2.d f6482c;

    /* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
    public class a extends v2.i.c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final s2.s<?> f6483d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ s2.e f6484e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ java.lang.reflect.Field f6485f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ x2.a f6486g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ boolean f6487h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(java.lang.String str, boolean z4, boolean z5, s2.e eVar, java.lang.reflect.Field field, x2.a aVar, boolean z6) {
            super(str, z4, z5);
            this.f6484e = eVar;
            this.f6485f = field;
            this.f6486g = aVar;
            this.f6487h = z6;
            this.f6483d = v2.i.this.f(eVar, field, aVar);
        }

        @Override // v2.i.c
        public void a(y2.a aVar, java.lang.Object obj) throws java.lang.IllegalAccessException, java.io.IOException {
            java.lang.Object objB = this.f6483d.b(aVar);
            if (objB == null && this.f6487h) {
                return;
            }
            this.f6485f.set(obj, objB);
        }

        @Override // v2.i.c
        public void b(y2.c cVar, java.lang.Object obj) throws java.lang.IllegalAccessException, java.io.IOException {
            new v2.l(this.f6484e, this.f6483d, this.f6486g.e()).d(cVar, this.f6485f.get(obj));
        }

        @Override // v2.i.c
        public boolean c(java.lang.Object obj) throws java.lang.IllegalAccessException, java.io.IOException {
            return this.f6492b && this.f6485f.get(obj) != obj;
        }
    }

    /* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
    public static final class b<T> extends s2.s<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u2.h<T> f6489a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.util.Map<java.lang.String, v2.i.c> f6490b;

        public b(u2.h<T> hVar, java.util.Map<java.lang.String, v2.i.c> map) {
            this.f6489a = hVar;
            this.f6490b = map;
        }

        @Override // s2.s
        public T b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            T tA = this.f6489a.a();
            try {
                aVar.e();
                while (aVar.r()) {
                    v2.i.c cVar = this.f6490b.get(aVar.H());
                    if (cVar == null || !cVar.f6493c) {
                        aVar.m0();
                    } else {
                        cVar.a(aVar, tA);
                    }
                }
                aVar.l();
                return tA;
            } catch (java.lang.IllegalAccessException e5) {
                throw new java.lang.AssertionError(e5);
            } catch (java.lang.IllegalStateException e6) {
                throw new s2.q(e6);
            }
        }

        @Override // s2.s
        public void d(y2.c cVar, T t5) throws java.io.IOException {
            if (t5 == null) {
                cVar.u();
                return;
            }
            cVar.h();
            try {
                for (v2.i.c cVar2 : this.f6490b.values()) {
                    if (cVar2.c(t5)) {
                        cVar.r(cVar2.f6491a);
                        cVar2.b(cVar, t5);
                    }
                }
                cVar.l();
            } catch (java.lang.IllegalAccessException e5) {
                throw new java.lang.AssertionError(e5);
            }
        }
    }

    /* JADX INFO: compiled from: ReflectiveTypeAdapterFactory.java */
    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String f6491a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f6492b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f6493c;

        public c(java.lang.String str, boolean z4, boolean z5) {
            this.f6491a = str;
            this.f6492b = z4;
            this.f6493c = z5;
        }

        public abstract void a(y2.a aVar, java.lang.Object obj) throws java.lang.IllegalAccessException, java.io.IOException;

        public abstract void b(y2.c cVar, java.lang.Object obj) throws java.lang.IllegalAccessException, java.io.IOException;

        public abstract boolean c(java.lang.Object obj) throws java.lang.IllegalAccessException, java.io.IOException;
    }

    public i(u2.c cVar, s2.d dVar, u2.d dVar2) {
        this.f6480a = cVar;
        this.f6481b = dVar;
        this.f6482c = dVar2;
    }

    public static boolean d(java.lang.reflect.Field field, boolean z4, u2.d dVar) {
        return (dVar.d(field.getType(), z4) || dVar.e(field, z4)) ? false : true;
    }

    public static java.util.List<java.lang.String> g(s2.d dVar, java.lang.reflect.Field field) {
        t2.c cVar = (t2.c) field.getAnnotation(t2.c.class);
        java.util.LinkedList linkedList = new java.util.LinkedList();
        if (cVar == null) {
            linkedList.add(dVar.b(field));
        } else {
            linkedList.add(cVar.value());
            java.lang.String[] strArrAlternate = cVar.alternate();
            for (java.lang.String str : strArrAlternate) {
                linkedList.add(str);
            }
        }
        return linkedList;
    }

    @Override // s2.t
    public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
        java.lang.Class<? super T> clsC = aVar.c();
        if (java.lang.Object.class.isAssignableFrom(clsC)) {
            return new v2.i.b(this.f6480a.a(aVar), e(eVar, aVar, clsC));
        }
        return null;
    }

    public final v2.i.c b(s2.e eVar, java.lang.reflect.Field field, java.lang.String str, x2.a<?> aVar, boolean z4, boolean z5) {
        return new v2.i.a(str, z4, z5, eVar, field, aVar, u2.i.b(aVar.c()));
    }

    public boolean c(java.lang.reflect.Field field, boolean z4) {
        return d(field, z4, this.f6482c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    public final java.util.Map<java.lang.String, v2.i.c> e(s2.e eVar, x2.a<?> aVar, java.lang.Class<?> cls) {
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        java.lang.reflect.Type typeE = aVar.e();
        x2.a<?> aVarB = aVar;
        java.lang.Class<?> clsC = cls;
        while (clsC != java.lang.Object.class) {
            java.lang.reflect.Field[] declaredFields = clsC.getDeclaredFields();
            int length = declaredFields.length;
            boolean z4 = false;
            int i5 = 0;
            while (i5 < length) {
                java.lang.reflect.Field field = declaredFields[i5];
                boolean zC = c(field, true);
                boolean zC2 = c(field, z4);
                if (zC || zC2) {
                    field.setAccessible(true);
                    java.lang.reflect.Type typeP = u2.b.p(aVarB.e(), clsC, field.getGenericType());
                    java.util.List<java.lang.String> listH = h(field);
                    v2.i.c cVar = null;
                    ?? r5 = z4;
                    while (r5 < listH.size()) {
                        java.lang.String str = listH.get(r5);
                        boolean z5 = r5 != 0 ? z4 : zC;
                        ?? r20 = r5;
                        v2.i.c cVar2 = cVar;
                        java.util.List<java.lang.String> list = listH;
                        java.lang.reflect.Field field2 = field;
                        cVar = cVar2 == null ? (v2.i.c) linkedHashMap.put(str, b(eVar, field, str, x2.a.b(typeP), z5, zC2)) : cVar2;
                        zC = z5;
                        listH = list;
                        field = field2;
                        z4 = false;
                        r5 = (r20 == true ? 1 : 0) + 1;
                    }
                    v2.i.c cVar3 = cVar;
                    if (cVar3 != null) {
                        throw new java.lang.IllegalArgumentException(typeE + " declares multiple JSON fields named " + cVar3.f6491a);
                    }
                }
                i5++;
                z4 = false;
            }
            aVarB = x2.a.b(u2.b.p(aVarB.e(), clsC, clsC.getGenericSuperclass()));
            clsC = aVarB.c();
        }
        return linkedHashMap;
    }

    public s2.s<?> f(s2.e eVar, java.lang.reflect.Field field, x2.a<?> aVar) {
        s2.s<?> sVarB;
        t2.b bVar = (t2.b) field.getAnnotation(t2.b.class);
        return (bVar == null || (sVarB = v2.d.b(this.f6480a, eVar, aVar, bVar)) == null) ? eVar.g(aVar) : sVarB;
    }

    public final java.util.List<java.lang.String> h(java.lang.reflect.Field field) {
        return g(this.f6481b, field);
    }
}
