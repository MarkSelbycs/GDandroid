package com.cndatacom.topology.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SnmpConInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.topology.entity.SnmpConInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.topology.entity.SnmpConInfo>() { // from class: com.cndatacom.topology.entity.SnmpConInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.SnmpConInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.topology.entity.SnmpConInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.SnmpConInfo[] newArray(int i5) {
            return new com.cndatacom.topology.entity.SnmpConInfo[i5];
        }
    };
    private boolean isOpen;
    private java.lang.String name;
    private int retryCount;
    private int timeout;

    public SnmpConInfo() {
        this.isOpen = false;
        this.name = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String getName() {
        return this.name;
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    public int getTimeout() {
        return this.timeout;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public void setName(java.lang.String str) {
        this.name = str;
    }

    public void setOpen(boolean z4) {
        this.isOpen = z4;
    }

    public void setRetryCount(int i5) {
        this.retryCount = i5;
    }

    public void setTimeout(int i5) {
        this.timeout = i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeByte(this.isOpen ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.retryCount);
        parcel.writeInt(this.timeout);
        parcel.writeString(this.name);
    }

    public SnmpConInfo(android.os.Parcel parcel) {
        this.isOpen = false;
        this.name = "";
        this.isOpen = parcel.readByte() != 0;
        this.retryCount = parcel.readInt();
        this.timeout = parcel.readInt();
        this.name = parcel.readString();
    }
}
