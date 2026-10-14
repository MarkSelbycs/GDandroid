package com.cndatacom.campus.netcore;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class DaMod implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.campus.netcore.DaMod> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.campus.netcore.DaMod>() { // from class: com.cndatacom.campus.netcore.DaMod.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.campus.netcore.DaMod createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.campus.netcore.DaMod(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.campus.netcore.DaMod[] newArray(int i5) {
            return new com.cndatacom.campus.netcore.DaMod[i5];
        }
    };
    private static com.cndatacom.campus.netcore.DaMod _DaMod;
    private long mod;

    static {
        java.lang.System.loadLibrary("daproxy");
    }

    private DaMod() {
        this.mod = 0L;
    }

    private native java.lang.String aid(long j5);

    private native byte[] dec(long j5, byte[] bArr);

    private native byte[] enc(long j5, byte[] bArr);

    private native void free(long j5);

    public static com.cndatacom.campus.netcore.DaMod getInstance() {
        if (_DaMod == null) {
            _DaMod = new com.cndatacom.campus.netcore.DaMod();
        }
        return _DaMod;
    }

    private native java.lang.String[] inspect(long j5, boolean z4);

    private native java.lang.String key(long j5);

    private native long load(byte[] bArr);

    private native java.lang.String prev(long j5);

    public java.lang.String Decode(java.lang.String str) {
        long j5 = this.mod;
        if (j5 == 0) {
            return "";
        }
        try {
            return new java.lang.String(dec(j5, str.getBytes("UTF-8")), "UTF-8");
        } catch (java.io.UnsupportedEncodingException unused) {
            return "";
        }
    }

    public java.lang.String Encode(java.lang.String str) {
        long j5 = this.mod;
        if (j5 == 0) {
            return "";
        }
        try {
            return new java.lang.String(enc(j5, str.getBytes("UTF-8")), "UTF-8");
        } catch (java.io.UnsupportedEncodingException unused) {
            return "";
        }
    }

    public void Free() {
        long j5 = this.mod;
        if (j5 != 0) {
            free(j5);
            this.mod = 0L;
        }
        _DaMod = new com.cndatacom.campus.netcore.DaMod();
    }

    public java.lang.String[] Inspect(boolean z4) {
        long j5 = this.mod;
        return j5 == 0 ? new java.lang.String[]{com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS, ""} : inspect(j5, z4);
    }

    public boolean Load(byte[] bArr) {
        Free();
        long jLoad = load(bArr);
        this.mod = jLoad;
        return jLoad != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void finalize() throws java.lang.Throwable {
        Free();
        super.finalize();
    }

    public java.lang.String getId() {
        long j5 = this.mod;
        return j5 == 0 ? "" : aid(j5);
    }

    public java.lang.String getKey() {
        long j5 = this.mod;
        return j5 == 0 ? "" : key(j5);
    }

    public long getMod() {
        return this.mod;
    }

    public java.lang.String getPrefix() {
        long j5 = this.mod;
        return j5 == 0 ? "" : prev(j5);
    }

    public boolean isOk() {
        return this.mod != 0;
    }

    public void setData(byte[] bArr) {
        this.mod = load(bArr);
    }

    public void setMod(long j5) {
        this.mod = j5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeLong(this.mod);
    }

    public DaMod(android.os.Parcel parcel) {
        this.mod = 0L;
        this.mod = parcel.readLong();
    }

    public byte[] Decode(byte[] bArr) {
        long j5 = this.mod;
        return j5 == 0 ? new byte[0] : dec(j5, bArr);
    }

    public byte[] Encode(byte[] bArr) {
        long j5 = this.mod;
        return j5 == 0 ? new byte[0] : enc(j5, bArr);
    }
}
