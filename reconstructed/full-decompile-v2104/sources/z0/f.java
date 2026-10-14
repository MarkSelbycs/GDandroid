package z0;

/* JADX INFO: compiled from: PreferenceDao_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f implements z0.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f6998a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.i<z0.d> f6999b;

    /* JADX INFO: compiled from: PreferenceDao_Impl.java */
    public class a extends androidx.room.i<z0.d> {
        public a(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // androidx.room.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(f0.k kVar, z0.d dVar) {
            if (dVar.a() == null) {
                kVar.d0(1);
            } else {
                kVar.E(1, dVar.a());
            }
            if (dVar.b() == null) {
                kVar.d0(2);
            } else {
                kVar.G(2, dVar.b().longValue());
            }
        }
    }

    public f(androidx.room.i0 i0Var) {
        this.f6998a = i0Var;
        this.f6999b = new z0.f.a(i0Var);
    }

    public static java.util.List<java.lang.Class<?>> c() {
        return java.util.Collections.emptyList();
    }

    @Override // z0.e
    public java.lang.Long a(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT long_value FROM Preference where `key`=?", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f6998a.d();
        java.lang.Long lValueOf = null;
        android.database.Cursor cursorB = e0.b.b(this.f6998a, l0VarF, false, null);
        try {
            if (cursorB.moveToFirst() && !cursorB.isNull(0)) {
                lValueOf = java.lang.Long.valueOf(cursorB.getLong(0));
            }
            return lValueOf;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }

    @Override // z0.e
    public void b(z0.d dVar) {
        this.f6998a.d();
        this.f6998a.e();
        try {
            this.f6999b.j(dVar);
            this.f6998a.B();
        } finally {
            this.f6998a.i();
        }
    }
}
