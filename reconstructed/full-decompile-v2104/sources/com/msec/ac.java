package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static java.lang.String f3637a = com.msec.vvv.a(753);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private java.io.InputStream f3638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private java.util.List<com.msec.ad> f3639c;

    private ac(java.io.InputStream inputStream) {
        this.f3638b = inputStream;
    }

    private java.lang.String a() {
        return (java.lang.String) com.msec.vvv.a(1739, new java.lang.Object[]{this});
    }

    public static java.lang.String a(java.io.InputStream inputStream) {
        return new com.msec.ac(inputStream).a();
    }

    public static java.lang.String a(byte[] bArr) {
        return a(new java.io.ByteArrayInputStream(bArr));
    }

    private java.lang.String a(byte[] bArr, int i5) {
        return (java.lang.String) com.msec.vvv.a(1738, new java.lang.Object[]{this, bArr, java.lang.Integer.valueOf(i5)});
    }

    private java.lang.String b() {
        return (java.lang.String) com.msec.vvv.a(1737, new java.lang.Object[]{this});
    }

    private java.lang.String b(byte[] bArr, int i5) throws java.io.IOException {
        return (java.lang.String) com.msec.vvv.a(1736, new java.lang.Object[]{this, bArr, java.lang.Integer.valueOf(i5)});
    }
}
