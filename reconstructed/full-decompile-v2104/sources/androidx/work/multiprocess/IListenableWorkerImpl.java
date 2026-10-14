package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IListenableWorkerImpl extends android.os.IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f2761a = "androidx$work$multiprocess$IListenableWorkerImpl".replace('$', '.');

    public static class Default implements androidx.work.multiprocess.IListenableWorkerImpl {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // androidx.work.multiprocess.IListenableWorkerImpl
        public void interrupt(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IListenableWorkerImpl
        public void startWork(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }
    }

    public static abstract class Stub extends android.os.Binder implements androidx.work.multiprocess.IListenableWorkerImpl {

        public static class Proxy implements androidx.work.multiprocess.IListenableWorkerImpl {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public android.os.IBinder f2762d;

            public Proxy(android.os.IBinder iBinder) {
                this.f2762d = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.f2762d;
            }

            public java.lang.String getInterfaceDescriptor() {
                return androidx.work.multiprocess.IListenableWorkerImpl.f2761a;
            }

            @Override // androidx.work.multiprocess.IListenableWorkerImpl
            public void interrupt(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IListenableWorkerImpl.f2761a);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2762d.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IListenableWorkerImpl
            public void startWork(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IListenableWorkerImpl.f2761a);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2762d.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, androidx.work.multiprocess.IListenableWorkerImpl.f2761a);
        }

        public static androidx.work.multiprocess.IListenableWorkerImpl asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(androidx.work.multiprocess.IListenableWorkerImpl.f2761a);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof androidx.work.multiprocess.IListenableWorkerImpl)) ? new androidx.work.multiprocess.IListenableWorkerImpl.Stub.Proxy(iBinder) : (androidx.work.multiprocess.IListenableWorkerImpl) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i5, android.os.Parcel parcel, android.os.Parcel parcel2, int i6) throws android.os.RemoteException {
            java.lang.String str = androidx.work.multiprocess.IListenableWorkerImpl.f2761a;
            if (i5 >= 1 && i5 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i5 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i5 == 1) {
                startWork(parcel.createByteArray(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
            } else {
                if (i5 != 2) {
                    return super.onTransact(i5, parcel, parcel2, i6);
                }
                interrupt(parcel.createByteArray(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
            }
            return true;
        }
    }

    void interrupt(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void startWork(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;
}
