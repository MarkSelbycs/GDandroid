package androidx.room;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IMultiInstanceInvalidationCallback extends android.os.IInterface {

    public static class Default implements androidx.room.IMultiInstanceInvalidationCallback {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // androidx.room.IMultiInstanceInvalidationCallback
        public void onInvalidation(java.lang.String[] strArr) throws android.os.RemoteException {
        }
    }

    public static abstract class Stub extends android.os.Binder implements androidx.room.IMultiInstanceInvalidationCallback {

        public static class Proxy implements androidx.room.IMultiInstanceInvalidationCallback {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public android.os.IBinder f2184d;

            public Proxy(android.os.IBinder iBinder) {
                this.f2184d = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.f2184d;
            }

            public java.lang.String getInterfaceDescriptor() {
                return "androidx.room.IMultiInstanceInvalidationCallback";
            }

            @Override // androidx.room.IMultiInstanceInvalidationCallback
            public void onInvalidation(java.lang.String[] strArr) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    parcelObtain.writeStringArray(strArr);
                    this.f2184d.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }

        public static androidx.room.IMultiInstanceInvalidationCallback asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof androidx.room.IMultiInstanceInvalidationCallback)) ? new androidx.room.IMultiInstanceInvalidationCallback.Stub.Proxy(iBinder) : (androidx.room.IMultiInstanceInvalidationCallback) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i5, android.os.Parcel parcel, android.os.Parcel parcel2, int i6) throws android.os.RemoteException {
            if (i5 >= 1 && i5 <= 16777215) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
            }
            if (i5 == 1598968902) {
                parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
                return true;
            }
            if (i5 != 1) {
                return super.onTransact(i5, parcel, parcel2, i6);
            }
            onInvalidation(parcel.createStringArray());
            return true;
        }
    }

    void onInvalidation(java.lang.String[] strArr) throws android.os.RemoteException;
}
