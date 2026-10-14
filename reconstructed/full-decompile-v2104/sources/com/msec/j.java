package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j implements android.app.Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static android.app.Application f3868a;

    private j() {
    }

    public static synchronized void a(android.content.Context context) {
        com.msec.vvv.a(1754, new java.lang.Object[]{context});
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
        com.msec.cf.b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(android.app.Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(android.app.Activity activity) {
        com.msec.d.a(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(android.app.Activity activity) {
        com.msec.d.a(true);
        com.msec.cf.a(activity);
        com.msec.ce.a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(android.app.Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(android.app.Activity activity) {
    }
}
