package com.cndatacom.sdk.portal.service;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class BaseIntentService extends android.app.IntentService {
    public BaseIntentService() {
        super("KeepService");
    }

    public static void cancel(android.content.Context context, java.lang.Class<?> cls) {
        startOneTimeWork(context, cls, -1L);
    }

    public static void startOneTimeWork(android.content.Context context, java.lang.Class<?> cls, long j5) {
        android.app.AlarmManager alarmManager = (android.app.AlarmManager) context.getSystemService("alarm");
        android.app.PendingIntent service = android.app.PendingIntent.getService(context, 0, new android.content.Intent(context, cls), 134217728);
        com.cndatacom.sdk.portal.util.ExLogUtil.i("alarmKeepStart set delayMillis => " + j5);
        if (j5 > 0) {
            alarmManager.setExactAndAllowWhileIdle(2, android.os.SystemClock.elapsedRealtime() + j5, service);
        } else {
            alarmManager.cancel(service);
        }
    }

    public abstract void doNextKeep(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo, long j5, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);

    public abstract android.util.ArrayMap<java.lang.String, java.lang.String> getKeepExtraParam(android.content.Context context, com.cndatacom.sdk.portal.entity.ConfigInfo configInfo);

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        com.cndatacom.sdk.portal.util.ExLogUtil.i("KeepService onDestroy->");
    }

    @Override // android.app.IntentService
    public void onHandleIntent(android.content.Intent intent) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("KeepService onHandleIntent->");
        try {
            android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(getApplicationContext());
            com.cndatacom.sdk.portal.entity.ConfigInfo configInfoLoad = com.cndatacom.sdk.portal.entity.ConfigInfo.load();
            if (configInfoLoad.getLoginState() != 2) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("KeepService state not online->");
                return;
            }
            boolean zIsOnline = configInfoLoad.isOnline();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("KeepService isOnline->" + zIsOnline);
            if (!zIsOnline) {
                if (com.cndatacom.sdk.portal.http.CdcProtocol.detect(origApplicationContext, new com.cndatacom.sdk.portal.entity.ConfigInfo(), false, true) == 200) {
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("KeepService not online->");
                    sendChange(origApplicationContext, new com.cndatacom.sdk.portal.entity.ReturnUIResult(com.cndatacom.sdk.portal.entity.CdcErrCode.KEEP_TIMEOUT_ERROR));
                    return;
                }
            }
            long keepInterval = configInfoLoad.getKeepInterval();
            com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultOnKeep = com.cndatacom.sdk.portal.manager.PortalSdkManager.onKeep(origApplicationContext, configInfoLoad, getKeepExtraParam(origApplicationContext, configInfoLoad));
            com.cndatacom.sdk.portal.util.ExLogUtil.i("keep errorcode : " + returnUIResultOnKeep.getErrorCode() + " and suberrorcode : " + returnUIResultOnKeep.getSubErrorCode());
            if (returnUIResultOnKeep.isSuccess()) {
                keepInterval = configInfoLoad.getKeepInterval();
            }
            doNextKeep(origApplicationContext, configInfoLoad, keepInterval, returnUIResultOnKeep);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    @Override // android.app.IntentService, android.app.Service
    public int onStartCommand(android.content.Intent intent, int i5, int i6) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("KeepService onStartCommand->");
        return super.onStartCommand(intent, i5, i6);
    }

    public abstract void sendChange(android.content.Context context, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult);
}
