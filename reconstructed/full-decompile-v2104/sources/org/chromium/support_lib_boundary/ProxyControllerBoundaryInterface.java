package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface ProxyControllerBoundaryInterface {
    void clearProxyOverride(java.lang.Runnable runnable, java.util.concurrent.Executor executor);

    void setProxyOverride(java.lang.String[][] strArr, java.lang.String[] strArr2, java.lang.Runnable runnable, java.util.concurrent.Executor executor);

    void setProxyOverride(java.lang.String[][] strArr, java.lang.String[] strArr2, java.lang.Runnable runnable, java.util.concurrent.Executor executor, boolean z4);
}
