package android.support.v4.os;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"BanParcelableUsage"})
public class ResultReceiver implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<android.support.v4.os.ResultReceiver> CREATOR = new android.os.Parcelable.Creator<android.support.v4.os.ResultReceiver>() { // from class: android.support.v4.os.ResultReceiver.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public android.support.v4.os.ResultReceiver createFromParcel(android.os.Parcel parcel) {
            return new android.support.v4.os.ResultReceiver(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public android.support.v4.os.ResultReceiver[] newArray(int i5) {
            return new android.support.v4.os.ResultReceiver[i5];
        }
    };
    public final android.os.Handler mHandler;
    public final boolean mLocal;
    public android.support.v4.os.IResultReceiver mReceiver;

    public class MyResultReceiver extends android.support.v4.os.IResultReceiver.Stub {
        public MyResultReceiver() {
        }

        @Override // android.support.v4.os.IResultReceiver
        public void send(int i5, android.os.Bundle bundle) {
            android.support.v4.os.ResultReceiver resultReceiver = android.support.v4.os.ResultReceiver.this;
            android.os.Handler handler = resultReceiver.mHandler;
            if (handler != null) {
                handler.post(resultReceiver.new MyRunnable(i5, bundle));
            } else {
                resultReceiver.onReceiveResult(i5, bundle);
            }
        }
    }

    public class MyRunnable implements java.lang.Runnable {
        public final int mResultCode;
        public final android.os.Bundle mResultData;

        public MyRunnable(int i5, android.os.Bundle bundle) {
            this.mResultCode = i5;
            this.mResultData = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            android.support.v4.os.ResultReceiver.this.onReceiveResult(this.mResultCode, this.mResultData);
        }
    }

    public ResultReceiver(android.os.Handler handler) {
        this.mLocal = true;
        this.mHandler = handler;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void onReceiveResult(int i5, android.os.Bundle bundle) {
    }

    public void send(int i5, android.os.Bundle bundle) {
        if (this.mLocal) {
            android.os.Handler handler = this.mHandler;
            if (handler != null) {
                handler.post(new android.support.v4.os.ResultReceiver.MyRunnable(i5, bundle));
                return;
            } else {
                onReceiveResult(i5, bundle);
                return;
            }
        }
        android.support.v4.os.IResultReceiver iResultReceiver = this.mReceiver;
        if (iResultReceiver != null) {
            try {
                iResultReceiver.send(i5, bundle);
            } catch (android.os.RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        synchronized (this) {
            if (this.mReceiver == null) {
                this.mReceiver = new android.support.v4.os.ResultReceiver.MyResultReceiver();
            }
            parcel.writeStrongBinder(this.mReceiver.asBinder());
        }
    }

    public ResultReceiver(android.os.Parcel parcel) {
        this.mLocal = false;
        this.mHandler = null;
        this.mReceiver = android.support.v4.os.IResultReceiver.Stub.asInterface(parcel.readStrongBinder());
    }
}
