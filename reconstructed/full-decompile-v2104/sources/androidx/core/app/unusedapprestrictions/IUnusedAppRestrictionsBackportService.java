package androidx.core.app.unusedapprestrictions;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IUnusedAppRestrictionsBackportService extends android.os.IInterface {

    public static class Default implements androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
        public void isPermissionRevocationEnabledForApp(androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) throws android.os.RemoteException {
        }
    }

    public static abstract class Stub extends android.os.Binder implements androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService {

        public static class Proxy implements androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public android.os.IBinder f1365d;

            public Proxy(android.os.IBinder iBinder) {
                this.f1365d = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.f1365d;
            }

            public java.lang.String getInterfaceDescriptor() {
                return "androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService";
            }

            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
            public void isPermissionRevocationEnabledForApp(androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService");
                    parcelObtain.writeStrongInterface(iUnusedAppRestrictionsBackportCallback);
                    this.f1365d.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService");
        }

        public static androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService)) ? new androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService.Stub.Proxy(iBinder) : (androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i5, android.os.Parcel parcel, android.os.Parcel parcel2, int i6) throws android.os.RemoteException {
            if (i5 >= 1 && i5 <= 16777215) {
                parcel.enforceInterface("androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService");
            }
            if (i5 == 1598968902) {
                parcel2.writeString("androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService");
                return true;
            }
            if (i5 != 1) {
                return super.onTransact(i5, parcel, parcel2, i6);
            }
            isPermissionRevocationEnabledForApp(androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback.Stub.asInterface(parcel.readStrongBinder()));
            return true;
        }
    }

    void isPermissionRevocationEnabledForApp(androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) throws android.os.RemoteException;
}
