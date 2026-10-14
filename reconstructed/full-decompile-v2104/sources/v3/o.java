package v3;

/* JADX INFO: compiled from: Produce.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class o {

    /* JADX INFO: compiled from: Produce.kt */
    @f3.f(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", l = {com.alibaba.fastjson.asm.Opcodes.IFEQ}, m = "awaitClose")
    public static final class a extends f3.d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.Object f6611d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public java.lang.Object f6612e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6613f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f6614g;

        public a(d3.d<? super v3.o.a> dVar) {
            super(dVar);
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) {
            this.f6613f = obj;
            this.f6614g |= Integer.MIN_VALUE;
            return v3.o.a(null, null, this);
        }
    }

    /* JADX INFO: compiled from: Produce.kt */
    public static final class b extends m3.l implements l3.l<java.lang.Throwable, a3.o> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ t3.j<a3.o> f6615b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(t3.j<? super a3.o> jVar) {
            super(1);
            this.f6615b = jVar;
        }

        public final void b(java.lang.Throwable th) {
            t3.j<a3.o> jVar = this.f6615b;
            a3.i.a aVar = a3.i.f116a;
            jVar.F(a3.i.b(a3.o.f122a));
        }

        @Override // l3.l
        public /* bridge */ /* synthetic */ a3.o x(java.lang.Throwable th) {
            b(th);
            return a3.o.f122a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final java.lang.Object a(v3.q<?> qVar, l3.a<a3.o> aVar, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
        v3.o.a aVar2;
        if (dVar instanceof v3.o.a) {
            aVar2 = (v3.o.a) dVar;
            int i5 = aVar2.f6614g;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                aVar2.f6614g = i5 - Integer.MIN_VALUE;
            } else {
                aVar2 = new v3.o.a(dVar);
            }
        } else {
            aVar2 = new v3.o.a(dVar);
        }
        java.lang.Object obj = aVar2.f6613f;
        java.lang.Object objC = e3.c.c();
        int i6 = aVar2.f6614g;
        try {
            if (i6 == 0) {
                a3.j.b(obj);
                if (!(aVar2.b().c(t3.h1.f6192m) == qVar)) {
                    throw new java.lang.IllegalStateException("awaitClose() can only be invoked from the producer context".toString());
                }
                aVar2.f6611d = qVar;
                aVar2.f6612e = aVar;
                aVar2.f6614g = 1;
                t3.k kVar = new t3.k(e3.b.b(aVar2), 1);
                kVar.w();
                qVar.n(new v3.o.b(kVar));
                java.lang.Object objT = kVar.t();
                if (objT == e3.c.c()) {
                    f3.h.c(aVar2);
                }
                if (objT == objC) {
                    return objC;
                }
            } else {
                if (i6 != 1) {
                    throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                aVar = (l3.a) aVar2.f6612e;
                a3.j.b(obj);
            }
            aVar.c();
            return a3.o.f122a;
        } catch (java.lang.Throwable th) {
            aVar.c();
            throw th;
        }
    }

    public static final <E> v3.s<E> b(t3.e0 e0Var, d3.g gVar, int i5, v3.a aVar, t3.g0 g0Var, l3.l<? super java.lang.Throwable, a3.o> lVar, l3.p<? super v3.q<? super E>, ? super d3.d<? super a3.o>, ? extends java.lang.Object> pVar) {
        v3.p pVar2 = new v3.p(t3.a0.d(e0Var, gVar), v3.g.b(i5, aVar, null, 4, null));
        if (lVar != null) {
            pVar2.X(lVar);
        }
        pVar2.M0(g0Var, pVar2, pVar);
        return pVar2;
    }

    public static /* synthetic */ v3.s c(t3.e0 e0Var, d3.g gVar, int i5, v3.a aVar, t3.g0 g0Var, l3.l lVar, l3.p pVar, int i6, java.lang.Object obj) {
        if ((i6 & 1) != 0) {
            gVar = d3.h.f3962a;
        }
        d3.g gVar2 = gVar;
        if ((i6 & 2) != 0) {
            i5 = 0;
        }
        int i7 = i5;
        if ((i6 & 4) != 0) {
            aVar = v3.a.SUSPEND;
        }
        v3.a aVar2 = aVar;
        if ((i6 & 8) != 0) {
            g0Var = t3.g0.DEFAULT;
        }
        t3.g0 g0Var2 = g0Var;
        if ((i6 & 16) != 0) {
            lVar = null;
        }
        return b(e0Var, gVar2, i7, aVar2, g0Var2, lVar, pVar);
    }
}
