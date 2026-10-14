package t3;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a0 {

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public static final class a extends m3.l implements l3.p<d3.g, d3.g.b, d3.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final t3.a0.a f6166b = new t3.a0.a();

        public a() {
            super(2);
        }

        @Override // l3.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final d3.g u(d3.g gVar, d3.g.b bVar) {
            return bVar instanceof t3.z ? gVar.x(((t3.z) bVar).V()) : gVar.x(bVar);
        }
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public static final class b extends m3.l implements l3.p<d3.g, d3.g.b, d3.g> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ m3.q<d3.g> f6167b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f6168c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(m3.q<d3.g> qVar, boolean z4) {
            super(2);
            this.f6167b = qVar;
            this.f6168c = z4;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [T, d3.g] */
        @Override // l3.p
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final d3.g u(d3.g gVar, d3.g.b bVar) {
            if (!(bVar instanceof t3.z)) {
                return gVar.x(bVar);
            }
            d3.g.b bVarC = this.f6167b.f5194a.c(bVar.getKey());
            if (bVarC != null) {
                m3.q<d3.g> qVar = this.f6167b;
                qVar.f5194a = qVar.f5194a.j(bVar.getKey());
                return gVar.x(((t3.z) bVar).H(bVarC));
            }
            t3.z zVarV = (t3.z) bVar;
            if (this.f6168c) {
                zVarV = zVarV.V();
            }
            return gVar.x(zVarV);
        }
    }

    /* JADX INFO: compiled from: CoroutineContext.kt */
    public static final class c extends m3.l implements l3.p<java.lang.Boolean, d3.g.b, java.lang.Boolean> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final t3.a0.c f6169b = new t3.a0.c();

        public c() {
            super(2);
        }

        public final java.lang.Boolean b(boolean z4, d3.g.b bVar) {
            return java.lang.Boolean.valueOf(z4 || (bVar instanceof t3.z));
        }

        @Override // l3.p
        public /* bridge */ /* synthetic */ java.lang.Boolean u(java.lang.Boolean bool, d3.g.b bVar) {
            return b(bool.booleanValue(), bVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    public static final d3.g a(d3.g gVar, d3.g gVar2, boolean z4) {
        boolean zC = c(gVar);
        boolean zC2 = c(gVar2);
        if (!zC && !zC2) {
            return gVar.x(gVar2);
        }
        m3.q qVar = new m3.q();
        qVar.f5194a = gVar2;
        d3.h hVar = d3.h.f3962a;
        d3.g gVar3 = (d3.g) gVar.m0(hVar, new t3.a0.b(qVar, z4));
        if (zC2) {
            qVar.f5194a = ((d3.g) qVar.f5194a).m0(hVar, t3.a0.a.f6166b);
        }
        return gVar3.x((d3.g) qVar.f5194a);
    }

    public static final java.lang.String b(d3.g gVar) {
        return null;
    }

    public static final boolean c(d3.g gVar) {
        return ((java.lang.Boolean) gVar.m0(java.lang.Boolean.FALSE, t3.a0.c.f6169b)).booleanValue();
    }

    public static final d3.g d(t3.e0 e0Var, d3.g gVar) {
        d3.g gVarA = a(e0Var.k(), gVar, true);
        return (gVarA == t3.q0.a() || gVarA.c(d3.e.f3959k) != null) ? gVarA : gVarA.x(t3.q0.a());
    }

    public static final t3.a2<?> e(f3.e eVar) {
        while (!(eVar instanceof t3.m0) && (eVar = eVar.D()) != null) {
            if (eVar instanceof t3.a2) {
                return (t3.a2) eVar;
            }
        }
        return null;
    }

    public static final t3.a2<?> f(d3.d<?> dVar, d3.g gVar, java.lang.Object obj) {
        if (!(dVar instanceof f3.e)) {
            return null;
        }
        if (!(gVar.c(t3.b2.f6174a) != null)) {
            return null;
        }
        t3.a2<?> a2VarE = e((f3.e) dVar);
        if (a2VarE != null) {
            a2VarE.O0(gVar, obj);
        }
        return a2VarE;
    }
}
