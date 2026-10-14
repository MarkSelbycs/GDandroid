package com.cndatacom.personal.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PersonalInfo implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.personal.entity.PersonalInfo> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.personal.entity.PersonalInfo>() { // from class: com.cndatacom.personal.entity.PersonalInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.personal.entity.PersonalInfo createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.personal.entity.PersonalInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.personal.entity.PersonalInfo[] newArray(int i5) {
            return new com.cndatacom.personal.entity.PersonalInfo[i5];
        }
    };
    public static final int TYPE_ACCOUNT = 0;
    public static final int TYPE_APP = 6;
    public static final int TYPE_DEVICE = 4;
    public static final int TYPE_IP = 3;
    public static final int TYPE_MAC = 2;
    public static final int TYPE_SYSTEM_VERSION = 5;
    public static final int TYPE_WIFI = 1;
    private java.lang.String createTime;
    private java.lang.String cryptoText;
    private java.lang.String text;
    private int type;

    public PersonalInfo() {
        this.type = 0;
        this.text = "";
        this.createTime = "";
        this.cryptoText = "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String getCreateTime() {
        return this.createTime;
    }

    public java.lang.String getCryptoText() {
        return this.cryptoText;
    }

    public java.lang.String getText() {
        return this.text;
    }

    public int getType() {
        return this.type;
    }

    public void setCreateTime(java.lang.String str) {
        this.createTime = str;
    }

    public void setCryptoText(java.lang.String str) {
        this.cryptoText = str;
    }

    public void setText(java.lang.String str) {
        this.text = str;
    }

    public void setType(int i5) {
        this.type = i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeInt(this.type);
        parcel.writeString(this.text);
        parcel.writeString(this.createTime);
    }

    public PersonalInfo(android.os.Parcel parcel) {
        this.type = 0;
        this.text = "";
        this.createTime = "";
        this.cryptoText = "";
        this.type = parcel.readInt();
        this.text = parcel.readString();
        this.createTime = parcel.readString();
    }
}
