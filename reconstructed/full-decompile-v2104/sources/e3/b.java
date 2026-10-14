package e3;

/* JADX INFO: compiled from: IntrinsicsJvm.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {

    /* JADX INFO: compiled from: IntrinsicsJvm.kt */
    public static final class a extends f3.j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4110b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ l3.p f4111c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f4112d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(d3.d dVar, l3.p pVar, java.lang.Object obj) {
            super(dVar);
            this.f4111c = pVar;
            this.f4112d = obj;
            m3.k.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // f3.a
        public java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            int i5 = this.f4110b;
            if (i5 == 0) {
                this.f4110b = 1;
                a3.j.b(obj);
                m3.k.c(this.f4111c, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((l3.p) m3.t.a(this.f4111c, 2)).u(this.f4112d, this);
            }
            if (i5 != 1) {
                throw new java.lang.IllegalStateException("This coroutine had already completed".toString());
            }
            this.f4110b = 2;
            a3.j.b(obj);
            return obj;
        }
    }

    /* JADX INFO: renamed from: e3.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: IntrinsicsJvm.kt */
    public static final class C0045b extends f3.d {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4113d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ l3.p f4114e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f4115f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0045b(d3.d dVar, d3.g gVar, l3.p pVar, java.lang.Object obj) {
            super(dVar, gVar);
            this.f4114e = pVar;
            this.f4115f = obj;
            m3.k.c(dVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // f3.a
        public java.lang.Object I(java.lang.Object obj) throws java.lang.Throwable {
            int i5 = this.f4113d;
            if (i5 == 0) {
                this.f4113d = 1;
                a3.j.b(obj);
                m3.k.c(this.f4114e, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                return ((l3.p) m3.t.a(this.f4114e, 2)).u(this.f4115f, this);
            }
            if (i5 != 1) {
                throw new java.lang.IllegalStateException("This coroutine had already completed".toString());
            }
            this.f4113d = 2;
            a3.j.b(obj);
            return obj;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> d3.d<a3.o> a(l3.p<? super R, ? super d3.d<? super T>, ? extends java.lang.Object> pVar, R r5, d3.d<? super T> dVar) {
        m3.k.e(pVar, "<this>");
        m3.k.e(dVar, "completion");
        d3.d<?> dVarA = f3.h.a(dVar);
        if (pVar instanceof f3.a) {
            return ((f3.a) pVar).f(r5, dVarA);
        }
        d3.g gVarB = dVarA.b();
        return gVarB == d3.h.f3962a ? new e3.b.a(dVarA, pVar, r5) : new e3.b.C0045b(dVarA, gVarB, pVar, r5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> d3.d<T> b(d3.d<? super T> dVar) {
        d3.d<T> dVar2;
        m3.k.e(dVar, "<this>");
        f3.d dVar3 = dVar instanceof f3.d ? (f3.d) dVar : null;
        return (dVar3 == null || (dVar2 = (d3.d<T>) dVar3.P()) == null) ? dVar : dVar2;
    }
}
