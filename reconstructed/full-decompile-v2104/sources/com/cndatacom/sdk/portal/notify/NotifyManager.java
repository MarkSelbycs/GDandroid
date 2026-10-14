package com.cndatacom.sdk.portal.notify;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class NotifyManager {
    private static final java.lang.String CHANNEL_ID = "PortalChannel";
    private static final java.lang.String CHANNEL_MSG_ID = "PortalMsgChannel";
    private static final java.lang.String CHANNEL_MSG_NAME = "PortalMsgChannelName";
    private static final java.lang.String CHANNEL_NAME = "PortalChannelName";
    private static final int NOTIFICATION_ID = 20;
    private static final int NOTIFICATION_MSG_ID = 21;
    private static com.cndatacom.sdk.portal.notify.NotifyManager _NotifyManager;
    private android.app.NotificationManager mNotificationManager;

    private NotifyManager() {
        this.mNotificationManager = null;
        this.mNotificationManager = (android.app.NotificationManager) com.cndatacom.sdk.portal.util.ContextUtil.getContext().getSystemService("notification");
    }

    public static com.cndatacom.sdk.portal.notify.NotifyManager getInstance() {
        synchronized (com.cndatacom.sdk.portal.notify.NotifyManager.class) {
            if (_NotifyManager == null) {
                _NotifyManager = new com.cndatacom.sdk.portal.notify.NotifyManager();
            }
        }
        return _NotifyManager;
    }

    public void clear() {
        android.app.NotificationManager notificationManager = this.mNotificationManager;
        if (notificationManager != null) {
            notificationManager.cancelAll();
        }
    }

    public void postNotification(android.content.Context context, java.lang.String str, int i5) {
        try {
            android.app.NotificationChannel notificationChannel = new android.app.NotificationChannel(CHANNEL_MSG_ID, CHANNEL_MSG_NAME, 3);
            notificationChannel.enableLights(true);
            notificationChannel.enableVibration(false);
            notificationChannel.setVibrationPattern(new long[]{0});
            this.mNotificationManager.createNotificationChannel(notificationChannel);
            this.mNotificationManager.notify(21, new androidx.core.app.f(context).f(str).e(CHANNEL_MSG_ID).d(true).g(-1).k(java.lang.System.currentTimeMillis()).j(i5).a());
        } catch (java.lang.Exception e5) {
            e5.printStackTrace();
        }
    }

    public void pushForegroundNotification(android.content.Context context, java.lang.Class<?> cls, android.app.Service service, java.lang.String str, int i5) {
        com.cndatacom.sdk.portal.util.ExLogUtil.i("pushForegroundNotification->");
        android.app.PendingIntent activity = android.app.PendingIntent.getActivity(context, 0, new android.content.Intent(context, cls), 67108864);
        int i6 = android.os.Build.VERSION.SDK_INT;
        ((android.app.NotificationManager) context.getSystemService("notification")).createNotificationChannel(new android.app.NotificationChannel(CHANNEL_ID, CHANNEL_NAME, 4));
        android.app.Notification notificationBuild = new android.app.Notification.Builder(context, CHANNEL_ID).setShowWhen(false).setAutoCancel(false).setContentTitle(str).setContentIntent(activity).setSmallIcon(i5).build();
        if (i6 >= 34) {
            service.startForeground(20, notificationBuild, 1);
        } else {
            service.startForeground(20, notificationBuild);
        }
    }
}
