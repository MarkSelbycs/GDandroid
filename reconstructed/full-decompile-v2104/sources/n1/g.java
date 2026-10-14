package n1;

/* JADX INFO: compiled from: ConverterRegistry.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g implements java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Map<java.lang.reflect.Type, n1.e<?>> f5250a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile java.util.Map<java.lang.reflect.Type, n1.e<?>> f5251b;

    /* JADX INFO: compiled from: ConverterRegistry.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final n1.g f5252a = new n1.g();
    }

    public g() {
        j();
        I();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void D(n1.e eVar) {
        try {
            java.lang.reflect.Type typeN = e2.d0.n(e2.k.a(eVar));
            if (typeN != null) {
                H(typeN, eVar);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static n1.g y() {
        return n1.g.a.f5252a;
    }

    public n1.g F(java.lang.reflect.Type type, java.lang.Class<? extends n1.e<?>> cls) {
        return H(type, (n1.e) e2.x.D(cls, new java.lang.Object[0]));
    }

    public n1.g H(java.lang.reflect.Type type, n1.e<?> eVar) {
        if (this.f5251b == null) {
            synchronized (this) {
                if (this.f5251b == null) {
                    this.f5251b = new a2.u();
                }
            }
        }
        this.f5251b.put(type, eVar);
        return this;
    }

    public final void I() {
        e2.a0.a(n1.e.class).forEach(new java.util.function.Consumer() { // from class: n1.f
            @Override // java.util.function.Consumer
            public final void accept(java.lang.Object obj) {
                this.f5249a.D((n1.e) obj);
            }
        });
    }

    public <T> T c(java.lang.reflect.Type type, java.lang.Object obj) throws n1.d {
        return (T) e(type, obj, null);
    }

    public <T> T e(java.lang.reflect.Type type, java.lang.Object obj, T t5) throws n1.d {
        return (T) f(type, obj, t5, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [T, java.lang.Object] */
    public <T> T f(java.lang.reflect.Type type, java.lang.Object obj, T t5, boolean z4) throws n1.d {
        if (e2.d0.r(type) && t5 == null) {
            return obj;
        }
        if (e2.p.i(obj)) {
            return t5;
        }
        if (e2.d0.r(type)) {
            type = t5.getClass();
        }
        if (type instanceof v1.q) {
            type = ((v1.q) type).a();
        }
        if (obj instanceof n1.i) {
            return (T) e2.p.c(((n1.i) obj).b(type, obj), t5);
        }
        n1.e eVarQ = q(type, z4);
        if (eVarQ != null) {
            return eVarQ.b(obj, t5);
        }
        java.lang.Class<?> clsE = e2.d0.e(type);
        if (clsE == null) {
            if (t5 == null) {
                return obj;
            }
            clsE = t5.getClass();
        }
        T t6 = (T) h(type, clsE, obj, t5);
        if (t6 != null) {
            return t6;
        }
        if (h1.h.j(clsE)) {
            return new o1.f(type).b(obj, t5);
        }
        throw new n1.d("Can not Converter from [{}] to [{}]", obj.getClass().getName(), type.getTypeName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T h(java.lang.reflect.Type type, java.lang.Class<T> cls, java.lang.Object obj, T t5) {
        if (cls == null) {
            return null;
        }
        if (java.util.Collection.class.isAssignableFrom(cls)) {
            return (T) new o1.l(type).b(obj, (java.util.Collection) t5);
        }
        if (java.util.Map.class.isAssignableFrom(cls)) {
            return (T) new o1.a0(type).b(obj, (java.util.Map) t5);
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        if (cls.isEnum()) {
            return (T) new o1.x(cls).b(obj, t5);
        }
        if (cls.isArray()) {
            return (T) new o1.a(cls).b(obj, t5);
        }
        return null;
    }

    public final n1.g j() {
        a2.u uVar = new a2.u();
        this.f5250a = uVar;
        java.lang.Class cls = java.lang.Integer.TYPE;
        uVar.put(cls, new o1.i0(cls));
        java.util.Map<java.lang.reflect.Type, n1.e<?>> map = this.f5250a;
        java.lang.Class cls2 = java.lang.Long.TYPE;
        map.put(cls2, new o1.i0(cls2));
        java.util.Map<java.lang.reflect.Type, n1.e<?>> map2 = this.f5250a;
        java.lang.Class cls3 = java.lang.Byte.TYPE;
        map2.put(cls3, new o1.i0(cls3));
        java.util.Map<java.lang.reflect.Type, n1.e<?>> map3 = this.f5250a;
        java.lang.Class cls4 = java.lang.Short.TYPE;
        map3.put(cls4, new o1.i0(cls4));
        java.util.Map<java.lang.reflect.Type, n1.e<?>> map4 = this.f5250a;
        java.lang.Class cls5 = java.lang.Float.TYPE;
        map4.put(cls5, new o1.i0(cls5));
        java.util.Map<java.lang.reflect.Type, n1.e<?>> map5 = this.f5250a;
        java.lang.Class cls6 = java.lang.Double.TYPE;
        map5.put(cls6, new o1.i0(cls6));
        java.util.Map<java.lang.reflect.Type, n1.e<?>> map6 = this.f5250a;
        java.lang.Class cls7 = java.lang.Character.TYPE;
        map6.put(cls7, new o1.i0(cls7));
        java.util.Map<java.lang.reflect.Type, n1.e<?>> map7 = this.f5250a;
        java.lang.Class cls8 = java.lang.Boolean.TYPE;
        map7.put(cls8, new o1.i0(cls8));
        this.f5250a.put(java.lang.Number.class, new o1.c0());
        this.f5250a.put(java.lang.Integer.class, new o1.c0(java.lang.Integer.class));
        this.f5250a.put(java.util.concurrent.atomic.AtomicInteger.class, new o1.c0(java.util.concurrent.atomic.AtomicInteger.class));
        this.f5250a.put(java.lang.Long.class, new o1.c0(java.lang.Long.class));
        this.f5250a.put(java.util.concurrent.atomic.LongAdder.class, new o1.c0(java.util.concurrent.atomic.LongAdder.class));
        this.f5250a.put(java.util.concurrent.atomic.AtomicLong.class, new o1.c0(java.util.concurrent.atomic.AtomicLong.class));
        this.f5250a.put(java.lang.Byte.class, new o1.c0(java.lang.Byte.class));
        this.f5250a.put(java.lang.Short.class, new o1.c0(java.lang.Short.class));
        this.f5250a.put(java.lang.Float.class, new o1.c0(java.lang.Float.class));
        this.f5250a.put(java.lang.Double.class, new o1.c0(java.lang.Double.class));
        this.f5250a.put(java.util.concurrent.atomic.DoubleAdder.class, new o1.c0(java.util.concurrent.atomic.DoubleAdder.class));
        this.f5250a.put(java.lang.Character.class, new o1.i());
        this.f5250a.put(java.lang.Boolean.class, new o1.g());
        this.f5250a.put(java.util.concurrent.atomic.AtomicBoolean.class, new o1.b());
        this.f5250a.put(java.math.BigDecimal.class, new o1.c0(java.math.BigDecimal.class));
        this.f5250a.put(java.math.BigInteger.class, new o1.c0(java.math.BigInteger.class));
        this.f5250a.put(java.lang.CharSequence.class, new o1.l0());
        this.f5250a.put(java.lang.String.class, new o1.l0());
        this.f5250a.put(java.net.URI.class, new o1.q0());
        this.f5250a.put(java.net.URL.class, new o1.r0());
        this.f5250a.put(java.util.Calendar.class, new o1.h());
        this.f5250a.put(java.util.Date.class, new o1.n(java.util.Date.class));
        this.f5250a.put(p1.e.class, new o1.n(p1.e.class));
        this.f5250a.put(java.sql.Date.class, new o1.n(java.sql.Date.class));
        this.f5250a.put(java.sql.Time.class, new o1.n(java.sql.Time.class));
        this.f5250a.put(java.sql.Timestamp.class, new o1.n(java.sql.Timestamp.class));
        this.f5250a.put(java.time.temporal.TemporalAccessor.class, new o1.o0(java.time.Instant.class));
        this.f5250a.put(java.time.Instant.class, new o1.o0(java.time.Instant.class));
        this.f5250a.put(java.time.LocalDateTime.class, new o1.o0(java.time.LocalDateTime.class));
        this.f5250a.put(java.time.LocalDate.class, new o1.o0(java.time.LocalDate.class));
        this.f5250a.put(java.time.LocalTime.class, new o1.o0(java.time.LocalTime.class));
        this.f5250a.put(java.time.ZonedDateTime.class, new o1.o0(java.time.ZonedDateTime.class));
        this.f5250a.put(java.time.OffsetDateTime.class, new o1.o0(java.time.OffsetDateTime.class));
        this.f5250a.put(java.time.OffsetTime.class, new o1.o0(java.time.OffsetTime.class));
        this.f5250a.put(java.time.DayOfWeek.class, new o1.o0(java.time.DayOfWeek.class));
        this.f5250a.put(java.time.Month.class, new o1.o0(java.time.Month.class));
        this.f5250a.put(java.time.MonthDay.class, new o1.o0(java.time.MonthDay.class));
        this.f5250a.put(java.time.Period.class, new o1.g0());
        this.f5250a.put(java.time.Duration.class, new o1.o());
        this.f5250a.put(java.lang.ref.WeakReference.class, new o1.j0(java.lang.ref.WeakReference.class));
        this.f5250a.put(java.lang.ref.SoftReference.class, new o1.j0(java.lang.ref.SoftReference.class));
        this.f5250a.put(java.util.concurrent.atomic.AtomicReference.class, new o1.e());
        this.f5250a.put(java.util.concurrent.atomic.AtomicIntegerArray.class, new o1.c());
        this.f5250a.put(java.util.concurrent.atomic.AtomicLongArray.class, new o1.d());
        this.f5250a.put(java.lang.Class.class, new o1.k());
        this.f5250a.put(java.util.TimeZone.class, new o1.p0());
        this.f5250a.put(java.util.Locale.class, new o1.y());
        this.f5250a.put(java.nio.charset.Charset.class, new o1.j());
        this.f5250a.put(java.nio.file.Path.class, new o1.f0());
        this.f5250a.put(java.util.Currency.class, new o1.m());
        this.f5250a.put(java.util.UUID.class, new o1.s0());
        this.f5250a.put(java.lang.StackTraceElement.class, new o1.k0());
        this.f5250a.put(java.util.Optional.class, new o1.e0());
        this.f5250a.put(v1.k.class, new o1.d0());
        return this;
    }

    public <T> n1.e<T> q(java.lang.reflect.Type type, boolean z4) {
        if (z4) {
            n1.e<T> eVarU = u(type);
            return eVarU == null ? x(type) : eVarU;
        }
        n1.e<T> eVarX = x(type);
        return eVarX == null ? u(type) : eVarX;
    }

    public <T> n1.e<T> u(java.lang.reflect.Type type) {
        if (this.f5251b == null) {
            return null;
        }
        return (n1.e) this.f5251b.get(type);
    }

    public <T> n1.e<T> x(java.lang.reflect.Type type) {
        java.util.Map<java.lang.reflect.Type, n1.e<?>> map = this.f5250a;
        if (map == null) {
            return null;
        }
        return (n1.e) map.get(type);
    }
}
