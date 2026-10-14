package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ap implements android.os.Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.os.Handler f3661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private android.os.Handler.Callback f3662b;

    public ap(android.os.Handler handler, android.os.Handler.Callback callback) {
        this.f3661a = handler;
        this.f3662b = callback;
    }

    private void a(java.lang.Object obj) {
        com.msec.vvv.a(1545, new java.lang.Object[]{this, obj});
    }

    private void b(java.lang.Object obj) {
        com.msec.vvv.a(1544, new java.lang.Object[]{this, obj});
    }

    private void c(java.lang.Object obj) {
        com.msec.vvv.a(1591, new java.lang.Object[]{this, obj});
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(android.os.Message message) {
        return ((java.lang.Boolean) com.msec.vvv.a(1590, new java.lang.Object[]{this, message})).booleanValue();
    }
}
