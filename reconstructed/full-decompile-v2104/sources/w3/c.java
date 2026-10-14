package w3;

/* JADX INFO: compiled from: Distinct.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c<T> implements w3.d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w3.d<T> f6718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l3.l<T, java.lang.Object> f6719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l3.p<java.lang.Object, java.lang.Object, java.lang.Boolean> f6720c;

    /* JADX INFO: compiled from: Distinct.kt */
    public static final class a<T> implements w3.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ w3.c<T> f6721a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ m3.q<java.lang.Object> f6722b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ w3.e<T> f6723c;

        /* JADX INFO: renamed from: w3.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Distinct.kt */
        @f3.f(c = "kotlinx.coroutines.flow.DistinctFlowImpl$collect$2", f = "Distinct.kt", l = {77}, m = "emit")
        public static final class C0100a extends f3.d {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public /* synthetic */ java.lang.Object f6724d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final /* synthetic */ w3.c.a<T> f6725e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public int f6726f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0100a(w3.c.a<? super T> aVar, d3.d<? super w3.c.a.C0100a> dVar) {
                super(dVar);
                this.f6725e = aVar;
            }

            @Override // f3.a
            public final java.lang.Object I(java.lang.Object obj) {
                this.f6724d = obj;
                this.f6726f |= Integer.MIN_VALUE;
                return this.f6725e.a(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(w3.c<T> cVar, m3.q<java.lang.Object> qVar, w3.e<? super T> eVar) {
            this.f6721a = cVar;
            this.f6722b = qVar;
            this.f6723c = eVar;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // w3.e
        public final java.lang.Object a(T t5, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
            w3.c.a.C0100a c0100a;
            if (dVar instanceof w3.c.a.C0100a) {
                c0100a = (w3.c.a.C0100a) dVar;
                int i5 = c0100a.f6726f;
                if ((i5 & Integer.MIN_VALUE) != 0) {
                    c0100a.f6726f = i5 - Integer.MIN_VALUE;
                } else {
                    c0100a = new w3.c.a.C0100a(this, dVar);
                }
            } else {
                c0100a = new w3.c.a.C0100a(this, dVar);
            }
            java.lang.Object obj = c0100a.f6724d;
            java.lang.Object objC = e3.c.c();
            int i6 = c0100a.f6726f;
            if (i6 == 0) {
                a3.j.b(obj);
                T t6 = (T) this.f6721a.f6719b.x(t5);
                java.lang.Object obj2 = this.f6722b.f5194a;
                if (obj2 != x3.e.f6827a && this.f6721a.f6720c.u(obj2, t6).booleanValue()) {
                    return a3.o.f122a;
                }
                this.f6722b.f5194a = t6;
                w3.e<T> eVar = this.f6723c;
                c0100a.f6726f = 1;
                if (eVar.a(t5, c0100a) == objC) {
                    return objC;
                }
            } else {
                if (i6 != 1) {
                    throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                a3.j.b(obj);
            }
            return a3.o.f122a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(w3.d<? extends T> dVar, l3.l<? super T, ? extends java.lang.Object> lVar, l3.p<java.lang.Object, java.lang.Object, java.lang.Boolean> pVar) {
        this.f6718a = dVar;
        this.f6719b = lVar;
        this.f6720c = pVar;
    }

    @Override // w3.d
    public java.lang.Object a(w3.e<? super T> eVar, d3.d<? super a3.o> dVar) {
        m3.q qVar = new m3.q();
        qVar.f5194a = (T) x3.e.f6827a;
        java.lang.Object objA = this.f6718a.a(new w3.c.a(this, qVar, eVar), dVar);
        return objA == e3.c.c() ? objA : a3.o.f122a;
    }
}
