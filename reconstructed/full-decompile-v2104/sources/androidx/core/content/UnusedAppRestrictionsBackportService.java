package androidx.core.content;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class UnusedAppRestrictionsBackportService extends android.app.Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService.Stub f1373a = new androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService.Stub() { // from class: androidx.core.content.UnusedAppRestrictionsBackportService.1
        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
        public void isPermissionRevocationEnabledForApp(androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) throws android.os.RemoteException {
            if (iUnusedAppRestrictionsBackportCallback == null) {
                return;
            }
            androidx.core.content.UnusedAppRestrictionsBackportService.this.a(new androidx.core.content.c(iUnusedAppRestrictionsBackportCallback));
        }
    };

    public abstract void a(androidx.core.content.c cVar);

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        return this.f1373a;
    }
}
