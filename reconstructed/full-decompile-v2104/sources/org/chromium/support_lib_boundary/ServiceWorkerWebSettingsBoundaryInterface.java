package org.chromium.support_lib_boundary;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface ServiceWorkerWebSettingsBoundaryInterface {
    boolean getAllowContentAccess();

    boolean getAllowFileAccess();

    boolean getBlockNetworkLoads();

    int getCacheMode();

    java.util.Set<java.lang.String> getRequestedWithHeaderOriginAllowList();

    void setAllowContentAccess(boolean z4);

    void setAllowFileAccess(boolean z4);

    void setBlockNetworkLoads(boolean z4);

    void setCacheMode(int i5);

    void setRequestedWithHeaderOriginAllowList(java.util.Set<java.lang.String> set);
}
