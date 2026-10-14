package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class bi {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final java.lang.String[] f3711g = {com.msec.vvv.a(1170), com.msec.vvv.a(1168), com.msec.vvv.a(1167)};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3712a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f3713b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3714c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3715d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3716e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3717f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private java.lang.Object f3718h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private java.lang.Object f3719i;

    public <T> T a(T t5) {
        return (T) com.msec.vvv.a(1574, new java.lang.Object[]{this, t5});
    }

    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        return (java.lang.String) com.msec.vvv.a(1573, new java.lang.Object[]{this, str, str2});
    }

    public void a(java.lang.Object obj, int i5, int i6, java.lang.Object obj2) {
        this.f3718h = obj;
        this.f3716e = i5;
        this.f3717f = i6;
        this.f3719i = obj2;
    }

    public void a(java.lang.String str) {
        com.msec.vvv.a(1572, new java.lang.Object[]{this, str});
    }

    public boolean a() {
        return ((java.lang.Boolean) com.msec.vvv.a(1571, new java.lang.Object[]{this})).booleanValue();
    }

    public <T> T b() {
        return (T) ((com.msec.be) this.f3719i).a();
    }
}
