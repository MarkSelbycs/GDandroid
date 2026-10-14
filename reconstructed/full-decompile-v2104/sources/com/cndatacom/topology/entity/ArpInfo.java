package com.cndatacom.topology.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ArpInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.topology.entity.ArpInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.topology.entity.ArpInfo>() { // from class: com.cndatacom.topology.entity.ArpInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.ArpInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.topology.entity.ArpInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.ArpInfo[] newArray(int i5) {
            return new com.cndatacom.topology.entity.ArpInfo[i5];
        }
    };
    public java.lang.String ip;
    public java.lang.String mac;

    public ArpInfo() {
        this.ip = "";
        this.mac = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String getIp() {
        return this.ip;
    }

    public java.lang.String getMac() {
        return this.mac;
    }

    public boolean isValid() {
        return !this.mac.contains("00:00:00:00:00:00");
    }

    public void setIp(java.lang.String str) {
        this.ip = str;
    }

    public void setMac(java.lang.String str) {
        this.mac = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.ip);
        parcel.writeString(this.mac);
    }

    public ArpInfo(android.os.Parcel parcel) {
        this.ip = "";
        this.mac = "";
        this.ip = parcel.readString();
        this.mac = parcel.readString();
    }
}
