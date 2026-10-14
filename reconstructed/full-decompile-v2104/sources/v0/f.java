package v0;

/* JADX INFO: compiled from: WorkConstraintsTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f6397a;

    /* JADX INFO: compiled from: WorkConstraintsTracker.kt */
    @f3.f(c = "androidx.work.impl.constraints.WorkConstraintsTrackerKt$listen$1", f = "WorkConstraintsTracker.kt", l = {54}, m = "invokeSuspend")
    public static final class a extends f3.k implements l3.p<t3.e0, d3.d<? super a3.o>, java.lang.Object> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f6398e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ v0.e f6399f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ z0.u f6400g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ v0.d f6401h;

        /* JADX INFO: renamed from: v0.f$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: WorkConstraintsTracker.kt */
        public static final class C0091a<T> implements w3.e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ v0.d f6402a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ z0.u f6403b;

            public C0091a(v0.d dVar, z0.u uVar) {
                this.f6402a = dVar;
                this.f6403b = uVar;
            }

            @Override // w3.e
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final java.lang.Object a(v0.b bVar, d3.d<? super a3.o> dVar) {
                this.f6402a.a(this.f6403b, bVar);
                return a3.o.f122a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(v0.e eVar, z0.u uVar, v0.d dVar, d3.d<? super v0.f.a> dVar2) {
            super(2, dVar2);
            this.f6399f = eVar;
            this.f6400g = uVar;
            this.f6401h = dVar;
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            java.lang.Object objC = e3.c.c();
            int i5 = this.f6398e;
            if (i5 == 0) {
                a3.j.b(obj);
                w3.d<v0.b> dVarB = this.f6399f.b(this.f6400g);
                v0.f.a.C0091a c0091a = new v0.f.a.C0091a(this.f6401h, this.f6400g);
                this.f6398e = 1;
                if (dVarB.a(c0091a, this) == objC) {
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

        @Override // l3.p
        /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object u(t3.e0 e0Var, d3.d<? super a3.o> dVar) {
            return ((v0.f.a) f(e0Var, dVar)).I(a3.o.f122a);
        }

        @Override // f3.a
        public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
            return new v0.f.a(this.f6399f, this.f6400g, this.f6401h, dVar);
        }
    }

    static {
        java.lang.String strI = q0.n.i("WorkConstraintsTracker");
        m3.k.d(strI, "tagWithPrefix(\"WorkConstraintsTracker\")");
        f6397a = strI;
    }

    public static final t3.h1 b(v0.e eVar, z0.u uVar, t3.b0 b0Var, v0.d dVar) {
        m3.k.e(eVar, "<this>");
        m3.k.e(uVar, "spec");
        m3.k.e(b0Var, "dispatcher");
        m3.k.e(dVar, "listener");
        t3.s sVarB = t3.m1.b(null, 1, null);
        t3.g.b(t3.f0.a(b0Var.x(sVarB)), null, null, new v0.f.a(eVar, uVar, dVar, null), 3, null);
        return sVarB;
    }
}
