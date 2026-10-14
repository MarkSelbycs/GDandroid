package l;

/* JADX INFO: compiled from: WidgetContainer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class q extends l.f {

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public java.util.ArrayList<l.f> f5119v0 = new java.util.ArrayList<>();

    @Override // l.f
    public void F0() {
        super.F0();
        java.util.ArrayList<l.f> arrayList = this.f5119v0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            l.f fVar = this.f5119v0.get(i5);
            fVar.n0(p(), q());
            if (!(fVar instanceof l.g)) {
                fVar.F0();
            }
        }
    }

    public void I0(l.f fVar) {
        this.f5119v0.add(fVar);
        if (fVar.u() != null) {
            ((l.q) fVar.u()).L0(fVar);
        }
        fVar.p0(this);
    }

    public l.g J0() {
        l.f fVarU = u();
        l.g gVar = this instanceof l.g ? (l.g) this : null;
        while (fVarU != null) {
            l.f fVarU2 = fVarU.u();
            if (fVarU instanceof l.g) {
                gVar = (l.g) fVarU;
            }
            fVarU = fVarU2;
        }
        return gVar;
    }

    public void K0() {
        F0();
        java.util.ArrayList<l.f> arrayList = this.f5119v0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            l.f fVar = this.f5119v0.get(i5);
            if (fVar instanceof l.q) {
                ((l.q) fVar).K0();
            }
        }
    }

    public void L0(l.f fVar) {
        this.f5119v0.remove(fVar);
        fVar.p0(null);
    }

    public void M0() {
        this.f5119v0.clear();
    }

    @Override // l.f
    public void Q() {
        this.f5119v0.clear();
        super.Q();
    }

    @Override // l.f
    public void T(k.c cVar) {
        super.T(cVar);
        int size = this.f5119v0.size();
        for (int i5 = 0; i5 < size; i5++) {
            this.f5119v0.get(i5).T(cVar);
        }
    }

    @Override // l.f
    public void n0(int i5, int i6) {
        super.n0(i5, i6);
        int size = this.f5119v0.size();
        for (int i7 = 0; i7 < size; i7++) {
            this.f5119v0.get(i7).n0(z(), A());
        }
    }
}
