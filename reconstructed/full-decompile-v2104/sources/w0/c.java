package w0;

/* JADX INFO: compiled from: ContraintControllers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x0.g<T> f6694a;

    /* JADX INFO: compiled from: ContraintControllers.kt */
    @f3.f(c = "androidx.work.impl.constraints.controllers.ConstraintController$track$1", f = "ContraintControllers.kt", l = {55}, m = "invokeSuspend")
    public static final class a extends f3.k implements l3.p<v3.q<? super v0.b>, d3.d<? super a3.o>, java.lang.Object> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f6695e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6696f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ w0.c<T> f6697g;

        /* JADX INFO: renamed from: w0.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ContraintControllers.kt */
        public static final class C0098a extends m3.l implements l3.a<a3.o> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ w0.c<T> f6698b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ w0.c.a.b f6699c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0098a(w0.c cVar, w0.c.a.b bVar) {
                super(0);
                this.f6698b = cVar;
                this.f6699c = bVar;
            }

            public final void b() {
                this.f6698b.f6694a.f(this.f6699c);
            }

            @Override // l3.a
            public /* bridge */ /* synthetic */ a3.o c() {
                b();
                return a3.o.f122a;
            }
        }

        /* JADX INFO: compiled from: ContraintControllers.kt */
        public static final class b implements v0.a<T> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ w0.c<T> f6700a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ v3.q<v0.b> f6701b;

            /* JADX WARN: Multi-variable type inference failed */
            public b(w0.c<T> cVar, v3.q<? super v0.b> qVar) {
                this.f6700a = cVar;
                this.f6701b = qVar;
            }

            @Override // v0.a
            public void a(T t5) {
                this.f6701b.m().i(this.f6700a.d(t5) ? new v0.b.C0089b(this.f6700a.b()) : v0.b.a.f6384a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(w0.c<T> cVar, d3.d<? super w0.c.a> dVar) {
            super(2, dVar);
            this.f6697g = cVar;
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            java.lang.Object objC = e3.c.c();
            int i5 = this.f6695e;
            if (i5 == 0) {
                a3.j.b(obj);
                v3.q qVar = (v3.q) this.f6696f;
                w0.c.a.b bVar = new w0.c.a.b(this.f6697g, qVar);
                this.f6697g.f6694a.c(bVar);
                w0.c.a.C0098a c0098a = new w0.c.a.C0098a(this.f6697g, bVar);
                this.f6695e = 1;
                if (v3.o.a(qVar, c0098a, this) == objC) {
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
        public final java.lang.Object u(v3.q<? super v0.b> qVar, d3.d<? super a3.o> dVar) {
            return ((w0.c.a) f(qVar, dVar)).I(a3.o.f122a);
        }

        @Override // f3.a
        public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
            w0.c.a aVar = new w0.c.a(this.f6697g, dVar);
            aVar.f6696f = obj;
            return aVar;
        }
    }

    public c(x0.g<T> gVar) {
        m3.k.e(gVar, "tracker");
        this.f6694a = gVar;
    }

    public abstract int b();

    public abstract boolean c(z0.u uVar);

    public abstract boolean d(T t5);

    public final boolean e(z0.u uVar) {
        m3.k.e(uVar, "workSpec");
        return c(uVar) && d(this.f6694a.e());
    }

    public final w3.d<v0.b> f() {
        return w3.f.a(new w0.c.a(this, null));
    }
}
