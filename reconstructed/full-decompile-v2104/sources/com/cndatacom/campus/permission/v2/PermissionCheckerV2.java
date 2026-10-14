package com.cndatacom.campus.permission.v2;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class PermissionCheckerV2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.app.Activity f3558b;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent f3563g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.app.AlertDialog f3564h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public android.app.AlertDialog f3565i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.Vector<com.cndatacom.campus.permission.v2.entity.PermissionInfoV2> f3559c = new java.util.Vector<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.util.Vector<com.cndatacom.campus.permission.v2.entity.PermissionResult> f3560d = new java.util.Vector<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3561e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f3562f = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.os.Handler f3557a = new android.os.Handler(android.os.Looper.getMainLooper()) { // from class: com.cndatacom.campus.permission.v2.PermissionCheckerV2.1
        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            com.cndatacom.campus.permission.v2.PermissionCheckerV2.this.f(message);
        }
    };

    public interface PermissionEvent {
        boolean checkPermission(int i5, java.lang.String[] strArr);

        void finish(java.util.Vector<com.cndatacom.campus.permission.v2.entity.PermissionResult> vector);

        boolean needRemind(int i5, java.lang.String[] strArr);

        void requestPermissions(int i5, java.lang.String[] strArr);
    }

    public PermissionCheckerV2(android.app.Activity activity) {
        this.f3558b = activity;
    }

    public void addPermission(com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV2) {
        this.f3559c.add(permissionInfoV2);
    }

    public final void e() {
        com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent permissionEvent;
        if (this.f3559c.size() == 0) {
            com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent permissionEvent2 = this.f3563g;
            if (permissionEvent2 != null) {
                permissionEvent2.finish(this.f3560d);
                return;
            }
            return;
        }
        com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV2 = this.f3559c.get(0);
        com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent permissionEvent3 = this.f3563g;
        if (permissionEvent3 != null && !permissionEvent3.needRemind(permissionInfoV2.getRequestCode(), permissionInfoV2.getPermissions())) {
            k();
            g();
            return;
        }
        com.cndatacom.campus.permission.v2.entity.PermissionResult permissionResult = new com.cndatacom.campus.permission.v2.entity.PermissionResult();
        permissionResult.setPermissions(permissionInfoV2.getPermissions());
        permissionResult.setRequestCode(permissionInfoV2.getRequestCode());
        this.f3560d.add(permissionResult);
        this.f3557a.sendEmptyMessageDelayed(1, 100L);
        if (permissionInfoV2.getAskDialogOptions() == null && (permissionEvent = this.f3563g) != null) {
            permissionEvent.requestPermissions(permissionInfoV2.getRequestCode(), permissionInfoV2.getPermissions());
        }
    }

    public final void f(android.os.Message message) {
        int i5 = message.what;
        if (i5 == 0) {
            e();
        } else {
            if (i5 != 1) {
                return;
            }
            i();
        }
    }

    public final void g() {
        if (this.f3559c.size() > 0) {
            this.f3559c.remove(0);
        }
        if (this.f3559c.size() != 0) {
            this.f3557a.sendEmptyMessage(0);
            return;
        }
        com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent permissionEvent = this.f3563g;
        if (permissionEvent != null) {
            permissionEvent.finish(this.f3560d);
        }
    }

    public final void h(com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV2, org.json.JSONObject jSONObject) throws java.lang.Exception {
        org.json.JSONObject jSONObject2 = new org.json.JSONObject();
        jSONObject2.put("title", jSONObject.optString("title", ""));
        jSONObject2.put("gravity", jSONObject.optString("gravity", "bottom"));
        jSONObject2.put("titleBold", jSONObject.optBoolean("titleBold", false));
        jSONObject2.put("titleAlign", jSONObject.optString("titleAlign", "center"));
        jSONObject2.put("content", jSONObject.optString("content", ""));
        jSONObject2.put("contentAlign", jSONObject.optString("contentAlign", "left"));
        jSONObject2.put("confirmText", jSONObject.optString("confirmText", ""));
        jSONObject2.put("cancelText", jSONObject.optString("cancelText", ""));
        final com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent confirmEvent = permissionInfoV2.getConfirmEvent();
        final com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent cancelEvent = permissionInfoV2.getCancelEvent();
        android.app.AlertDialog alertDialogAlert = com.cndatacom.dialog.Dialog.alert(this.f3558b, jSONObject2, new com.cndatacom.dialog.Dialog.DialogEvent() { // from class: com.cndatacom.campus.permission.v2.PermissionCheckerV2.2
            @Override // com.cndatacom.dialog.Dialog.DialogEvent
            public void btnClick(int i5) {
                com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent dialogEvent;
                if (com.cndatacom.campus.permission.v2.PermissionCheckerV2.this.f3564h != null && com.cndatacom.campus.permission.v2.PermissionCheckerV2.this.f3564h.isShowing()) {
                    com.cndatacom.campus.permission.v2.PermissionCheckerV2.this.f3564h.dismiss();
                }
                if (i5 == -1) {
                    return;
                }
                if (i5 != 0) {
                    if (i5 != 1 || (dialogEvent = confirmEvent) == null) {
                        return;
                    }
                    dialogEvent.event();
                    return;
                }
                com.cndatacom.campus.permission.v2.entity.PermissionInfoV2.DialogEvent dialogEvent2 = cancelEvent;
                if (dialogEvent2 != null) {
                    dialogEvent2.event();
                } else {
                    com.cndatacom.campus.permission.v2.PermissionCheckerV2.this.k();
                    com.cndatacom.campus.permission.v2.PermissionCheckerV2.this.g();
                }
            }
        });
        this.f3565i = alertDialogAlert;
        alertDialogAlert.show();
    }

    public final void i() {
        try {
            com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV2 = this.f3559c.get(0);
            j(permissionInfoV2);
            org.json.JSONObject askDialogOptions = permissionInfoV2.getAskDialogOptions();
            if (askDialogOptions != null) {
                h(permissionInfoV2, askDialogOptions);
            }
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void j(com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV2) throws java.lang.Exception {
        java.lang.String strOptString;
        java.lang.String str;
        org.json.JSONObject jSONObject = new org.json.JSONObject();
        boolean zOptBoolean = false;
        jSONObject.put("showConfirm", false);
        jSONObject.put("showCancel", false);
        jSONObject.put("closeOnBack", false);
        jSONObject.put("backgroundTransparent", false);
        jSONObject.put("gravity", "top");
        org.json.JSONObject tipDialogOptions = permissionInfoV2.getTipDialogOptions();
        java.lang.String str2 = "center";
        java.lang.String str3 = "";
        if (tipDialogOptions != null) {
            java.lang.String strOptString2 = tipDialogOptions.optString("title", "");
            zOptBoolean = tipDialogOptions.optBoolean("titleBold", false);
            java.lang.String strOptString3 = tipDialogOptions.optString("titleAlign", "center");
            java.lang.String strOptString4 = tipDialogOptions.optString("content", "");
            strOptString = tipDialogOptions.optString("contentAlign", "center");
            str2 = strOptString3;
            str = strOptString4;
            str3 = strOptString2;
        } else {
            strOptString = "left";
            str = "";
        }
        jSONObject.put("title", str3);
        jSONObject.put("titleAlign", str2);
        jSONObject.put("titleBold", zOptBoolean);
        jSONObject.put("content", str);
        jSONObject.put("contentAlign", strOptString);
        android.app.AlertDialog alertDialogAlert = com.cndatacom.dialog.Dialog.alert(this.f3558b, jSONObject, null);
        this.f3564h = alertDialogAlert;
        alertDialogAlert.show();
    }

    public final void k() {
        com.cndatacom.campus.permission.v2.entity.PermissionInfoV2 permissionInfoV2 = this.f3559c.get(0);
        com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent permissionEvent = this.f3563g;
        boolean zCheckPermission = permissionEvent != null ? permissionEvent.checkPermission(permissionInfoV2.getRequestCode(), permissionInfoV2.getPermissions()) : false;
        int requestCode = permissionInfoV2.getRequestCode();
        for (int i5 = 0; i5 < this.f3560d.size(); i5++) {
            com.cndatacom.campus.permission.v2.entity.PermissionResult permissionResult = this.f3560d.get(i5);
            if (permissionResult.getRequestCode() == requestCode) {
                permissionResult.setHasPermission(zCheckPermission);
                return;
            }
        }
    }

    public void onRequestPermissionsResult() {
        if (this.f3557a.hasMessages(1)) {
            this.f3557a.removeMessages(1);
        }
        android.app.AlertDialog alertDialog = this.f3564h;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.f3564h.dismiss();
        }
        android.app.AlertDialog alertDialog2 = this.f3565i;
        if (alertDialog2 != null && alertDialog2.isShowing()) {
            this.f3565i.dismiss();
        }
        if (this.f3559c.size() != 0) {
            k();
            g();
        } else {
            com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent permissionEvent = this.f3563g;
            if (permissionEvent != null) {
                permissionEvent.finish(this.f3560d);
            }
        }
    }

    public void release() {
        android.app.AlertDialog alertDialog = this.f3564h;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.f3564h.dismiss();
        }
        android.app.AlertDialog alertDialog2 = this.f3565i;
        if (alertDialog2 != null && alertDialog2.isShowing()) {
            this.f3565i.dismiss();
        }
        android.os.Handler handler = this.f3557a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void setPermissionEvent(com.cndatacom.campus.permission.v2.PermissionCheckerV2.PermissionEvent permissionEvent) {
        this.f3563g = permissionEvent;
    }

    public void start() {
        if (this.f3560d.size() > 0) {
            this.f3560d.clear();
        }
        this.f3557a.sendEmptyMessage(0);
    }
}
