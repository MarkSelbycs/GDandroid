package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class w implements android.os.Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private android.os.Handler f3930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private android.os.Handler.Callback f3931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private java.util.Map<java.lang.Object, java.lang.Object> f3932c;

    public w(android.os.Handler handler, android.os.Handler.Callback callback, java.util.Map<java.lang.Object, java.lang.Object> map) {
        this.f3930a = handler;
        this.f3931b = callback;
        this.f3932c = map;
    }

    private void a(java.lang.Object obj) {
        com.msec.vvv.a(1539, new java.lang.Object[]{this, obj});
    }

    private void a(java.lang.Object obj, java.lang.Object obj2) {
        com.msec.vvv.a(1538, new java.lang.Object[]{this, obj, obj2});
    }

    private void b(java.lang.Object obj) {
        com.msec.vvv.a(1537, new java.lang.Object[]{this, obj});
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(android.os.Message message) {
        return ((java.lang.Boolean) com.msec.vvv.a(1536, new java.lang.Object[]{this, message})).booleanValue();
    }
}
