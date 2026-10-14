package androidx.core.app.unusedapprestrictions;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IUnusedAppRestrictionsBackportCallback extends android.os.IInterface {

    public static class Default implements androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
        public void onIsPermissionRevocationEnabledForAppResult(boolean z4, boolean z5) throws android.os.RemoteException {
        }
    }

    public static abstract class Stub extends android.os.Binder implements androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback {

        public static class Proxy implements androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public android.os.IBinder f1364d;

            public Proxy(android.os.IBinder iBinder) {
                this.f1364d = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.f1364d;
            }

            public java.lang.String getInterfaceDescriptor() {
                return "androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback";
            }

            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback
            public void onIsPermissionRevocationEnabledForAppResult(boolean z4, boolean z5) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback");
                    parcelObtain.writeInt(z4 ? 1 : 0);
                    parcelObtain.writeInt(z5 ? 1 : 0);
                    this.f1364d.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback");
        }

        public static androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback)) ? new androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback.Stub.Proxy(iBinder) : (androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i5, android.os.Parcel parcel, android.os.Parcel parcel2, int i6) throws android.os.RemoteException {
            if (i5 >= 1 && i5 <= 16777215) {
                parcel.enforceInterface("androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback");
            }
            if (i5 == 1598968902) {
                parcel2.writeString("androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback");
                return true;
            }
            if (i5 != 1) {
                return super.onTransact(i5, parcel, parcel2, i6);
            }
            onIsPermissionRevocationEnabledForAppResult(parcel.readInt() != 0, parcel.readInt() != 0);
            return true;
        }
    }

    void onIsPermissionRevocationEnabledForAppResult(boolean z4, boolean z5) throws android.os.RemoteException;
}
