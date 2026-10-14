package androidx.work.impl.foreground;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SystemForegroundService extends androidx.lifecycle.LifecycleService implements androidx.work.impl.foreground.a.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.lang.String f2721f = q0.n.i("SystemFgService");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static androidx.work.impl.foreground.SystemForegroundService f2722g = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.os.Handler f2723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f2724c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.work.impl.foreground.a f2725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.app.NotificationManager f2726e;

    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2727a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.app.Notification f2728b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f2729c;

        public a(int i5, android.app.Notification notification, int i6) {
            this.f2727a = i5;
            this.f2728b = notification;
            this.f2729c = i6;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i5 = android.os.Build.VERSION.SDK_INT;
            if (i5 >= 31) {
                androidx.work.impl.foreground.SystemForegroundService.e.a(androidx.work.impl.foreground.SystemForegroundService.this, this.f2727a, this.f2728b, this.f2729c);
            } else if (i5 >= 29) {
                androidx.work.impl.foreground.SystemForegroundService.d.a(androidx.work.impl.foreground.SystemForegroundService.this, this.f2727a, this.f2728b, this.f2729c);
            } else {
                androidx.work.impl.foreground.SystemForegroundService.this.startForeground(this.f2727a, this.f2728b);
            }
        }
    }

    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2731a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.app.Notification f2732b;

        public b(int i5, android.app.Notification notification) {
            this.f2731a = i5;
            this.f2732b = notification;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.work.impl.foreground.SystemForegroundService.this.f2726e.notify(this.f2731a, this.f2732b);
        }
    }

    public class c implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2734a;

        public c(int i5) {
            this.f2734a = i5;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.work.impl.foreground.SystemForegroundService.this.f2726e.cancel(this.f2734a);
        }
    }

    public static class d {
        public static void a(android.app.Service service, int i5, android.app.Notification notification, int i6) {
            service.startForeground(i5, notification, i6);
        }
    }

    public static class e {
        public static void a(android.app.Service service, int i5, android.app.Notification notification, int i6) {
            try {
                service.startForeground(i5, notification, i6);
            } catch (android.app.ForegroundServiceStartNotAllowedException e5) {
                q0.n.e().l(androidx.work.impl.foreground.SystemForegroundService.f2721f, "Unable to start foreground service", e5);
            } catch (java.lang.SecurityException e6) {
                q0.n.e().l(androidx.work.impl.foreground.SystemForegroundService.f2721f, "Unable to start foreground service", e6);
            }
        }
    }

    @Override // androidx.work.impl.foreground.a.b
    public void a(int i5) {
        this.f2723b.post(new androidx.work.impl.foreground.SystemForegroundService.c(i5));
    }

    @Override // androidx.work.impl.foreground.a.b
    public void c(int i5, int i6, android.app.Notification notification) {
        this.f2723b.post(new androidx.work.impl.foreground.SystemForegroundService.a(i5, notification, i6));
    }

    @Override // androidx.work.impl.foreground.a.b
    public void d(int i5, android.app.Notification notification) {
        this.f2723b.post(new androidx.work.impl.foreground.SystemForegroundService.b(i5, notification));
    }

    public final void f() {
        this.f2723b = new android.os.Handler(android.os.Looper.getMainLooper());
        this.f2726e = (android.app.NotificationManager) getApplicationContext().getSystemService("notification");
        androidx.work.impl.foreground.a aVar = new androidx.work.impl.foreground.a(getApplicationContext());
        this.f2725d = aVar;
        aVar.n(this);
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        f2722g = this;
        f();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f2725d.l();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(android.content.Intent intent, int i5, int i6) {
        super.onStartCommand(intent, i5, i6);
        if (this.f2724c) {
            q0.n.e().f(f2721f, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.f2725d.l();
            f();
            this.f2724c = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f2725d.m(intent);
        return 3;
    }

    @Override // androidx.work.impl.foreground.a.b
    public void stop() {
        this.f2724c = true;
        q0.n.e().a(f2721f, "All commands completed.");
        stopForeground(true);
        f2722g = null;
        stopSelf();
    }
}
