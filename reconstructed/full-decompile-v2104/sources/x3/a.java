package x3;

/* JADX INFO: compiled from: ChannelFlow.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class a<T> implements w3.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d3.g f6797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v3.a f6799c;

    /* JADX INFO: renamed from: x3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ChannelFlow.kt */
    @f3.f(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collect$2", f = "ChannelFlow.kt", l = {123}, m = "invokeSuspend")
    public static final class C0103a extends f3.k implements l3.p<t3.e0, d3.d<? super a3.o>, java.lang.Object> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f6800e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6801f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ w3.e<T> f6802g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ x3.a<T> f6803h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C0103a(w3.e<? super T> eVar, x3.a<T> aVar, d3.d<? super x3.a.C0103a> dVar) {
            super(2, dVar);
            this.f6802g = eVar;
            this.f6803h = aVar;
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            java.lang.Object objC = e3.c.c();
            int i5 = this.f6800e;
            if (i5 == 0) {
                a3.j.b(obj);
                t3.e0 e0Var = (t3.e0) this.f6801f;
                w3.e<T> eVar = this.f6802g;
                v3.s<T> sVarG = this.f6803h.g(e0Var);
                this.f6800e = 1;
                if (w3.f.c(eVar, sVarG, this) == objC) {
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
            return ((x3.a.C0103a) f(e0Var, dVar)).I(a3.o.f122a);
        }

        @Override // f3.a
        public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
            x3.a.C0103a c0103a = new x3.a.C0103a(this.f6802g, this.f6803h, dVar);
            c0103a.f6801f = obj;
            return c0103a;
        }
    }

    /* JADX INFO: compiled from: ChannelFlow.kt */
    @f3.f(c = "kotlinx.coroutines.flow.internal.ChannelFlow$collectToFun$1", f = "ChannelFlow.kt", l = {60}, m = "invokeSuspend")
    public static final class b extends f3.k implements l3.p<v3.q<? super T>, d3.d<? super a3.o>, java.lang.Object> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f6804e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6805f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ x3.a<T> f6806g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(x3.a<T> aVar, d3.d<? super x3.a.b> dVar) {
            super(2, dVar);
            this.f6806g = aVar;
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            java.lang.Object objC = e3.c.c();
            int i5 = this.f6804e;
            if (i5 == 0) {
                a3.j.b(obj);
                v3.q<? super T> qVar = (v3.q) this.f6805f;
                x3.a<T> aVar = this.f6806g;
                this.f6804e = 1;
                if (aVar.d(qVar, this) == objC) {
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
        public final java.lang.Object u(v3.q<? super T> qVar, d3.d<? super a3.o> dVar) {
            return ((x3.a.b) f(qVar, dVar)).I(a3.o.f122a);
        }

        @Override // f3.a
        public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
            x3.a.b bVar = new x3.a.b(this.f6806g, dVar);
            bVar.f6805f = obj;
            return bVar;
        }
    }

    public a(d3.g gVar, int i5, v3.a aVar) {
        this.f6797a = gVar;
        this.f6798b = i5;
        this.f6799c = aVar;
    }

    public static /* synthetic */ <T> java.lang.Object c(x3.a<T> aVar, w3.e<? super T> eVar, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
        java.lang.Object objB = t3.f0.b(new x3.a.C0103a(eVar, aVar, null), dVar);
        return objB == e3.c.c() ? objB : a3.o.f122a;
    }

    @Override // w3.d
    public java.lang.Object a(w3.e<? super T> eVar, d3.d<? super a3.o> dVar) {
        return c(this, eVar, dVar);
    }

    public java.lang.String b() {
        return null;
    }

    public abstract java.lang.Object d(v3.q<? super T> qVar, d3.d<? super a3.o> dVar);

    public final l3.p<v3.q<? super T>, d3.d<? super a3.o>, java.lang.Object> e() {
        return new x3.a.b(this, null);
    }

    public final int f() {
        int i5 = this.f6798b;
        if (i5 == -3) {
            return -2;
        }
        return i5;
    }

    public v3.s<T> g(t3.e0 e0Var) {
        return v3.o.c(e0Var, this.f6797a, f(), this.f6799c, t3.g0.ATOMIC, null, e(), 16, null);
    }

    public java.lang.String toString() {
        java.util.ArrayList arrayList = new java.util.ArrayList(4);
        java.lang.String strB = b();
        if (strB != null) {
            arrayList.add(strB);
        }
        if (this.f6797a != d3.h.f3962a) {
            arrayList.add("context=" + this.f6797a);
        }
        if (this.f6798b != -3) {
            arrayList.add("capacity=" + this.f6798b);
        }
        if (this.f6799c != v3.a.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.f6799c);
        }
        return t3.i0.a(this) + '[' + b3.w.t(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
