package v2;

/* JADX INFO: compiled from: TypeAdapters.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m {
    public static final s2.s<java.lang.String> A;
    public static final s2.s<java.math.BigDecimal> B;
    public static final s2.s<java.math.BigInteger> C;
    public static final s2.t D;
    public static final s2.s<java.lang.StringBuilder> E;
    public static final s2.t F;
    public static final s2.s<java.lang.StringBuffer> G;
    public static final s2.t H;
    public static final s2.s<java.net.URL> I;
    public static final s2.t J;
    public static final s2.s<java.net.URI> K;
    public static final s2.t L;
    public static final s2.s<java.net.InetAddress> M;
    public static final s2.t N;
    public static final s2.s<java.util.UUID> O;
    public static final s2.t P;
    public static final s2.s<java.util.Currency> Q;
    public static final s2.t R;
    public static final s2.t S;
    public static final s2.s<java.util.Calendar> T;
    public static final s2.t U;
    public static final s2.s<java.util.Locale> V;
    public static final s2.t W;
    public static final s2.s<s2.i> X;
    public static final s2.t Y;
    public static final s2.t Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s2.s<java.lang.Class> f6501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final s2.t f6502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final s2.s<java.util.BitSet> f6503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final s2.t f6504d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final s2.s<java.lang.Boolean> f6505e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final s2.s<java.lang.Boolean> f6506f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final s2.t f6507g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final s2.s<java.lang.Number> f6508h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final s2.t f6509i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final s2.s<java.lang.Number> f6510j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final s2.t f6511k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final s2.s<java.lang.Number> f6512l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final s2.t f6513m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final s2.s<java.util.concurrent.atomic.AtomicInteger> f6514n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final s2.t f6515o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final s2.s<java.util.concurrent.atomic.AtomicBoolean> f6516p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final s2.t f6517q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final s2.s<java.util.concurrent.atomic.AtomicIntegerArray> f6518r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final s2.t f6519s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final s2.s<java.lang.Number> f6520t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final s2.s<java.lang.Number> f6521u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final s2.s<java.lang.Number> f6522v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final s2.s<java.lang.Number> f6523w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final s2.t f6524x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final s2.s<java.lang.Character> f6525y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final s2.t f6526z;

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class a extends s2.s<java.util.concurrent.atomic.AtomicIntegerArray> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.concurrent.atomic.AtomicIntegerArray b(y2.a aVar) throws java.io.IOException {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            aVar.c();
            while (aVar.r()) {
                try {
                    arrayList.add(java.lang.Integer.valueOf(aVar.z()));
                } catch (java.lang.NumberFormatException e5) {
                    throw new s2.q(e5);
                }
            }
            aVar.j();
            int size = arrayList.size();
            java.util.concurrent.atomic.AtomicIntegerArray atomicIntegerArray = new java.util.concurrent.atomic.AtomicIntegerArray(size);
            for (int i5 = 0; i5 < size; i5++) {
                atomicIntegerArray.set(i5, ((java.lang.Integer) arrayList.get(i5)).intValue());
            }
            return atomicIntegerArray;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.concurrent.atomic.AtomicIntegerArray atomicIntegerArray) throws java.io.IOException {
            cVar.f();
            int length = atomicIntegerArray.length();
            for (int i5 = 0; i5 < length; i5++) {
                cVar.R(atomicIntegerArray.get(i5));
            }
            cVar.j();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class a0 implements s2.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.Class f6527a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ s2.s f6528b;

        /* JADX INFO: Add missing generic type declarations: [T1] */
        /* JADX INFO: compiled from: TypeAdapters.java */
        public class a<T1> extends s2.s<T1> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ java.lang.Class f6529a;

            public a(java.lang.Class cls) {
                this.f6529a = cls;
            }

            @Override // s2.s
            public T1 b(y2.a aVar) throws java.io.IOException {
                T1 t5 = (T1) v2.m.a0.this.f6528b.b(aVar);
                if (t5 == null || this.f6529a.isInstance(t5)) {
                    return t5;
                }
                throw new s2.q("Expected a " + this.f6529a.getName() + " but was " + t5.getClass().getName());
            }

            @Override // s2.s
            public void d(y2.c cVar, T1 t5) throws java.io.IOException {
                v2.m.a0.this.f6528b.d(cVar, t5);
            }
        }

        public a0(java.lang.Class cls, s2.s sVar) {
            this.f6527a = cls;
            this.f6528b = sVar;
        }

        @Override // s2.t
        public <T2> s2.s<T2> a(s2.e eVar, x2.a<T2> aVar) {
            java.lang.Class<? super T2> clsC = aVar.c();
            if (this.f6527a.isAssignableFrom(clsC)) {
                return new v2.m.a0.a(clsC);
            }
            return null;
        }

        public java.lang.String toString() {
            return "Factory[typeHierarchy=" + this.f6527a.getName() + ",adapter=" + this.f6528b + "]";
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class b extends s2.s<java.lang.Number> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Number b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            try {
                return java.lang.Long.valueOf(aVar.C());
            } catch (java.lang.NumberFormatException e5) {
                throw new s2.q(e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            cVar.V(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static /* synthetic */ class b0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6531a;

        static {
            int[] iArr = new int[y2.b.values().length];
            f6531a = iArr;
            try {
                iArr[y2.b.NUMBER.ordinal()] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                f6531a[y2.b.BOOLEAN.ordinal()] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                f6531a[y2.b.STRING.ordinal()] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                f6531a[y2.b.NULL.ordinal()] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                f6531a[y2.b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                f6531a[y2.b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
            try {
                f6531a[y2.b.END_DOCUMENT.ordinal()] = 7;
            } catch (java.lang.NoSuchFieldError unused7) {
            }
            try {
                f6531a[y2.b.NAME.ordinal()] = 8;
            } catch (java.lang.NoSuchFieldError unused8) {
            }
            try {
                f6531a[y2.b.END_OBJECT.ordinal()] = 9;
            } catch (java.lang.NoSuchFieldError unused9) {
            }
            try {
                f6531a[y2.b.END_ARRAY.ordinal()] = 10;
            } catch (java.lang.NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class c extends s2.s<java.lang.Number> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Number b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return java.lang.Float.valueOf((float) aVar.y());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            cVar.V(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class c0 extends s2.s<java.lang.Boolean> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Boolean b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return aVar.V() == y2.b.STRING ? java.lang.Boolean.valueOf(java.lang.Boolean.parseBoolean(aVar.P())) : java.lang.Boolean.valueOf(aVar.x());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Boolean bool) throws java.io.IOException {
            if (bool == null) {
                cVar.u();
            } else {
                cVar.Y(bool.booleanValue());
            }
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class d extends s2.s<java.lang.Number> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Number b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return java.lang.Double.valueOf(aVar.y());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            cVar.V(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class d0 extends s2.s<java.lang.Boolean> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Boolean b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return java.lang.Boolean.valueOf(aVar.P());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Boolean bool) throws java.io.IOException {
            cVar.X(bool == null ? "null" : bool.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class e extends s2.s<java.lang.Number> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Number b(y2.a aVar) throws java.io.IOException {
            y2.b bVarV = aVar.V();
            int i5 = v2.m.b0.f6531a[bVarV.ordinal()];
            if (i5 == 1) {
                return new u2.f(aVar.P());
            }
            if (i5 == 4) {
                aVar.K();
                return null;
            }
            throw new s2.q("Expecting number, got: " + bVarV);
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            cVar.V(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class e0 extends s2.s<java.lang.Number> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Number b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            try {
                return java.lang.Byte.valueOf((byte) aVar.z());
            } catch (java.lang.NumberFormatException e5) {
                throw new s2.q(e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            cVar.V(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class f extends s2.s<java.lang.Character> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Character b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            java.lang.String strP = aVar.P();
            if (strP.length() == 1) {
                return java.lang.Character.valueOf(strP.charAt(0));
            }
            throw new s2.q("Expecting character, got: " + strP);
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Character ch) throws java.io.IOException {
            cVar.X(ch == null ? null : java.lang.String.valueOf(ch));
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class f0 extends s2.s<java.lang.Number> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Number b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            try {
                return java.lang.Short.valueOf((short) aVar.z());
            } catch (java.lang.NumberFormatException e5) {
                throw new s2.q(e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            cVar.V(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class g extends s2.s<java.lang.String> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.String b(y2.a aVar) throws java.io.IOException {
            y2.b bVarV = aVar.V();
            if (bVarV != y2.b.NULL) {
                return bVarV == y2.b.BOOLEAN ? java.lang.Boolean.toString(aVar.x()) : aVar.P();
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.String str) throws java.io.IOException {
            cVar.X(str);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class g0 extends s2.s<java.lang.Number> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Number b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            try {
                return java.lang.Integer.valueOf(aVar.z());
            } catch (java.lang.NumberFormatException e5) {
                throw new s2.q(e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Number number) throws java.io.IOException {
            cVar.V(number);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class h extends s2.s<java.math.BigDecimal> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.math.BigDecimal b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            try {
                return new java.math.BigDecimal(aVar.P());
            } catch (java.lang.NumberFormatException e5) {
                throw new s2.q(e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.math.BigDecimal bigDecimal) throws java.io.IOException {
            cVar.V(bigDecimal);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class h0 extends s2.s<java.util.concurrent.atomic.AtomicInteger> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.concurrent.atomic.AtomicInteger b(y2.a aVar) throws java.io.IOException {
            try {
                return new java.util.concurrent.atomic.AtomicInteger(aVar.z());
            } catch (java.lang.NumberFormatException e5) {
                throw new s2.q(e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.concurrent.atomic.AtomicInteger atomicInteger) throws java.io.IOException {
            cVar.R(atomicInteger.get());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class i extends s2.s<java.math.BigInteger> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.math.BigInteger b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            try {
                return new java.math.BigInteger(aVar.P());
            } catch (java.lang.NumberFormatException e5) {
                throw new s2.q(e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.math.BigInteger bigInteger) throws java.io.IOException {
            cVar.V(bigInteger);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class i0 extends s2.s<java.util.concurrent.atomic.AtomicBoolean> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.concurrent.atomic.AtomicBoolean b(y2.a aVar) throws java.io.IOException {
            return new java.util.concurrent.atomic.AtomicBoolean(aVar.x());
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.concurrent.atomic.AtomicBoolean atomicBoolean) throws java.io.IOException {
            cVar.Y(atomicBoolean.get());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class j extends s2.s<java.lang.StringBuilder> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.StringBuilder b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return new java.lang.StringBuilder(aVar.P());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.StringBuilder sb) throws java.io.IOException {
            cVar.X(sb == null ? null : sb.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static final class j0<T extends java.lang.Enum<T>> extends s2.s<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.Map<java.lang.String, T> f6532a = new java.util.HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.util.Map<T, java.lang.String> f6533b = new java.util.HashMap();

        public j0(java.lang.Class<T> cls) {
            try {
                for (T t5 : cls.getEnumConstants()) {
                    java.lang.String strName = t5.name();
                    t2.c cVar = (t2.c) cls.getField(strName).getAnnotation(t2.c.class);
                    if (cVar != null) {
                        strName = cVar.value();
                        for (java.lang.String str : cVar.alternate()) {
                            this.f6532a.put(str, t5);
                        }
                    }
                    this.f6532a.put(strName, t5);
                    this.f6533b.put(t5, strName);
                }
            } catch (java.lang.NoSuchFieldException e5) {
                throw new java.lang.AssertionError("Missing field in " + cls.getName(), e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public T b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return this.f6532a.get(aVar.P());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, T t5) throws java.io.IOException {
            cVar.X(t5 == null ? null : this.f6533b.get(t5));
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class k extends s2.s<java.lang.Class> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.Class b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                throw new java.lang.UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.Class cls) throws java.io.IOException {
            if (cls == null) {
                cVar.u();
                return;
            }
            throw new java.lang.UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class l extends s2.s<java.lang.StringBuffer> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.lang.StringBuffer b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return new java.lang.StringBuffer(aVar.P());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.lang.StringBuffer stringBuffer) throws java.io.IOException {
            cVar.X(stringBuffer == null ? null : stringBuffer.toString());
        }
    }

    /* JADX INFO: renamed from: v2.m$m, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class C0093m extends s2.s<java.net.URL> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.net.URL b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            java.lang.String strP = aVar.P();
            if ("null".equals(strP)) {
                return null;
            }
            return new java.net.URL(strP);
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.net.URL url) throws java.io.IOException {
            cVar.X(url == null ? null : url.toExternalForm());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class n extends s2.s<java.net.URI> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.net.URI b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            try {
                java.lang.String strP = aVar.P();
                if ("null".equals(strP)) {
                    return null;
                }
                return new java.net.URI(strP);
            } catch (java.net.URISyntaxException e5) {
                throw new s2.j(e5);
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.net.URI uri) throws java.io.IOException {
            cVar.X(uri == null ? null : uri.toASCIIString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class o extends s2.s<java.net.InetAddress> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.net.InetAddress b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return java.net.InetAddress.getByName(aVar.P());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.net.InetAddress inetAddress) throws java.io.IOException {
            cVar.X(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class p extends s2.s<java.util.UUID> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.UUID b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() != y2.b.NULL) {
                return java.util.UUID.fromString(aVar.P());
            }
            aVar.K();
            return null;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.UUID uuid) throws java.io.IOException {
            cVar.X(uuid == null ? null : uuid.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class q extends s2.s<java.util.Currency> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.Currency b(y2.a aVar) throws java.io.IOException {
            return java.util.Currency.getInstance(aVar.P());
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.Currency currency) throws java.io.IOException {
            cVar.X(currency.getCurrencyCode());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class r implements s2.t {

        /* JADX INFO: compiled from: TypeAdapters.java */
        public class a extends s2.s<java.sql.Timestamp> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ s2.s f6534a;

            public a(s2.s sVar) {
                this.f6534a = sVar;
            }

            @Override // s2.s
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public java.sql.Timestamp b(y2.a aVar) throws java.io.IOException {
                java.util.Date date = (java.util.Date) this.f6534a.b(aVar);
                if (date != null) {
                    return new java.sql.Timestamp(date.getTime());
                }
                return null;
            }

            @Override // s2.s
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public void d(y2.c cVar, java.sql.Timestamp timestamp) throws java.io.IOException {
                this.f6534a.d(cVar, timestamp);
            }
        }

        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            if (aVar.c() != java.sql.Timestamp.class) {
                return null;
            }
            return new v2.m.r.a(eVar.f(java.util.Date.class));
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class s extends s2.s<java.util.Calendar> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.Calendar b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            aVar.e();
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            while (aVar.V() != y2.b.END_OBJECT) {
                java.lang.String strH = aVar.H();
                int iZ = aVar.z();
                if ("year".equals(strH)) {
                    i5 = iZ;
                } else if ("month".equals(strH)) {
                    i6 = iZ;
                } else if ("dayOfMonth".equals(strH)) {
                    i7 = iZ;
                } else if ("hourOfDay".equals(strH)) {
                    i8 = iZ;
                } else if ("minute".equals(strH)) {
                    i9 = iZ;
                } else if ("second".equals(strH)) {
                    i10 = iZ;
                }
            }
            aVar.l();
            return new java.util.GregorianCalendar(i5, i6, i7, i8, i9, i10);
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.Calendar calendar) throws java.io.IOException {
            if (calendar == null) {
                cVar.u();
                return;
            }
            cVar.h();
            cVar.r("year");
            cVar.R(calendar.get(1));
            cVar.r("month");
            cVar.R(calendar.get(2));
            cVar.r("dayOfMonth");
            cVar.R(calendar.get(5));
            cVar.r("hourOfDay");
            cVar.R(calendar.get(11));
            cVar.r("minute");
            cVar.R(calendar.get(12));
            cVar.r("second");
            cVar.R(calendar.get(13));
            cVar.l();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class t extends s2.s<java.util.Locale> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.Locale b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            java.util.StringTokenizer stringTokenizer = new java.util.StringTokenizer(aVar.P(), "_");
            java.lang.String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            java.lang.String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            java.lang.String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
            if (strNextToken2 == null && strNextToken3 == null) {
                return new java.util.Locale(strNextToken);
            }
            return strNextToken3 == null ? new java.util.Locale(strNextToken, strNextToken2) : new java.util.Locale(strNextToken, strNextToken2, strNextToken3);
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.Locale locale) throws java.io.IOException {
            cVar.X(locale == null ? null : locale.toString());
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class u extends s2.s<s2.i> {
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public s2.i b(y2.a aVar) throws java.io.IOException {
            switch (v2.m.b0.f6531a[aVar.V().ordinal()]) {
                case 1:
                    return new s2.o((java.lang.Number) new u2.f(aVar.P()));
                case 2:
                    return new s2.o(java.lang.Boolean.valueOf(aVar.x()));
                case 3:
                    return new s2.o(aVar.P());
                case 4:
                    aVar.K();
                    return s2.k.f6067a;
                case 5:
                    s2.g gVar = new s2.g();
                    aVar.c();
                    while (aVar.r()) {
                        gVar.k(b(aVar));
                    }
                    aVar.j();
                    return gVar;
                case 6:
                    s2.l lVar = new s2.l();
                    aVar.e();
                    while (aVar.r()) {
                        lVar.j(aVar.H(), b(aVar));
                    }
                    aVar.l();
                    return lVar;
                default:
                    throw new java.lang.IllegalArgumentException();
            }
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, s2.i iVar) throws java.io.IOException {
            if (iVar == null || iVar.g()) {
                cVar.u();
                return;
            }
            if (iVar.i()) {
                s2.o oVarD = iVar.d();
                if (oVarD.q()) {
                    cVar.V(oVarD.n());
                    return;
                } else if (oVarD.o()) {
                    cVar.Y(oVarD.j());
                    return;
                } else {
                    cVar.X(oVarD.e());
                    return;
                }
            }
            if (iVar.f()) {
                cVar.f();
                java.util.Iterator<s2.i> it = iVar.b().iterator();
                while (it.hasNext()) {
                    d(cVar, it.next());
                }
                cVar.j();
                return;
            }
            if (!iVar.h()) {
                throw new java.lang.IllegalArgumentException("Couldn't write " + iVar.getClass());
            }
            cVar.h();
            for (java.util.Map.Entry<java.lang.String, s2.i> entry : iVar.c().n()) {
                cVar.r(entry.getKey());
                d(cVar, entry.getValue());
            }
            cVar.l();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class v extends s2.s<java.util.BitSet> {
        /* JADX WARN: Code duplicated, block: B:19:0x003b  */
        @Override // s2.s
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.util.BitSet b(y2.a aVar) throws java.io.IOException {
            if (aVar.V() == y2.b.NULL) {
                aVar.K();
                return null;
            }
            java.util.BitSet bitSet = new java.util.BitSet();
            aVar.c();
            y2.b bVarV = aVar.V();
            int i5 = 0;
            while (bVarV != y2.b.END_ARRAY) {
                int i6 = v2.m.b0.f6531a[bVarV.ordinal()];
                boolean zX = true;
                if (i6 != 1) {
                    if (i6 == 2) {
                        zX = aVar.x();
                    } else {
                        if (i6 != 3) {
                            throw new s2.q("Invalid bitset value type: " + bVarV);
                        }
                        java.lang.String strP = aVar.P();
                        try {
                            if (java.lang.Integer.parseInt(strP) == 0) {
                                zX = false;
                            }
                        } catch (java.lang.NumberFormatException unused) {
                            throw new s2.q("Error: Expecting: bitset number value (1, 0), Found: " + strP);
                        }
                    }
                } else if (aVar.z() == 0) {
                    zX = false;
                }
                if (zX) {
                    bitSet.set(i5);
                }
                i5++;
                bVarV = aVar.V();
            }
            aVar.j();
            return bitSet;
        }

        @Override // s2.s
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(y2.c cVar, java.util.BitSet bitSet) throws java.io.IOException {
            if (bitSet == null) {
                cVar.u();
                return;
            }
            cVar.f();
            for (int i5 = 0; i5 < bitSet.length(); i5++) {
                cVar.R(bitSet.get(i5) ? 1L : 0L);
            }
            cVar.j();
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class w implements s2.t {
        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            java.lang.Class<? super T> clsC = aVar.c();
            if (!java.lang.Enum.class.isAssignableFrom(clsC) || clsC == java.lang.Enum.class) {
                return null;
            }
            if (!clsC.isEnum()) {
                clsC = clsC.getSuperclass();
            }
            return new v2.m.j0(clsC);
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class x implements s2.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.Class f6536a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ s2.s f6537b;

        public x(java.lang.Class cls, s2.s sVar) {
            this.f6536a = cls;
            this.f6537b = sVar;
        }

        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            if (aVar.c() == this.f6536a) {
                return this.f6537b;
            }
            return null;
        }

        public java.lang.String toString() {
            return "Factory[type=" + this.f6536a.getName() + ",adapter=" + this.f6537b + "]";
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class y implements s2.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.Class f6538a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.Class f6539b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ s2.s f6540c;

        public y(java.lang.Class cls, java.lang.Class cls2, s2.s sVar) {
            this.f6538a = cls;
            this.f6539b = cls2;
            this.f6540c = sVar;
        }

        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            java.lang.Class<? super T> clsC = aVar.c();
            if (clsC == this.f6538a || clsC == this.f6539b) {
                return this.f6540c;
            }
            return null;
        }

        public java.lang.String toString() {
            return "Factory[type=" + this.f6539b.getName() + "+" + this.f6538a.getName() + ",adapter=" + this.f6540c + "]";
        }
    }

    /* JADX INFO: compiled from: TypeAdapters.java */
    public static class z implements s2.t {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.Class f6541a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.lang.Class f6542b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ s2.s f6543c;

        public z(java.lang.Class cls, java.lang.Class cls2, s2.s sVar) {
            this.f6541a = cls;
            this.f6542b = cls2;
            this.f6543c = sVar;
        }

        @Override // s2.t
        public <T> s2.s<T> a(s2.e eVar, x2.a<T> aVar) {
            java.lang.Class<? super T> clsC = aVar.c();
            if (clsC == this.f6541a || clsC == this.f6542b) {
                return this.f6543c;
            }
            return null;
        }

        public java.lang.String toString() {
            return "Factory[type=" + this.f6541a.getName() + "+" + this.f6542b.getName() + ",adapter=" + this.f6543c + "]";
        }
    }

    static {
        v2.m.k kVar = new v2.m.k();
        f6501a = kVar;
        f6502b = b(java.lang.Class.class, kVar);
        v2.m.v vVar = new v2.m.v();
        f6503c = vVar;
        f6504d = b(java.util.BitSet.class, vVar);
        v2.m.c0 c0Var = new v2.m.c0();
        f6505e = c0Var;
        f6506f = new v2.m.d0();
        f6507g = a(java.lang.Boolean.TYPE, java.lang.Boolean.class, c0Var);
        v2.m.e0 e0Var = new v2.m.e0();
        f6508h = e0Var;
        f6509i = a(java.lang.Byte.TYPE, java.lang.Byte.class, e0Var);
        v2.m.f0 f0Var = new v2.m.f0();
        f6510j = f0Var;
        f6511k = a(java.lang.Short.TYPE, java.lang.Short.class, f0Var);
        v2.m.g0 g0Var = new v2.m.g0();
        f6512l = g0Var;
        f6513m = a(java.lang.Integer.TYPE, java.lang.Integer.class, g0Var);
        s2.s<java.util.concurrent.atomic.AtomicInteger> sVarA = new v2.m.h0().a();
        f6514n = sVarA;
        f6515o = b(java.util.concurrent.atomic.AtomicInteger.class, sVarA);
        s2.s<java.util.concurrent.atomic.AtomicBoolean> sVarA2 = new v2.m.i0().a();
        f6516p = sVarA2;
        f6517q = b(java.util.concurrent.atomic.AtomicBoolean.class, sVarA2);
        s2.s<java.util.concurrent.atomic.AtomicIntegerArray> sVarA3 = new v2.m.a().a();
        f6518r = sVarA3;
        f6519s = b(java.util.concurrent.atomic.AtomicIntegerArray.class, sVarA3);
        f6520t = new v2.m.b();
        f6521u = new v2.m.c();
        f6522v = new v2.m.d();
        v2.m.e eVar = new v2.m.e();
        f6523w = eVar;
        f6524x = b(java.lang.Number.class, eVar);
        v2.m.f fVar = new v2.m.f();
        f6525y = fVar;
        f6526z = a(java.lang.Character.TYPE, java.lang.Character.class, fVar);
        v2.m.g gVar = new v2.m.g();
        A = gVar;
        B = new v2.m.h();
        C = new v2.m.i();
        D = b(java.lang.String.class, gVar);
        v2.m.j jVar = new v2.m.j();
        E = jVar;
        F = b(java.lang.StringBuilder.class, jVar);
        v2.m.l lVar = new v2.m.l();
        G = lVar;
        H = b(java.lang.StringBuffer.class, lVar);
        v2.m.C0093m c0093m = new v2.m.C0093m();
        I = c0093m;
        J = b(java.net.URL.class, c0093m);
        v2.m.n nVar = new v2.m.n();
        K = nVar;
        L = b(java.net.URI.class, nVar);
        v2.m.o oVar = new v2.m.o();
        M = oVar;
        N = d(java.net.InetAddress.class, oVar);
        v2.m.p pVar = new v2.m.p();
        O = pVar;
        P = b(java.util.UUID.class, pVar);
        s2.s<java.util.Currency> sVarA4 = new v2.m.q().a();
        Q = sVarA4;
        R = b(java.util.Currency.class, sVarA4);
        S = new v2.m.r();
        v2.m.s sVar = new v2.m.s();
        T = sVar;
        U = c(java.util.Calendar.class, java.util.GregorianCalendar.class, sVar);
        v2.m.t tVar = new v2.m.t();
        V = tVar;
        W = b(java.util.Locale.class, tVar);
        v2.m.u uVar = new v2.m.u();
        X = uVar;
        Y = d(s2.i.class, uVar);
        Z = new v2.m.w();
    }

    public static <TT> s2.t a(java.lang.Class<TT> cls, java.lang.Class<TT> cls2, s2.s<? super TT> sVar) {
        return new v2.m.y(cls, cls2, sVar);
    }

    public static <TT> s2.t b(java.lang.Class<TT> cls, s2.s<TT> sVar) {
        return new v2.m.x(cls, sVar);
    }

    public static <TT> s2.t c(java.lang.Class<TT> cls, java.lang.Class<? extends TT> cls2, s2.s<? super TT> sVar) {
        return new v2.m.z(cls, cls2, sVar);
    }

    public static <T1> s2.t d(java.lang.Class<T1> cls, s2.s<T1> sVar) {
        return new v2.m.a0(cls, sVar);
    }
}
