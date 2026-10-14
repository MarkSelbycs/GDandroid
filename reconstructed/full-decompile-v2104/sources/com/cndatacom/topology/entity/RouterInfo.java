package com.cndatacom.topology.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class RouterInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.topology.entity.RouterInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.topology.entity.RouterInfo>() { // from class: com.cndatacom.topology.entity.RouterInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.RouterInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.topology.entity.RouterInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.RouterInfo[] newArray(int i5) {
            return new com.cndatacom.topology.entity.RouterInfo[i5];
        }
    };
    private java.lang.String ip;
    private java.lang.String model;
    private java.lang.String os;
    private java.lang.String ttl;

    public RouterInfo() {
        this.ip = "";
        this.model = "";
        this.os = "";
        this.ttl = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String getIp() {
        return this.ip;
    }

    public java.lang.String getModel() {
        return this.model;
    }

    public java.lang.String getOs() {
        return this.os;
    }

    public java.lang.String getTtl() {
        return this.ttl;
    }

    public void setIp(java.lang.String str) {
        this.ip = str;
    }

    public void setModel(java.lang.String str) {
        this.model = str;
    }

    public void setOs(java.lang.String str) {
        this.os = str;
    }

    public void setTtl(java.lang.String str) {
        this.ttl = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.ip);
        parcel.writeString(this.model);
        parcel.writeString(this.os);
        parcel.writeString(this.ttl);
    }

    public RouterInfo(android.os.Parcel parcel) {
        this.ip = "";
        this.model = "";
        this.os = "";
        this.ttl = "";
        this.ip = parcel.readString();
        this.model = parcel.readString();
        this.os = parcel.readString();
        this.ttl = parcel.readString();
    }
}
