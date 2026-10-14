package l;

/* JADX INFO: compiled from: Snapshot.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.util.ArrayList<l.p.a> f5113e = new java.util.ArrayList<>();

    /* JADX INFO: compiled from: Snapshot.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public l.e f5114a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public l.e f5115b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f5116c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public l.e.c f5117d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f5118e;

        public a(l.e eVar) {
            this.f5114a = eVar;
            this.f5115b = eVar.i();
            this.f5116c = eVar.d();
            this.f5117d = eVar.h();
            this.f5118e = eVar.c();
        }

        public void a(l.f fVar) {
            fVar.h(this.f5114a.j()).b(this.f5115b, this.f5116c, this.f5117d, this.f5118e);
        }

        public void b(l.f fVar) {
            l.e eVarH = fVar.h(this.f5114a.j());
            this.f5114a = eVarH;
            if (eVarH != null) {
                this.f5115b = eVarH.i();
                this.f5116c = this.f5114a.d();
                this.f5117d = this.f5114a.h();
                this.f5118e = this.f5114a.c();
                return;
            }
            this.f5115b = null;
            this.f5116c = 0;
            this.f5117d = l.e.c.STRONG;
            this.f5118e = 0;
        }
    }

    public p(l.f fVar) {
        this.f5109a = fVar.G();
        this.f5110b = fVar.H();
        this.f5111c = fVar.D();
        this.f5112d = fVar.r();
        java.util.ArrayList<l.e> arrayListI = fVar.i();
        int size = arrayListI.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f5113e.add(new l.p.a(arrayListI.get(i5)));
        }
    }

    public void a(l.f fVar) {
        fVar.C0(this.f5109a);
        fVar.D0(this.f5110b);
        fVar.y0(this.f5111c);
        fVar.b0(this.f5112d);
        int size = this.f5113e.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f5113e.get(i5).a(fVar);
        }
    }

    public void b(l.f fVar) {
        this.f5109a = fVar.G();
        this.f5110b = fVar.H();
        this.f5111c = fVar.D();
        this.f5112d = fVar.r();
        int size = this.f5113e.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f5113e.get(i5).b(fVar);
        }
    }
}
