package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ah extends com.msec.ad {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3650e;

    public ah() {
        super(com.msec.vvv.a(753));
        this.f3649d = 0;
        this.f3650e = 0;
    }

    @Override // com.msec.ad
    public boolean a() {
        return !this.f3641b && this.f3649d <= 0;
    }

    @Override // com.msec.ad
    public boolean a(int i5) {
        return ((java.lang.Boolean) com.msec.vvv.a(1723, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5)})).booleanValue();
    }

    @Override // com.msec.ad
    public boolean a(int i5, int i6, int i7) {
        return ((java.lang.Boolean) com.msec.vvv.a(1722, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(i6), java.lang.Integer.valueOf(i7)})).booleanValue();
    }
}
