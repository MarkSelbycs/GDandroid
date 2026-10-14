package com.cndatacom.topology.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class TeamWorkTaskInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.topology.entity.TeamWorkTaskInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.topology.entity.TeamWorkTaskInfo>() { // from class: com.cndatacom.topology.entity.TeamWorkTaskInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.TeamWorkTaskInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.topology.entity.TeamWorkTaskInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.topology.entity.TeamWorkTaskInfo[] newArray(int i5) {
            return new com.cndatacom.topology.entity.TeamWorkTaskInfo[i5];
        }
    };
    public static final int TEAMWORK_TYPE_NEIGHBOUR = 1;
    public static final int TEAMWORK_TYPE_ROUTER = 2;
    private java.lang.Object extra;
    private java.lang.String gateway;
    private java.lang.String ip;
    private java.lang.String key;
    private java.lang.String mask;
    private int taskType;

    public TeamWorkTaskInfo() {
        this.taskType = 1;
        this.gateway = "";
        this.mask = "";
        this.ip = "";
        this.key = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.Object getExtra() {
        return this.extra;
    }

    public java.lang.String getGateway() {
        return this.gateway;
    }

    public java.lang.String getIp() {
        return this.ip;
    }

    public java.lang.String getKey() {
        return this.key;
    }

    public java.lang.String getMask() {
        return this.mask;
    }

    public int getTaskType() {
        return this.taskType;
    }

    public void setExtra(java.lang.Object obj) {
        this.extra = obj;
    }

    public void setGateway(java.lang.String str) {
        this.gateway = str;
    }

    public void setIp(java.lang.String str) {
        this.ip = str;
    }

    public void setKey(java.lang.String str) {
        this.key = str;
    }

    public void setMask(java.lang.String str) {
        this.mask = str;
    }

    public void setTaskType(int i5) {
        this.taskType = i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeInt(this.taskType);
        parcel.writeString(this.gateway);
        parcel.writeString(this.mask);
        parcel.writeString(this.ip);
        parcel.writeString(this.key);
    }

    public TeamWorkTaskInfo(android.os.Parcel parcel) {
        this.taskType = 1;
        this.gateway = "";
        this.mask = "";
        this.ip = "";
        this.key = "";
        this.taskType = parcel.readInt();
        this.gateway = parcel.readString();
        this.mask = parcel.readString();
        this.ip = parcel.readString();
        this.key = parcel.readString();
    }
}
