package p4;

/* JADX INFO: compiled from: UsmUserTable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j0 implements java.io.Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final n4.a f5596b = n4.b.d(p4.j0.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Map<p4.j0.a, p4.i0> f5597a = new java.util.TreeMap();

    public synchronized p4.i0 b(p4.i0 i0Var) {
        n4.a aVar = f5596b;
        if (aVar.e()) {
            aVar.f("Adding user " + i0Var.h() + " = " + i0Var.j());
        }
        return this.f5597a.put(new p4.j0.a(i0Var), i0Var);
    }

    public synchronized p4.i0 c(r4.k kVar) {
        return this.f5597a.get(new p4.j0.a(new r4.k(), kVar));
    }

    public synchronized p4.i0 e(r4.k kVar, r4.k kVar2) {
        return this.f5597a.get(new p4.j0.a(kVar, kVar2));
    }

    /* JADX INFO: compiled from: UsmUserTable.java */
    public static class a implements java.lang.Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public r4.k f5598a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public r4.k f5599b;

        public a(p4.i0 i0Var) {
            a(i0Var.e());
            this.f5599b = i0Var.j().Z();
        }

        public final void a(r4.k kVar) {
            if (kVar == null) {
                this.f5598a = new r4.k();
            } else {
                this.f5598a = kVar;
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(java.lang.Object obj) {
            r4.k kVar;
            if (obj instanceof p4.i0) {
                return compareTo(new p4.j0.a((p4.i0) obj));
            }
            p4.j0.a aVar = (p4.j0.a) obj;
            int iCompareTo = 0;
            r4.k kVar2 = this.f5598a;
            if (kVar2 != null && (kVar = aVar.f5598a) != null) {
                iCompareTo = kVar2.compareTo(kVar);
            } else if (kVar2 != null) {
                iCompareTo = 1;
            } else if (aVar.f5598a != null) {
                iCompareTo = -1;
            }
            return iCompareTo == 0 ? this.f5599b.compareTo(aVar.f5599b) : iCompareTo;
        }

        public boolean equals(java.lang.Object obj) {
            return ((obj instanceof p4.i0) || (obj instanceof p4.j0.a)) && compareTo(obj) == 0;
        }

        public int hashCode() {
            return this.f5598a.hashCode() ^ (this.f5599b.hashCode() + 2);
        }

        public a(r4.k kVar, r4.k kVar2) {
            a(kVar);
            this.f5599b = kVar2;
        }
    }
}
