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
/* JADX INFO: compiled from: MultiInstanceInvalidationService.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@kotlin.Metadata
public final class MultiInstanceInvalidationService extends android.app.Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<java.lang.Integer, java.lang.String> f2202b = new java.util.LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.os.RemoteCallbackList<androidx.room.IMultiInstanceInvalidationCallback> f2203c = new androidx.room.MultiInstanceInvalidationService.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.room.IMultiInstanceInvalidationService.Stub f2204d = new androidx.room.IMultiInstanceInvalidationService.Stub() { // from class: androidx.room.MultiInstanceInvalidationService$binder$1
        @Override // androidx.room.IMultiInstanceInvalidationService
        public void broadcastInvalidation(int i5, java.lang.String[] strArr) {
            m3.k.e(strArr, "tables");
            android.os.RemoteCallbackList<androidx.room.IMultiInstanceInvalidationCallback> remoteCallbackListA = this.f2206d.a();
            androidx.room.MultiInstanceInvalidationService multiInstanceInvalidationService = this.f2206d;
            synchronized (remoteCallbackListA) {
                java.lang.String str = multiInstanceInvalidationService.b().get(java.lang.Integer.valueOf(i5));
                if (str == null) {
                    android.util.Log.w("ROOM", "Remote invalidation client ID not registered");
                    return;
                }
                int iBeginBroadcast = multiInstanceInvalidationService.a().beginBroadcast();
                for (int i6 = 0; i6 < iBeginBroadcast; i6++) {
                    try {
                        java.lang.Object broadcastCookie = multiInstanceInvalidationService.a().getBroadcastCookie(i6);
                        m3.k.c(broadcastCookie, "null cannot be cast to non-null type kotlin.Int");
                        int iIntValue = ((java.lang.Integer) broadcastCookie).intValue();
                        java.lang.String str2 = multiInstanceInvalidationService.b().get(java.lang.Integer.valueOf(iIntValue));
                        if (i5 != iIntValue && m3.k.a(str, str2)) {
                            try {
                                ((androidx.room.IMultiInstanceInvalidationCallback) multiInstanceInvalidationService.a().getBroadcastItem(i6)).onInvalidation(strArr);
                            } catch (android.os.RemoteException e5) {
                                android.util.Log.w("ROOM", "Error invoking a remote callback", e5);
                            }
                        }
                    } catch (java.lang.Throwable th) {
                        multiInstanceInvalidationService.a().finishBroadcast();
                        throw th;
                    }
                }
                multiInstanceInvalidationService.a().finishBroadcast();
                a3.o oVar = a3.o.f122a;
            }
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public int registerCallback(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, java.lang.String str) {
            m3.k.e(iMultiInstanceInvalidationCallback, "callback");
            int i5 = 0;
            if (str == null) {
                return 0;
            }
            android.os.RemoteCallbackList<androidx.room.IMultiInstanceInvalidationCallback> remoteCallbackListA = this.f2206d.a();
            androidx.room.MultiInstanceInvalidationService multiInstanceInvalidationService = this.f2206d;
            synchronized (remoteCallbackListA) {
                multiInstanceInvalidationService.d(multiInstanceInvalidationService.c() + 1);
                int iC = multiInstanceInvalidationService.c();
                if (multiInstanceInvalidationService.a().register(iMultiInstanceInvalidationCallback, java.lang.Integer.valueOf(iC))) {
                    multiInstanceInvalidationService.b().put(java.lang.Integer.valueOf(iC), str);
                    i5 = iC;
                } else {
                    multiInstanceInvalidationService.d(multiInstanceInvalidationService.c() - 1);
                    multiInstanceInvalidationService.c();
                }
            }
            return i5;
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void unregisterCallback(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i5) {
            m3.k.e(iMultiInstanceInvalidationCallback, "callback");
            android.os.RemoteCallbackList<androidx.room.IMultiInstanceInvalidationCallback> remoteCallbackListA = this.f2206d.a();
            androidx.room.MultiInstanceInvalidationService multiInstanceInvalidationService = this.f2206d;
            synchronized (remoteCallbackListA) {
                multiInstanceInvalidationService.a().unregister(iMultiInstanceInvalidationCallback);
                multiInstanceInvalidationService.b().remove(java.lang.Integer.valueOf(i5));
            }
        }
    };

    /* JADX INFO: compiled from: MultiInstanceInvalidationService.kt */
    @kotlin.Metadata
    public static final class a extends android.os.RemoteCallbackList<androidx.room.IMultiInstanceInvalidationCallback> {
        public a() {
        }

        @Override // android.os.RemoteCallbackList
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCallbackDied(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, java.lang.Object obj) {
            m3.k.e(iMultiInstanceInvalidationCallback, "callback");
            m3.k.e(obj, "cookie");
            androidx.room.MultiInstanceInvalidationService.this.b().remove((java.lang.Integer) obj);
        }
    }

    public final android.os.RemoteCallbackList<androidx.room.IMultiInstanceInvalidationCallback> a() {
        return this.f2203c;
    }

    public final java.util.Map<java.lang.Integer, java.lang.String> b() {
        return this.f2202b;
    }

    public final int c() {
        return this.f2201a;
    }

    public final void d(int i5) {
        this.f2201a = i5;
    }

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        m3.k.e(intent, "intent");
        return this.f2204d;
    }
}
