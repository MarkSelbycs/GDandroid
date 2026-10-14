package com.msec;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class as {

    /* JADX INFO: renamed from: com.msec.as$1, reason: invalid class name */
    public static class AnonymousClass1 implements android.app.Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
            com.msec.as.b(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(android.app.Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(android.app.Activity activity) {
            com.msec.as.b(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(android.app.Activity activity) {
        }
    }

    public static void a() {
        com.msec.vvv.a(2012, null);
    }

    public static void a(java.lang.Object obj) {
        com.msec.vvv.a(2011, new java.lang.Object[]{obj});
    }

    public static void b() {
        com.msec.vvv.a(2010, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(android.content.Context context) {
        com.msec.vvv.a(2009, new java.lang.Object[]{context});
    }

    private static void c() {
        com.msec.vvv.a(2008, null);
    }

    private static void d() {
        com.msec.vvv.a(1991, null);
    }
}
