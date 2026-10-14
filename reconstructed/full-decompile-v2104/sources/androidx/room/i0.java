package androidx.room;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:31)
    */
/* JADX INFO: compiled from: RoomDatabase.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public abstract class i0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final androidx.room.i0.c f2287o = new androidx.room.i0.c(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile f0.g f2288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.concurrent.Executor f2289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.concurrent.Executor f2290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public f0.h f2291d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2293f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2294g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.List<? extends androidx.room.i0.b> f2295h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public androidx.room.c f2298k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.Object> f2300m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final java.util.Map<java.lang.Class<?>, java.lang.Object> f2301n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.room.m f2292e = g();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.util.Map<java.lang.Class<? extends d0.a>, d0.a> f2296i = new java.util.LinkedHashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final java.util.concurrent.locks.ReentrantReadWriteLock f2297j = new java.util.concurrent.locks.ReentrantReadWriteLock();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final java.lang.ThreadLocal<java.lang.Integer> f2299l = new java.lang.ThreadLocal<>();

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public static class a<T extends androidx.room.i0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.content.Context f2302a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final java.lang.Class<T> f2303b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.String f2304c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.util.List<androidx.room.i0.b> f2305d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public androidx.room.i0.g f2306e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public java.util.concurrent.Executor f2307f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final java.util.List<java.lang.Object> f2308g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public java.util.List<d0.a> f2309h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public java.util.concurrent.Executor f2310i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public java.util.concurrent.Executor f2311j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public f0.h.c f2312k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f2313l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public androidx.room.i0.d f2314m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public android.content.Intent f2315n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f2316o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f2317p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public long f2318q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public java.util.concurrent.TimeUnit f2319r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final androidx.room.i0.e f2320s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public java.util.Set<java.lang.Integer> f2321t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public java.util.Set<java.lang.Integer> f2322u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public java.lang.String f2323v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public java.io.File f2324w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public java.util.concurrent.Callable<java.io.InputStream> f2325x;

        public a(android.content.Context context, java.lang.Class<T> cls, java.lang.String str) {
            m3.k.e(context, "context");
            m3.k.e(cls, "klass");
            this.f2302a = context;
            this.f2303b = cls;
            this.f2304c = str;
            this.f2305d = new java.util.ArrayList();
            this.f2308g = new java.util.ArrayList();
            this.f2309h = new java.util.ArrayList();
            this.f2314m = androidx.room.i0.d.AUTOMATIC;
            this.f2316o = true;
            this.f2318q = -1L;
            this.f2320s = new androidx.room.i0.e();
            this.f2321t = new java.util.LinkedHashSet();
        }

        public androidx.room.i0.a<T> a(androidx.room.i0.b bVar) {
            m3.k.e(bVar, "callback");
            this.f2305d.add(bVar);
            return this;
        }

        public androidx.room.i0.a<T> b(d0.b... bVarArr) {
            m3.k.e(bVarArr, "migrations");
            if (this.f2322u == null) {
                this.f2322u = new java.util.HashSet();
            }
            for (d0.b bVar : bVarArr) {
                java.util.Set<java.lang.Integer> set = this.f2322u;
                m3.k.b(set);
                set.add(java.lang.Integer.valueOf(bVar.f3939a));
                java.util.Set<java.lang.Integer> set2 = this.f2322u;
                m3.k.b(set2);
                set2.add(java.lang.Integer.valueOf(bVar.f3940b));
            }
            this.f2320s.b((d0.b[]) java.util.Arrays.copyOf(bVarArr, bVarArr.length));
            return this;
        }

        public androidx.room.i0.a<T> c() {
            this.f2313l = true;
            return this;
        }

        public T d() {
            f0.h.c c0Var;
            java.util.concurrent.Executor executor = this.f2310i;
            if (executor == null && this.f2311j == null) {
                java.util.concurrent.Executor executorD = g.a.d();
                this.f2311j = executorD;
                this.f2310i = executorD;
            } else if (executor != null && this.f2311j == null) {
                this.f2311j = executor;
            } else if (executor == null) {
                this.f2310i = this.f2311j;
            }
            java.util.Set<java.lang.Integer> set = this.f2322u;
            if (set != null) {
                m3.k.b(set);
                java.util.Iterator<java.lang.Integer> it = set.iterator();
                while (it.hasNext()) {
                    int iIntValue = it.next().intValue();
                    if (!(!this.f2321t.contains(java.lang.Integer.valueOf(iIntValue)))) {
                        throw new java.lang.IllegalArgumentException(("Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: " + iIntValue).toString());
                    }
                }
            }
            f0.h.c n0Var = this.f2312k;
            if (n0Var == null) {
                n0Var = new g0.f();
            }
            if (n0Var != null) {
                if (this.f2318q > 0) {
                    if (this.f2304c == null) {
                        throw new java.lang.IllegalArgumentException("Cannot create auto-closing database for an in-memory database.".toString());
                    }
                    long j5 = this.f2318q;
                    java.util.concurrent.TimeUnit timeUnit = this.f2319r;
                    if (timeUnit == null) {
                        throw new java.lang.IllegalArgumentException("Required value was null.".toString());
                    }
                    java.util.concurrent.Executor executor2 = this.f2310i;
                    if (executor2 == null) {
                        throw new java.lang.IllegalArgumentException("Required value was null.".toString());
                    }
                    n0Var = new androidx.room.e(n0Var, new androidx.room.c(j5, timeUnit, executor2));
                }
                java.lang.String str = this.f2323v;
                if (str != null || this.f2324w != null || this.f2325x != null) {
                    if (this.f2304c == null) {
                        throw new java.lang.IllegalArgumentException("Cannot create from asset or file for an in-memory database.".toString());
                    }
                    int i5 = str == null ? 0 : 1;
                    java.io.File file = this.f2324w;
                    int i6 = file == null ? 0 : 1;
                    java.util.concurrent.Callable<java.io.InputStream> callable = this.f2325x;
                    if (!((i5 + i6) + (callable == null ? 0 : 1) == 1)) {
                        throw new java.lang.IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.".toString());
                    }
                    n0Var = new androidx.room.n0(str, file, callable, n0Var);
                }
            } else {
                n0Var = null;
            }
            if (n0Var == null) {
                throw new java.lang.IllegalArgumentException("Required value was null.".toString());
            }
            androidx.room.i0.g gVar = this.f2306e;
            if (gVar != null) {
                java.util.concurrent.Executor executor3 = this.f2307f;
                if (executor3 == null) {
                    throw new java.lang.IllegalArgumentException("Required value was null.".toString());
                }
                if (gVar == null) {
                    throw new java.lang.IllegalArgumentException("Required value was null.".toString());
                }
                c0Var = new androidx.room.c0(n0Var, executor3, gVar);
            } else {
                c0Var = n0Var;
            }
            android.content.Context context = this.f2302a;
            java.lang.String str2 = this.f2304c;
            androidx.room.i0.e eVar = this.f2320s;
            java.util.List<androidx.room.i0.b> list = this.f2305d;
            boolean z4 = this.f2313l;
            androidx.room.i0.d dVarF = this.f2314m.f(context);
            java.util.concurrent.Executor executor4 = this.f2310i;
            if (executor4 == null) {
                throw new java.lang.IllegalArgumentException("Required value was null.".toString());
            }
            java.util.concurrent.Executor executor5 = this.f2311j;
            if (executor5 == null) {
                throw new java.lang.IllegalArgumentException("Required value was null.".toString());
            }
            androidx.room.f fVar = new androidx.room.f(context, str2, c0Var, eVar, list, z4, dVarF, executor4, executor5, this.f2315n, this.f2316o, this.f2317p, this.f2321t, this.f2323v, this.f2324w, this.f2325x, null, this.f2308g, this.f2309h);
            T t5 = (T) androidx.room.h0.b(this.f2303b, "_Impl");
            t5.r(fVar);
            return t5;
        }

        public androidx.room.i0.a<T> e() {
            this.f2316o = false;
            this.f2317p = true;
            return this;
        }

        public androidx.room.i0.a<T> f(f0.h.c cVar) {
            this.f2312k = cVar;
            return this;
        }

        public androidx.room.i0.a<T> g(java.util.concurrent.Executor executor) {
            m3.k.e(executor, "executor");
            this.f2310i = executor;
            return this;
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public static abstract class b {
        public void a(f0.g gVar) {
            m3.k.e(gVar, "db");
        }

        public void b(f0.g gVar) {
            m3.k.e(gVar, "db");
        }

        public void c(f0.g gVar) {
            m3.k.e(gVar, "db");
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public static final class c {
        public c() {
        }

        public /* synthetic */ c(m3.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public enum d {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        public final boolean e(android.app.ActivityManager activityManager) {
            return f0.c.b(activityManager);
        }

        public final androidx.room.i0.d f(android.content.Context context) {
            m3.k.e(context, "context");
            if (this != AUTOMATIC) {
                return this;
            }
            java.lang.Object systemService = context.getSystemService("activity");
            m3.k.c(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            return !e((android.app.ActivityManager) systemService) ? WRITE_AHEAD_LOGGING : TRUNCATE;
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.util.Map<java.lang.Integer, java.util.TreeMap<java.lang.Integer, d0.b>> f2330a = new java.util.LinkedHashMap();

        public final void a(d0.b bVar) {
            int i5 = bVar.f3939a;
            int i6 = bVar.f3940b;
            java.util.Map<java.lang.Integer, java.util.TreeMap<java.lang.Integer, d0.b>> map = this.f2330a;
            java.lang.Integer numValueOf = java.lang.Integer.valueOf(i5);
            java.util.TreeMap<java.lang.Integer, d0.b> treeMap = map.get(numValueOf);
            if (treeMap == null) {
                treeMap = new java.util.TreeMap<>();
                map.put(numValueOf, treeMap);
            }
            java.util.TreeMap<java.lang.Integer, d0.b> treeMap2 = treeMap;
            if (treeMap2.containsKey(java.lang.Integer.valueOf(i6))) {
                android.util.Log.w("ROOM", "Overriding migration " + treeMap2.get(java.lang.Integer.valueOf(i6)) + " with " + bVar);
            }
            treeMap2.put(java.lang.Integer.valueOf(i6), bVar);
        }

        public void b(d0.b... bVarArr) {
            m3.k.e(bVarArr, "migrations");
            for (d0.b bVar : bVarArr) {
                a(bVar);
            }
        }

        public final boolean c(int i5, int i6) {
            java.util.Map<java.lang.Integer, java.util.Map<java.lang.Integer, d0.b>> mapF = f();
            if (!mapF.containsKey(java.lang.Integer.valueOf(i5))) {
                return false;
            }
            java.util.Map<java.lang.Integer, d0.b> mapG = mapF.get(java.lang.Integer.valueOf(i5));
            if (mapG == null) {
                mapG = b3.h0.g();
            }
            return mapG.containsKey(java.lang.Integer.valueOf(i6));
        }

        public java.util.List<d0.b> d(int i5, int i6) {
            if (i5 == i6) {
                return b3.o.e();
            }
            return e(new java.util.ArrayList(), i6 > i5, i5, i6);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x0056  */
        /* JADX WARN: Code duplicated, block: B:29:0x0058  */
        public final java.util.List<d0.b> e(java.util.List<d0.b> list, boolean z4, int i5, int i6) {
            boolean z5;
            boolean z6;
            do {
                z5 = true;
                if (!(!z4 ? i5 <= i6 : i5 >= i6)) {
                    return list;
                }
                java.util.TreeMap<java.lang.Integer, d0.b> treeMap = this.f2330a.get(java.lang.Integer.valueOf(i5));
                if (treeMap != null) {
                    java.util.Iterator<java.lang.Integer> it = (z4 ? treeMap.descendingKeySet() : treeMap.keySet()).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z5 = false;
                            break;
                        }
                        java.lang.Integer next = it.next();
                        if (z4) {
                            int i7 = i5 + 1;
                            m3.k.d(next, "targetVersion");
                            int iIntValue = next.intValue();
                            if (i7 > iIntValue || iIntValue > i6) {
                                z6 = false;
                            } else {
                                z6 = true;
                            }
                        } else {
                            m3.k.d(next, "targetVersion");
                            int iIntValue2 = next.intValue();
                            if (i6 > iIntValue2 || iIntValue2 >= i5) {
                                z6 = false;
                            } else {
                                z6 = true;
                            }
                        }
                        if (z6) {
                            d0.b bVar = treeMap.get(next);
                            m3.k.b(bVar);
                            list.add(bVar);
                            i5 = next.intValue();
                            break;
                        }
                    }
                } else {
                    return null;
                }
            } while (z5);
            return null;
        }

        public java.util.Map<java.lang.Integer, java.util.Map<java.lang.Integer, d0.b>> f() {
            return this.f2330a;
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public static abstract class f {
    }

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public interface g {
        void a(java.lang.String str, java.util.List<? extends java.lang.Object> list);
    }

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public static final class h extends m3.l implements l3.l<f0.g, java.lang.Object> {
        public h() {
            super(1);
        }

        @Override // l3.l
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object x(f0.g gVar) {
            m3.k.e(gVar, "it");
            androidx.room.i0.this.s();
            return null;
        }
    }

    /* JADX INFO: compiled from: RoomDatabase.kt */
    @kotlin.Metadata
    public static final class i extends m3.l implements l3.l<f0.g, java.lang.Object> {
        public i() {
            super(1);
        }

        @Override // l3.l
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object x(f0.g gVar) {
            m3.k.e(gVar, "it");
            androidx.room.i0.this.t();
            return null;
        }
    }

    public i0() {
        java.util.Map<java.lang.String, java.lang.Object> mapSynchronizedMap = java.util.Collections.synchronizedMap(new java.util.LinkedHashMap());
        m3.k.d(mapSynchronizedMap, "synchronizedMap(mutableMapOf())");
        this.f2300m = mapSynchronizedMap;
        this.f2301n = new java.util.LinkedHashMap();
    }

    public static /* synthetic */ android.database.Cursor y(androidx.room.i0 i0Var, f0.j jVar, android.os.CancellationSignal cancellationSignal, int i5, java.lang.Object obj) {
        if (obj != null) {
            throw new java.lang.UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
        }
        if ((i5 & 2) != 0) {
            cancellationSignal = null;
        }
        return i0Var.x(jVar, cancellationSignal);
    }

    public void A(java.lang.Runnable runnable) {
        m3.k.e(runnable, "body");
        e();
        try {
            runnable.run();
            B();
        } finally {
            i();
        }
    }

    public void B() {
        m().l0().J();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T C(java.lang.Class<T> cls, f0.h hVar) {
        if (cls.isInstance(hVar)) {
            return hVar;
        }
        if (hVar instanceof androidx.room.g) {
            return (T) C(cls, ((androidx.room.g) hVar).c());
        }
        return null;
    }

    public void c() {
        if (!this.f2293f && !(!v())) {
            throw new java.lang.IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.".toString());
        }
    }

    public void d() {
        if (!(q() || this.f2299l.get() == null)) {
            throw new java.lang.IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.".toString());
        }
    }

    public void e() {
        c();
        androidx.room.c cVar = this.f2298k;
        if (cVar == null) {
            s();
        } else {
            cVar.g(new androidx.room.i0.h());
        }
    }

    public f0.k f(java.lang.String str) {
        m3.k.e(str, "sql");
        c();
        d();
        return m().l0().S(str);
    }

    public abstract androidx.room.m g();

    public abstract f0.h h(androidx.room.f fVar);

    public void i() {
        androidx.room.c cVar = this.f2298k;
        if (cVar == null) {
            t();
        } else {
            cVar.g(new androidx.room.i0.i());
        }
    }

    public java.util.List<d0.b> j(java.util.Map<java.lang.Class<? extends d0.a>, d0.a> map) {
        m3.k.e(map, "autoMigrationSpecs");
        return b3.o.e();
    }

    public final java.util.concurrent.locks.Lock k() {
        java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock lock = this.f2297j.readLock();
        m3.k.d(lock, "readWriteLock.readLock()");
        return lock;
    }

    public androidx.room.m l() {
        return this.f2292e;
    }

    public f0.h m() {
        f0.h hVar = this.f2291d;
        if (hVar != null) {
            return hVar;
        }
        m3.k.n("internalOpenHelper");
        return null;
    }

    public java.util.concurrent.Executor n() {
        java.util.concurrent.Executor executor = this.f2289b;
        if (executor != null) {
            return executor;
        }
        m3.k.n("internalQueryExecutor");
        return null;
    }

    public java.util.Set<java.lang.Class<? extends d0.a>> o() {
        return b3.j0.d();
    }

    public java.util.Map<java.lang.Class<?>, java.util.List<java.lang.Class<?>>> p() {
        return b3.h0.g();
    }

    public boolean q() {
        return m().l0().s0();
    }

    public void r(androidx.room.f fVar) {
        m3.k.e(fVar, "configuration");
        this.f2291d = h(fVar);
        java.util.Set<java.lang.Class<? extends d0.a>> setO = o();
        java.util.BitSet bitSet = new java.util.BitSet();
        java.util.Iterator<java.lang.Class<? extends d0.a>> it = setO.iterator();
        while (true) {
            int i5 = -1;
            if (it.hasNext()) {
                java.lang.Class<? extends d0.a> next = it.next();
                int size = fVar.f2278r.size() - 1;
                if (size >= 0) {
                    while (true) {
                        int i6 = size - 1;
                        if (next.isAssignableFrom(fVar.f2278r.get(size).getClass())) {
                            bitSet.set(size);
                            i5 = size;
                            break;
                        } else if (i6 < 0) {
                            break;
                        } else {
                            size = i6;
                        }
                    }
                }
                if (!(i5 >= 0)) {
                    throw new java.lang.IllegalArgumentException(("A required auto migration spec (" + next.getCanonicalName() + ") is missing in the database configuration.").toString());
                }
                this.f2296i.put(next, fVar.f2278r.get(i5));
            } else {
                int size2 = fVar.f2278r.size() - 1;
                if (size2 >= 0) {
                    while (true) {
                        int i7 = size2 - 1;
                        if (!bitSet.get(size2)) {
                            throw new java.lang.IllegalArgumentException("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.".toString());
                        }
                        if (i7 < 0) {
                            break;
                        } else {
                            size2 = i7;
                        }
                    }
                }
                for (d0.b bVar : j(this.f2296i)) {
                    if (!fVar.f2264d.c(bVar.f3939a, bVar.f3940b)) {
                        fVar.f2264d.b(bVar);
                    }
                }
                androidx.room.m0 m0Var = (androidx.room.m0) C(androidx.room.m0.class, m());
                if (m0Var != null) {
                    m0Var.h(fVar);
                }
                androidx.room.d dVar = (androidx.room.d) C(androidx.room.d.class, m());
                if (dVar != null) {
                    this.f2298k = dVar.f2232b;
                    l().o(dVar.f2232b);
                }
                boolean z4 = fVar.f2267g == androidx.room.i0.d.WRITE_AHEAD_LOGGING;
                m().setWriteAheadLoggingEnabled(z4);
                this.f2295h = fVar.f2265e;
                this.f2289b = fVar.f2268h;
                this.f2290c = new androidx.room.q0(fVar.f2269i);
                this.f2293f = fVar.f2266f;
                this.f2294g = z4;
                if (fVar.f2270j != null) {
                    if (fVar.f2262b == null) {
                        throw new java.lang.IllegalArgumentException("Required value was null.".toString());
                    }
                    l().p(fVar.f2261a, fVar.f2262b, fVar.f2270j);
                }
                java.util.Map<java.lang.Class<?>, java.util.List<java.lang.Class<?>>> mapP = p();
                java.util.BitSet bitSet2 = new java.util.BitSet();
                for (java.util.Map.Entry<java.lang.Class<?>, java.util.List<java.lang.Class<?>>> entry : mapP.entrySet()) {
                    java.lang.Class<?> key = entry.getKey();
                    for (java.lang.Class<?> cls : entry.getValue()) {
                        int size3 = fVar.f2277q.size() - 1;
                        if (size3 < 0) {
                            size3 = -1;
                            break;
                        }
                        while (true) {
                            int i8 = size3 - 1;
                            if (cls.isAssignableFrom(fVar.f2277q.get(size3).getClass())) {
                                bitSet2.set(size3);
                                break;
                            } else {
                                if (i8 < 0) {
                                    size3 = -1;
                                    break;
                                }
                                size3 = i8;
                            }
                        }
                        if (!(size3 >= 0)) {
                            throw new java.lang.IllegalArgumentException(("A required type converter (" + cls + ") for " + key.getCanonicalName() + " is missing in the database configuration.").toString());
                        }
                        this.f2301n.put(cls, fVar.f2277q.get(size3));
                    }
                }
                int size4 = fVar.f2277q.size() - 1;
                if (size4 < 0) {
                    return;
                }
                while (true) {
                    int i9 = size4 - 1;
                    if (!bitSet2.get(size4)) {
                        throw new java.lang.IllegalArgumentException("Unexpected type converter " + fVar.f2277q.get(size4) + ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder.");
                    }
                    if (i9 < 0) {
                        return;
                    } else {
                        size4 = i9;
                    }
                }
            }
        }
    }

    public final void s() {
        c();
        f0.g gVarL0 = m().l0();
        l().t(gVarL0);
        if (gVarL0.B()) {
            gVarL0.T();
        } else {
            gVarL0.m();
        }
    }

    public final void t() {
        m().l0().k();
        if (q()) {
            return;
        }
        l().l();
    }

    public void u(f0.g gVar) {
        m3.k.e(gVar, "db");
        l().i(gVar);
    }

    public final boolean v() {
        return android.os.Looper.getMainLooper().getThread() == java.lang.Thread.currentThread();
    }

    public boolean w() {
        java.lang.Boolean boolValueOf;
        boolean zV;
        androidx.room.c cVar = this.f2298k;
        if (cVar == null) {
            f0.g gVar = this.f2288a;
            if (gVar != null) {
                zV = gVar.v();
            } else {
                boolValueOf = null;
            }
            return m3.k.a(boolValueOf, java.lang.Boolean.TRUE);
        }
        zV = cVar.l();
        boolValueOf = java.lang.Boolean.valueOf(zV);
        return m3.k.a(boolValueOf, java.lang.Boolean.TRUE);
    }

    public android.database.Cursor x(f0.j jVar, android.os.CancellationSignal cancellationSignal) {
        m3.k.e(jVar, "query");
        c();
        d();
        return cancellationSignal != null ? m().l0().F(jVar, cancellationSignal) : m().l0().t(jVar);
    }

    public <V> V z(java.util.concurrent.Callable<V> callable) {
        m3.k.e(callable, "body");
        e();
        try {
            V vCall = callable.call();
            B();
            return vCall;
        } finally {
            i();
        }
    }
}
