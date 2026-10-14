package androidx.core.app;

/* JADX INFO: compiled from: NotificationCompatBuilder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f1339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.app.Notification.Builder f1340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.core.app.f f1341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.widget.RemoteViews f1342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.widget.RemoteViews f1343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.util.List<android.os.Bundle> f1344f = new java.util.ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final android.os.Bundle f1345g = new android.os.Bundle();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public android.widget.RemoteViews f1347i;

    public g(androidx.core.app.f fVar) {
        int i5;
        this.f1341c = fVar;
        this.f1339a = fVar.f1313a;
        android.app.Notification.Builder builder = new android.app.Notification.Builder(fVar.f1313a, fVar.J);
        this.f1340b = builder;
        android.app.Notification notification = fVar.Q;
        builder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, fVar.f1321i).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(fVar.f1317e).setContentText(fVar.f1318f).setContentInfo(fVar.f1323k).setContentIntent(fVar.f1319g).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(fVar.f1320h, (notification.flags & com.alibaba.fastjson.asm.Opcodes.IOR) != 0).setLargeIcon(fVar.f1322j).setNumber(fVar.f1324l).setProgress(fVar.f1331s, fVar.f1332t, fVar.f1333u);
        builder.setSubText(fVar.f1328p).setUsesChronometer(fVar.f1327o).setPriority(fVar.f1325m);
        java.util.Iterator<androidx.core.app.d> it = fVar.f1314b.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
        android.os.Bundle bundle = fVar.C;
        if (bundle != null) {
            this.f1345g.putAll(bundle);
        }
        this.f1342d = fVar.G;
        this.f1343e = fVar.H;
        this.f1340b.setShowWhen(fVar.f1326n);
        this.f1340b.setLocalOnly(fVar.f1337y).setGroup(fVar.f1334v).setGroupSummary(fVar.f1335w).setSortKey(fVar.f1336x);
        this.f1346h = fVar.N;
        this.f1340b.setCategory(fVar.B).setColor(fVar.D).setVisibility(fVar.E).setPublicVersion(fVar.F).setSound(notification.sound, notification.audioAttributes);
        java.util.ArrayList<java.lang.String> arrayList = fVar.T;
        if (arrayList != null && !arrayList.isEmpty()) {
            java.util.Iterator<java.lang.String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.f1340b.addPerson(it2.next());
            }
        }
        this.f1347i = fVar.I;
        if (fVar.f1316d.size() > 0) {
            android.os.Bundle bundle2 = fVar.b().getBundle("android.car.EXTENSIONS");
            bundle2 = bundle2 == null ? new android.os.Bundle() : bundle2;
            android.os.Bundle bundle3 = new android.os.Bundle(bundle2);
            android.os.Bundle bundle4 = new android.os.Bundle();
            for (int i6 = 0; i6 < fVar.f1316d.size(); i6++) {
                bundle4.putBundle(java.lang.Integer.toString(i6), androidx.core.app.h.a(fVar.f1316d.get(i6)));
            }
            bundle2.putBundle("invisible_actions", bundle4);
            bundle3.putBundle("invisible_actions", bundle4);
            fVar.b().putBundle("android.car.EXTENSIONS", bundle2);
            this.f1345g.putBundle("android.car.EXTENSIONS", bundle3);
        }
        android.graphics.drawable.Icon icon = fVar.S;
        if (icon != null) {
            this.f1340b.setSmallIcon(icon);
        }
        this.f1340b.setExtras(fVar.C).setRemoteInputHistory(fVar.f1330r);
        android.widget.RemoteViews remoteViews = fVar.G;
        if (remoteViews != null) {
            this.f1340b.setCustomContentView(remoteViews);
        }
        android.widget.RemoteViews remoteViews2 = fVar.H;
        if (remoteViews2 != null) {
            this.f1340b.setCustomBigContentView(remoteViews2);
        }
        android.widget.RemoteViews remoteViews3 = fVar.I;
        if (remoteViews3 != null) {
            this.f1340b.setCustomHeadsUpContentView(remoteViews3);
        }
        this.f1340b.setBadgeIconType(fVar.K).setSettingsText(fVar.f1329q).setShortcutId(fVar.L).setTimeoutAfter(fVar.M).setGroupAlertBehavior(fVar.N);
        if (fVar.A) {
            this.f1340b.setColorized(fVar.f1338z);
        }
        if (!android.text.TextUtils.isEmpty(fVar.J)) {
            this.f1340b.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
        java.util.Iterator<androidx.core.app.i> it3 = fVar.f1315c.iterator();
        while (it3.hasNext()) {
            this.f1340b.addPerson(it3.next().g());
        }
        int i7 = android.os.Build.VERSION.SDK_INT;
        if (i7 >= 29) {
            this.f1340b.setAllowSystemGeneratedContextualActions(fVar.P);
            this.f1340b.setBubbleMetadata(androidx.core.app.e.a(null));
        }
        if (i7 >= 31 && (i5 = fVar.O) != 0) {
            this.f1340b.setForegroundServiceBehavior(i5);
        }
        if (fVar.R) {
            if (this.f1341c.f1335w) {
                this.f1346h = 2;
            } else {
                this.f1346h = 1;
            }
            this.f1340b.setVibrate(null);
            this.f1340b.setSound(null);
            int i8 = notification.defaults & (-2) & (-3);
            notification.defaults = i8;
            this.f1340b.setDefaults(i8);
            if (android.text.TextUtils.isEmpty(this.f1341c.f1334v)) {
                this.f1340b.setGroup("silent");
            }
            this.f1340b.setGroupAlertBehavior(this.f1346h);
        }
    }

    public final void a(androidx.core.app.d dVar) {
        androidx.core.graphics.drawable.IconCompat iconCompatD = dVar.d();
        android.app.Notification.Action.Builder builder = new android.app.Notification.Action.Builder(iconCompatD != null ? iconCompatD.m() : null, dVar.h(), dVar.a());
        if (dVar.e() != null) {
            for (android.app.RemoteInput remoteInput : androidx.core.app.j.b(dVar.e())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        android.os.Bundle bundle = dVar.c() != null ? new android.os.Bundle(dVar.c()) : new android.os.Bundle();
        bundle.putBoolean("android.support.allowGeneratedReplies", dVar.b());
        int i5 = android.os.Build.VERSION.SDK_INT;
        builder.setAllowGeneratedReplies(dVar.b());
        bundle.putInt("android.support.action.semanticAction", dVar.f());
        builder.setSemanticAction(dVar.f());
        if (i5 >= 29) {
            builder.setContextual(dVar.j());
        }
        if (i5 >= 31) {
            builder.setAuthenticationRequired(dVar.i());
        }
        bundle.putBoolean("android.support.action.showsUserInterface", dVar.g());
        builder.addExtras(bundle);
        this.f1340b.addAction(builder.build());
    }

    public android.app.Notification b() {
        java.util.Objects.requireNonNull(this.f1341c);
        android.app.Notification notificationC = c();
        android.widget.RemoteViews remoteViews = this.f1341c.G;
        if (remoteViews != null) {
            notificationC.contentView = remoteViews;
        }
        return notificationC;
    }

    public android.app.Notification c() {
        return this.f1340b.build();
    }
}
