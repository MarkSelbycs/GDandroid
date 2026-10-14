package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ab extends com.msec.ad {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3635d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3636e;

    public ab() {
        super(com.msec.vvv.a(721));
        this.f3635d = false;
        this.f3636e = 0;
    }

    private boolean a(int i5, int i6) {
        if (i5 < 161 || i5 == 199 || i5 == 200 || i5 >= 250) {
            return true;
        }
        if (i5 != 163) {
            return i5 == 198 && i6 > 160;
        }
        return i6 >= 192;
    }

    @Override // com.msec.ad
    public boolean a() {
        return (this.f3641b || this.f3635d) ? false : true;
    }

    @Override // com.msec.ad
    public boolean a(int i5) {
        return ((java.lang.Boolean) com.msec.vvv.a(1692, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5)})).booleanValue();
    }
}
