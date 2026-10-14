package z0;

/* JADX INFO: compiled from: DependencyDao_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class c implements z0.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f6993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.i<z0.a> f6994b;

    /* JADX INFO: compiled from: DependencyDao_Impl.java */
    public class a extends androidx.room.i<z0.a> {
        public a(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // androidx.room.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(f0.k kVar, z0.a aVar) {
            if (aVar.b() == null) {
                kVar.d0(1);
            } else {
                kVar.E(1, aVar.b());
            }
            if (aVar.a() == null) {
                kVar.d0(2);
            } else {
                kVar.E(2, aVar.a());
            }
        }
    }

    public c(androidx.room.i0 i0Var) {
        this.f6993a = i0Var;
        this.f6994b = new z0.c.a(i0Var);
    }

    public static java.util.List<java.lang.Class<?>> e() {
        return java.util.Collections.emptyList();
    }

    @Override // z0.b
    public void a(z0.a aVar) {
        this.f6993a.d();
        this.f6993a.e();
        try {
            this.f6994b.j(aVar);
            this.f6993a.B();
        } finally {
            this.f6993a.i();
        }
    }

    @Override // z0.b
    public boolean b(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f6993a.d();
        boolean z4 = false;
        android.database.Cursor cursorB = e0.b.b(this.f6993a, l0VarF, false, null);
        try {
            if (cursorB.moveToFirst()) {
                z4 = cursorB.getInt(0) != 0;
            }
            return z4;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }

    @Override // z0.b
    public java.util.List<java.lang.String> c(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f6993a.d();
        android.database.Cursor cursorB = e0.b.b(this.f6993a, l0VarF, false, null);
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

    @Override // z0.b
    public boolean d(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f6993a.d();
        boolean z4 = false;
        android.database.Cursor cursorB = e0.b.b(this.f6993a, l0VarF, false, null);
        try {
            if (cursorB.moveToFirst()) {
                z4 = cursorB.getInt(0) != 0;
            }
            return z4;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }
}
