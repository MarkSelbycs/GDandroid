package androidx.core.app;

/* JADX INFO: compiled from: NotificationCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f {
    public boolean A;
    public java.lang.String B;
    public android.os.Bundle C;
    public int D;
    public int E;
    public android.app.Notification F;
    public android.widget.RemoteViews G;
    public android.widget.RemoteViews H;
    public android.widget.RemoteViews I;
    public java.lang.String J;
    public int K;
    public java.lang.String L;
    public long M;
    public int N;
    public int O;
    public boolean P;
    public android.app.Notification Q;
    public boolean R;
    public android.graphics.drawable.Icon S;

    @java.lang.Deprecated
    public java.util.ArrayList<java.lang.String> T;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f1313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.ArrayList<androidx.core.app.d> f1314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.util.ArrayList<androidx.core.app.i> f1315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.util.ArrayList<androidx.core.app.d> f1316d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f1317e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.CharSequence f1318f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.app.PendingIntent f1319g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.app.PendingIntent f1320h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public android.widget.RemoteViews f1321i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public android.graphics.Bitmap f1322j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public java.lang.CharSequence f1323k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1324l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1325m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f1326n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1327o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.lang.CharSequence f1328p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public java.lang.CharSequence f1329q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public java.lang.CharSequence[] f1330r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1331s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f1332t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1333u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public java.lang.String f1334v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1335w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public java.lang.String f1336x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f1337y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f1338z;

    public f(android.content.Context context, java.lang.String str) {
        this.f1314b = new java.util.ArrayList<>();
        this.f1315c = new java.util.ArrayList<>();
        this.f1316d = new java.util.ArrayList<>();
        this.f1326n = true;
        this.f1337y = false;
        this.D = 0;
        this.E = 0;
        this.K = 0;
        this.N = 0;
        this.O = 0;
        android.app.Notification notification = new android.app.Notification();
        this.Q = notification;
        this.f1313a = context;
        this.J = str;
        notification.when = java.lang.System.currentTimeMillis();
        this.Q.audioStreamType = -1;
        this.f1325m = 0;
        this.T = new java.util.ArrayList<>();
        this.P = true;
    }

    public static java.lang.CharSequence c(java.lang.CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public android.app.Notification a() {
        return new androidx.core.app.g(this).b();
    }

    public android.os.Bundle b() {
        if (this.C == null) {
            this.C = new android.os.Bundle();
        }
        return this.C;
    }

    public androidx.core.app.f d(boolean z4) {
        h(16, z4);
        return this;
    }

    public androidx.core.app.f e(java.lang.String str) {
        this.J = str;
        return this;
    }

    public androidx.core.app.f f(java.lang.CharSequence charSequence) {
        this.f1317e = c(charSequence);
        return this;
    }

    public androidx.core.app.f g(int i5) {
        android.app.Notification notification = this.Q;
        notification.defaults = i5;
        if ((i5 & 4) != 0) {
            notification.flags |= 1;
        }
        return this;
    }

    public final void h(int i5, boolean z4) {
        if (z4) {
            android.app.Notification notification = this.Q;
            notification.flags = i5 | notification.flags;
        } else {
            android.app.Notification notification2 = this.Q;
            notification2.flags = (~i5) & notification2.flags;
        }
    }

    public androidx.core.app.f i(boolean z4) {
        h(2, z4);
        return this;
    }

    public androidx.core.app.f j(int i5) {
        this.Q.icon = i5;
        return this;
    }

    public androidx.core.app.f k(long j5) {
        this.Q.when = j5;
        return this;
    }

    @java.lang.Deprecated
    public f(android.content.Context context) {
        this(context, null);
    }
}
