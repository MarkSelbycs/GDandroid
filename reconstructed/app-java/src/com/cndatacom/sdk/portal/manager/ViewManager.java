package com.cndatacom.sdk.portal.manager;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ViewManager {
    private static volatile com.cndatacom.sdk.portal.manager.ViewManager instance;
    private java.util.List<android.app.Activity> activityList = new java.util.LinkedList();

    private ViewManager() {
    }

    public static com.cndatacom.sdk.portal.manager.ViewManager getInstance() {
        synchronized (com.cndatacom.sdk.portal.manager.ViewManager.class) {
            if (instance == null) {
                instance = new com.cndatacom.sdk.portal.manager.ViewManager();
            }
        }
        return instance;
    }

    public void addActivity(android.app.Activity activity) {
        this.activityList.add(activity);
    }

    public void exit() {
        for (android.app.Activity activity : this.activityList) {
            if (!activity.isFinishing()) {
                activity.finish();
            }
        }
        android.os.Process.killProcess(android.os.Process.myPid());
        java.lang.System.exit(0);
    }

    public void removeActivity(android.app.Activity activity) {
        this.activityList.remove(activity);
    }
}
