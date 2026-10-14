package com.cndatacom.sdk.portal.manager;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ThreadPoolManager {
    private static java.util.concurrent.ExecutorService mExecutorService = java.util.concurrent.Executors.newFixedThreadPool(50);

    public static java.util.concurrent.ExecutorService getInstance() {
        return mExecutorService;
    }

    public static java.util.concurrent.ExecutorService newInstance() {
        return java.util.concurrent.Executors.newCachedThreadPool();
    }
}
