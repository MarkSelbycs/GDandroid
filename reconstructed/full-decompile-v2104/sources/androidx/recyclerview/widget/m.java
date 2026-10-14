package androidx.recyclerview.widget;

/* JADX INFO: compiled from: ViewInfoStore.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j.g<androidx.recyclerview.widget.RecyclerView.b0, androidx.recyclerview.widget.m.a> f2178a = new j.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final j.d<androidx.recyclerview.widget.RecyclerView.b0> f2179b = new j.d<>();

    /* JADX INFO: compiled from: ViewInfoStore.java */
    public static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static v.e<androidx.recyclerview.widget.m.a> f2180d = new v.f(20);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2181a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.m.c f2182b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.recyclerview.widget.RecyclerView.m.c f2183c;

        public static void a() {
            while (f2180d.b() != null) {
            }
        }

        public static androidx.recyclerview.widget.m.a b() {
            androidx.recyclerview.widget.m.a aVarB = f2180d.b();
            return aVarB == null ? new androidx.recyclerview.widget.m.a() : aVarB;
        }

        public static void c(androidx.recyclerview.widget.m.a aVar) {
            aVar.f2181a = 0;
            aVar.f2182b = null;
            aVar.f2183c = null;
            f2180d.a(aVar);
        }
    }

    /* JADX INFO: compiled from: ViewInfoStore.java */
    public interface b {
        void a(androidx.recyclerview.widget.RecyclerView.b0 b0Var);

        void b(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2);

        void c(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2);

        void d(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar, androidx.recyclerview.widget.RecyclerView.m.c cVar2);
    }

    public void a(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar) {
        androidx.recyclerview.widget.m.a aVarB = this.f2178a.get(b0Var);
        if (aVarB == null) {
            aVarB = androidx.recyclerview.widget.m.a.b();
            this.f2178a.put(b0Var, aVarB);
        }
        aVarB.f2181a |= 2;
        aVarB.f2182b = cVar;
    }

    public void b(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        androidx.recyclerview.widget.m.a aVarB = this.f2178a.get(b0Var);
        if (aVarB == null) {
            aVarB = androidx.recyclerview.widget.m.a.b();
            this.f2178a.put(b0Var, aVarB);
        }
        aVarB.f2181a |= 1;
    }

    public void c(long j5, androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        this.f2179b.j(j5, b0Var);
    }

    public void d(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar) {
        androidx.recyclerview.widget.m.a aVarB = this.f2178a.get(b0Var);
        if (aVarB == null) {
            aVarB = androidx.recyclerview.widget.m.a.b();
            this.f2178a.put(b0Var, aVarB);
        }
        aVarB.f2183c = cVar;
        aVarB.f2181a |= 8;
    }

    public void e(androidx.recyclerview.widget.RecyclerView.b0 b0Var, androidx.recyclerview.widget.RecyclerView.m.c cVar) {
        androidx.recyclerview.widget.m.a aVarB = this.f2178a.get(b0Var);
        if (aVarB == null) {
            aVarB = androidx.recyclerview.widget.m.a.b();
            this.f2178a.put(b0Var, aVarB);
        }
        aVarB.f2182b = cVar;
        aVarB.f2181a |= 4;
    }

    public void f() {
        this.f2178a.clear();
        this.f2179b.a();
    }

    public androidx.recyclerview.widget.RecyclerView.b0 g(long j5) {
        return this.f2179b.f(j5);
    }

    public boolean h(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        androidx.recyclerview.widget.m.a aVar = this.f2178a.get(b0Var);
        return (aVar == null || (aVar.f2181a & 1) == 0) ? false : true;
    }

    public boolean i(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        androidx.recyclerview.widget.m.a aVar = this.f2178a.get(b0Var);
        return (aVar == null || (aVar.f2181a & 4) == 0) ? false : true;
    }

    public void j() {
        androidx.recyclerview.widget.m.a.a();
    }

    public void k(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        p(b0Var);
    }

    public final androidx.recyclerview.widget.RecyclerView.m.c l(androidx.recyclerview.widget.RecyclerView.b0 b0Var, int i5) {
        androidx.recyclerview.widget.m.a aVarM;
        androidx.recyclerview.widget.RecyclerView.m.c cVar;
        int iF = this.f2178a.f(b0Var);
        if (iF >= 0 && (aVarM = this.f2178a.m(iF)) != null) {
            int i6 = aVarM.f2181a;
            if ((i6 & i5) != 0) {
                int i7 = (~i5) & i6;
                aVarM.f2181a = i7;
                if (i5 == 4) {
                    cVar = aVarM.f2182b;
                } else {
                    if (i5 != 8) {
                        throw new java.lang.IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVarM.f2183c;
                }
                if ((i7 & 12) == 0) {
                    this.f2178a.k(iF);
                    androidx.recyclerview.widget.m.a.c(aVarM);
                }
                return cVar;
            }
        }
        return null;
    }

    public androidx.recyclerview.widget.RecyclerView.m.c m(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        return l(b0Var, 8);
    }

    public androidx.recyclerview.widget.RecyclerView.m.c n(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        return l(b0Var, 4);
    }

    public void o(androidx.recyclerview.widget.m.b bVar) {
        for (int size = this.f2178a.size() - 1; size >= 0; size--) {
            androidx.recyclerview.widget.RecyclerView.b0 b0VarI = this.f2178a.i(size);
            androidx.recyclerview.widget.m.a aVarK = this.f2178a.k(size);
            int i5 = aVarK.f2181a;
            if ((i5 & 3) == 3) {
                bVar.a(b0VarI);
            } else if ((i5 & 1) != 0) {
                androidx.recyclerview.widget.RecyclerView.m.c cVar = aVarK.f2182b;
                if (cVar == null) {
                    bVar.a(b0VarI);
                } else {
                    bVar.c(b0VarI, cVar, aVarK.f2183c);
                }
            } else if ((i5 & 14) == 14) {
                bVar.b(b0VarI, aVarK.f2182b, aVarK.f2183c);
            } else if ((i5 & 12) == 12) {
                bVar.d(b0VarI, aVarK.f2182b, aVarK.f2183c);
            } else if ((i5 & 4) != 0) {
                bVar.c(b0VarI, aVarK.f2182b, null);
            } else if ((i5 & 8) != 0) {
                bVar.b(b0VarI, aVarK.f2182b, aVarK.f2183c);
            }
            androidx.recyclerview.widget.m.a.c(aVarK);
        }
    }

    public void p(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        androidx.recyclerview.widget.m.a aVar = this.f2178a.get(b0Var);
        if (aVar == null) {
            return;
        }
        aVar.f2181a &= -2;
    }

    public void q(androidx.recyclerview.widget.RecyclerView.b0 b0Var) {
        for (int iM = this.f2179b.m() - 1; iM >= 0; iM--) {
            if (b0Var == this.f2179b.p(iM)) {
                this.f2179b.k(iM);
                break;
            }
        }
        androidx.recyclerview.widget.m.a aVarRemove = this.f2178a.remove(b0Var);
        if (aVarRemove != null) {
            androidx.recyclerview.widget.m.a.c(aVarRemove);
        }
    }
}
