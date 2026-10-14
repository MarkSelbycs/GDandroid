package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile byte[] f3896a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile byte[] f3898c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3899d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.msec.p f3901f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3902g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3903h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3900e = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3897b = 0;

    public o(int i5, int i6, com.msec.p pVar) {
        this.f3902g = i5;
        this.f3903h = i6;
        this.f3901f = pVar;
        this.f3896a = new byte[i5];
        this.f3898c = new byte[i6];
        this.f3899d = i6;
    }

    private void c() throws java.io.IOException {
        com.msec.vvv.a(1720, new java.lang.Object[]{this});
    }

    public int a() throws java.io.IOException {
        return ((java.lang.Integer) com.msec.vvv.a(1703, new java.lang.Object[]{this})).intValue();
    }

    public int a(int i5) throws java.io.IOException {
        return ((java.lang.Integer) com.msec.vvv.a(1702, new java.lang.Object[]{this, java.lang.Integer.valueOf(i5)})).intValue();
    }

    public void b() throws java.io.IOException {
        com.msec.vvv.a(1701, new java.lang.Object[]{this});
    }
}
