package com.cndatacom.topology.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RouterConInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.topology.entity.RouterConInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.topology.entity.RouterConInfo>() { // from class: com.cndatacom.topology.entity.RouterConInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.RouterConInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.topology.entity.RouterConInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.RouterConInfo[] newArray(int i5) {
            return new com.cndatacom.topology.entity.RouterConInfo[i5];
        }
    };
    private int interval;
    private int maxTTL;
    private java.lang.String publicIp;
    private int retryCount;
    private int retryInterval;
    private com.cndatacom.topology.entity.SnmpConInfo snmpConInfo;
    private java.lang.String url;

    public RouterConInfo() {
        this.url = "";
        this.publicIp = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getInterval() {
        return this.interval;
    }

    public int getMaxTTL() {
        return this.maxTTL;
    }

    public java.lang.String getPublicIp() {
        return this.publicIp;
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    public int getRetryInterval() {
        return this.retryInterval;
    }

    public com.cndatacom.topology.entity.SnmpConInfo getSnmpConInfo() {
        return this.snmpConInfo;
    }

    public java.lang.String getUrl() {
        return this.url;
    }

    public void setInterval(int i5) {
        this.interval = i5;
    }

    public void setMaxTTL(int i5) {
        this.maxTTL = i5;
    }

    public void setPublicIp(java.lang.String str) {
        this.publicIp = str;
    }

    public void setRetryCount(int i5) {
        this.retryCount = i5;
    }

    public void setRetryInterval(int i5) {
        this.retryInterval = i5;
    }

    public void setSnmpConInfo(com.cndatacom.topology.entity.SnmpConInfo snmpConInfo) {
        this.snmpConInfo = snmpConInfo;
    }

    public void setUrl(java.lang.String str) {
        this.url = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeInt(this.interval);
        parcel.writeString(this.url);
        parcel.writeString(this.publicIp);
        parcel.writeInt(this.maxTTL);
        parcel.writeInt(this.retryCount);
        parcel.writeInt(this.retryInterval);
        parcel.writeParcelable(this.snmpConInfo, i5);
    }

    public RouterConInfo(android.os.Parcel parcel) {
        this.url = "";
        this.publicIp = "";
        this.interval = parcel.readInt();
        this.url = parcel.readString();
        this.publicIp = parcel.readString();
        this.maxTTL = parcel.readInt();
        this.retryCount = parcel.readInt();
        this.retryInterval = parcel.readInt();
        this.snmpConInfo = (com.cndatacom.topology.entity.SnmpConInfo) parcel.readParcelable(com.cndatacom.topology.entity.SnmpConInfo.class.getClassLoader());
    }
}
