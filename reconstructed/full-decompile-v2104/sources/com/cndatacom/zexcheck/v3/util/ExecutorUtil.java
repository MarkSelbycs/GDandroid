package com.cndatacom.zexcheck.v3.util;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ExecutorUtil {
    public static java.util.concurrent.ExecutorService getExecutorService() {
        return java.util.concurrent.Executors.newFixedThreadPool(20);
    }

    public static java.util.concurrent.ExecutorService getFastExecutorService() {
        return java.util.concurrent.Executors.newCachedThreadPool();
    }
}
