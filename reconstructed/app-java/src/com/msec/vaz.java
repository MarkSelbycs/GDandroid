package com.msec;

/* JADX INFO: compiled from: com/msec/vaz.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class vaz {
    public static java.lang.Object a() {
        return new dc.squareup.okio.Buffer();
    }

    public static java.lang.Object b(java.lang.Object obj) {
        return ((dc.squareup.okio.Buffer) obj).readByteArray();
    }

    public static java.lang.Object c(java.lang.Object obj) {
        return ((dc.squareup.okio.BufferedSink) obj).outputStream();
    }

    public static java.lang.Object d(java.lang.Object obj) {
        return dc.squareup.okio.Okio.sink((java.io.OutputStream) obj);
    }

    public static java.lang.Object e(java.lang.Object obj) {
        return dc.squareup.okio.Okio.buffer((dc.squareup.okio.Sink) obj);
    }

    public static void f(java.lang.Object obj) {
        ((dc.squareup.okio.Sink) obj).close();
    }
}
