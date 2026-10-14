package com.cndatacom.campus.permission.v2.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PermissionInfoV2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.String[] f3570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public org.json.JSONObject f3572c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public org.json.JSONObject f3573d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent f3574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent f3575f;

    public interface DialogEvent {
        void event();
    }

    public org.json.JSONObject getAskDialogOptions() {
        return this.f3573d;
    }

    public com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent getCancelEvent() {
        return this.f3575f;
    }

    public com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent getConfirmEvent() {
        return this.f3574e;
    }

    public java.lang.String[] getPermissions() {
        return this.f3570a;
    }

    public int getRequestCode() {
        return this.f3571b;
    }

    public org.json.JSONObject getTipDialogOptions() {
        return this.f3572c;
    }

    public void setAskDialogOptions(org.json.JSONObject jSONObject) {
        this.f3573d = jSONObject;
    }

    public void setCancelEvent(com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent dialogEvent) {
        this.f3575f = dialogEvent;
    }

    public void setConfirmEvent(com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent dialogEvent) {
        this.f3574e = dialogEvent;
    }

    public void setPermissions(java.lang.String[] strArr) {
        this.f3570a = strArr;
    }

    public void setRequestCode(int i5) {
        this.f3571b = i5;
    }

    public void setTipDialogOptions(org.json.JSONObject jSONObject) {
        this.f3572c = jSONObject;
    }
}
