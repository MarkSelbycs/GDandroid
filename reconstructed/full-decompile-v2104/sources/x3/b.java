package x3;

/* JADX INFO: compiled from: Combine.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: compiled from: Combine.kt */
    @f3.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", l = {54, 76, 79}, m = "invokeSuspend")
    public static final class a extends f3.k implements l3.p<t3.e0, d3.d<? super a3.o>, java.lang.Object> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public java.lang.Object f6807e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public java.lang.Object f6808f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f6809g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f6810h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f6811i;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public /* synthetic */ java.lang.Object f6812o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final /* synthetic */ w3.d<T>[] f6813p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ l3.a<T[]> f6814q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final /* synthetic */ l3.q<w3.e<? super R>, T[], d3.d<? super a3.o>, java.lang.Object> f6815r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final /* synthetic */ w3.e<R> f6816s;

        /* JADX INFO: renamed from: x3.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Combine.kt */
        @f3.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", l = {31}, m = "invokeSuspend")
        public static final class C0104a extends f3.k implements l3.p<t3.e0, d3.d<? super a3.o>, java.lang.Object> {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f6817e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ w3.d<T>[] f6818f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public final /* synthetic */ int f6819g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ java.util.concurrent.atomic.AtomicInteger f6820h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final /* synthetic */ v3.d<b3.b0<java.lang.Object>> f6821i;

            /* JADX INFO: renamed from: x3.b$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: Combine.kt */
            public static final class C0105a<T> implements w3.e {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final /* synthetic */ v3.d<b3.b0<java.lang.Object>> f6822a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f6823b;

                /* JADX INFO: renamed from: x3.b$a$a$a$a, reason: collision with other inner class name */
                /* JADX INFO: compiled from: Combine.kt */
                @f3.f(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", l = {32, 33}, m = "emit")
                public static final class C0106a extends f3.d {

                    /* JADX INFO: renamed from: d, reason: collision with root package name */
                    public /* synthetic */ java.lang.Object f6824d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ x3.b.a.C0104a.C0105a<T> f6825e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public int f6826f;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    public C0106a(x3.b.a.C0104a.C0105a<? super T> c0105a, d3.d<? super x3.b.a.C0104a.C0105a.C0106a> dVar) {
                        super(dVar);
                        this.f6825e = c0105a;
                    }

                    @Override // f3.a
                    public final java.lang.Object I(java.lang.Object obj) {
                        this.f6824d = obj;
                        this.f6826f |= Integer.MIN_VALUE;
                        return this.f6825e.a(null, this);
                    }
                }

                public C0105a(v3.d<b3.b0<java.lang.Object>> dVar, int i5) {
                    this.f6822a = dVar;
                    this.f6823b = i5;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // w3.e
                public final java.lang.Object a(T t5, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
                    x3.b.a.C0104a.C0105a.C0106a c0106a;
                    if (dVar instanceof x3.b.a.C0104a.C0105a.C0106a) {
                        c0106a = (x3.b.a.C0104a.C0105a.C0106a) dVar;
                        int i5 = c0106a.f6826f;
                        if ((i5 & Integer.MIN_VALUE) != 0) {
                            c0106a.f6826f = i5 - Integer.MIN_VALUE;
                        } else {
                            c0106a = new x3.b.a.C0104a.C0105a.C0106a(this, dVar);
                        }
                    } else {
                        c0106a = new x3.b.a.C0104a.C0105a.C0106a(this, dVar);
                    }
                    java.lang.Object obj = c0106a.f6824d;
                    java.lang.Object objC = e3.c.c();
                    int i6 = c0106a.f6826f;
                    if (i6 != 0) {
                        if (i6 == 1) {
                            a3.j.b(obj);
                        } else {
                            if (i6 != 2) {
                                throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            a3.j.b(obj);
                        }
                        return a3.o.f122a;
                    }
                    a3.j.b(obj);
                    v3.d<b3.b0<java.lang.Object>> dVar2 = this.f6822a;
                    b3.b0<java.lang.Object> b0Var = new b3.b0<>(this.f6823b, t5);
                    c0106a.f6826f = 1;
                    if (dVar2.o(b0Var, c0106a) == objC) {
                        return objC;
                    }
                    c0106a.f6826f = 2;
                    if (t3.e2.a(c0106a) == objC) {
                        return objC;
                    }
                    return a3.o.f122a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C0104a(w3.d<? extends T>[] dVarArr, int i5, java.util.concurrent.atomic.AtomicInteger atomicInteger, v3.d<b3.b0<java.lang.Object>> dVar, d3.d<? super x3.b.a.C0104a> dVar2) {
                super(2, dVar2);
                this.f6818f = dVarArr;
                this.f6819g = i5;
                this.f6820h = atomicInteger;
                this.f6821i = dVar;
            }

            @Override // f3.a
            public final java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
                java.lang.Object objC = e3.c.c();
                int i5 = this.f6817e;
                try {
                    if (i5 == 0) {
                        a3.j.b(obj);
                        w3.d[] dVarArr = this.f6818f;
                        int i6 = this.f6819g;
                        w3.d dVar = dVarArr[i6];
                        x3.b.a.C0104a.C0105a c0105a = new x3.b.a.C0104a.C0105a(this.f6821i, i6);
                        this.f6817e = 1;
                        if (dVar.a(c0105a, this) == objC) {
                            return objC;
                        }
                    } else {
                        if (i5 != 1) {
                            throw new java.lang.IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        a3.j.b(obj);
                    }
                    if (this.f6820h.decrementAndGet() == 0) {
                        v3.t.a.a(this.f6821i, null, 1, null);
                    }
                    return a3.o.f122a;
                } catch (java.lang.Throwable th) {
                    if (this.f6820h.decrementAndGet() == 0) {
                        v3.t.a.a(this.f6821i, null, 1, null);
                    }
                    throw th;
                }
            }

            @Override // l3.p
            /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
            public final java.lang.Object u(t3.e0 e0Var, d3.d<? super a3.o> dVar) {
                return ((x3.b.a.C0104a) f(e0Var, dVar)).I(a3.o.f122a);
            }

            @Override // f3.a
            public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
                return new x3.b.a.C0104a(this.f6818f, this.f6819g, this.f6820h, this.f6821i, dVar);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(w3.d<? extends T>[] dVarArr, l3.a<T[]> aVar, l3.q<? super w3.e<? super R>, ? super T[], ? super d3.d<? super a3.o>, ? extends java.lang.Object> qVar, w3.e<? super R> eVar, d3.d<? super x3.b.a> dVar) {
            super(2, dVar);
            this.f6813p = dVarArr;
            this.f6814q = aVar;
            this.f6815r = qVar;
            this.f6816s = eVar;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x00db A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:23:0x00dc  */
        /* JADX WARN: Code duplicated, block: B:26:0x00e9  */
        /* JADX WARN: Code duplicated, block: B:28:0x00ec A[LOOP:0: B:28:0x00ec->B:51:?, LOOP_START, PHI: r3 r10
  0x00ec: PHI (r3v2 int) = (r3v1 int), (r3v3 int) binds: [B:25:0x00e7, B:51:?] A[DONT_GENERATE, DONT_INLINE]
  0x00ec: PHI (r10v5 b3.b0) = (r10v4 b3.b0), (r10v18 b3.b0) binds: [B:25:0x00e7, B:51:?] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:30:0x00fc  */
        /* JADX WARN: Code duplicated, block: B:33:0x0102  */
        /* JADX WARN: Code duplicated, block: B:36:0x0113  */
        /* JADX WARN: Code duplicated, block: B:38:0x011d  */
        /* JADX WARN: Code duplicated, block: B:40:0x0133 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:41:0x0134  */
        /* JADX WARN: Code duplicated, block: B:46:0x0168  */
        /* JADX WARN: Code duplicated, block: B:49:0x0111 A[EDGE_INSN: B:49:0x0111->B:35:0x0111 BREAK  A[LOOP:0: B:28:0x00ec->B:51:?], SYNTHETIC] */
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
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0134 -> B:20:0x00c7). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // f3.a
        public final java.lang.Object I(java.lang.Object r24) {
            /*
                Method dump skipped, instruction units count: 367
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: x3.b.a.I(java.lang.Object):java.lang.Object");
        }

        @Override // l3.p
        /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
        public final java.lang.Object u(t3.e0 e0Var, d3.d<? super a3.o> dVar) {
            return ((x3.b.a) f(e0Var, dVar)).I(a3.o.f122a);
        }

        @Override // f3.a
        public final d3.d<a3.o> f(java.lang.Object obj, d3.d<?> dVar) {
            x3.b.a aVar = new x3.b.a(this.f6813p, this.f6814q, this.f6815r, this.f6816s, dVar);
            aVar.f6812o = obj;
            return aVar;
        }
    }

    public static final <R, T> java.lang.Object a(w3.e<? super R> eVar, w3.d<? extends T>[] dVarArr, l3.a<T[]> aVar, l3.q<? super w3.e<? super R>, ? super T[], ? super d3.d<? super a3.o>, ? extends java.lang.Object> qVar, d3.d<? super a3.o> dVar) {
        java.lang.Object objA = x3.d.a(new x3.b.a(dVarArr, aVar, qVar, eVar, null), dVar);
        return objA == e3.c.c() ? objA : a3.o.f122a;
    }
}
