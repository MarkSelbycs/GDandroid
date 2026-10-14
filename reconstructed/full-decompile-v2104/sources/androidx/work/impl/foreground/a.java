package androidx.work.impl.foreground;

/* JADX INFO: compiled from: SystemForegroundDispatcher.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a implements v0.d, r0.f {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final java.lang.String f2736p = q0.n.i("SystemFgDispatcher");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f2737a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r0.p0 f2738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c1.b f2739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.lang.Object f2740d = new java.lang.Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public z0.m f2741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.Map<z0.m, q0.h> f2742f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.util.Map<z0.m, z0.u> f2743g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.util.Map<z0.m, t3.h1> f2744h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final v0.e f2745i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public androidx.work.impl.foreground.a.b f2746o;

    /* JADX INFO: renamed from: androidx.work.impl.foreground.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SystemForegroundDispatcher.java */
    public class RunnableC0025a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f2747a;

        public RunnableC0025a(java.lang.String str) {
            this.f2747a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            z0.u uVarG = androidx.work.impl.foreground.a.this.f2738b.q().g(this.f2747a);
            if (uVarG == null || !uVarG.k()) {
                return;
            }
            synchronized (androidx.work.impl.foreground.a.this.f2740d) {
                androidx.work.impl.foreground.a.this.f2743g.put(z0.x.a(uVarG), uVarG);
                androidx.work.impl.foreground.a aVar = androidx.work.impl.foreground.a.this;
                androidx.work.impl.foreground.a.this.f2744h.put(z0.x.a(uVarG), v0.f.b(aVar.f2745i, uVarG, aVar.f2739c.d(), androidx.work.impl.foreground.a.this));
            }
        }
    }

    /* JADX INFO: compiled from: SystemForegroundDispatcher.java */
    public interface b {
        void a(int i5);

        void c(int i5, int i6, android.app.Notification notification);

        void d(int i5, android.app.Notification notification);

        void stop();
    }

    public a(android.content.Context context) {
        this.f2737a = context;
        r0.p0 p0VarO = r0.p0.o(context);
        this.f2738b = p0VarO;
        this.f2739c = p0VarO.w();
        this.f2741e = null;
        this.f2742f = new java.util.LinkedHashMap();
        this.f2744h = new java.util.HashMap();
        this.f2743g = new java.util.HashMap();
        this.f2745i = new v0.e(this.f2738b.t());
        this.f2738b.q().e(this);
    }

    public static android.content.Intent e(android.content.Context context, z0.m mVar, q0.h hVar) {
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) androidx.work.impl.foreground.SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", hVar.c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", hVar.a());
        intent.putExtra("KEY_NOTIFICATION", hVar.b());
        intent.putExtra("KEY_WORKSPEC_ID", mVar.b());
        intent.putExtra("KEY_GENERATION", mVar.a());
        return intent;
    }

    public static android.content.Intent f(android.content.Context context, z0.m mVar, q0.h hVar) {
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) androidx.work.impl.foreground.SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", mVar.b());
        intent.putExtra("KEY_GENERATION", mVar.a());
        intent.putExtra("KEY_NOTIFICATION_ID", hVar.c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", hVar.a());
        intent.putExtra("KEY_NOTIFICATION", hVar.b());
        return intent;
    }

    public static android.content.Intent g(android.content.Context context) {
        android.content.Intent intent = new android.content.Intent(context, (java.lang.Class<?>) androidx.work.impl.foreground.SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    @Override // v0.d
    public void a(z0.u uVar, v0.b bVar) {
        if (bVar instanceof v0.b.C0089b) {
            java.lang.String str = uVar.f7032a;
            q0.n.e().a(f2736p, "Constraints unmet for WorkSpec " + str);
            this.f2738b.A(z0.x.a(uVar));
        }
    }

    @Override // r0.f
    public void c(z0.m mVar, boolean z4) {
        java.util.Map.Entry<z0.m, q0.h> entry;
        synchronized (this.f2740d) {
            t3.h1 h1VarRemove = this.f2743g.remove(mVar) != null ? this.f2744h.remove(mVar) : null;
            if (h1VarRemove != null) {
                h1VarRemove.e(null);
            }
        }
        q0.h hVarRemove = this.f2742f.remove(mVar);
        if (mVar.equals(this.f2741e)) {
            if (this.f2742f.size() > 0) {
                java.util.Iterator<java.util.Map.Entry<z0.m, q0.h>> it = this.f2742f.entrySet().iterator();
                java.util.Map.Entry<z0.m, q0.h> next = it.next();
                while (true) {
                    entry = next;
                    if (!it.hasNext()) {
                        break;
                    } else {
                        next = it.next();
                    }
                }
                this.f2741e = entry.getKey();
                if (this.f2746o != null) {
                    q0.h value = entry.getValue();
                    this.f2746o.c(value.c(), value.a(), value.b());
                    this.f2746o.a(value.c());
                }
            } else {
                this.f2741e = null;
            }
        }
        androidx.work.impl.foreground.a.b bVar = this.f2746o;
        if (hVarRemove == null || bVar == null) {
            return;
        }
        q0.n.e().a(f2736p, "Removing Notification (id: " + hVarRemove.c() + ", workSpecId: " + mVar + ", notificationType: " + hVarRemove.a());
        bVar.a(hVarRemove.c());
    }

    public final void h(android.content.Intent intent) {
        q0.n.e().f(f2736p, "Stopping foreground work for " + intent);
        java.lang.String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || android.text.TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f2738b.j(java.util.UUID.fromString(stringExtra));
    }

    public final void i(android.content.Intent intent) {
        int iA = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        java.lang.String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        z0.m mVar = new z0.m(stringExtra, intent.getIntExtra("KEY_GENERATION", 0));
        android.app.Notification notification = (android.app.Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        q0.n.e().a(f2736p, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + ")");
        if (notification == null || this.f2746o == null) {
            return;
        }
        this.f2742f.put(mVar, new q0.h(intExtra, notification, intExtra2));
        if (this.f2741e == null) {
            this.f2741e = mVar;
            this.f2746o.c(intExtra, intExtra2, notification);
            return;
        }
        this.f2746o.d(intExtra, notification);
        if (intExtra2 == 0 || android.os.Build.VERSION.SDK_INT < 29) {
            return;
        }
        java.util.Iterator<java.util.Map.Entry<z0.m, q0.h>> it = this.f2742f.entrySet().iterator();
        while (it.hasNext()) {
            iA |= it.next().getValue().a();
        }
        q0.h hVar = this.f2742f.get(this.f2741e);
        if (hVar != null) {
            this.f2746o.c(hVar.c(), iA, hVar.b());
        }
    }

    public final void j(android.content.Intent intent) {
        q0.n.e().f(f2736p, "Started foreground service " + intent);
        this.f2739c.a(new androidx.work.impl.foreground.a.RunnableC0025a(intent.getStringExtra("KEY_WORKSPEC_ID")));
    }

    public void k(android.content.Intent intent) {
        q0.n.e().f(f2736p, "Stopping foreground service");
        androidx.work.impl.foreground.a.b bVar = this.f2746o;
        if (bVar != null) {
            bVar.stop();
        }
    }

    public void l() {
        this.f2746o = null;
        synchronized (this.f2740d) {
            java.util.Iterator<t3.h1> it = this.f2744h.values().iterator();
            while (it.hasNext()) {
                it.next().e(null);
            }
        }
        this.f2738b.q().p(this);
    }

    public void m(android.content.Intent intent) {
        java.lang.String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            j(intent);
            i(intent);
        } else if ("ACTION_NOTIFY".equals(action)) {
            i(intent);
        } else if ("ACTION_CANCEL_WORK".equals(action)) {
            h(intent);
        } else if ("ACTION_STOP_FOREGROUND".equals(action)) {
            k(intent);
        }
    }

    public void n(androidx.work.impl.foreground.a.b bVar) {
        if (this.f2746o != null) {
            q0.n.e().c(f2736p, "A callback already exists.");
        } else {
            this.f2746o = bVar;
        }
    }
}
