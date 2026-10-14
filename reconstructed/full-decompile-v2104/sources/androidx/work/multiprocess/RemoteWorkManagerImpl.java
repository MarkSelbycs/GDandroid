package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RemoteWorkManagerImpl extends androidx.work.multiprocess.IWorkManagerImpl.Stub {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static byte[] f2825e = new byte[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r0.p0 f2826d;

    public class a extends androidx.work.multiprocess.a<q0.r.b.c> {
        public a(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(q0.r.b.c cVar) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public class b extends androidx.work.multiprocess.a<q0.r.b.c> {
        public b(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(q0.r.b.c cVar) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public class c extends androidx.work.multiprocess.a<q0.r.b.c> {
        public c(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(q0.r.b.c cVar) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public class d extends androidx.work.multiprocess.a<q0.r.b.c> {
        public d(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(q0.r.b.c cVar) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public class e extends androidx.work.multiprocess.a<q0.r.b.c> {
        public e(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(q0.r.b.c cVar) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public class f extends androidx.work.multiprocess.a<q0.r.b.c> {
        public f(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(q0.r.b.c cVar) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public class g extends androidx.work.multiprocess.a<q0.r.b.c> {
        public g(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(q0.r.b.c cVar) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public class h extends androidx.work.multiprocess.a<java.util.List<q0.y>> {
        public h(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(java.util.List<q0.y> list) {
            return e1.a.a(new androidx.work.multiprocess.parcelable.ParcelableWorkInfos(list));
        }
    }

    public class i extends androidx.work.multiprocess.a<java.lang.Void> {
        public i(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(java.lang.Void r5) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public class j extends androidx.work.multiprocess.a<java.lang.Void> {
        public j(java.util.concurrent.Executor executor, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback, r2.a aVar) {
            super(executor, iWorkManagerImplCallback, aVar);
        }

        @Override // androidx.work.multiprocess.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public byte[] b(java.lang.Void r5) {
            return androidx.work.multiprocess.RemoteWorkManagerImpl.f2825e;
        }
    }

    public RemoteWorkManagerImpl(android.content.Context context) {
        this.f2826d = r0.p0.o(context);
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void cancelAllWork(androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            new androidx.work.multiprocess.RemoteWorkManagerImpl.g(this.f2826d.w().c(), iWorkManagerImplCallback, this.f2826d.h().a()).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void cancelAllWorkByTag(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            new androidx.work.multiprocess.RemoteWorkManagerImpl.e(this.f2826d.w().c(), iWorkManagerImplCallback, this.f2826d.a(str).a()).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void cancelUniqueWork(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            new androidx.work.multiprocess.RemoteWorkManagerImpl.f(this.f2826d.w().c(), iWorkManagerImplCallback, this.f2826d.i(str).a()).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void cancelWorkById(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            new androidx.work.multiprocess.RemoteWorkManagerImpl.d(this.f2826d.w().c(), iWorkManagerImplCallback, this.f2826d.j(java.util.UUID.fromString(str)).a()).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void enqueueContinuation(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            new androidx.work.multiprocess.RemoteWorkManagerImpl.c(this.f2826d.w().c(), iWorkManagerImplCallback, ((androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl.CREATOR)).b(this.f2826d).a().a()).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void enqueueWorkRequests(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            new androidx.work.multiprocess.RemoteWorkManagerImpl.b(this.f2826d.w().c(), iWorkManagerImplCallback, this.f2826d.b(((androidx.work.multiprocess.parcelable.ParcelableWorkRequests) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableWorkRequests.CREATOR)).a()).a()).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void queryWorkInfo(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            new androidx.work.multiprocess.RemoteWorkManagerImpl.h(this.f2826d.w().c(), iWorkManagerImplCallback, this.f2826d.v(((androidx.work.multiprocess.parcelable.ParcelableWorkQuery) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableWorkQuery.CREATOR)).a())).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void setForegroundAsync(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo parcelableForegroundRequestInfo = (androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo.CREATOR);
            c1.b bVarW = this.f2826d.w();
            new androidx.work.multiprocess.RemoteWorkManagerImpl.j(bVarW.c(), iWorkManagerImplCallback, new a1.y(this.f2826d.u(), this.f2826d.q(), bVarW).a(this.f2826d.l(), java.util.UUID.fromString(parcelableForegroundRequestInfo.b()), parcelableForegroundRequestInfo.a())).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void setProgress(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            androidx.work.multiprocess.parcelable.ParcelableUpdateRequest parcelableUpdateRequest = (androidx.work.multiprocess.parcelable.ParcelableUpdateRequest) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableUpdateRequest.CREATOR);
            android.content.Context contextL = this.f2826d.l();
            c1.b bVarW = this.f2826d.w();
            new androidx.work.multiprocess.RemoteWorkManagerImpl.i(bVarW.c(), iWorkManagerImplCallback, new a1.z(this.f2826d.u(), bVarW).a(contextL, java.util.UUID.fromString(parcelableUpdateRequest.b()), parcelableUpdateRequest.a())).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IWorkManagerImpl
    public void updateUniquePeriodicWorkRequest(java.lang.String str, byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            new androidx.work.multiprocess.RemoteWorkManagerImpl.a(this.f2826d.w().c(), iWorkManagerImplCallback, r0.u0.c(this.f2826d, str, ((androidx.work.multiprocess.parcelable.ParcelableWorkRequest) e1.a.b(bArr, androidx.work.multiprocess.parcelable.ParcelableWorkRequest.CREATOR)).a()).a()).a();
        } catch (java.lang.Throwable th) {
            androidx.work.multiprocess.a.RunnableC0026a.a(iWorkManagerImplCallback, th);
        }
    }
}
