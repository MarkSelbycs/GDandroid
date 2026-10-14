package com.cndatacom.campus.service;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class HoldKeepService extends androidx.work.Worker {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final android.content.Context f3581f;

    public HoldKeepService(android.content.Context context, androidx.work.WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f3581f = context;
    }

    public static void cancelWork(android.content.Context context) {
        q0.z.e(context).a("KeepTask");
    }

    public static void startOneTimeWork(android.content.Context context, long j5) {
        q0.z.e(context).c(new q0.q.a(com.cndatacom.campus.service.HoldKeepService.class).i(j5, java.util.concurrent.TimeUnit.MILLISECONDS).a());
    }

    public static void startPeriodicWork(android.content.Context context) {
        q0.z.e(context).d("KeepTask", q0.f.UPDATE, new q0.t.a(com.cndatacom.campus.service.HoldKeepService.class, 15L, java.util.concurrent.TimeUnit.MINUTES).a());
    }

    public final q0.h b(java.lang.String str) {
        ((android.app.NotificationManager) this.f3581f.getSystemService(android.app.NotificationManager.class)).createNotificationChannel(new android.app.NotificationChannel("KeepChannel", "KeepChannelName", 3));
        android.app.Notification notificationA = new androidx.core.app.f(this.f3581f, "KeepChannel").i(true).f(str).j(com.cndatacom.campus.R.mipmap.ic_launcher).a();
        return android.os.Build.VERSION.SDK_INT >= 34 ? new q0.h(30, notificationA, 1) : new q0.h(30, notificationA);
    }

    public final void c() {
        try {
            com.cndatacom.sdk.portal.entity.ConfigInfo configInfoLoad = com.cndatacom.sdk.portal.entity.ConfigInfo.load();
            if (configInfoLoad.getLoginState() != 2) {
                com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldKeepService state not online->");
                return;
            }
            boolean zIsOnline = configInfoLoad.isOnline();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldKeepService isOnline->" + zIsOnline);
            if (!zIsOnline) {
                if (com.cndatacom.sdk.portal.http.CdcProtocol.detect(this.f3581f, new com.cndatacom.sdk.portal.entity.ConfigInfo(), false, true) == 200) {
                    com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldKeepService not online->");
                    d(this.f3581f, new com.cndatacom.sdk.portal.entity.ReturnUIResult(com.cndatacom.sdk.portal.entity.CdcErrCode.KEEP_TIMEOUT_ERROR));
                    return;
                }
            }
            com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResultOnKeep = com.cndatacom.sdk.portal.manager.PortalSdkManager.onKeep(this.f3581f, configInfoLoad, new android.util.ArrayMap());
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldKeepService errorcode : " + returnUIResultOnKeep.getErrorCode() + " and suberrorcode : " + returnUIResultOnKeep.getSubErrorCode());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public final void d(android.content.Context context, com.cndatacom.sdk.portal.entity.ReturnUIResult returnUIResult) {
        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(context, 1, returnUIResult);
    }

    @Override // androidx.work.Worker
    public androidx.work.c.a doWork() {
        setForegroundAsync(b(this.f3581f.getString(com.cndatacom.campus.R.string.app_name)));
        c();
        return androidx.work.c.a.e();
    }
}
