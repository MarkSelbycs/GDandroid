package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RemoteCallback extends androidx.work.multiprocess.IWorkManagerImplCallback.Stub {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.os.IBinder f2781e = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b1.c<byte[]> f2780d = b1.c.t();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final android.os.IBinder.DeathRecipient f2782f = new androidx.work.multiprocess.RemoteCallback.a(this);

    public static class a implements android.os.IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.work.multiprocess.RemoteCallback f2783a;

        public a(androidx.work.multiprocess.RemoteCallback remoteCallback) {
            this.f2783a = remoteCallback;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.f2783a.onFailure("Binder died");
        }
    }

    private void unlinkToDeath() {
        android.os.IBinder iBinder = this.f2781e;
        if (iBinder != null) {
            try {
                iBinder.unlinkToDeath(this.f2782f, 0);
            } catch (java.util.NoSuchElementException unused) {
            }
        }
    }

    public r2.a<byte[]> getFuture() {
        return this.f2780d;
    }

    @Override // androidx.work.multiprocess.IWorkManagerImplCallback
    public void onFailure(java.lang.String str) {
        onFailure(new java.lang.RuntimeException(str));
    }

    public void onRequestCompleted() {
    }

    @Override // androidx.work.multiprocess.IWorkManagerImplCallback
    public void onSuccess(byte[] bArr) throws android.os.RemoteException {
        this.f2780d.p(bArr);
        unlinkToDeath();
        onRequestCompleted();
    }

    public void setBinder(android.os.IBinder iBinder) {
        this.f2781e = iBinder;
        try {
            iBinder.linkToDeath(this.f2782f, 0);
        } catch (android.os.RemoteException e5) {
            onFailure(e5);
        }
    }

    private void onFailure(java.lang.Throwable th) {
        this.f2780d.q(th);
        unlinkToDeath();
        onRequestCompleted();
    }
}
