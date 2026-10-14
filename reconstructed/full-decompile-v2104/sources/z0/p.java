package z0;

/* JADX INFO: compiled from: WorkNameDao_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class p implements z0.o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f7016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.i<z0.n> f7017b;

    /* JADX INFO: compiled from: WorkNameDao_Impl.java */
    public class a extends androidx.room.i<z0.n> {
        public a(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // androidx.room.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(f0.k kVar, z0.n nVar) {
            if (nVar.a() == null) {
                kVar.d0(1);
            } else {
                kVar.E(1, nVar.a());
            }
            if (nVar.b() == null) {
                kVar.d0(2);
            } else {
                kVar.E(2, nVar.b());
            }
        }
    }

    public p(androidx.room.i0 i0Var) {
        this.f7016a = i0Var;
        this.f7017b = new z0.p.a(i0Var);
    }

    public static java.util.List<java.lang.Class<?>> c() {
        return java.util.Collections.emptyList();
    }

    @Override // z0.o
    public void a(z0.n nVar) {
        this.f7016a.d();
        this.f7016a.e();
        try {
            this.f7017b.j(nVar);
            this.f7016a.B();
        } finally {
            this.f7016a.i();
        }
    }

    @Override // z0.o
    public java.util.List<java.lang.String> b(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT name FROM workname WHERE work_spec_id=?", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f7016a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7016a, l0VarF, false, null);
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                arrayList.add(cursorB.isNull(0) ? null : cursorB.getString(0));
            }
            return arrayList;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }
}
