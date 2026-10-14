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
/* JADX INFO: compiled from: AutoCloser.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class c {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final androidx.room.c.a f2215m = new androidx.room.c.a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f0.h f2216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.os.Handler f2217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.Runnable f2218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.Object f2219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.concurrent.Executor f2221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2222g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f2223h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f0.g f2224i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f2225j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final java.lang.Runnable f2226k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final java.lang.Runnable f2227l;

    /* JADX INFO: compiled from: AutoCloser.kt */
    @kotlin.Metadata
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    public c(long j5, java.util.concurrent.TimeUnit timeUnit, java.util.concurrent.Executor executor) {
        m3.k.e(timeUnit, "autoCloseTimeUnit");
        m3.k.e(executor, "autoCloseExecutor");
        this.f2217b = new android.os.Handler(android.os.Looper.getMainLooper());
        this.f2219d = new java.lang.Object();
        this.f2220e = timeUnit.toMillis(j5);
        this.f2221f = executor;
        this.f2223h = android.os.SystemClock.uptimeMillis();
        this.f2226k = new java.lang.Runnable() { // from class: androidx.room.a
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.c.f(this.f2207a);
            }
        };
        this.f2227l = new java.lang.Runnable() { // from class: androidx.room.b
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.c.c(this.f2211a);
            }
        };
    }

    public static final void c(androidx.room.c cVar) {
        a3.o oVar;
        m3.k.e(cVar, "this$0");
        synchronized (cVar.f2219d) {
            if (android.os.SystemClock.uptimeMillis() - cVar.f2223h < cVar.f2220e) {
                return;
            }
            if (cVar.f2222g != 0) {
                return;
            }
            java.lang.Runnable runnable = cVar.f2218c;
            if (runnable != null) {
                runnable.run();
                oVar = a3.o.f122a;
            } else {
                oVar = null;
            }
            if (oVar == null) {
                throw new java.lang.IllegalStateException("onAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568".toString());
            }
            f0.g gVar = cVar.f2224i;
            if (gVar != null && gVar.v()) {
                gVar.close();
            }
            cVar.f2224i = null;
            a3.o oVar2 = a3.o.f122a;
        }
    }

    public static final void f(androidx.room.c cVar) {
        m3.k.e(cVar, "this$0");
        cVar.f2221f.execute(cVar.f2227l);
    }

    public final void d() throws java.io.IOException {
        synchronized (this.f2219d) {
            this.f2225j = true;
            f0.g gVar = this.f2224i;
            if (gVar != null) {
                gVar.close();
            }
            this.f2224i = null;
            a3.o oVar = a3.o.f122a;
        }
    }

    public final void e() {
        synchronized (this.f2219d) {
            int i5 = this.f2222g;
            if (!(i5 > 0)) {
                throw new java.lang.IllegalStateException("ref count is 0 or lower but we're supposed to decrement".toString());
            }
            int i6 = i5 - 1;
            this.f2222g = i6;
            if (i6 == 0) {
                if (this.f2224i == null) {
                    return;
                } else {
                    this.f2217b.postDelayed(this.f2226k, this.f2220e);
                }
            }
            a3.o oVar = a3.o.f122a;
        }
    }

    public final <V> V g(l3.l<? super f0.g, ? extends V> lVar) {
        m3.k.e(lVar, "block");
        try {
            return lVar.x(j());
        } finally {
            e();
        }
    }

    public final f0.g h() {
        return this.f2224i;
    }

    public final f0.h i() {
        f0.h hVar = this.f2216a;
        if (hVar != null) {
            return hVar;
        }
        m3.k.n("delegateOpenHelper");
        return null;
    }

    public final f0.g j() {
        synchronized (this.f2219d) {
            this.f2217b.removeCallbacks(this.f2226k);
            this.f2222g++;
            if (!(!this.f2225j)) {
                throw new java.lang.IllegalStateException("Attempting to open already closed database.".toString());
            }
            f0.g gVar = this.f2224i;
            if (gVar != null && gVar.v()) {
                return gVar;
            }
            f0.g gVarL0 = i().l0();
            this.f2224i = gVarL0;
            return gVarL0;
        }
    }

    public final void k(f0.h hVar) {
        m3.k.e(hVar, "delegateOpenHelper");
        n(hVar);
    }

    public final boolean l() {
        return !this.f2225j;
    }

    public final void m(java.lang.Runnable runnable) {
        m3.k.e(runnable, "onAutoClose");
        this.f2218c = runnable;
    }

    public final void n(f0.h hVar) {
        m3.k.e(hVar, "<set-?>");
        this.f2216a = hVar;
    }
}
