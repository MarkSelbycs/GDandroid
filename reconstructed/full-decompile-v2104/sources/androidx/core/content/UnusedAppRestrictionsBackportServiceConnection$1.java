package androidx.core.content;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
class UnusedAppRestrictionsBackportServiceConnection$1 extends androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback.Stub {
    public UnusedAppRestrictionsBackportServiceConnection$1(androidx.core.content.d dVar) {
    }

    @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
    public void onIsPermissionRevocationEnabledForAppResult(boolean z4, boolean z5) throws android.os.RemoteException {
        if (z4 && !z5) {
            throw null;
        }
        throw null;
    }
}
