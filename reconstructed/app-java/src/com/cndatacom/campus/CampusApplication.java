package com.cndatacom.campus;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class CampusApplication extends android.app.Application {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile int f3320b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f3321a = false;

    public static /* synthetic */ int a() {
        int i5 = f3320b;
        f3320b = i5 + 1;
        return i5;
    }

    public static /* synthetic */ int b() {
        int i5 = f3320b;
        f3320b = i5 - 1;
        return i5;
    }

    public static boolean isRunBackground() {
        return f3320b <= 0;
    }

    public final void e() {
        registerActivityLifecycleCallbacks(new android.app.Application.ActivityLifecycleCallbacks() { // from class: com.cndatacom.campus.CampusApplication.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(android.app.Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(android.app.Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(android.app.Activity activity) {
                if (com.cndatacom.campus.CampusApplication.this.f3321a) {
                    com.cndatacom.campus.CampusApplication.this.f3321a = false;
                    com.cndatacom.sdk.portal.notify.NotifyManager.getInstance().clear();
                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(com.stub.StubApp.getOrigApplicationContext(com.cndatacom.campus.CampusApplication.this.getApplicationContext()), 10);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(android.app.Activity activity) {
                com.cndatacom.campus.CampusApplication.a();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(android.app.Activity activity) {
                com.cndatacom.campus.CampusApplication.b();
                if (com.cndatacom.campus.CampusApplication.isRunBackground()) {
                    com.cndatacom.campus.CampusApplication.this.f3321a = true;
                    com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(com.stub.StubApp.getOrigApplicationContext(com.cndatacom.campus.CampusApplication.this.getApplicationContext()), 11);
                }
            }
        });
    }

    @Override // android.app.Application
    public void onCreate() throws java.lang.Throwable {
        super.onCreate();
        try {
            android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(getApplicationContext());
            com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().init(origApplicationContext);
            if (!q0.z.g()) {
                q0.z.f(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()), new androidx.work.a.C0020a().a());
            }
            if (!origApplicationContext.getPackageName().equals(com.cndatacom.sdk.portal.util.ApkUtil.getCurrentProcessName())) {
                com.cndatacom.sdk.portal.manager.PortalSdkManager.getInstance().initLog(origApplicationContext, false);
                return;
            }
            z2.a.b(65531);
            z2.a.c();
            e();
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("CampusApplication onLowMemory->");
        super.onLowMemory();
    }

    @Override // android.app.Application
    public void onTerminate() {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("CampusApplication onTerminate->");
        super.onTerminate();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i5) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("CampusApplication onTrimMemory level->" + i5);
        if (i5 != 20) {
            com.cndatacom.sdk.portal.util.ExLogUtil.i("CampusApplication releaseMemory->");
            com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.sendReceiver(com.stub.StubApp.getOrigApplicationContext(getApplicationContext()), 7);
        }
        super.onTrimMemory(i5);
    }
}
