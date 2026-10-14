package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class af extends com.msec.ad {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3646e;

    public af() {
        super(com.msec.vvv.a(727));
        this.f3645d = false;
        this.f3646e = 0;
    }

    @Override // com.msec.ad
    public boolean a() {
        return (this.f3641b || this.f3645d) ? false : true;
    }

    @Override // com.msec.ad
    public boolean a(int i5) {
        return ((java.lang.Boolean) com.msec.vvv.a(1761, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5)})).booleanValue();
    }

    @Override // com.msec.ad
    public boolean a(int i5, int i6, int i7) {
        return i5 == 254 && i6 == 255;
    }
}
