package androidx.core.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class NotificationCompatSideChannelService extends android.app.Service {

    public class NotificationSideChannelStub extends android.support.v4.app.INotificationSideChannel.Stub {
        public NotificationSideChannelStub() {
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancel(java.lang.String str, int i5, java.lang.String str2) throws android.os.RemoteException {
            androidx.core.app.NotificationCompatSideChannelService.this.c(android.os.Binder.getCallingUid(), str);
            long jClearCallingIdentity = android.os.Binder.clearCallingIdentity();
            try {
                androidx.core.app.NotificationCompatSideChannelService.this.a(str, i5, str2);
            } finally {
                android.os.Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void cancelAll(java.lang.String str) {
            androidx.core.app.NotificationCompatSideChannelService.this.c(android.os.Binder.getCallingUid(), str);
            long jClearCallingIdentity = android.os.Binder.clearCallingIdentity();
            try {
                androidx.core.app.NotificationCompatSideChannelService.this.b(str);
            } finally {
                android.os.Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public void notify(java.lang.String str, int i5, java.lang.String str2, android.app.Notification notification) throws android.os.RemoteException {
            androidx.core.app.NotificationCompatSideChannelService.this.c(android.os.Binder.getCallingUid(), str);
            long jClearCallingIdentity = android.os.Binder.clearCallingIdentity();
            try {
                androidx.core.app.NotificationCompatSideChannelService.this.d(str, i5, str2, notification);
            } finally {
                android.os.Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }
    }

    public abstract void a(java.lang.String str, int i5, java.lang.String str2);

    public abstract void b(java.lang.String str);

    public void c(int i5, java.lang.String str) {
        for (java.lang.String str2 : getPackageManager().getPackagesForUid(i5)) {
            if (str2.equals(str)) {
                return;
            }
        }
        throw new java.lang.SecurityException("NotificationSideChannelService: Uid " + i5 + " is not authorized for package " + str);
    }

    public abstract void d(java.lang.String str, int i5, java.lang.String str2, android.app.Notification notification);

    @Override // android.app.Service
    public android.os.IBinder onBind(android.content.Intent intent) {
        intent.getAction().equals("android.support.BIND_NOTIFICATION_SIDE_CHANNEL");
        return null;
    }
}
