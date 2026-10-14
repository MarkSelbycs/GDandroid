package com.cndatacom.collection.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CollectionInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.collection.entity.CollectionInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.collection.entity.CollectionInfo>() { // from class: com.cndatacom.collection.entity.CollectionInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.collection.entity.CollectionInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.collection.entity.CollectionInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.collection.entity.CollectionInfo[] newArray(int i5) {
            return new com.cndatacom.collection.entity.CollectionInfo[i5];
        }
    };
    private java.lang.String account;
    private java.lang.String cid;
    private java.lang.String clientid;
    private java.lang.String exitcode;
    private java.lang.String id;
    private java.lang.String ostype;
    private java.lang.String process;
    private java.lang.String starttime;
    private java.lang.String stoptime;
    private java.lang.String version;

    public CollectionInfo() {
        this.id = "";
        this.account = "";
        this.clientid = "";
        this.cid = "";
        this.ostype = "";
        this.version = "";
        this.process = "";
        this.exitcode = "";
        this.starttime = "";
        this.stoptime = "";
    }

    public static com.cndatacom.collection.entity.CollectionInfo madeDefCollectionInfo(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) throws java.lang.Throwable {
        java.lang.String currentProcessName = com.cndatacom.sdk.portal.util.ApkUtil.getCurrentProcessName();
        com.cndatacom.collection.entity.CollectionInfo collectionInfo = new com.cndatacom.collection.entity.CollectionInfo();
        collectionInfo.setId(java.util.UUID.randomUUID().toString());
        java.lang.String dateToYMDHMSString = com.cndatacom.sdk.portal.util.DateUtil.parseDateToYMDHMSString(new java.util.Date());
        collectionInfo.setStarttime(dateToYMDHMSString);
        collectionInfo.setStoptime(dateToYMDHMSString);
        collectionInfo.setAccount(configInfo.getUserId());
        collectionInfo.setClientid(configInfo.getClientId());
        collectionInfo.setCid(configInfo.getSchoolId(""));
        collectionInfo.setExitcode("1001");
        collectionInfo.setOstype("4");
        collectionInfo.setProcess(currentProcessName);
        collectionInfo.setVersion(com.cndatacom.sdk.portal.util.ApkUtil.getVersionCode(context) + "");
        return collectionInfo;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String getAccount() {
        return this.account;
    }

    public java.lang.String getCid() {
        return this.cid;
    }

    public java.lang.String getClientid() {
        return this.clientid;
    }

    public java.lang.String getExitcode() {
        return this.exitcode;
    }

    public java.lang.String getId() {
        return this.id;
    }

    public java.lang.String getOstype() {
        return this.ostype;
    }

    public java.lang.String getProcess() {
        return this.process;
    }

    public java.lang.String getStarttime() {
        return this.starttime;
    }

    public java.lang.String getStoptime() {
        return this.stoptime;
    }

    public java.lang.String getVersion() {
        return this.version;
    }

    public void setAccount(java.lang.String str) {
        this.account = str;
    }

    public void setCid(java.lang.String str) {
        this.cid = str;
    }

    public void setClientid(java.lang.String str) {
        this.clientid = str;
    }

    public void setExitcode(java.lang.String str) {
        this.exitcode = str;
    }

    public void setId(java.lang.String str) {
        this.id = str;
    }

    public void setOstype(java.lang.String str) {
        this.ostype = str;
    }

    public void setProcess(java.lang.String str) {
        this.process = str;
    }

    public void setStarttime(java.lang.String str) {
        this.starttime = str;
    }

    public void setStoptime(java.lang.String str) {
        this.stoptime = str;
    }

    public void setVersion(java.lang.String str) {
        this.version = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        if (parcel != null) {
            parcel.writeString(this.id);
            parcel.writeString(this.account);
            parcel.writeString(this.clientid);
            parcel.writeString(this.cid);
            parcel.writeString(this.ostype);
            parcel.writeString(this.version);
            parcel.writeString(this.process);
            parcel.writeString(this.exitcode);
            parcel.writeString(this.starttime);
            parcel.writeString(this.stoptime);
        }
    }

    public CollectionInfo(android.os.Parcel parcel) {
        this.id = "";
        this.account = "";
        this.clientid = "";
        this.cid = "";
        this.ostype = "";
        this.version = "";
        this.process = "";
        this.exitcode = "";
        this.starttime = "";
        this.stoptime = "";
        if (parcel != null) {
            this.id = parcel.readString();
            this.account = parcel.readString();
            this.clientid = parcel.readString();
            this.cid = parcel.readString();
            this.ostype = parcel.readString();
            this.version = parcel.readString();
            this.process = parcel.readString();
            this.exitcode = parcel.readString();
            this.starttime = parcel.readString();
            this.stoptime = parcel.readString();
        }
    }
}
