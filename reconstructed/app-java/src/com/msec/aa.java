package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class aa extends android.hardware.ICameraServiceListener.Stub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static com.msec.aa f3633b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.msec.y f3634a;

    private void a(int i5, java.lang.String str) {
        if (i5 != Integer.MIN_VALUE && i5 != -2 && i5 != 0) {
            if (i5 == 1) {
                this.f3634a.a(str);
                return;
            } else if (i5 != 2) {
                return;
            }
        }
        this.f3634a.b(str);
    }

    public static com.msec.aa getInstance(com.msec.y yVar) {
        if (f3633b == null) {
            com.msec.aa aaVar = new com.msec.aa();
            f3633b = aaVar;
            aaVar.f3634a = yVar;
        }
        return f3633b;
    }

    public void onCameraAccessPrioritiesChanged() {
    }

    public void onCameraClosed(java.lang.String str) {
    }

    public void onCameraOpened(java.lang.String str, java.lang.String str2) {
    }

    public void onPhysicalCameraStatusChanged(int i5, java.lang.String str, java.lang.String str2) {
        com.msec.vvv.a(1570, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5), str, str2});
    }

    public void onStatusChanged(int i5, int i6) {
        com.msec.vvv.a(1569, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(i6)});
    }

    public void onStatusChanged(int i5, java.lang.String str) {
        com.msec.vvv.a(1568, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5), str});
    }

    public void onTorchStatusChanged(int i5, java.lang.String str) {
    }
}
