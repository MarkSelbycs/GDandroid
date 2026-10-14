package com.cndatacom.sdk.portal.service;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class BaseHoldService extends android.app.Service {
    private void pushForegroundNotification(android.content.Context context) {
        java.lang.Class<?> foregroundNotificationActivity = getForegroundNotificationActivity();
        java.lang.String foregroundNotificationTitle = getForegroundNotificationTitle();
        int foregroundNotificationIcon = getForegroundNotificationIcon();
        if (foregroundNotificationActivity == null || foregroundNotificationIcon <= 0) {
            return;
        }
        if (android.text.TextUtils.isEmpty(foregroundNotificationTitle)) {
            foregroundNotificationTitle = "";
        }
        com.cndatacom.sdk.portal.notify.NotifyManager.getInstance().pushForegroundNotification(context, foregroundNotificationActivity, this, foregroundNotificationTitle, foregroundNotificationIcon);
    }

    public abstract void clearAllTask();

    public abstract java.lang.Class<?> getForegroundNotificationActivity();

    public abstract int getForegroundNotificationIcon();

    public abstract java.lang.String getForegroundNotificationTitle();

    @Override // android.app.Service
    public void onDestroy() {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("BaseHoldService onDestroy->");
        stopForeground(true);
        super.onDestroy();
    }

    public abstract void onHandleIntent();

    @Override // android.app.Service
    public int onStartCommand(android.content.Intent intent, int i5, int i6) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("BaseHoldService onStartCommand->");
        pushForegroundNotification(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
        com.cndatacom.sdk.portal.manager.ThreadPoolManager.newInstance().submit(new java.lang.Runnable() { // from class: com.cndatacom.sdk.portal.service.BaseHoldService.1
            @Override // java.lang.Runnable
            public void run() {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("BaseHoldService onHandleIntent->");
                com.cndatacom.sdk.portal.service.BaseHoldService.this.onHandleIntent();
            }
        });
        int iOnStartCommand = super.onStartCommand(intent, i5, i6);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("BaseHoldService onStartCommand result->" + iOnStartCommand);
        return iOnStartCommand;
    }
}
