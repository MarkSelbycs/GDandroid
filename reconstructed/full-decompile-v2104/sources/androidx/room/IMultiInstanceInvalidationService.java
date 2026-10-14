package androidx.room;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IMultiInstanceInvalidationService extends android.os.IInterface {

    public static class Default implements androidx.room.IMultiInstanceInvalidationService {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void broadcastInvalidation(int i5, java.lang.String[] strArr) throws android.os.RemoteException {
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public int registerCallback(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, java.lang.String str) throws android.os.RemoteException {
            return 0;
        }

        @Override // androidx.room.IMultiInstanceInvalidationService
        public void unregisterCallback(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i5) throws android.os.RemoteException {
        }
    }

    public static abstract class Stub extends android.os.Binder implements androidx.room.IMultiInstanceInvalidationService {

        public static class Proxy implements androidx.room.IMultiInstanceInvalidationService {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public android.os.IBinder f2185d;

            public Proxy(android.os.IBinder iBinder) {
                this.f2185d = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.f2185d;
            }

            @Override // androidx.room.IMultiInstanceInvalidationService
            public void broadcastInvalidation(int i5, java.lang.String[] strArr) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    parcelObtain.writeInt(i5);
                    parcelObtain.writeStringArray(strArr);
                    this.f2185d.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public java.lang.String getInterfaceDescriptor() {
                return "androidx.room.IMultiInstanceInvalidationService";
            }

            @Override // androidx.room.IMultiInstanceInvalidationService
            public int registerCallback(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, java.lang.String str) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    parcelObtain.writeStrongInterface(iMultiInstanceInvalidationCallback);
                    parcelObtain.writeString(str);
                    this.f2185d.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.room.IMultiInstanceInvalidationService
            public void unregisterCallback(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i5) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                android.os.Parcel parcelObtain2 = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    parcelObtain.writeStrongInterface(iMultiInstanceInvalidationCallback);
                    parcelObtain.writeInt(i5);
                    this.f2185d.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }

        public static androidx.room.IMultiInstanceInvalidationService asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof androidx.room.IMultiInstanceInvalidationService)) ? new androidx.room.IMultiInstanceInvalidationService.Stub.Proxy(iBinder) : (androidx.room.IMultiInstanceInvalidationService) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i5, android.os.Parcel parcel, android.os.Parcel parcel2, int i6) throws android.os.RemoteException {
            if (i5 >= 1 && i5 <= 16777215) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            }
            if (i5 == 1598968902) {
                parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
                return true;
            }
            if (i5 == 1) {
                int iRegisterCallback = registerCallback(androidx.room.IMultiInstanceInvalidationCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iRegisterCallback);
            } else if (i5 == 2) {
                unregisterCallback(androidx.room.IMultiInstanceInvalidationCallback.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
            } else {
                if (i5 != 3) {
                    return super.onTransact(i5, parcel, parcel2, i6);
                }
                broadcastInvalidation(parcel.readInt(), parcel.createStringArray());
            }
            return true;
        }
    }

    void broadcastInvalidation(int i5, java.lang.String[] strArr) throws android.os.RemoteException;

    int registerCallback(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, java.lang.String str) throws android.os.RemoteException;

    void unregisterCallback(androidx.room.IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, int i5) throws android.os.RemoteException;
}
