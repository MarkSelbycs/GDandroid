package x0;

/* JADX INFO: compiled from: Trackers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x0.g<java.lang.Boolean> f6790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x0.c f6791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final x0.g<v0.c> f6792c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final x0.g<java.lang.Boolean> f6793d;

    public m(android.content.Context context, c1.b bVar, x0.g<java.lang.Boolean> gVar, x0.c cVar, x0.g<v0.c> gVar2, x0.g<java.lang.Boolean> gVar3) {
        m3.k.e(context, "context");
        m3.k.e(bVar, "taskExecutor");
        m3.k.e(gVar, "batteryChargingTracker");
        m3.k.e(cVar, "batteryNotLowTracker");
        m3.k.e(gVar2, "networkStateTracker");
        m3.k.e(gVar3, "storageNotLowTracker");
        this.f6790a = gVar;
        this.f6791b = cVar;
        this.f6792c = gVar2;
        this.f6793d = gVar3;
    }

    public final x0.g<java.lang.Boolean> a() {
        return this.f6790a;
    }

    public final x0.c b() {
        return this.f6791b;
    }

    public final x0.g<v0.c> c() {
        return this.f6792c;
    }

    public final x0.g<java.lang.Boolean> d() {
        return this.f6793d;
    }

    public /* synthetic */ m(android.content.Context context, c1.b bVar, x0.g gVar, x0.c cVar, x0.g gVar2, x0.g gVar3, int i5, m3.g gVar4) {
        x0.g aVar;
        x0.c cVar2;
        x0.g gVarA;
        x0.g kVar;
        if ((i5 & 4) != 0) {
            android.content.Context origApplicationContext = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
            m3.k.d(origApplicationContext, "context.applicationContext");
            aVar = new x0.a(origApplicationContext, bVar);
        } else {
            aVar = gVar;
        }
        if ((i5 & 8) != 0) {
            android.content.Context origApplicationContext2 = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
            m3.k.d(origApplicationContext2, "context.applicationContext");
            cVar2 = new x0.c(origApplicationContext2, bVar);
        } else {
            cVar2 = cVar;
        }
        if ((i5 & 16) != 0) {
            android.content.Context origApplicationContext3 = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
            m3.k.d(origApplicationContext3, "context.applicationContext");
            gVarA = x0.j.a(origApplicationContext3, bVar);
        } else {
            gVarA = gVar2;
        }
        if ((i5 & 32) != 0) {
            android.content.Context origApplicationContext4 = com.stub.StubApp.getOrigApplicationContext(context.getApplicationContext());
            m3.k.d(origApplicationContext4, "context.applicationContext");
            kVar = new x0.k(origApplicationContext4, bVar);
        } else {
            kVar = gVar3;
        }
        this(context, bVar, aVar, cVar2, gVarA, kVar);
    }
}
