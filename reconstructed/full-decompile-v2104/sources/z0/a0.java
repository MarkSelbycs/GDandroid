package z0;

/* JADX INFO: compiled from: WorkTagDao_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a0 implements z0.z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f6983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.i<z0.y> f6984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.o0 f6985c;

    /* JADX INFO: compiled from: WorkTagDao_Impl.java */
    public class a extends androidx.room.i<z0.y> {
        public a(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // androidx.room.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(f0.k kVar, z0.y yVar) {
            if (yVar.a() == null) {
                kVar.d0(1);
            } else {
                kVar.E(1, yVar.a());
            }
            if (yVar.b() == null) {
                kVar.d0(2);
            } else {
                kVar.E(2, yVar.b());
            }
        }
    }

    /* JADX INFO: compiled from: WorkTagDao_Impl.java */
    public class b extends androidx.room.o0 {
        public b(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "DELETE FROM worktag WHERE work_spec_id=?";
        }
    }

    public a0(androidx.room.i0 i0Var) {
        this.f6983a = i0Var;
        this.f6984b = new z0.a0.a(i0Var);
        this.f6985c = new z0.a0.b(i0Var);
    }

    public static java.util.List<java.lang.Class<?>> f() {
        return java.util.Collections.emptyList();
    }

    @Override // z0.z
    public void a(java.lang.String str) {
        this.f6983a.d();
        f0.k kVarB = this.f6985c.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        this.f6983a.e();
        try {
            kVarB.Q();
            this.f6983a.B();
        } finally {
            this.f6983a.i();
            this.f6985c.h(kVarB);
        }
    }

    @Override // z0.z
    public void c(z0.y yVar) {
        this.f6983a.d();
        this.f6983a.e();
        try {
            this.f6984b.j(yVar);
            this.f6983a.B();
        } finally {
            this.f6983a.i();
        }
    }

    @Override // z0.z
    public void d(java.lang.String str, java.util.Set<java.lang.String> set) {
        z0.z.a.a(this, str, set);
    }

    @Override // z0.z
    public java.util.List<java.lang.String> e(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f6983a.d();
        android.database.Cursor cursorB = e0.b.b(this.f6983a, l0VarF, false, null);
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
