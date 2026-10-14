package androidx.work.multiprocess;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface IWorkManagerImpl extends android.os.IInterface {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.lang.String f2763b = "androidx$work$multiprocess$IWorkManagerImpl".replace('$', '.');

    public static class Default implements androidx.work.multiprocess.IWorkManagerImpl {
        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return null;
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void cancelAllWork(androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void cancelAllWorkByTag(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void cancelUniqueWork(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void cancelWorkById(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void enqueueContinuation(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void enqueueWorkRequests(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void queryWorkInfo(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void setForegroundAsync(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void setProgress(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void updateUniquePeriodicWorkRequest(java.lang.String str, byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
        }
    }

    public static abstract class Stub extends android.os.Binder implements androidx.work.multiprocess.IWorkManagerImpl {

        public static class Proxy implements androidx.work.multiprocess.IWorkManagerImpl {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public android.os.IBinder f2764d;

            public Proxy(android.os.IBinder iBinder) {
                this.f2764d = iBinder;
            }

            @Override // android.os.IInterface
            public android.os.IBinder asBinder() {
                return this.f2764d;
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void cancelAllWork(androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(7, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void cancelAllWorkByTag(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(5, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void cancelUniqueWork(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(6, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void cancelWorkById(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(4, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void enqueueContinuation(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void enqueueWorkRequests(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(1, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            public java.lang.String getInterfaceDescriptor() {
                return androidx.work.multiprocess.IWorkManagerImpl.f2763b;
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void queryWorkInfo(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(8, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void setForegroundAsync(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(10, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void setProgress(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(9, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void updateUniquePeriodicWorkRequest(java.lang.String str, byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException {
                android.os.Parcel parcelObtain = android.os.Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
                    parcelObtain.writeString(str);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.f2764d.transact(2, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, androidx.work.multiprocess.IWorkManagerImpl.f2763b);
        }

        public static androidx.work.multiprocess.IWorkManagerImpl asInterface(android.os.IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            android.os.IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(androidx.work.multiprocess.IWorkManagerImpl.f2763b);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof androidx.work.multiprocess.IWorkManagerImpl)) ? new androidx.work.multiprocess.IWorkManagerImpl.Stub.Proxy(iBinder) : (androidx.work.multiprocess.IWorkManagerImpl) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public android.os.IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i5, android.os.Parcel parcel, android.os.Parcel parcel2, int i6) throws android.os.RemoteException {
            java.lang.String str = androidx.work.multiprocess.IWorkManagerImpl.f2763b;
            if (i5 >= 1 && i5 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i5 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i5) {
                case 1:
                    enqueueWorkRequests(parcel.createByteArray(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    updateUniquePeriodicWorkRequest(parcel.readString(), parcel.createByteArray(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    enqueueContinuation(parcel.createByteArray(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    cancelWorkById(parcel.readString(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    cancelAllWorkByTag(parcel.readString(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    cancelUniqueWork(parcel.readString(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    cancelAllWork(androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    queryWorkInfo(parcel.createByteArray(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    setProgress(parcel.createByteArray(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 10:
                    setForegroundAsync(parcel.createByteArray(), androidx.work.multiprocess.IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i5, parcel, parcel2, i6);
            }
        }
    }

    void cancelAllWork(androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void cancelAllWorkByTag(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void cancelUniqueWork(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void cancelWorkById(java.lang.String str, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void enqueueContinuation(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void enqueueWorkRequests(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void queryWorkInfo(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void setForegroundAsync(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void setProgress(byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;

    void updateUniquePeriodicWorkRequest(java.lang.String str, byte[] bArr, androidx.work.multiprocess.IWorkManagerImplCallback iWorkManagerImplCallback) throws android.os.RemoteException;
}
