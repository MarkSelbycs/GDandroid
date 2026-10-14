package com.cndatacom.sdk.portal.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ReturnUIResult implements android.os.Parcelable {
    public static final android.os.Parcelable.Creator<com.cndatacom.sdk.portal.entity.ReturnUIResult> CREATOR = new android.os.Parcelable.Creator<com.cndatacom.sdk.portal.entity.ReturnUIResult>() { // from class: com.cndatacom.sdk.portal.entity.ReturnUIResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.sdk.portal.entity.ReturnUIResult createFromParcel(android.os.Parcel parcel) {
            return new com.cndatacom.sdk.portal.entity.ReturnUIResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public com.cndatacom.sdk.portal.entity.ReturnUIResult[] newArray(int i5) {
            return new com.cndatacom.sdk.portal.entity.ReturnUIResult[i5];
        }
    };
    private java.lang.String errorCode;
    private java.lang.String extern;
    private java.lang.String subErrorCode;

    public ReturnUIResult() {
        this.errorCode = "";
        this.subErrorCode = "";
        this.extern = "";
    }

    private org.json.JSONObject toJson() {
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        try {
            jSONObject.put("errorCode", getErrorCode());
            jSONObject.put("subErrorCode", getSubErrorCode());
            jSONObject.put("extern", getExtern());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public java.lang.String getErrorCode() {
        return this.errorCode;
    }

    public java.lang.String getExtern() {
        return this.extern;
    }

    public java.lang.String getSubErrorCode() {
        return this.subErrorCode;
    }

    public boolean isSuccess() {
        return !android.text.TextUtils.isEmpty(this.errorCode) && this.errorCode.equals(com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS);
    }

    public void setErrorCode(java.lang.String str) {
        this.errorCode = str;
    }

    public com.cndatacom.sdk.portal.entity.ReturnUIResult setExtern(java.lang.String str) {
        this.extern = str;
        return this;
    }

    public void setSubErrorCode(java.lang.String str) {
        this.subErrorCode = str;
    }

    public java.lang.String toJsonString() {
        return toJson().toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(android.os.Parcel parcel, int i5) {
        parcel.writeString(this.errorCode);
        parcel.writeString(this.subErrorCode);
        parcel.writeString(this.extern);
    }

    public ReturnUIResult(java.lang.String str) {
        this.subErrorCode = "";
        this.extern = "";
        this.errorCode = str;
    }

    public ReturnUIResult(java.lang.String str, java.lang.String str2) {
        this.extern = "";
        this.errorCode = str;
        this.subErrorCode = str2;
    }

    public ReturnUIResult(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.errorCode = str;
        this.subErrorCode = str2;
        this.extern = str3;
    }

    public ReturnUIResult(android.os.Parcel parcel) {
        this.errorCode = "";
        this.subErrorCode = "";
        this.extern = "";
        this.errorCode = parcel.readString();
        this.subErrorCode = parcel.readString();
        this.extern = parcel.readString();
    }
}
