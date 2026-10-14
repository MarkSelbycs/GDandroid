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
/* JADX INFO: compiled from: InvalidationTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public class m {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final androidx.room.m.a f2358q = new androidx.room.m.a(null);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final java.lang.String[] f2359r = {"UPDATE", "DELETE", "INSERT"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f2360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.String> f2361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.util.Set<java.lang.String>> f2362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.Map<java.lang.String, java.lang.Integer> f2363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.String[] f2364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.room.c f2365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.util.concurrent.atomic.AtomicBoolean f2366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f2367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile f0.k f2368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final androidx.room.m.b f2369j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final androidx.room.k f2370k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final h.b<androidx.room.m.c, androidx.room.m.d> f2371l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public androidx.room.MultiInstanceInvalidationClient f2372m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final java.lang.Object f2373n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final java.lang.Object f2374o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final java.lang.Runnable f2375p;

    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @kotlin.Metadata
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }

        public final void a(f0.g gVar) {
            m3.k.e(gVar, "database");
            if (gVar.B()) {
                gVar.T();
            } else {
                gVar.m();
            }
        }

        public final java.lang.String b(java.lang.String str, java.lang.String str2) {
            m3.k.e(str, "tableName");
            m3.k.e(str2, "triggerType");
            return "`room_table_modification_trigger_" + str + '_' + str2 + '`';
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @kotlin.Metadata
    public static final class b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final androidx.room.m.b.a f2376e = new androidx.room.m.b.a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long[] f2377a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f2378b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f2379c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f2380d;

        /* JADX INFO: compiled from: InvalidationTracker.kt */
        @kotlin.Metadata
        public static final class a {
            public a() {
            }

            public /* synthetic */ a(m3.g gVar) {
                this();
            }
        }

        public b(int i5) {
            this.f2377a = new long[i5];
            this.f2378b = new boolean[i5];
            this.f2379c = new int[i5];
        }

        public final int[] a() {
            synchronized (this) {
                if (!this.f2380d) {
                    return null;
                }
                long[] jArr = this.f2377a;
                int length = jArr.length;
                int i5 = 0;
                int i6 = 0;
                while (i5 < length) {
                    int i7 = i6 + 1;
                    int i8 = 1;
                    boolean z4 = jArr[i5] > 0;
                    boolean[] zArr = this.f2378b;
                    if (z4 != zArr[i6]) {
                        int[] iArr = this.f2379c;
                        if (!z4) {
                            i8 = 2;
                        }
                        iArr[i6] = i8;
                    } else {
                        this.f2379c[i6] = 0;
                    }
                    zArr[i6] = z4;
                    i5++;
                    i6 = i7;
                }
                this.f2380d = false;
                return (int[]) this.f2379c.clone();
            }
        }

        public final boolean b(int... iArr) {
            boolean z4;
            m3.k.e(iArr, "tableIds");
            synchronized (this) {
                z4 = false;
                for (int i5 : iArr) {
                    long[] jArr = this.f2377a;
                    long j5 = jArr[i5];
                    jArr[i5] = 1 + j5;
                    if (j5 == 0) {
                        this.f2380d = true;
                        z4 = true;
                    }
                }
                a3.o oVar = a3.o.f122a;
            }
            return z4;
        }

        public final boolean c(int... iArr) {
            boolean z4;
            m3.k.e(iArr, "tableIds");
            synchronized (this) {
                z4 = false;
                for (int i5 : iArr) {
                    long[] jArr = this.f2377a;
                    long j5 = jArr[i5];
                    jArr[i5] = j5 - 1;
                    if (j5 == 1) {
                        this.f2380d = true;
                        z4 = true;
                    }
                }
                a3.o oVar = a3.o.f122a;
            }
            return z4;
        }

        public final void d() {
            synchronized (this) {
                java.util.Arrays.fill(this.f2378b, false);
                this.f2380d = true;
                a3.o oVar = a3.o.f122a;
            }
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @kotlin.Metadata
    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final java.lang.String[] f2381a;

        public c(java.lang.String[] strArr) {
            m3.k.e(strArr, "tables");
            this.f2381a = strArr;
        }

        public final java.lang.String[] a() {
            return this.f2381a;
        }

        public boolean b() {
            return false;
        }

        public abstract void c(java.util.Set<java.lang.String> set);
    }

    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @kotlin.Metadata
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.room.m.c f2382a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f2383b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final java.lang.String[] f2384c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final java.util.Set<java.lang.String> f2385d;

        public d(androidx.room.m.c cVar, int[] iArr, java.lang.String[] strArr) {
            m3.k.e(cVar, "observer");
            m3.k.e(iArr, "tableIds");
            m3.k.e(strArr, "tableNames");
            this.f2382a = cVar;
            this.f2383b = iArr;
            this.f2384c = strArr;
            this.f2385d = (strArr.length == 0) ^ true ? b3.i0.c(strArr[0]) : b3.j0.d();
            if (!(iArr.length == strArr.length)) {
                throw new java.lang.IllegalStateException("Check failed.".toString());
            }
        }

        public final int[] a() {
            return this.f2383b;
        }

        public final void b(java.util.Set<java.lang.Integer> set) {
            java.util.Set<java.lang.String> setD;
            m3.k.e(set, "invalidatedTablesIds");
            int[] iArr = this.f2383b;
            int length = iArr.length;
            if (length != 0) {
                int i5 = 0;
                if (length != 1) {
                    java.util.Set setB = b3.i0.b();
                    int[] iArr2 = this.f2383b;
                    int length2 = iArr2.length;
                    int i6 = 0;
                    while (i5 < length2) {
                        int i7 = i6 + 1;
                        if (set.contains(java.lang.Integer.valueOf(iArr2[i5]))) {
                            setB.add(this.f2384c[i6]);
                        }
                        i5++;
                        i6 = i7;
                    }
                    setD = b3.i0.a(setB);
                } else {
                    setD = set.contains(java.lang.Integer.valueOf(iArr[0])) ? this.f2385d : b3.j0.d();
                }
            } else {
                setD = b3.j0.d();
            }
            if (!setD.isEmpty()) {
                this.f2382a.c(setD);
            }
        }

        public final void c(java.lang.String[] strArr) {
            java.util.Set<java.lang.String> setD;
            m3.k.e(strArr, "tables");
            int length = this.f2384c.length;
            if (length != 0) {
                boolean z4 = false;
                if (length != 1) {
                    java.util.Set setB = b3.i0.b();
                    for (java.lang.String str : strArr) {
                        for (java.lang.String str2 : this.f2384c) {
                            if (s3.l.h(str2, str, true)) {
                                setB.add(str2);
                            }
                        }
                    }
                    setD = b3.i0.a(setB);
                } else {
                    for (java.lang.String str3 : strArr) {
                        if (s3.l.h(str3, this.f2384c[0], true)) {
                            z4 = true;
                            break;
                        }
                    }
                    setD = z4 ? this.f2385d : b3.j0.d();
                }
            } else {
                setD = b3.j0.d();
            }
            if (!setD.isEmpty()) {
                this.f2382a.c(setD);
            }
        }
    }

    /* JADX INFO: compiled from: InvalidationTracker.kt */
    @kotlin.Metadata
    public static final class e implements java.lang.Runnable {
        public e() {
        }

        public final java.util.Set<java.lang.Integer> a() throws java.lang.IllegalAccessException, java.io.IOException, java.lang.reflect.InvocationTargetException {
            androidx.room.m mVar = androidx.room.m.this;
            java.util.Set setB = b3.i0.b();
            android.database.Cursor cursorY = androidx.room.i0.y(mVar.e(), new f0.a("SELECT * FROM room_table_modification_log WHERE invalidated = 1;"), null, 2, null);
            while (cursorY.moveToNext()) {
                try {
                    setB.add(java.lang.Integer.valueOf(cursorY.getInt(0)));
                } catch (java.lang.Throwable th) {
                    try {
                        throw th;
                    } catch (java.lang.Throwable th2) {
                        j3.a.a(cursorY, th);
                        throw th2;
                    }
                }
            }
            a3.o oVar = a3.o.f122a;
            j3.a.a(cursorY, null);
            java.util.Set<java.lang.Integer> setA = b3.i0.a(setB);
            if (!setA.isEmpty()) {
                if (androidx.room.m.this.d() == null) {
                    throw new java.lang.IllegalStateException("Required value was null.".toString());
                }
                f0.k kVarD = androidx.room.m.this.d();
                if (kVarD == null) {
                    throw new java.lang.IllegalArgumentException("Required value was null.".toString());
                }
                kVarD.Q();
            }
            return setA;
        }

        @Override // java.lang.Runnable
        public void run() {
            java.util.Set<java.lang.Integer> setD;
            androidx.room.c cVar;
            java.util.concurrent.locks.Lock lockK = androidx.room.m.this.e().k();
            lockK.lock();
            try {
                try {
                    if (!androidx.room.m.this.c()) {
                        lockK.unlock();
                        androidx.room.c cVar2 = androidx.room.m.this.f2365f;
                        if (cVar2 != null) {
                            cVar2.e();
                            return;
                        }
                        return;
                    }
                    if (!androidx.room.m.this.g().compareAndSet(true, false)) {
                        lockK.unlock();
                        androidx.room.c cVar3 = androidx.room.m.this.f2365f;
                        if (cVar3 != null) {
                            cVar3.e();
                            return;
                        }
                        return;
                    }
                    if (androidx.room.m.this.e().q()) {
                        lockK.unlock();
                        androidx.room.c cVar4 = androidx.room.m.this.f2365f;
                        if (cVar4 != null) {
                            cVar4.e();
                            return;
                        }
                        return;
                    }
                    f0.g gVarL0 = androidx.room.m.this.e().m().l0();
                    gVarL0.T();
                    try {
                        setD = a();
                        gVarL0.J();
                        gVarL0.k();
                        lockK.unlock();
                        cVar = androidx.room.m.this.f2365f;
                        if (cVar != null) {
                            cVar.e();
                        }
                        if (!setD.isEmpty()) {
                            h.b<androidx.room.m.c, androidx.room.m.d> bVarF = androidx.room.m.this.f();
                            androidx.room.m mVar = androidx.room.m.this;
                            synchronized (bVarF) {
                                java.util.Iterator<java.util.Map.Entry<K, V>> it = mVar.f().iterator();
                                while (it.hasNext()) {
                                    ((androidx.room.m.d) ((java.util.Map.Entry) it.next()).getValue()).b(setD);
                                }
                                a3.o oVar = a3.o.f122a;
                            }
                        }
                    } catch (java.lang.Throwable th) {
                        gVarL0.k();
                        throw th;
                    }
                } catch (android.database.sqlite.SQLiteException e5) {
                    android.util.Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e5);
                    setD = b3.j0.d();
                    lockK.unlock();
                    cVar = androidx.room.m.this.f2365f;
                    if (cVar != null) {
                    }
                } catch (java.lang.IllegalStateException e6) {
                    android.util.Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e6);
                    setD = b3.j0.d();
                    lockK.unlock();
                    cVar = androidx.room.m.this.f2365f;
                    if (cVar != null) {
                    }
                }
            } catch (java.lang.Throwable th2) {
                lockK.unlock();
                androidx.room.c cVar5 = androidx.room.m.this.f2365f;
                if (cVar5 != null) {
                    cVar5.e();
                }
                throw th2;
            }
        }
    }

    public m(androidx.room.i0 i0Var, java.util.Map<java.lang.String, java.lang.String> map, java.util.Map<java.lang.String, java.util.Set<java.lang.String>> map2, java.lang.String... strArr) {
        java.lang.String lowerCase;
        m3.k.e(i0Var, "database");
        m3.k.e(map, "shadowTablesMap");
        m3.k.e(map2, "viewTables");
        m3.k.e(strArr, "tableNames");
        this.f2360a = i0Var;
        this.f2361b = map;
        this.f2362c = map2;
        this.f2366g = new java.util.concurrent.atomic.AtomicBoolean(false);
        this.f2369j = new androidx.room.m.b(strArr.length);
        this.f2370k = new androidx.room.k(i0Var);
        this.f2371l = new h.b<>();
        this.f2373n = new java.lang.Object();
        this.f2374o = new java.lang.Object();
        this.f2363d = new java.util.LinkedHashMap();
        int length = strArr.length;
        java.lang.String[] strArr2 = new java.lang.String[length];
        for (int i5 = 0; i5 < length; i5++) {
            java.lang.String str = strArr[i5];
            java.util.Locale locale = java.util.Locale.US;
            m3.k.d(locale, "US");
            java.lang.String lowerCase2 = str.toLowerCase(locale);
            m3.k.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            this.f2363d.put(lowerCase2, java.lang.Integer.valueOf(i5));
            java.lang.String str2 = this.f2361b.get(strArr[i5]);
            if (str2 != null) {
                m3.k.d(locale, "US");
                lowerCase = str2.toLowerCase(locale);
                m3.k.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr2[i5] = lowerCase2;
        }
        this.f2364e = strArr2;
        for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : this.f2361b.entrySet()) {
            java.lang.String value = entry.getValue();
            java.util.Locale locale2 = java.util.Locale.US;
            m3.k.d(locale2, "US");
            java.lang.String lowerCase3 = value.toLowerCase(locale2);
            m3.k.d(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
            if (this.f2363d.containsKey(lowerCase3)) {
                java.lang.String key = entry.getKey();
                m3.k.d(locale2, "US");
                java.lang.String lowerCase4 = key.toLowerCase(locale2);
                m3.k.d(lowerCase4, "this as java.lang.String).toLowerCase(locale)");
                java.util.Map<java.lang.String, java.lang.Integer> map3 = this.f2363d;
                map3.put(lowerCase4, (java.lang.Integer) b3.h0.h(map3, lowerCase3));
            }
        }
        this.f2375p = new androidx.room.m.e();
    }

    @android.annotation.SuppressLint({"RestrictedApi"})
    public void b(androidx.room.m.c cVar) {
        androidx.room.m.d dVarG;
        m3.k.e(cVar, "observer");
        java.lang.String[] strArrN = n(cVar.a());
        java.util.ArrayList arrayList = new java.util.ArrayList(strArrN.length);
        for (java.lang.String str : strArrN) {
            java.util.Map<java.lang.String, java.lang.Integer> map = this.f2363d;
            java.util.Locale locale = java.util.Locale.US;
            m3.k.d(locale, "US");
            java.lang.String lowerCase = str.toLowerCase(locale);
            m3.k.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            java.lang.Integer num = map.get(lowerCase);
            if (num == null) {
                throw new java.lang.IllegalArgumentException("There is no table with name " + str);
            }
            arrayList.add(java.lang.Integer.valueOf(num.intValue()));
        }
        int[] iArrA = b3.w.A(arrayList);
        androidx.room.m.d dVar = new androidx.room.m.d(cVar, iArrA, strArrN);
        synchronized (this.f2371l) {
            dVarG = this.f2371l.g(cVar, dVar);
        }
        if (dVarG == null && this.f2369j.b(java.util.Arrays.copyOf(iArrA, iArrA.length))) {
            s();
        }
    }

    public final boolean c() {
        if (!this.f2360a.w()) {
            return false;
        }
        if (!this.f2367h) {
            this.f2360a.m().l0();
        }
        if (this.f2367h) {
            return true;
        }
        android.util.Log.e("ROOM", "database is not initialized even though it is open");
        return false;
    }

    public final f0.k d() {
        return this.f2368i;
    }

    public final androidx.room.i0 e() {
        return this.f2360a;
    }

    public final h.b<androidx.room.m.c, androidx.room.m.d> f() {
        return this.f2371l;
    }

    public final java.util.concurrent.atomic.AtomicBoolean g() {
        return this.f2366g;
    }

    public final java.util.Map<java.lang.String, java.lang.Integer> h() {
        return this.f2363d;
    }

    public final void i(f0.g gVar) {
        m3.k.e(gVar, "database");
        synchronized (this.f2374o) {
            if (this.f2367h) {
                android.util.Log.e("ROOM", "Invalidation tracker is initialized twice :/.");
                return;
            }
            gVar.D("PRAGMA temp_store = MEMORY;");
            gVar.D("PRAGMA recursive_triggers='ON';");
            gVar.D("CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            t(gVar);
            this.f2368i = gVar.S("UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1");
            this.f2367h = true;
            a3.o oVar = a3.o.f122a;
        }
    }

    public final void j(java.lang.String... strArr) {
        m3.k.e(strArr, "tables");
        synchronized (this.f2371l) {
            java.util.Iterator<java.util.Map.Entry<K, V>> it = this.f2371l.iterator();
            while (it.hasNext()) {
                java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
                m3.k.d(entry, "(observer, wrapper)");
                androidx.room.m.c cVar = (androidx.room.m.c) entry.getKey();
                androidx.room.m.d dVar = (androidx.room.m.d) entry.getValue();
                if (!cVar.b()) {
                    dVar.c(strArr);
                }
            }
            a3.o oVar = a3.o.f122a;
        }
    }

    public final void k() {
        synchronized (this.f2374o) {
            this.f2367h = false;
            this.f2369j.d();
            a3.o oVar = a3.o.f122a;
        }
    }

    public void l() {
        if (this.f2366g.compareAndSet(false, true)) {
            androidx.room.c cVar = this.f2365f;
            if (cVar != null) {
                cVar.j();
            }
            this.f2360a.n().execute(this.f2375p);
        }
    }

    @android.annotation.SuppressLint({"RestrictedApi"})
    public void m(androidx.room.m.c cVar) {
        androidx.room.m.d dVarH;
        m3.k.e(cVar, "observer");
        synchronized (this.f2371l) {
            dVarH = this.f2371l.h(cVar);
        }
        if (dVarH != null) {
            androidx.room.m.b bVar = this.f2369j;
            int[] iArrA = dVarH.a();
            if (bVar.c(java.util.Arrays.copyOf(iArrA, iArrA.length))) {
                s();
            }
        }
    }

    public final java.lang.String[] n(java.lang.String[] strArr) {
        java.util.Set setB = b3.i0.b();
        for (java.lang.String str : strArr) {
            java.util.Map<java.lang.String, java.util.Set<java.lang.String>> map = this.f2362c;
            java.util.Locale locale = java.util.Locale.US;
            m3.k.d(locale, "US");
            java.lang.String lowerCase = str.toLowerCase(locale);
            m3.k.d(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (map.containsKey(lowerCase)) {
                java.util.Map<java.lang.String, java.util.Set<java.lang.String>> map2 = this.f2362c;
                m3.k.d(locale, "US");
                java.lang.String lowerCase2 = str.toLowerCase(locale);
                m3.k.d(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                java.util.Set<java.lang.String> set = map2.get(lowerCase2);
                m3.k.b(set);
                setB.addAll(set);
            } else {
                setB.add(str);
            }
        }
        java.lang.Object[] array = b3.i0.a(setB).toArray(new java.lang.String[0]);
        m3.k.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (java.lang.String[]) array;
    }

    public final void o(androidx.room.c cVar) {
        m3.k.e(cVar, "autoCloser");
        this.f2365f = cVar;
        cVar.m(new java.lang.Runnable() { // from class: androidx.room.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f2347a.k();
            }
        });
    }

    public final void p(android.content.Context context, java.lang.String str, android.content.Intent intent) {
        m3.k.e(context, "context");
        m3.k.e(str, "name");
        m3.k.e(intent, "serviceIntent");
        this.f2372m = new androidx.room.MultiInstanceInvalidationClient(context, str, intent, this, this.f2360a.n());
    }

    public final void q(f0.g gVar, int i5) {
        gVar.D("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i5 + ", 0)");
        java.lang.String str = this.f2364e[i5];
        for (java.lang.String str2 : f2359r) {
            java.lang.String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + f2358q.b(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = " + i5 + " AND invalidated = 0; END";
            m3.k.d(str3, "StringBuilder().apply(builderAction).toString()");
            gVar.D(str3);
        }
    }

    public final void r(f0.g gVar, int i5) {
        java.lang.String str = this.f2364e[i5];
        for (java.lang.String str2 : f2359r) {
            java.lang.String str3 = "DROP TRIGGER IF EXISTS " + f2358q.b(str, str2);
            m3.k.d(str3, "StringBuilder().apply(builderAction).toString()");
            gVar.D(str3);
        }
    }

    public final void s() {
        if (this.f2360a.w()) {
            t(this.f2360a.m().l0());
        }
    }

    public final void t(f0.g gVar) {
        m3.k.e(gVar, "database");
        if (gVar.s0()) {
            return;
        }
        try {
            java.util.concurrent.locks.Lock lockK = this.f2360a.k();
            lockK.lock();
            try {
                synchronized (this.f2373n) {
                    int[] iArrA = this.f2369j.a();
                    if (iArrA == null) {
                        lockK.unlock();
                        return;
                    }
                    f2358q.a(gVar);
                    try {
                        int length = iArrA.length;
                        int i5 = 0;
                        int i6 = 0;
                        while (i5 < length) {
                            int i7 = iArrA[i5];
                            int i8 = i6 + 1;
                            if (i7 == 1) {
                                q(gVar, i6);
                            } else if (i7 == 2) {
                                r(gVar, i6);
                            }
                            i5++;
                            i6 = i8;
                        }
                        gVar.J();
                        gVar.k();
                        a3.o oVar = a3.o.f122a;
                        lockK.unlock();
                    } catch (java.lang.Throwable th) {
                        gVar.k();
                        throw th;
                    }
                }
            } catch (java.lang.Throwable th2) {
                lockK.unlock();
                throw th2;
            }
        } catch (android.database.sqlite.SQLiteException e5) {
            android.util.Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e5);
        } catch (java.lang.IllegalStateException e6) {
            android.util.Log.e("ROOM", "Cannot run invalidation tracker. Is the db closed?", e6);
        }
    }
}
