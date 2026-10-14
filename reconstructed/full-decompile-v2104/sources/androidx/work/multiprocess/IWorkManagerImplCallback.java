package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IWorkManagerImplCallback extends android.os.IInterface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.String f2765c = "androidx$work$multiprocess$IWorkManagerImplCallback".replace('$', '.');

    public static class Default implements androidx.work.multiprocess.IWorkManagerImplCallback {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // androidx.work.multiprocess.IWorkManagerImplCallback
        public void onFailure(java.lang.String str) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImplCallback
        public void onSuccess(byte[] bArr) throws android.os.RemoteException {
        }
    }

    public static abstract class Stub extends android.os.Binder implements androidx.work.multiprocess.IWorkManagerImplCallback {

        public static class Proxy implements androidx.work.multiprocess.IWorkManagerImplCallback {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public android.os.IBinder f2766d;

            public Proxy(android.os.IBinder iBinder) {
                this.f2766d = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.f2766d;
            }

            public java.lang.String getInterfaceDescriptor() {
                return androidx.work.multiprocess.IWorkManagerImplCallback.f2765c;
            }

            @Override // androidx.work.multiprocess.IWorkManagerImplCallback
            public void onFailure(java.lang.String str) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImplCallback.f2765c);
                    parcelObtain.writeString(str);
                    this.f2766d.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImplCallback
            public void onSuccess(byte[] bArr) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImplCallback.f2765c);
                    parcelObtain.writeByteArray(bArr);
                    this.f2766d.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, androidx.work.multiprocess.IWorkManagerImplCallback.f2765c);
        }

        public static androidx.work.multiprocess.IWorkManagerImplCallback asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(androidx.work.multiprocess.IWorkManagerImplCallback.f2765c);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof androidx.work.multiprocess.IWorkManagerImplCallback)) ? new androidx.work.multiprocess.IWorkManagerImplCallback.Stub.Proxy(iBinder) : (androidx.work.multiprocess.IWorkManagerImplCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i5, android.os.Parcel parcel, android.os.Parcel parcel2, int i6) throws android.os.RemoteException {
            java.lang.String str = androidx.work.multiprocess.IWorkManagerImplCallback.f2765c;
            if (i5 >= 1 && i5 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i5 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i5 == 1) {
                onSuccess(parcel.createByteArray());
            } else {
                if (i5 != 2) {
                    return super.onTransact(i5, parcel, parcel2, i6);
                }
                onFailure(parcel.readString());
            }
            return true;
        }
    }

    void onFailure(java.lang.String str) throws android.os.RemoteException;

    void onSuccess(byte[] bArr) throws android.os.RemoteException;
}
