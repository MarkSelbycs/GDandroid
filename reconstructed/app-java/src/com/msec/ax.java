package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ax {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f3673e = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private java.net.HttpURLConnection f3674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.msec.i f3675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private java.lang.String f3676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3677d = false;

    public ax(java.net.HttpURLConnection httpURLConnection) {
        this.f3674a = httpURLConnection;
        java.lang.String externalForm = httpURLConnection.getURL().toExternalForm();
        this.f3676c = externalForm;
        this.f3675b = com.msec.i.c(externalForm);
    }

    private long a(long j5) {
        if (j5 <= 0) {
            return j5;
        }
        long j6 = j5 / 8192;
        if (j5 % 8192 != 0) {
            j6++;
        }
        return j5 + (j6 * 46);
    }

    public java.io.InputStream a(java.io.InputStream inputStream) throws java.io.IOException {
        return (java.io.InputStream) com.msec.vvv.a(1664, new java.lang.Object[]{this, inputStream});
    }

    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        return (java.lang.String) com.msec.vvv.a(1679, new java.lang.Object[]{this, str, str2});
    }

    public void a() {
        com.msec.vvv.a(1678, new java.lang.Object[]{this});
    }

    public boolean a(java.lang.String str) {
        return ((java.lang.Boolean) com.msec.vvv.a(1677, new java.lang.Object[]{this, str})).booleanValue();
    }

    public java.io.OutputStream b() throws java.io.IOException {
        return (java.io.OutputStream) com.msec.vvv.a(1676, new java.lang.Object[]{this});
    }

    public void c() {
        if (this.f3677d) {
            a(this.f3676c);
        }
    }

    public void d() {
        com.msec.vvv.a(1675, new java.lang.Object[]{this});
    }

    public boolean e() {
        return this.f3675b.f();
    }
}
