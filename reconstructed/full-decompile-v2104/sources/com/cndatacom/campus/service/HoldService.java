package com.cndatacom.campus.service;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class HoldService extends com.cndatacom.sdk.portal.service.BaseHoldService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.cndatacom.campus.receiver.AppReceiver f3582a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.cndatacom.campus.manager.HoldExtraTaskManager f3583b;

    public static boolean start(android.content.Context context) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldService->start");
        return context.startForegroundService(new android.content.Intent(context, (java.lang.Class<?>) com.cndatacom.campus.service.HoldService.class)) != null;
    }

    public static void stop(android.content.Context context) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldService->stop");
        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(context, 0);
    }

    public final void b() {
        com.cndatacom.campus.service.HoldKeepService.cancelWork(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
    }

    public final void c(android.content.Context context) {
        e();
        com.cndatacom.campus.manager.HoldExtraTaskManager holdExtraTaskManager = this.f3583b;
        if (holdExtraTaskManager != null) {
            holdExtraTaskManager.exeTask(context);
        }
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldService
    public void clearAllTask() {
        b();
        com.cndatacom.campus.receiver.AppReceiver appReceiver = this.f3582a;
        if (appReceiver != null) {
            appReceiver.unregisterReceiver(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
        }
        com.cndatacom.campus.manager.HoldExtraTaskManager holdExtraTaskManager = this.f3583b;
        if (holdExtraTaskManager != null) {
            holdExtraTaskManager.clearAllTask(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
        }
    }

    public final void d(android.content.Intent intent, int i5) {
        if (i5 == 0) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldService stop service->");
            clearAllTask();
            stopForeground(true);
            stopSelf();
            android.os.Process.killProcess(android.os.Process.myPid());
            return;
        }
        if (i5 == 6) {
            b();
            e();
        } else {
            if (i5 != 7) {
                return;
            }
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldService releaseMemory->");
            com.cndatacom.campus.manager.HoldExtraTaskManager holdExtraTaskManager = this.f3583b;
            if (holdExtraTaskManager != null) {
                holdExtraTaskManager.clearMemory(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
            }
        }
    }

    public final void e() {
        com.cndatacom.campus.service.HoldKeepService.startOneTimeWork(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()), 5000L);
        com.cndatacom.campus.service.HoldKeepService.startPeriodicWork(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldService
    public java.lang.Class<?> getForegroundNotificationActivity() {
        return com.cndatacom.campus.MainActivity.class;
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldService
    public int getForegroundNotificationIcon() {
        return com.cndatacom.campus.R.mipmap.ic_launcher;
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldService
    public java.lang.String getForegroundNotificationTitle() {
        return getString(com.cndatacom.campus.R.string.app_name);
    }

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        return null;
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldService->onDestroy");
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldService
    public void onHandleIntent() {
        try {
            android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(getApplicationContext());
            com.cndatacom.campus.receiver.AppReceiver appReceiver = new com.cndatacom.campus.receiver.AppReceiver();
            this.f3582a = appReceiver;
            appReceiver.setReceiverListener(new com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener() { // from class: com.cndatacom.campus.service.HoldService.1
                @Override // com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener
                public void onReceive(android.content.Context context, final android.content.Intent intent, final int i5) {
                    com.cndatacom.sdk.portal.manager.ThreadPoolManager.newInstance().submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.service.HoldService.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.cndatacom.campus.service.HoldService.this.d(intent, i5);
                        }
                    });
                }
            });
            this.f3582a.registerReceiver(origApplicationContext);
            this.f3583b = new com.cndatacom.campus.manager.HoldExtraTaskManager();
            c(origApplicationContext);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onTaskRemoved(android.content.Intent intent) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldService->onTaskRemoved");
        super.onTaskRemoved(intent);
    }
}
