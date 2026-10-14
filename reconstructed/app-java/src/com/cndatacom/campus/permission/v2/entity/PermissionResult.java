package com.cndatacom.campus.permission.v2.entity;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PermissionResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.lang.String[] f3576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f3578c = false;

    public java.lang.String[] getPermissions() {
        return this.f3576a;
    }

    public int getRequestCode() {
        return this.f3577b;
    }

    public boolean isHasPermission() {
        return this.f3578c;
    }

    public void setHasPermission(boolean z4) {
        this.f3578c = z4;
    }

    public void setPermissions(java.lang.String[] strArr) {
        this.f3576a = strArr;
    }

    public void setRequestCode(int i5) {
        this.f3577b = i5;
    }
}
