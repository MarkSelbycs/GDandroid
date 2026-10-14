package v0;

/* JADX INFO: compiled from: WorkConstraintsTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.util.List<w0.c<?>> f6390a;

    /* JADX INFO: compiled from: WorkConstraintsTracker.kt */
    public static final class a extends m3.l implements l3.l<w0.c<?>, java.lang.CharSequence> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final v0.e.a f6391b = new v0.e.a();

        public a() {
            super(1);
        }

        @Override // l3.l
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final java.lang.CharSequence x(w0.c<?> cVar) {
            m3.k.e(cVar, "it");
            java.lang.String simpleName = cVar.getClass().getSimpleName();
            m3.k.d(simpleName, "it.javaClass.simpleName");
            return simpleName;
        }
    }

    /* JADX INFO: compiled from: SafeCollector.common.kt */
    public static final class b implements w3.d<v0.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ w3.d[] f6392a;

        /* JADX INFO: compiled from: Zip.kt */
        public static final class a extends m3.l implements l3.a<v0.b[]> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ w3.d[] f6393b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(w3.d[] dVarArr) {
                super(0);
                this.f6393b = dVarArr;
            }

            @Override // l3.a
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final v0.b[] c() {
                return new v0.b[this.f6393b.length];
            }
        }

        /* JADX INFO: renamed from: v0.e$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Zip.kt */
        @f3.f(c = "androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3", f = "WorkConstraintsTracker.kt", l = {292}, m = "invokeSuspend")
        public static final class C0090b extends f3.k implements l3.q<w3.e<? super v0.b>, v0.b[], d3.d<? super a3.o>, java.lang.Object> {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f6394e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public /* synthetic */ java.lang.Object f6395f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public /* synthetic */ java.lang.Object f6396g;

            public C0090b(d3.d dVar) {
                super(3, dVar);
            }

            @Override // f3.a
            public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
                v0.b bVar;
                java.lang.Object objC = e3.c.c();
                int i5 = this.f6394e;
                if (i5 == 0) {
                    a3.j.b(obj);
                    w3.e eVar = (w3.e) this.f6395f;
                    v0.b[] bVarArr = (v0.b[]) ((java.lang.Object[]) this.f6396g);
                    int i6 = 0;
                    int length = bVarArr.length;
                    while (true) {
                        if (i6 >= length) {
                            bVar = null;
                            break;
                        }
                        bVar = bVarArr[i6];
                        if (!m3.k.a(bVar, v0.b.a.f6384a)) {
                            break;
                        }
                        i6++;
                    }
                    if (bVar == null) {
                        bVar = v0.b.a.f6384a;
                    }
                    this.f6394e = 1;
                    if (eVar.a(bVar, this) == objC) {
                        return objC;
                    }
                } else {
                    if (i5 != 1) {
                        throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    a3.j.b(obj);
                }
                return a3.o.f122a;
            }

            @Override // l3.q
            /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
            public final java.lang.Object q(w3.e<? super v0.b> eVar, v0.b[] bVarArr, d3.d<? super a3.o> dVar) {
                v0.e.b.C0090b c0090b = new v0.e.b.C0090b(dVar);
                c0090b.f6395f = eVar;
                c0090b.f6396g = bVarArr;
                return c0090b.I(a3.o.f122a);
            }
        }

        public b(w3.d[] dVarArr) {
            this.f6392a = dVarArr;
        }

        @Override // w3.d
        public java.lang.Object a(w3.e<? super v0.b> eVar, d3.d dVar) {
            w3.d[] dVarArr = this.f6392a;
            java.lang.Object objA = x3.b.a(eVar, dVarArr, new v0.e.b.a(dVarArr), new v0.e.b.C0090b(null), dVar);
            return objA == e3.c.c() ? objA : a3.o.f122a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(java.util.List<? extends w0.c<?>> list) {
        m3.k.e(list, "controllers");
        this.f6390a = list;
    }

    public final boolean a(z0.u uVar) {
        m3.k.e(uVar, "workSpec");
        java.util.List<w0.c<?>> list = this.f6390a;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Object obj : list) {
            if (((w0.c) obj).e(uVar)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            q0.n.e().a(v0.f.f6397a, "Work " + uVar.f7032a + " constrained by " + b3.w.t(arrayList, null, null, null, 0, null, v0.e.a.f6391b, 31, null));
        }
        return arrayList.isEmpty();
    }

    public final w3.d<v0.b> b(z0.u uVar) {
        m3.k.e(uVar, "spec");
        java.util.List<w0.c<?>> list = this.f6390a;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (java.lang.Object obj : list) {
            if (((w0.c) obj).c(uVar)) {
                arrayList.add(obj);
            }
        }
        java.util.ArrayList arrayList2 = new java.util.ArrayList(b3.p.l(arrayList, 10));
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((w0.c) it.next()).f());
        }
        return w3.f.b(new v0.e.b((w3.d[]) b3.w.B(arrayList2).toArray(new w3.d[0])));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(x0.m mVar) {
        this((java.util.List<? extends w0.c<?>>) b3.o.g(new w0.a(mVar.a()), new w0.b(mVar.b()), new w0.h(mVar.d()), new w0.d(mVar.c()), new w0.g(mVar.c()), new w0.f(mVar.c()), new w0.e(mVar.c())));
        m3.k.e(mVar, "trackers");
    }
}
