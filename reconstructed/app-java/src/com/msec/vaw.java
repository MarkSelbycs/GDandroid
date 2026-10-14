package com.msec;

/* JADX INFO: compiled from: com/msec/vaw.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class vaw {
    public static java.lang.Object a(java.lang.Object obj) {
        return com.alipay.mobile.common.transport.http.inner.CoreHttpManager.getInstance((android.content.Context) obj);
    }

    public static java.lang.Object b(java.lang.Object obj) {
        return (com.alipay.mobile.common.transport.http.inner.CoreHttpManager) obj;
    }

    public static void c(java.lang.Object obj) {
        com.alipay.mobile.common.transport.http.inner.CoreHttpManager.DEFAULT_HTTP_MANAGER = (com.alipay.mobile.common.transport.http.inner.CoreHttpManager) obj;
    }

    public static java.lang.Object d() {
        return com.alipay.mobile.common.transport.http.AndroidHttpClient.class;
    }
}
