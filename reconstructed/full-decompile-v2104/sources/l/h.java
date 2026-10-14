package l;

/* JADX INFO: compiled from: ConstraintWidgetGroup.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.List<l.f> f5073a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5075c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5076d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f5077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.List<l.f> f5078f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.util.List<l.f> f5079g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.HashSet<l.f> f5080h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.util.HashSet<l.f> f5081i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public java.util.List<l.f> f5082j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public java.util.List<l.f> f5083k;

    public h(java.util.List<l.f> list) {
        this.f5074b = -1;
        this.f5075c = -1;
        this.f5076d = false;
        this.f5077e = new int[]{-1, -1};
        this.f5078f = new java.util.ArrayList();
        this.f5079g = new java.util.ArrayList();
        this.f5080h = new java.util.HashSet<>();
        this.f5081i = new java.util.HashSet<>();
        this.f5082j = new java.util.ArrayList();
        this.f5083k = new java.util.ArrayList();
        this.f5073a = list;
    }

    public void a(l.f fVar, int i5) {
        if (i5 == 0) {
            this.f5080h.add(fVar);
        } else if (i5 == 1) {
            this.f5081i.add(fVar);
        }
    }

    public java.util.List<l.f> b(int i5) {
        if (i5 == 0) {
            return this.f5078f;
        }
        if (i5 == 1) {
            return this.f5079g;
        }
        return null;
    }

    public java.util.Set<l.f> c(int i5) {
        if (i5 == 0) {
            return this.f5080h;
        }
        if (i5 == 1) {
            return this.f5081i;
        }
        return null;
    }

    public java.util.List<l.f> d() {
        if (!this.f5082j.isEmpty()) {
            return this.f5082j;
        }
        int size = this.f5073a.size();
        for (int i5 = 0; i5 < size; i5++) {
            l.f fVar = this.f5073a.get(i5);
            if (!fVar.f5033i0) {
                e((java.util.ArrayList) this.f5082j, fVar);
            }
        }
        this.f5083k.clear();
        this.f5083k.addAll(this.f5073a);
        this.f5083k.removeAll(this.f5082j);
        return this.f5082j;
    }

    public final void e(java.util.ArrayList<l.f> arrayList, l.f fVar) {
        l.f fVar2;
        if (fVar.f5037k0) {
            return;
        }
        arrayList.add(fVar);
        fVar.f5037k0 = true;
        if (fVar.L()) {
            return;
        }
        if (fVar instanceof l.j) {
            l.j jVar = (l.j) fVar;
            int i5 = jVar.f5091w0;
            for (int i6 = 0; i6 < i5; i6++) {
                e(arrayList, jVar.f5090v0[i6]);
            }
        }
        int length = fVar.C.length;
        for (int i7 = 0; i7 < length; i7++) {
            l.e eVar = fVar.C[i7].f4990d;
            if (eVar != null && (fVar2 = eVar.f4988b) != fVar.u()) {
                e(arrayList, fVar2);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0041  */
    public final void f(l.f fVar) {
        int iD;
        if (!fVar.f5033i0 || fVar.L()) {
            return;
        }
        l.e eVar = fVar.f5058w.f4990d;
        boolean z4 = eVar != null;
        if (!z4) {
            eVar = fVar.f5056u.f4990d;
        }
        if (eVar != null) {
            l.f fVar2 = eVar.f4988b;
            if (!fVar2.f5035j0) {
                f(fVar2);
            }
            l.e.d dVar = eVar.f4989c;
            if (dVar == l.e.d.RIGHT) {
                l.f fVar3 = eVar.f4988b;
                iD = fVar3.K + fVar3.D();
            } else if (dVar == l.e.d.LEFT) {
                iD = eVar.f4988b.K;
            } else {
                iD = 0;
            }
        } else {
            iD = 0;
        }
        int iD2 = z4 ? iD - fVar.f5058w.d() : iD + fVar.f5056u.d() + fVar.D();
        fVar.f0(iD2 - fVar.D(), iD2);
        l.e eVar2 = fVar.f5060y.f4990d;
        if (eVar2 != null) {
            l.f fVar4 = eVar2.f4988b;
            if (!fVar4.f5035j0) {
                f(fVar4);
            }
            l.f fVar5 = eVar2.f4988b;
            int i5 = (fVar5.L + fVar5.U) - fVar.U;
            fVar.t0(i5, fVar.H + i5);
            fVar.f5035j0 = true;
            return;
        }
        l.e eVar3 = fVar.f5059x.f4990d;
        boolean z5 = eVar3 != null;
        if (!z5) {
            eVar3 = fVar.f5057v.f4990d;
        }
        if (eVar3 != null) {
            l.f fVar6 = eVar3.f4988b;
            if (!fVar6.f5035j0) {
                f(fVar6);
            }
            l.e.d dVar2 = eVar3.f4989c;
            if (dVar2 == l.e.d.BOTTOM) {
                l.f fVar7 = eVar3.f4988b;
                iD2 = fVar7.L + fVar7.r();
            } else if (dVar2 == l.e.d.TOP) {
                iD2 = eVar3.f4988b.L;
            }
        }
        int iD3 = z5 ? iD2 - fVar.f5059x.d() : iD2 + fVar.f5057v.d() + fVar.r();
        fVar.t0(iD3 - fVar.r(), iD3);
        fVar.f5035j0 = true;
    }

    public void g() {
        int size = this.f5083k.size();
        for (int i5 = 0; i5 < size; i5++) {
            f(this.f5083k.get(i5));
        }
    }

    public h(java.util.List<l.f> list, boolean z4) {
        this.f5074b = -1;
        this.f5075c = -1;
        this.f5076d = false;
        this.f5077e = new int[]{-1, -1};
        this.f5078f = new java.util.ArrayList();
        this.f5079g = new java.util.ArrayList();
        this.f5080h = new java.util.HashSet<>();
        this.f5081i = new java.util.HashSet<>();
        this.f5082j = new java.util.ArrayList();
        this.f5083k = new java.util.ArrayList();
        this.f5073a = list;
        this.f5076d = z4;
    }
}
