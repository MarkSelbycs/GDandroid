package com.cndatacom.topology.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TeamWorkConInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.topology.entity.TeamWorkConInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.topology.entity.TeamWorkConInfo>() { // from class: com.cndatacom.topology.entity.TeamWorkConInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.TeamWorkConInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.topology.entity.TeamWorkConInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.TeamWorkConInfo[] newArray(int i5) {
            return new com.cndatacom.topology.entity.TeamWorkConInfo[i5];
        }
    };
    private java.lang.String castads;
    private int timeout;

    public TeamWorkConInfo() {
        this.castads = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String getCastads() {
        return this.castads;
    }

    public int getTimeout() {
        return this.timeout;
    }

    public void setCastads(java.lang.String str) {
        this.castads = str;
    }

    public void setTimeout(int i5) {
        this.timeout = i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeInt(this.timeout);
        parcel.writeString(this.castads);
    }

    public TeamWorkConInfo(android.os.Parcel parcel) {
        this.castads = "";
        this.timeout = parcel.readInt();
        this.castads = parcel.readString();
    }
}
