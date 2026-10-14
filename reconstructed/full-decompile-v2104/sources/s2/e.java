package s2;

/* JADX INFO: compiled from: Gson.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.ThreadLocal<java.util.Map<x2.a<?>, s2.e.h<?>>> f6048a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<x2.a<?>, s2.s<?>> f6049b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.List<s2.t> f6050c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final u2.c f6051d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f6052e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f6053f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f6054g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f6055h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f6056i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final s2.h f6057j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final s2.p f6058k;

    /* JADX INFO: compiled from: Gson.java */
    public class a implements s2.h {
        public a() {
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    public class b implements s2.p {
        public b() {
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    public class c extends s2.s<java.lang.Number> {
        public c() {
        }

        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Double b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return java.lang.Double.valueOf(aVar.y());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            if (number == null) {
                cVar.u();
            } else {
                s2.e.c(number.doubleValue());
                cVar.V(number);
            }
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    public class d extends s2.s<java.lang.Number> {
        public d() {
        }

        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Float b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return java.lang.Float.valueOf((float) aVar.y());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            if (number == null) {
                cVar.u();
            } else {
                s2.e.c(number.floatValue());
                cVar.V(number);
            }
        }
    }

    /* JADX INFO: renamed from: s2.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Gson.java */
    public static class C0078e extends s2.s<java.lang.Number> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Number b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return java.lang.Long.valueOf(aVar.C());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            if (number == null) {
                cVar.u();
            } else {
                cVar.X(number.toString());
            }
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    public static class f extends s2.s<java.util.concurrent.atomic.AtomicLong> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s2.s f6063a;

        public f(s2.s sVar) {
            this.f6063a = sVar;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.concurrent.atomic.AtomicLong b(y2.a aVar) throws java.io.IOException {
            return new java.util.concurrent.atomic.AtomicLong(((java.lang.Number) this.f6063a.b(aVar)).longValue());
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.concurrent.atomic.AtomicLong atomicLong) throws java.io.IOException {
            this.f6063a.d(cVar, java.lang.Long.valueOf(atomicLong.get()));
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    public static class g extends s2.s<java.util.concurrent.atomic.AtomicLongArray> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s2.s f6064a;

        public g(s2.s sVar) {
            this.f6064a = sVar;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.concurrent.atomic.AtomicLongArray b(y2.a aVar) throws java.io.IOException {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            aVar.c();
            while (aVar.r()) {
                arrayList.add(java.lang.Long.valueOf(((java.lang.Number) this.f6064a.b(aVar)).longValue()));
            }
            aVar.j();
            int size = arrayList.size();
            java.util.concurrent.atomic.AtomicLongArray atomicLongArray = new java.util.concurrent.atomic.AtomicLongArray(size);
            for (int i5 = 0; i5 < size; i5++) {
                atomicLongArray.set(i5, ((java.lang.Long) arrayList.get(i5)).longValue());
            }
            return atomicLongArray;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.concurrent.atomic.AtomicLongArray atomicLongArray) throws java.io.IOException {
            cVar.f();
            int length = atomicLongArray.length();
            for (int i5 = 0; i5 < length; i5++) {
                this.f6064a.d(cVar, java.lang.Long.valueOf(atomicLongArray.get(i5)));
            }
            cVar.j();
        }
    }

    /* JADX INFO: compiled from: Gson.java */
    public static class h<T> extends s2.s<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public s2.s<T> f6065a;

        @Override // s2.s
        public T b(y2.a aVar) throws java.io.IOException {
            s2.s<T> sVar = this.f6065a;
            if (sVar != null) {
                return sVar.b(aVar);
            }
            throw new java.lang.IllegalStateException();
        }

        @Override // s2.s
        public void d(y2.c cVar, T t5) throws java.io.IOException {
            s2.s<T> sVar = this.f6065a;
            if (sVar == null) {
                throw new java.lang.IllegalStateException();
            }
            sVar.d(cVar, t5);
        }

        public void e(s2.s<T> sVar) {
            if (this.f6065a != null) {
                throw new java.lang.AssertionError();
            }
            this.f6065a = sVar;
        }
    }

    public e() {
        this(u2.d.f6325g, s2.c.f6042a, java.util.Collections.emptyMap(), false, false, false, true, false, false, false, s2.r.f6071a, java.util.Collections.emptyList());
    }

    public static s2.s<java.util.concurrent.atomic.AtomicLong> a(s2.s<java.lang.Number> sVar) {
        return new s2.e.f(sVar).a();
    }

    public static s2.s<java.util.concurrent.atomic.AtomicLongArray> b(s2.s<java.lang.Number> sVar) {
        return new s2.e.g(sVar).a();
    }

    public static void c(double d5) {
        if (java.lang.Double.isNaN(d5) || java.lang.Double.isInfinite(d5)) {
            throw new java.lang.IllegalArgumentException(d5 + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.");
        }
    }

    public static s2.s<java.lang.Number> i(s2.r rVar) {
        return rVar == s2.r.f6071a ? v2.m.f6520t : new s2.e.C0078e();
    }

    public final s2.s<java.lang.Number> d(boolean z4) {
        return z4 ? v2.m.f6522v : new s2.e.c();
    }

    public final s2.s<java.lang.Number> e(boolean z4) {
        return z4 ? v2.m.f6521u : new s2.e.d();
    }

    public <T> s2.s<T> f(java.lang.Class<T> cls) {
        return g(x2.a.a(cls));
    }

    public <T> s2.s<T> g(x2.a<T> aVar) {
        s2.s<T> sVar = (s2.s) this.f6049b.get(aVar);
        if (sVar != null) {
            return sVar;
        }
        java.util.Map<x2.a<?>, s2.e.h<?>> map = this.f6048a.get();
        boolean z4 = false;
        if (map == null) {
            map = new java.util.HashMap<>();
            this.f6048a.set(map);
            z4 = true;
        }
        s2.e.h<?> hVar = map.get(aVar);
        if (hVar != null) {
            return hVar;
        }
        try {
            s2.e.h<?> hVar2 = new s2.e.h<>();
            map.put(aVar, hVar2);
            java.util.Iterator<s2.t> it = this.f6050c.iterator();
            while (it.hasNext()) {
                s2.s<T> sVarA = it.next().a(this, aVar);
                if (sVarA != null) {
                    hVar2.e(sVarA);
                    this.f6049b.put(aVar, sVarA);
                    map.remove(aVar);
                    if (z4) {
                        this.f6048a.remove();
                    }
                    return sVarA;
                }
            }
            throw new java.lang.IllegalArgumentException("GSON cannot handle " + aVar);
        } catch (java.lang.Throwable th) {
            map.remove(aVar);
            if (z4) {
                this.f6048a.remove();
            }
            throw th;
        }
    }

    public <T> s2.s<T> h(s2.t tVar, x2.a<T> aVar) {
        boolean z4 = !this.f6050c.contains(tVar);
        for (s2.t tVar2 : this.f6050c) {
            if (z4) {
                s2.s<T> sVarA = tVar2.a(this, aVar);
                if (sVarA != null) {
                    return sVarA;
                }
            } else if (tVar2 == tVar) {
                z4 = true;
            }
        }
        throw new java.lang.IllegalArgumentException("GSON cannot serialize " + aVar);
    }

    public y2.c j(java.io.Writer writer) throws java.io.IOException {
        if (this.f6054g) {
            writer.write(")]}'\n");
        }
        y2.c cVar = new y2.c(writer);
        if (this.f6055h) {
            cVar.I("  ");
        }
        cVar.M(this.f6052e);
        return cVar;
    }

    public java.lang.String k(java.lang.Object obj) {
        return obj == null ? m(s2.k.f6067a) : l(obj, obj.getClass());
    }

    public java.lang.String l(java.lang.Object obj, java.lang.reflect.Type type) {
        java.io.StringWriter stringWriter = new java.io.StringWriter();
        n(obj, type, stringWriter);
        return stringWriter.toString();
    }

    public java.lang.String m(s2.i iVar) {
        java.io.StringWriter stringWriter = new java.io.StringWriter();
        p(iVar, stringWriter);
        return stringWriter.toString();
    }

    public void n(java.lang.Object obj, java.lang.reflect.Type type, java.lang.Appendable appendable) throws s2.j {
        try {
            o(obj, type, j(u2.j.c(appendable)));
        } catch (java.io.IOException e5) {
            throw new s2.j(e5);
        }
    }

    public void o(java.lang.Object obj, java.lang.reflect.Type type, y2.c cVar) throws s2.j {
        s2.s sVarG = g(x2.a.b(type));
        boolean zQ = cVar.q();
        cVar.K(true);
        boolean zO = cVar.o();
        cVar.H(this.f6053f);
        boolean zN = cVar.n();
        cVar.M(this.f6052e);
        try {
            try {
                sVarG.d(cVar, obj);
                cVar.K(zQ);
                cVar.H(zO);
                cVar.M(zN);
            } catch (java.io.IOException e5) {
                throw new s2.j(e5);
            }
        } catch (java.lang.Throwable th) {
            cVar.K(zQ);
            cVar.H(zO);
            cVar.M(zN);
            throw th;
        }
    }

    public void p(s2.i iVar, java.lang.Appendable appendable) throws s2.j {
        try {
            q(iVar, j(u2.j.c(appendable)));
        } catch (java.io.IOException e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }

    public void q(s2.i iVar, y2.c cVar) throws s2.j {
        boolean zQ = cVar.q();
        cVar.K(true);
        boolean zO = cVar.o();
        cVar.H(this.f6053f);
        boolean zN = cVar.n();
        cVar.M(this.f6052e);
        try {
            try {
                u2.j.b(iVar, cVar);
                cVar.K(zQ);
                cVar.H(zO);
                cVar.M(zN);
            } catch (java.io.IOException e5) {
                throw new s2.j(e5);
            }
        } catch (java.lang.Throwable th) {
            cVar.K(zQ);
            cVar.H(zO);
            cVar.M(zN);
            throw th;
        }
    }

    public java.lang.String toString() {
        return "{serializeNulls:" + this.f6052e + "factories:" + this.f6050c + ",instanceCreators:" + this.f6051d + "}";
    }

    public e(u2.d dVar, s2.d dVar2, java.util.Map<java.lang.reflect.Type, s2.f<?>> map, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, s2.r rVar, java.util.List<s2.t> list) {
        this.f6048a = new java.lang.ThreadLocal<>();
        this.f6049b = java.util.Collections.synchronizedMap(new java.util.HashMap());
        this.f6057j = new s2.e.a();
        this.f6058k = new s2.e.b();
        u2.c cVar = new u2.c(map);
        this.f6051d = cVar;
        this.f6052e = z4;
        this.f6054g = z6;
        this.f6053f = z7;
        this.f6055h = z8;
        this.f6056i = z9;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(v2.m.Y);
        arrayList.add(v2.h.f6477b);
        arrayList.add(dVar);
        arrayList.addAll(list);
        arrayList.add(v2.m.D);
        arrayList.add(v2.m.f6513m);
        arrayList.add(v2.m.f6507g);
        arrayList.add(v2.m.f6509i);
        arrayList.add(v2.m.f6511k);
        s2.s<java.lang.Number> sVarI = i(rVar);
        arrayList.add(v2.m.a(java.lang.Long.TYPE, java.lang.Long.class, sVarI));
        arrayList.add(v2.m.a(java.lang.Double.TYPE, java.lang.Double.class, d(z10)));
        arrayList.add(v2.m.a(java.lang.Float.TYPE, java.lang.Float.class, e(z10)));
        arrayList.add(v2.m.f6524x);
        arrayList.add(v2.m.f6515o);
        arrayList.add(v2.m.f6517q);
        arrayList.add(v2.m.b(java.util.concurrent.atomic.AtomicLong.class, a(sVarI)));
        arrayList.add(v2.m.b(java.util.concurrent.atomic.AtomicLongArray.class, b(sVarI)));
        arrayList.add(v2.m.f6519s);
        arrayList.add(v2.m.f6526z);
        arrayList.add(v2.m.F);
        arrayList.add(v2.m.H);
        arrayList.add(v2.m.b(java.math.BigDecimal.class, v2.m.B));
        arrayList.add(v2.m.b(java.math.BigInteger.class, v2.m.C));
        arrayList.add(v2.m.J);
        arrayList.add(v2.m.L);
        arrayList.add(v2.m.P);
        arrayList.add(v2.m.R);
        arrayList.add(v2.m.W);
        arrayList.add(v2.m.N);
        arrayList.add(v2.m.f6504d);
        arrayList.add(v2.c.f6459c);
        arrayList.add(v2.m.U);
        arrayList.add(v2.k.f6496b);
        arrayList.add(v2.j.f6494b);
        arrayList.add(v2.m.S);
        arrayList.add(v2.a.f6453c);
        arrayList.add(v2.m.f6502b);
        arrayList.add(new v2.b(cVar));
        arrayList.add(new v2.g(cVar, z5));
        arrayList.add(new v2.d(cVar));
        arrayList.add(v2.m.Z);
        arrayList.add(new v2.i(cVar, dVar2, dVar));
        this.f6050c = java.util.Collections.unmodifiableList(arrayList);
    }
}
