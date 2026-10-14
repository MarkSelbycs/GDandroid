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
/* JADX INFO: compiled from: MultiInstanceInvalidationClient.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class MultiInstanceInvalidationClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.String f2186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.m f2187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.concurrent.Executor f2188c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.content.Context f2189d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2190e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public androidx.room.m.c f2191f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public androidx.room.IMultiInstanceInvalidationService f2192g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final androidx.room.IMultiInstanceInvalidationCallback f2193h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.util.concurrent.atomic.AtomicBoolean f2194i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final android.content.ServiceConnection f2195j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final java.lang.Runnable f2196k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final java.lang.Runnable f2197l;

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.kt */
    @kotlin.Metadata
    public static final class a extends androidx.room.m.c {
        public a(java.lang.String[] strArr) {
            super(strArr);
        }

        @Override // androidx.room.m.c
        public boolean b() {
            return true;
        }

        @Override // androidx.room.m.c
        public void c(java.util.Set<java.lang.String> set) {
            m3.k.e(set, "tables");
            if (androidx.room.MultiInstanceInvalidationClient.this.j().get()) {
                return;
            }
            try {
                androidx.room.IMultiInstanceInvalidationService iMultiInstanceInvalidationServiceH = androidx.room.MultiInstanceInvalidationClient.this.h();
                if (iMultiInstanceInvalidationServiceH != null) {
                    int iC = androidx.room.MultiInstanceInvalidationClient.this.c();
                    java.lang.Object[] array = set.toArray(new java.lang.String[0]);
                    m3.k.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    iMultiInstanceInvalidationServiceH.broadcastInvalidation(iC, (java.lang.String[]) array);
                }
            } catch (android.os.RemoteException e5) {
                android.util.Log.w("ROOM", "Cannot broadcast invalidation", e5);
            }
        }
    }

    /* JADX INFO: compiled from: MultiInstanceInvalidationClient.kt */
    @kotlin.Metadata
    public static final class b implements android.content.ServiceConnection {
        public b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(android.content.ComponentName componentName, android.os.IBinder iBinder) {
            m3.k.e(componentName, "name");
            m3.k.e(iBinder, "service");
            androidx.room.MultiInstanceInvalidationClient.this.m(androidx.room.IMultiInstanceInvalidationService.Stub.asInterface(iBinder));
            androidx.room.MultiInstanceInvalidationClient.this.d().execute(androidx.room.MultiInstanceInvalidationClient.this.i());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(android.content.ComponentName componentName) {
            m3.k.e(componentName, "name");
            androidx.room.MultiInstanceInvalidationClient.this.d().execute(androidx.room.MultiInstanceInvalidationClient.this.g());
            androidx.room.MultiInstanceInvalidationClient.this.m(null);
        }
    }

    public MultiInstanceInvalidationClient(android.content.Context context, java.lang.String str, android.content.Intent intent, androidx.room.m mVar, java.util.concurrent.Executor executor) {
        m3.k.e(context, "context");
        m3.k.e(str, "name");
        m3.k.e(intent, "serviceIntent");
        m3.k.e(mVar, "invalidationTracker");
        m3.k.e(executor, "executor");
        this.f2186a = str;
        this.f2187b = mVar;
        this.f2188c = executor;
        android.content.Context applicationContext = context.getApplicationContext();
        this.f2189d = applicationContext;
        this.f2193h = new androidx.room.MultiInstanceInvalidationClient$callback$1(this);
        this.f2194i = new java.util.concurrent.atomic.AtomicBoolean(false);
        androidx.room.MultiInstanceInvalidationClient.b bVar = new androidx.room.MultiInstanceInvalidationClient.b();
        this.f2195j = bVar;
        this.f2196k = new java.lang.Runnable() { // from class: androidx.room.n
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.MultiInstanceInvalidationClient.n(this.f2395a);
            }
        };
        this.f2197l = new java.lang.Runnable() { // from class: androidx.room.o
            @Override // java.lang.Runnable
            public final void run() {
                androidx.room.MultiInstanceInvalidationClient.k(this.f2400a);
            }
        };
        java.lang.Object[] array = mVar.h().keySet().toArray(new java.lang.String[0]);
        m3.k.c(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        l(new androidx.room.MultiInstanceInvalidationClient.a((java.lang.String[]) array));
        applicationContext.bindService(intent, bVar, 1);
    }

    public static final void k(androidx.room.MultiInstanceInvalidationClient multiInstanceInvalidationClient) {
        m3.k.e(multiInstanceInvalidationClient, "this$0");
        multiInstanceInvalidationClient.f2187b.m(multiInstanceInvalidationClient.f());
    }

    public static final void n(androidx.room.MultiInstanceInvalidationClient multiInstanceInvalidationClient) {
        m3.k.e(multiInstanceInvalidationClient, "this$0");
        try {
            androidx.room.IMultiInstanceInvalidationService iMultiInstanceInvalidationService = multiInstanceInvalidationClient.f2192g;
            if (iMultiInstanceInvalidationService != null) {
                multiInstanceInvalidationClient.f2190e = iMultiInstanceInvalidationService.registerCallback(multiInstanceInvalidationClient.f2193h, multiInstanceInvalidationClient.f2186a);
                multiInstanceInvalidationClient.f2187b.b(multiInstanceInvalidationClient.f());
            }
        } catch (android.os.RemoteException e5) {
            android.util.Log.w("ROOM", "Cannot register multi-instance invalidation callback", e5);
        }
    }

    public final int c() {
        return this.f2190e;
    }

    public final java.util.concurrent.Executor d() {
        return this.f2188c;
    }

    public final androidx.room.m e() {
        return this.f2187b;
    }

    public final androidx.room.m.c f() {
        androidx.room.m.c cVar = this.f2191f;
        if (cVar != null) {
            return cVar;
        }
        m3.k.n("observer");
        return null;
    }

    public final java.lang.Runnable g() {
        return this.f2197l;
    }

    public final androidx.room.IMultiInstanceInvalidationService h() {
        return this.f2192g;
    }

    public final java.lang.Runnable i() {
        return this.f2196k;
    }

    public final java.util.concurrent.atomic.AtomicBoolean j() {
        return this.f2194i;
    }

    public final void l(androidx.room.m.c cVar) {
        m3.k.e(cVar, "<set-?>");
        this.f2191f = cVar;
    }

    public final void m(androidx.room.IMultiInstanceInvalidationService iMultiInstanceInvalidationService) {
        this.f2192g = iMultiInstanceInvalidationService;
    }
}
