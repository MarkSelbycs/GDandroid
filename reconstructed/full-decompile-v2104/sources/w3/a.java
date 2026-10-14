package w3;

/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a<T> extends w3.b<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final l3.p<v3.q<? super T>, d3.d<? super a3.o>, java.lang.Object> f6712e;

    /* JADX INFO: renamed from: w3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Builders.kt */
    @f3.f(c = "kotlinx.coroutines.flow.CallbackFlowBuilder", f = "Builders.kt", l = {334}, m = "collectTo")
    public static final class C0099a extends f3.d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.Object f6713d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6714e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ w3.a<T> f6715f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f6716g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0099a(w3.a<T> aVar, d3.d<? super w3.a.C0099a> dVar) {
            super(dVar);
            this.f6715f = aVar;
        }

        @Override // f3.a
        public final java.lang.Object I(java.lang.Object obj) {
            this.f6714e = obj;
            this.f6716g |= Integer.MIN_VALUE;
            return this.f6715f.d(null, this);
        }
    }

    public /* synthetic */ a(l3.p pVar, d3.g gVar, int i5, v3.a aVar, int i6, m3.g gVar2) {
        this(pVar, (i6 & 2) != 0 ? d3.h.f3962a : gVar, (i6 & 4) != 0 ? -2 : i5, (i6 & 8) != 0 ? v3.a.SUSPEND : aVar);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // w3.b, x3.a
    public java.lang.Object d(v3.q<? super T> qVar, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
        w3.a.C0099a c0099a;
        if (dVar instanceof w3.a.C0099a) {
            c0099a = (w3.a.C0099a) dVar;
            int i5 = c0099a.f6716g;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                c0099a.f6716g = i5 - Integer.MIN_VALUE;
            } else {
                c0099a = new w3.a.C0099a(this, dVar);
            }
        } else {
            c0099a = new w3.a.C0099a(this, dVar);
        }
        java.lang.Object obj = c0099a.f6714e;
        java.lang.Object objC = e3.c.c();
        int i6 = c0099a.f6716g;
        if (i6 == 0) {
            a3.j.b(obj);
            c0099a.f6713d = qVar;
            c0099a.f6716g = 1;
            if (super.d(qVar, c0099a) == objC) {
                return objC;
            }
        } else {
            if (i6 != 1) {
                throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            qVar = (v3.q) c0099a.f6713d;
            a3.j.b(obj);
        }
        if (qVar.l()) {
            return a3.o.f122a;
        }
        throw new java.lang.IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(l3.p<? super v3.q<? super T>, ? super d3.d<? super a3.o>, ? extends java.lang.Object> pVar, d3.g gVar, int i5, v3.a aVar) {
        super(pVar, gVar, i5, aVar);
        this.f6712e = pVar;
    }
}
