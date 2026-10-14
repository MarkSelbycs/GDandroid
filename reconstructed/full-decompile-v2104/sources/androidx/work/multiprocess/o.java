package androidx.work.multiprocess;

/* JADX INFO: compiled from: RemoteWorkerWrapper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o {
    public static final void c(final b1.c cVar, androidx.work.a aVar, android.content.Context context, java.lang.String str, androidx.work.WorkerParameters workerParameters, c1.b bVar, final androidx.work.multiprocess.l lVar) {
        m3.k.e(aVar, "$configuration");
        m3.k.e(context, "$context");
        m3.k.e(str, "$workerClassName");
        m3.k.e(workerParameters, "$workerParameters");
        m3.k.e(bVar, "$taskExecutor");
        m3.k.e(lVar, "$wrapper");
        try {
            if (cVar.isCancelled()) {
                return;
            }
            final androidx.work.c cVarB = aVar.n().b(context, str, workerParameters);
            if (cVarB == null) {
                java.lang.String str2 = "Unable to create an instance of " + str;
                q0.n.e().c(androidx.work.multiprocess.ListenableWorkerImpl.f2767j, str2);
                cVar.q(new java.lang.IllegalStateException(str2));
                return;
            }
            if (cVarB instanceof androidx.work.multiprocess.RemoteListenableWorker) {
                cVar.a(new java.lang.Runnable() { // from class: androidx.work.multiprocess.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        androidx.work.multiprocess.o.d(cVar, cVarB, lVar);
                    }
                }, bVar.c());
                cVar.r(((androidx.work.multiprocess.RemoteListenableWorker) cVarB).d());
                return;
            }
            java.lang.String str3 = str + " does not extend " + androidx.work.multiprocess.RemoteListenableWorker.class.getName();
            q0.n.e().c(androidx.work.multiprocess.ListenableWorkerImpl.f2767j, str3);
            cVar.q(new java.lang.IllegalStateException(str3));
        } catch (java.lang.Throwable th) {
            cVar.q(th);
        }
    }

    public static final void d(b1.c cVar, androidx.work.c cVar2, androidx.work.multiprocess.l lVar) {
        m3.k.e(lVar, "$wrapper");
        try {
            cVar.get();
        } catch (java.util.concurrent.CancellationException unused) {
            ((androidx.work.multiprocess.RemoteListenableWorker) cVar2).stop(lVar.b().get());
        } catch (java.lang.Throwable unused2) {
        }
    }

    public static final androidx.work.multiprocess.l e(final android.content.Context context, final androidx.work.a aVar, final java.lang.String str, final androidx.work.WorkerParameters workerParameters, final c1.b bVar) {
        m3.k.e(context, "context");
        m3.k.e(aVar, "configuration");
        m3.k.e(str, "workerClassName");
        m3.k.e(workerParameters, "workerParameters");
        m3.k.e(bVar, "taskExecutor");
        final b1.c cVarT = b1.c.t();
        m3.k.d(cVarT, "future");
        final androidx.work.multiprocess.l lVar = new androidx.work.multiprocess.l(cVarT);
        bVar.b().execute(new java.lang.Runnable() { // from class: androidx.work.multiprocess.m
            @Override // java.lang.Runnable
            public final void run() {
                androidx.work.multiprocess.o.c(cVarT, aVar, context, str, workerParameters, bVar, lVar);
            }
        });
        return lVar;
    }
}
