package com.cndatacom.topology.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class NeighbourConInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.topology.entity.NeighbourConInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.topology.entity.NeighbourConInfo>() { // from class: com.cndatacom.topology.entity.NeighbourConInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.NeighbourConInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.topology.entity.NeighbourConInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.NeighbourConInfo[] newArray(int i5) {
            return new com.cndatacom.topology.entity.NeighbourConInfo[i5];
        }
    };
    private int interval;
    private int total;
    private java.lang.String url;

    public NeighbourConInfo() {
        this.url = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getInterval() {
        return this.interval;
    }

    public int getTotal() {
        return this.total;
    }

    public java.lang.String getUrl() {
        return this.url;
    }

    public void setInterval(int i5) {
        this.interval = i5;
    }

    public void setTotal(int i5) {
        this.total = i5;
    }

    public void setUrl(java.lang.String str) {
        this.url = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeInt(this.total);
        parcel.writeInt(this.interval);
        parcel.writeString(this.url);
    }

    public NeighbourConInfo(android.os.Parcel parcel) {
        this.url = "";
        this.total = parcel.readInt();
        this.interval = parcel.readInt();
        this.url = parcel.readString();
    }
}
