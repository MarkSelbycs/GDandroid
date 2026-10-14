package com.cndatacom.campus.manager;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class HoldExtraTaskManager {
    public void clearAllTask(android.content.Context context) {
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().cancelAll();
    }

    public void clearMemory(android.content.Context context) {
    }

    public void exeTask(android.content.Context context) {
        com.cndatacom.sdk.portal.manager.WorkManager.getInstance().startPeriodicWork(60000L, new com.cndatacom.campus.work.NetworkShareWorker(), 30000L);
    }
}
