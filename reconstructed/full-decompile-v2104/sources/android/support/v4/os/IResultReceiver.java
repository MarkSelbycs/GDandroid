package android.support.v4.os;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IResultReceiver extends android.os.IInterface {
    public static final java.lang.String DESCRIPTOR = "android.support.v4.os.IResultReceiver";

    public static class Default implements android.support.v4.os.IResultReceiver {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // android.support.v4.os.IResultReceiver
        public void send(int i5, android.os.Bundle bundle) throws android.os.RemoteException {
        }
    }

    public static abstract class Stub extends android.os.Binder implements android.support.v4.os.IResultReceiver {
        public static final int TRANSACTION_send = 1;

        public static class Proxy implements android.support.v4.os.IResultReceiver {
            private android.os.IBinder mRemote;

            public Proxy(android.os.IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.mRemote;
            }

            public java.lang.String getInterfaceDescriptor() {
                return android.support.v4.os.IResultReceiver.DESCRIPTOR;
            }

            @Override // android.support.v4.os.IResultReceiver
            public void send(int i5, android.os.Bundle bundle) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(android.support.v4.os.IResultReceiver.DESCRIPTOR);
                    parcelObtain.writeInt(i5);
                    android.support.v4.os.IResultReceiver._Parcel.writeTypedObject(parcelObtain, bundle, 0);
                    this.mRemote.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, android.support.v4.os.IResultReceiver.DESCRIPTOR);
        }

        public static android.support.v4.os.IResultReceiver asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(android.support.v4.os.IResultReceiver.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof android.support.v4.os.IResultReceiver)) ? new android.support.v4.os.IResultReceiver.Stub.Proxy(iBinder) : (android.support.v4.os.IResultReceiver) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i5, android.os.Parcel parcel, android.os.Parcel parcel2, int i6) throws android.os.RemoteException {
            if (i5 >= 1 && i5 <= 16777215) {
                parcel.enforceInterface(android.support.v4.os.IResultReceiver.DESCRIPTOR);
            }
            if (i5 == 1598968902) {
                parcel2.writeString(android.support.v4.os.IResultReceiver.DESCRIPTOR);
                return true;
            }
            if (i5 != 1) {
                return super.onTransact(i5, parcel, parcel2, i6);
            }
            send(parcel.readInt(), (android.os.Bundle) android.support.v4.os.IResultReceiver._Parcel.readTypedObject(parcel, android.os.Bundle.CREATOR));
            return true;
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(android.os.Parcel parcel, android.os.Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends android.os.Parcelable> void writeTypedObject(android.os.Parcel parcel, T t5, int i5) {
            if (t5 == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t5.writeToParcel(parcel, i5);
            }
        }
    }

    void send(int i5, android.os.Bundle bundle) throws android.os.RemoteException;
}
