package y3;

/* JADX INFO: compiled from: OnUndeliveredElement.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class z {

    /* JADX INFO: compiled from: OnUndeliveredElement.kt */
    public static final class a extends m3.l implements l3.l<java.lang.Throwable, a3.o> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l3.l<E, a3.o> f6954b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ E f6955c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ d3.g f6956d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(l3.l<? super E, a3.o> lVar, E e5, d3.g gVar) {
            super(1);
            this.f6954b = lVar;
            this.f6955c = e5;
            this.f6956d = gVar;
        }

        public final void b(java.lang.Throwable th) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
            y3.z.b(this.f6954b, this.f6955c, this.f6956d);
        }

        @Override // l3.l
        public /* bridge */ /* synthetic */ a3.o x(java.lang.Throwable th) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
            b(th);
            return a3.o.f122a;
        }
    }

    public static final <E> l3.l<java.lang.Throwable, a3.o> a(l3.l<? super E, a3.o> lVar, E e5, d3.g gVar) {
        return new y3.z.a(lVar, e5, gVar);
    }

    public static final <E> void b(l3.l<? super E, a3.o> lVar, E e5, d3.g gVar) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        y3.q0 q0VarC = c(lVar, e5, null);
        if (q0VarC != null) {
            t3.d0.a(gVar, q0VarC);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> y3.q0 c(l3.l<? super E, a3.o> lVar, E e5, y3.q0 q0Var) throws java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        try {
            lVar.x(e5);
        } catch (java.lang.Throwable th) {
            if (q0Var == null || q0Var.getCause() == th) {
                return new y3.q0("Exception in undelivered element handler for " + e5, th);
            }
            a3.a.a(q0Var, th);
        }
        return q0Var;
    }

    public static /* synthetic */ y3.q0 d(l3.l lVar, java.lang.Object obj, y3.q0 q0Var, int i5, java.lang.Object obj2) {
        if ((i5 & 2) != 0) {
            q0Var = null;
        }
        return c(lVar, obj, q0Var);
    }
}
