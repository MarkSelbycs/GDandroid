package z0;

/* JADX INFO: compiled from: WorkProgressDao_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class s implements z0.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f7021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.i<z0.q> f7022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.o0 f7023c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.room.o0 f7024d;

    /* JADX INFO: compiled from: WorkProgressDao_Impl.java */
    public class a extends androidx.room.i<z0.q> {
        public a(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // androidx.room.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(f0.k kVar, z0.q qVar) throws java.lang.Throwable {
            if (qVar.b() == null) {
                kVar.d0(1);
            } else {
                kVar.E(1, qVar.b());
            }
            byte[] bArrQ = androidx.work.b.q(qVar.a());
            if (bArrQ == null) {
                kVar.d0(2);
            } else {
                kVar.a0(2, bArrQ);
            }
        }
    }

    /* JADX INFO: compiled from: WorkProgressDao_Impl.java */
    public class b extends androidx.room.o0 {
        public b(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* JADX INFO: compiled from: WorkProgressDao_Impl.java */
    public class c extends androidx.room.o0 {
        public c(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "DELETE FROM WorkProgress";
        }
    }

    public s(androidx.room.i0 i0Var) {
        this.f7021a = i0Var;
        this.f7022b = new z0.s.a(i0Var);
        this.f7023c = new z0.s.b(i0Var);
        this.f7024d = new z0.s.c(i0Var);
    }

    public static java.util.List<java.lang.Class<?>> d() {
        return java.util.Collections.emptyList();
    }

    @Override // z0.r
    public void a(java.lang.String str) {
        this.f7021a.d();
        f0.k kVarB = this.f7023c.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        this.f7021a.e();
        try {
            kVarB.Q();
            this.f7021a.B();
        } finally {
            this.f7021a.i();
            this.f7023c.h(kVarB);
        }
    }

    @Override // z0.r
    public void b() {
        this.f7021a.d();
        f0.k kVarB = this.f7024d.b();
        this.f7021a.e();
        try {
            kVarB.Q();
            this.f7021a.B();
        } finally {
            this.f7021a.i();
            this.f7024d.h(kVarB);
        }
    }

    @Override // z0.r
    public void c(z0.q qVar) {
        this.f7021a.d();
        this.f7021a.e();
        try {
            this.f7022b.j(qVar);
            this.f7021a.B();
        } finally {
            this.f7021a.i();
        }
    }
}
