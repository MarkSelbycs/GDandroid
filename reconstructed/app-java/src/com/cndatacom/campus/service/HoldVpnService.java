package com.cndatacom.campus.service;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class HoldVpnService extends com.cndatacom.sdk.portal.service.BaseHoldVpnService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.cndatacom.campus.receiver.AppReceiver f3588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public com.cndatacom.campus.manager.HoldExtraTaskManager f3589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.os.ParcelFileDescriptor f3590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f3591d = false;

    public static boolean start(android.content.Context context) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService->start");
        return context.startForegroundService(new android.content.Intent(context, (java.lang.Class<?>) com.cndatacom.campus.service.HoldVpnService.class)) != null;
    }

    public static void stop(android.content.Context context) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService->stop");
        com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(context, 0);
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldVpnService
    public void clearAllTask() {
        j();
        this.f3591d = true;
        android.os.ParcelFileDescriptor parcelFileDescriptor = this.f3590c;
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (java.lang.Exception e5) {
                e5.printStackTrace();
            }
        }
        com.cndatacom.campus.receiver.AppReceiver appReceiver = this.f3588a;
        if (appReceiver != null) {
            appReceiver.unregisterReceiver(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
        }
        com.cndatacom.campus.manager.HoldExtraTaskManager holdExtraTaskManager = this.f3589b;
        if (holdExtraTaskManager != null) {
            holdExtraTaskManager.clearAllTask(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
        }
    }

    public final void e(android.content.Context context) {
        f(com.cndatacom.sdk.portal.entity.ConfigInfo.load());
        com.cndatacom.sdk.portal.service.BaseIntentService.startOneTimeWork(context, com.cndatacom.campus.service.VpnKeepService.class, 5000L);
        h();
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService->handleTask");
        com.cndatacom.campus.manager.HoldExtraTaskManager holdExtraTaskManager = this.f3589b;
        if (holdExtraTaskManager != null) {
            holdExtraTaskManager.exeTask(context);
        }
    }

    public final boolean f(com.cndatacom.sdk.portal.entity.ConfigInfo configInfo) {
        try {
            android.net.VpnService.Builder builder = new android.net.VpnService.Builder(this);
            com.cndatacom.sdk.portal.entity.NetInfo netInfo = configInfo.getNetInfo();
            java.lang.String ipv4 = netInfo.getIpv4();
            java.lang.String ipv6 = netInfo.getIpv6();
            if (!android.text.TextUtils.isEmpty(ipv4)) {
                builder.addAddress(ipv4, 32);
            }
            if (!android.text.TextUtils.isEmpty(ipv6)) {
                builder.addAddress(ipv6, com.alibaba.fastjson.asm.Opcodes.IOR);
            }
            builder.setMtu(1400);
            builder.setSession(getString(com.cndatacom.campus.R.string.app_name));
            builder.setBlocking(true);
            this.f3590c = builder.establish();
            i();
            return true;
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService initVpnData Exception->" + e5.getMessage());
            return false;
        }
    }

    public final void g(android.content.Intent intent, int i5) {
        if (i5 == 0) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldService stop service->");
            clearAllTask();
            stopSelf();
            android.os.Process.killProcess(android.os.Process.myPid());
            return;
        }
        if (i5 == 5) {
            j();
            return;
        }
        if (i5 == 6) {
            com.cndatacom.sdk.portal.service.BaseIntentService.cancel(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()), com.cndatacom.campus.service.VpnKeepService.class);
            com.cndatacom.sdk.portal.service.BaseIntentService.startOneTimeWork(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()), com.cndatacom.campus.service.VpnKeepService.class, 5000L);
            h();
        } else {
            if (i5 != 7) {
                return;
            }
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService releaseMemory->");
            com.cndatacom.campus.manager.HoldExtraTaskManager holdExtraTaskManager = this.f3589b;
            if (holdExtraTaskManager != null) {
                holdExtraTaskManager.clearMemory(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()));
            }
        }
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldVpnService
    public java.lang.Class<?> getForegroundNotificationActivity() {
        return com.cndatacom.campus.MainActivity.class;
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldVpnService
    public int getForegroundNotificationIcon() {
        return com.cndatacom.campus.R.mipmap.ic_launcher;
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldVpnService
    public java.lang.String getForegroundNotificationTitle() {
        return getString(com.cndatacom.campus.R.string.app_name);
    }

    public final void h() {
    }

    public final void i() {
        new java.lang.Thread() { // from class: com.cndatacom.campus.service.HoldVpnService.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                com.cndatacom.campus.service.HoldVpnService.this.f3591d = false;
                java.io.FileInputStream fileInputStream = new java.io.FileInputStream(com.cndatacom.campus.service.HoldVpnService.this.f3590c.getFileDescriptor());
                java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(32767);
                while (!com.cndatacom.campus.service.HoldVpnService.this.f3591d) {
                    try {
                        com.cndatacom.sdk.portal.util.ExLogUtil.d("HoldVpnService startVpnTask ->read");
                        int i5 = fileInputStream.read(byteBufferAllocate.array());
                        com.cndatacom.sdk.portal.util.ExLogUtil.d("HoldVpnService startVpnTask ->read finish");
                        if (i5 > 0) {
                            byteBufferAllocate.limit(i5);
                            byteBufferAllocate.clear();
                        }
                        java.lang.Thread.sleep(1000L);
                    } catch (java.lang.Exception e5) {
                        e5.printStackTrace();
                        com.cndatacom.sdk.portal.util.ExLogUtil.d("HoldVpnService startVpnTask Exception->" + e5.getMessage());
                    }
                }
            }
        }.start();
    }

    public final void j() {
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldVpnService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService->onDestroy");
    }

    @Override // com.cndatacom.sdk.portal.service.BaseHoldVpnService
    public void onHandleIntent() {
        try {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService->onHandleIntent");
            android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(getApplicationContext());
            com.cndatacom.campus.receiver.AppReceiver appReceiver = new com.cndatacom.campus.receiver.AppReceiver();
            this.f3588a = appReceiver;
            appReceiver.setReceiverListener(new com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener() { // from class: com.cndatacom.campus.service.HoldVpnService.1
                @Override // com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.AppReceiverListener
                public void onReceive(android.content.Context context, final android.content.Intent intent, final int i5) {
                    com.cndatacom.sdk.portal.manager.ThreadPoolManager.newInstance().submit(new java.lang.Runnable() { // from class: com.cndatacom.campus.service.HoldVpnService.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            com.cndatacom.campus.service.HoldVpnService.this.g(intent, i5);
                        }
                    });
                }
            });
            this.f3588a.registerReceiver(origApplicationContext);
            this.f3589b = new com.cndatacom.campus.manager.HoldExtraTaskManager();
            e(origApplicationContext);
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    @Override // android.app.Service
    public void onTaskRemoved(android.content.Intent intent) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("HoldVpnService->onTaskRemoved");
        super.onTaskRemoved(intent);
    }
}
