package androidx.work.impl.background.systemalarm;

/* JADX INFO: compiled from: ConstraintsCommandHandler.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.lang.String f2675f = q0.n.i("ConstraintsCmdHandler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f2676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q0.b f2677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.work.impl.background.systemalarm.d f2679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v0.e f2680e;

    public b(android.content.Context context, q0.b bVar, int i5, androidx.work.impl.background.systemalarm.d dVar) {
        this.f2676a = context;
        this.f2677b = bVar;
        this.f2678c = i5;
        this.f2679d = dVar;
        this.f2680e = new v0.e(dVar.g().t());
    }

    public void a() {
        java.util.List<z0.u> listV = this.f2679d.g().u().J().v();
        androidx.work.impl.background.systemalarm.ConstraintProxy.a(this.f2676a, listV);
        java.util.ArrayList<z0.u> arrayList = new java.util.ArrayList(listV.size());
        long jA = this.f2677b.a();
        for (z0.u uVar : listV) {
            if (jA >= uVar.c() && (!uVar.k() || this.f2680e.a(uVar))) {
                arrayList.add(uVar);
            }
        }
        for (z0.u uVar2 : arrayList) {
            java.lang.String str = uVar2.f7032a;
            android.content.Intent intentB = androidx.work.impl.background.systemalarm.a.b(this.f2676a, z0.x.a(uVar2));
            q0.n.e().a(f2675f, "Creating a delay_met command for workSpec with id (" + str + ")");
            this.f2679d.f().b().execute(new androidx.work.impl.background.systemalarm.d.b(this.f2679d, intentB, this.f2678c));
        }
    }
}
