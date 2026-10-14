package z0;

/* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class k implements z0.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f7005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.i<z0.i> f7006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.o0 f7007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.room.o0 f7008d;

    /* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
    public class a extends androidx.room.i<z0.i> {
        public a(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)";
        }

        @Override // androidx.room.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(f0.k kVar, z0.i iVar) {
            java.lang.String str = iVar.f7002a;
            if (str == null) {
                kVar.d0(1);
            } else {
                kVar.E(1, str);
            }
            kVar.G(2, iVar.a());
            kVar.G(3, iVar.f7004c);
        }
    }

    /* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
    public class b extends androidx.room.o0 {
        public b(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?";
        }
    }

    /* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
    public class c extends androidx.room.o0 {
        public c(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public k(androidx.room.i0 i0Var) {
        this.f7005a = i0Var;
        this.f7006b = new z0.k.a(i0Var);
        this.f7007c = new z0.k.b(i0Var);
        this.f7008d = new z0.k.c(i0Var);
    }

    public static java.util.List<java.lang.Class<?>> j() {
        return java.util.Collections.emptyList();
    }

    @Override // z0.j
    public void b(java.lang.String str, int i5) {
        this.f7005a.d();
        f0.k kVarB = this.f7007c.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        kVarB.G(2, i5);
        this.f7005a.e();
        try {
            kVarB.Q();
            this.f7005a.B();
        } finally {
            this.f7005a.i();
            this.f7007c.h(kVarB);
        }
    }

    @Override // z0.j
    public void c(z0.i iVar) {
        this.f7005a.d();
        this.f7005a.e();
        try {
            this.f7006b.j(iVar);
            this.f7005a.B();
        } finally {
            this.f7005a.i();
        }
    }

    @Override // z0.j
    public java.util.List<java.lang.String> e() {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT DISTINCT work_spec_id FROM SystemIdInfo", 0);
        this.f7005a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7005a, l0VarF, false, null);
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

    @Override // z0.j
    public void f(java.lang.String str) {
        this.f7005a.d();
        f0.k kVarB = this.f7008d.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        this.f7005a.e();
        try {
            kVarB.Q();
            this.f7005a.B();
        } finally {
            this.f7005a.i();
            this.f7008d.h(kVarB);
        }
    }

    @Override // z0.j
    public z0.i g(java.lang.String str, int i5) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?", 2);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        l0VarF.G(2, i5);
        this.f7005a.d();
        z0.i iVar = null;
        java.lang.String string = null;
        android.database.Cursor cursorB = e0.b.b(this.f7005a, l0VarF, false, null);
        try {
            int iD = e0.a.d(cursorB, "work_spec_id");
            int iD2 = e0.a.d(cursorB, "generation");
            int iD3 = e0.a.d(cursorB, "system_id");
            if (cursorB.moveToFirst()) {
                if (!cursorB.isNull(iD)) {
                    string = cursorB.getString(iD);
                }
                iVar = new z0.i(string, cursorB.getInt(iD2), cursorB.getInt(iD3));
            }
            return iVar;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }

    @Override // z0.j
    public void h(z0.m mVar) {
        z0.j.a.b(this, mVar);
    }

    @Override // z0.j
    public z0.i i(z0.m mVar) {
        return z0.j.a.a(this, mVar);
    }
}
