package com.msec;

/* JADX INFO: compiled from: com/msec/vae.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class vae {
    public static java.lang.Object a(java.lang.Object obj) {
        return ((okio.BufferedSink) obj).outputStream();
    }

    public static java.lang.Object b(java.lang.Object obj) {
        return okio.Okio.sink((java.io.OutputStream) obj);
    }

    public static java.lang.Object c(java.lang.Object obj) {
        return okio.Okio.buffer((okio.Sink) obj);
    }

    public static void d(java.lang.Object obj) throws java.io.IOException {
        ((okio.Sink) obj).close();
    }

    public static java.lang.Object e() {
        return new okio.Buffer();
    }

    public static java.lang.Object f(java.lang.Object obj) {
        return ((okio.Buffer) obj).readByteArray();
    }
}
