package z0;

/* JADX INFO: compiled from: WorkSpecDao_Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class w implements z0.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.room.i0 f7074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.room.i<z0.u> f7075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.room.h<z0.u> f7076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.room.o0 f7077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final androidx.room.o0 f7078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final androidx.room.o0 f7079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final androidx.room.o0 f7080g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final androidx.room.o0 f7081h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final androidx.room.o0 f7082i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final androidx.room.o0 f7083j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final androidx.room.o0 f7084k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final androidx.room.o0 f7085l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final androidx.room.o0 f7086m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final androidx.room.o0 f7087n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final androidx.room.o0 f7088o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final androidx.room.o0 f7089p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final androidx.room.o0 f7090q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final androidx.room.o0 f7091r;

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class a extends androidx.room.o0 {
        public a(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class b extends androidx.room.o0 {
        public b(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET next_schedule_time_override=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class c extends androidx.room.o0 {
        public c(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class d extends androidx.room.o0 {
        public d(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class e extends androidx.room.o0 {
        public e(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class f extends androidx.room.o0 {
        public f(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class g extends androidx.room.o0 {
        public g(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET generation=generation+1 WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class h extends androidx.room.o0 {
        public h(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET stop_reason=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class i extends androidx.room.i<z0.u> {
        public i(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.i
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(f0.k kVar, z0.u uVar) throws java.lang.Throwable {
            java.lang.String str = uVar.f7032a;
            if (str == null) {
                kVar.d0(1);
            } else {
                kVar.E(1, str);
            }
            z0.b0 b0Var = z0.b0.f6988a;
            kVar.G(2, z0.b0.j(uVar.f7033b));
            java.lang.String str2 = uVar.f7034c;
            if (str2 == null) {
                kVar.d0(3);
            } else {
                kVar.E(3, str2);
            }
            java.lang.String str3 = uVar.f7035d;
            if (str3 == null) {
                kVar.d0(4);
            } else {
                kVar.E(4, str3);
            }
            byte[] bArrQ = androidx.work.b.q(uVar.f7036e);
            if (bArrQ == null) {
                kVar.d0(5);
            } else {
                kVar.a0(5, bArrQ);
            }
            byte[] bArrQ2 = androidx.work.b.q(uVar.f7037f);
            if (bArrQ2 == null) {
                kVar.d0(6);
            } else {
                kVar.a0(6, bArrQ2);
            }
            kVar.G(7, uVar.f7038g);
            kVar.G(8, uVar.f7039h);
            kVar.G(9, uVar.f7040i);
            kVar.G(10, uVar.f7042k);
            kVar.G(11, z0.b0.a(uVar.f7043l));
            kVar.G(12, uVar.f7044m);
            kVar.G(13, uVar.f7045n);
            kVar.G(14, uVar.f7046o);
            kVar.G(15, uVar.f7047p);
            kVar.G(16, uVar.f7048q ? 1L : 0L);
            kVar.G(17, z0.b0.h(uVar.f7049r));
            kVar.G(18, uVar.i());
            kVar.G(19, uVar.f());
            kVar.G(20, uVar.g());
            kVar.G(21, uVar.h());
            kVar.G(22, uVar.j());
            q0.d dVar = uVar.f7041j;
            if (dVar == null) {
                kVar.d0(23);
                kVar.d0(24);
                kVar.d0(25);
                kVar.d0(26);
                kVar.d0(27);
                kVar.d0(28);
                kVar.d0(29);
                kVar.d0(30);
                return;
            }
            kVar.G(23, z0.b0.g(dVar.d()));
            kVar.G(24, dVar.g() ? 1L : 0L);
            kVar.G(25, dVar.h() ? 1L : 0L);
            kVar.G(26, dVar.f() ? 1L : 0L);
            kVar.G(27, dVar.i() ? 1L : 0L);
            kVar.G(28, dVar.b());
            kVar.G(29, dVar.a());
            byte[] bArrI = z0.b0.i(dVar.c());
            if (bArrI == null) {
                kVar.d0(30);
            } else {
                kVar.a0(30, bArrI);
            }
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class j extends androidx.room.h<z0.u> {
        public j(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.h
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(f0.k kVar, z0.u uVar) throws java.lang.Throwable {
            java.lang.String str = uVar.f7032a;
            if (str == null) {
                kVar.d0(1);
            } else {
                kVar.E(1, str);
            }
            z0.b0 b0Var = z0.b0.f6988a;
            kVar.G(2, z0.b0.j(uVar.f7033b));
            java.lang.String str2 = uVar.f7034c;
            if (str2 == null) {
                kVar.d0(3);
            } else {
                kVar.E(3, str2);
            }
            java.lang.String str3 = uVar.f7035d;
            if (str3 == null) {
                kVar.d0(4);
            } else {
                kVar.E(4, str3);
            }
            byte[] bArrQ = androidx.work.b.q(uVar.f7036e);
            if (bArrQ == null) {
                kVar.d0(5);
            } else {
                kVar.a0(5, bArrQ);
            }
            byte[] bArrQ2 = androidx.work.b.q(uVar.f7037f);
            if (bArrQ2 == null) {
                kVar.d0(6);
            } else {
                kVar.a0(6, bArrQ2);
            }
            kVar.G(7, uVar.f7038g);
            kVar.G(8, uVar.f7039h);
            kVar.G(9, uVar.f7040i);
            kVar.G(10, uVar.f7042k);
            kVar.G(11, z0.b0.a(uVar.f7043l));
            kVar.G(12, uVar.f7044m);
            kVar.G(13, uVar.f7045n);
            kVar.G(14, uVar.f7046o);
            kVar.G(15, uVar.f7047p);
            kVar.G(16, uVar.f7048q ? 1L : 0L);
            kVar.G(17, z0.b0.h(uVar.f7049r));
            kVar.G(18, uVar.i());
            kVar.G(19, uVar.f());
            kVar.G(20, uVar.g());
            kVar.G(21, uVar.h());
            kVar.G(22, uVar.j());
            q0.d dVar = uVar.f7041j;
            if (dVar != null) {
                kVar.G(23, z0.b0.g(dVar.d()));
                kVar.G(24, dVar.g() ? 1L : 0L);
                kVar.G(25, dVar.h() ? 1L : 0L);
                kVar.G(26, dVar.f() ? 1L : 0L);
                kVar.G(27, dVar.i() ? 1L : 0L);
                kVar.G(28, dVar.b());
                kVar.G(29, dVar.a());
                byte[] bArrI = z0.b0.i(dVar.c());
                if (bArrI == null) {
                    kVar.d0(30);
                } else {
                    kVar.a0(30, bArrI);
                }
            } else {
                kVar.d0(23);
                kVar.d0(24);
                kVar.d0(25);
                kVar.d0(26);
                kVar.d0(27);
                kVar.d0(28);
                kVar.d0(29);
                kVar.d0(30);
            }
            java.lang.String str4 = uVar.f7032a;
            if (str4 == null) {
                kVar.d0(31);
            } else {
                kVar.E(31, str4);
            }
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class k extends androidx.room.o0 {
        public k(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class l extends androidx.room.o0 {
        public l(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET state=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class m extends androidx.room.o0 {
        public m(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class n extends androidx.room.o0 {
        public n(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class o extends androidx.room.o0 {
        public o(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class p extends androidx.room.o0 {
        public p(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
        }
    }

    /* JADX INFO: compiled from: WorkSpecDao_Impl.java */
    public class q extends androidx.room.o0 {
        public q(androidx.room.i0 i0Var) {
            super(i0Var);
        }

        @Override // androidx.room.o0
        public java.lang.String e() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    public w(androidx.room.i0 i0Var) {
        this.f7074a = i0Var;
        this.f7075b = new z0.w.i(i0Var);
        this.f7076c = new z0.w.j(i0Var);
        this.f7077d = new z0.w.k(i0Var);
        this.f7078e = new z0.w.l(i0Var);
        this.f7079f = new z0.w.m(i0Var);
        this.f7080g = new z0.w.n(i0Var);
        this.f7081h = new z0.w.o(i0Var);
        this.f7082i = new z0.w.p(i0Var);
        this.f7083j = new z0.w.q(i0Var);
        this.f7084k = new z0.w.a(i0Var);
        this.f7085l = new z0.w.b(i0Var);
        this.f7086m = new z0.w.c(i0Var);
        this.f7087n = new z0.w.d(i0Var);
        this.f7088o = new z0.w.e(i0Var);
        this.f7089p = new z0.w.f(i0Var);
        this.f7090q = new z0.w.g(i0Var);
        this.f7091r = new z0.w.h(i0Var);
    }

    public static java.util.List<java.lang.Class<?>> D() {
        return java.util.Collections.emptyList();
    }

    @Override // z0.v
    public java.util.List<z0.u.b> A(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                java.lang.String string = cursorB.isNull(0) ? null : cursorB.getString(0);
                int i5 = cursorB.getInt(1);
                z0.b0 b0Var = z0.b0.f6988a;
                arrayList.add(new z0.u.b(string, z0.b0.f(i5)));
            }
            return arrayList;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }

    @Override // z0.v
    public java.util.List<z0.u> B() throws java.lang.Throwable {
        androidx.room.l0 l0Var;
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time", 0);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            int iD = e0.a.d(cursorB, "id");
            int iD2 = e0.a.d(cursorB, "state");
            int iD3 = e0.a.d(cursorB, "worker_class_name");
            int iD4 = e0.a.d(cursorB, "input_merger_class_name");
            int iD5 = e0.a.d(cursorB, "input");
            int iD6 = e0.a.d(cursorB, "output");
            int iD7 = e0.a.d(cursorB, "initial_delay");
            int iD8 = e0.a.d(cursorB, "interval_duration");
            int iD9 = e0.a.d(cursorB, "flex_duration");
            int iD10 = e0.a.d(cursorB, "run_attempt_count");
            int iD11 = e0.a.d(cursorB, "backoff_policy");
            int iD12 = e0.a.d(cursorB, "backoff_delay_duration");
            int iD13 = e0.a.d(cursorB, "last_enqueue_time");
            int iD14 = e0.a.d(cursorB, "minimum_retention_duration");
            l0Var = l0VarF;
            try {
                int iD15 = e0.a.d(cursorB, "schedule_requested_at");
                int iD16 = e0.a.d(cursorB, "run_in_foreground");
                int iD17 = e0.a.d(cursorB, "out_of_quota_policy");
                int iD18 = e0.a.d(cursorB, "period_count");
                int iD19 = e0.a.d(cursorB, "generation");
                int iD20 = e0.a.d(cursorB, "next_schedule_time_override");
                int iD21 = e0.a.d(cursorB, "next_schedule_time_override_generation");
                int iD22 = e0.a.d(cursorB, "stop_reason");
                int iD23 = e0.a.d(cursorB, "required_network_type");
                int iD24 = e0.a.d(cursorB, "requires_charging");
                int iD25 = e0.a.d(cursorB, "requires_device_idle");
                int iD26 = e0.a.d(cursorB, "requires_battery_not_low");
                int iD27 = e0.a.d(cursorB, "requires_storage_not_low");
                int iD28 = e0.a.d(cursorB, "trigger_content_update_delay");
                int iD29 = e0.a.d(cursorB, "trigger_max_content_delay");
                int iD30 = e0.a.d(cursorB, "content_uri_triggers");
                int i5 = iD14;
                java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    java.lang.String string = cursorB.isNull(iD) ? null : cursorB.getString(iD);
                    int i6 = cursorB.getInt(iD2);
                    z0.b0 b0Var = z0.b0.f6988a;
                    q0.y.c cVarF = z0.b0.f(i6);
                    java.lang.String string2 = cursorB.isNull(iD3) ? null : cursorB.getString(iD3);
                    java.lang.String string3 = cursorB.isNull(iD4) ? null : cursorB.getString(iD4);
                    androidx.work.b bVarM = androidx.work.b.m(cursorB.isNull(iD5) ? null : cursorB.getBlob(iD5));
                    androidx.work.b bVarM2 = androidx.work.b.m(cursorB.isNull(iD6) ? null : cursorB.getBlob(iD6));
                    long j5 = cursorB.getLong(iD7);
                    long j6 = cursorB.getLong(iD8);
                    long j7 = cursorB.getLong(iD9);
                    int i7 = cursorB.getInt(iD10);
                    q0.a aVarC = z0.b0.c(cursorB.getInt(iD11));
                    long j8 = cursorB.getLong(iD12);
                    long j9 = cursorB.getLong(iD13);
                    int i8 = i5;
                    long j10 = cursorB.getLong(i8);
                    int i9 = iD;
                    int i10 = iD15;
                    long j11 = cursorB.getLong(i10);
                    iD15 = i10;
                    iD16 = iD16;
                    boolean z4 = cursorB.getInt(iD16) != 0;
                    q0.s sVarE = z0.b0.e(cursorB.getInt(iD17));
                    iD17 = iD17;
                    int i11 = iD18;
                    int i12 = cursorB.getInt(i11);
                    iD18 = i11;
                    int i13 = iD19;
                    int i14 = cursorB.getInt(i13);
                    iD19 = i13;
                    int i15 = iD20;
                    long j12 = cursorB.getLong(i15);
                    iD20 = i15;
                    int i16 = iD21;
                    int i17 = cursorB.getInt(i16);
                    iD21 = i16;
                    int i18 = iD22;
                    int i19 = cursorB.getInt(i18);
                    iD22 = i18;
                    int i20 = iD23;
                    q0.o oVarD = z0.b0.d(cursorB.getInt(i20));
                    iD23 = i20;
                    iD24 = iD24;
                    boolean z5 = cursorB.getInt(iD24) != 0;
                    boolean z6 = cursorB.getInt(iD25) != 0;
                    boolean z7 = cursorB.getInt(iD26) != 0;
                    boolean z8 = cursorB.getInt(iD27) != 0;
                    long j13 = cursorB.getLong(iD28);
                    iD28 = iD28;
                    int i21 = iD29;
                    long j14 = cursorB.getLong(i21);
                    iD29 = i21;
                    int i22 = iD30;
                    iD30 = i22;
                    arrayList.add(new z0.u(string, cVarF, string2, string3, bVarM, bVarM2, j5, j6, j7, new q0.d(oVarD, z5, z6, z7, z8, j13, j14, z0.b0.b(cursorB.isNull(i22) ? null : cursorB.getBlob(i22))), i7, aVarC, j8, j9, j10, j11, z4, sVarE, i12, i14, j12, i17, i19));
                    iD = i9;
                    i5 = i8;
                }
                cursorB.close();
                l0Var.j();
                return arrayList;
            } catch (java.lang.Throwable th) {
                th = th;
                cursorB.close();
                l0Var.j();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            l0Var = l0VarF;
        }
    }

    @Override // z0.v
    public java.util.List<z0.u> C(long j5) throws java.lang.Throwable {
        androidx.room.l0 l0Var;
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", 1);
        l0VarF.G(1, j5);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            int iD = e0.a.d(cursorB, "id");
            int iD2 = e0.a.d(cursorB, "state");
            int iD3 = e0.a.d(cursorB, "worker_class_name");
            int iD4 = e0.a.d(cursorB, "input_merger_class_name");
            int iD5 = e0.a.d(cursorB, "input");
            int iD6 = e0.a.d(cursorB, "output");
            int iD7 = e0.a.d(cursorB, "initial_delay");
            int iD8 = e0.a.d(cursorB, "interval_duration");
            int iD9 = e0.a.d(cursorB, "flex_duration");
            int iD10 = e0.a.d(cursorB, "run_attempt_count");
            int iD11 = e0.a.d(cursorB, "backoff_policy");
            int iD12 = e0.a.d(cursorB, "backoff_delay_duration");
            int iD13 = e0.a.d(cursorB, "last_enqueue_time");
            int iD14 = e0.a.d(cursorB, "minimum_retention_duration");
            l0Var = l0VarF;
            try {
                int iD15 = e0.a.d(cursorB, "schedule_requested_at");
                int iD16 = e0.a.d(cursorB, "run_in_foreground");
                int iD17 = e0.a.d(cursorB, "out_of_quota_policy");
                int iD18 = e0.a.d(cursorB, "period_count");
                int iD19 = e0.a.d(cursorB, "generation");
                int iD20 = e0.a.d(cursorB, "next_schedule_time_override");
                int iD21 = e0.a.d(cursorB, "next_schedule_time_override_generation");
                int iD22 = e0.a.d(cursorB, "stop_reason");
                int iD23 = e0.a.d(cursorB, "required_network_type");
                int iD24 = e0.a.d(cursorB, "requires_charging");
                int iD25 = e0.a.d(cursorB, "requires_device_idle");
                int iD26 = e0.a.d(cursorB, "requires_battery_not_low");
                int iD27 = e0.a.d(cursorB, "requires_storage_not_low");
                int iD28 = e0.a.d(cursorB, "trigger_content_update_delay");
                int iD29 = e0.a.d(cursorB, "trigger_max_content_delay");
                int iD30 = e0.a.d(cursorB, "content_uri_triggers");
                int i5 = iD14;
                java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    java.lang.String string = cursorB.isNull(iD) ? null : cursorB.getString(iD);
                    int i6 = cursorB.getInt(iD2);
                    z0.b0 b0Var = z0.b0.f6988a;
                    q0.y.c cVarF = z0.b0.f(i6);
                    java.lang.String string2 = cursorB.isNull(iD3) ? null : cursorB.getString(iD3);
                    java.lang.String string3 = cursorB.isNull(iD4) ? null : cursorB.getString(iD4);
                    androidx.work.b bVarM = androidx.work.b.m(cursorB.isNull(iD5) ? null : cursorB.getBlob(iD5));
                    androidx.work.b bVarM2 = androidx.work.b.m(cursorB.isNull(iD6) ? null : cursorB.getBlob(iD6));
                    long j6 = cursorB.getLong(iD7);
                    long j7 = cursorB.getLong(iD8);
                    long j8 = cursorB.getLong(iD9);
                    int i7 = cursorB.getInt(iD10);
                    q0.a aVarC = z0.b0.c(cursorB.getInt(iD11));
                    long j9 = cursorB.getLong(iD12);
                    long j10 = cursorB.getLong(iD13);
                    int i8 = i5;
                    long j11 = cursorB.getLong(i8);
                    int i9 = iD;
                    int i10 = iD15;
                    long j12 = cursorB.getLong(i10);
                    iD15 = i10;
                    iD16 = iD16;
                    boolean z4 = cursorB.getInt(iD16) != 0;
                    q0.s sVarE = z0.b0.e(cursorB.getInt(iD17));
                    iD17 = iD17;
                    int i11 = iD18;
                    int i12 = cursorB.getInt(i11);
                    iD18 = i11;
                    int i13 = iD19;
                    int i14 = cursorB.getInt(i13);
                    iD19 = i13;
                    int i15 = iD20;
                    long j13 = cursorB.getLong(i15);
                    iD20 = i15;
                    int i16 = iD21;
                    int i17 = cursorB.getInt(i16);
                    iD21 = i16;
                    int i18 = iD22;
                    int i19 = cursorB.getInt(i18);
                    iD22 = i18;
                    int i20 = iD23;
                    q0.o oVarD = z0.b0.d(cursorB.getInt(i20));
                    iD23 = i20;
                    iD24 = iD24;
                    boolean z5 = cursorB.getInt(iD24) != 0;
                    boolean z6 = cursorB.getInt(iD25) != 0;
                    boolean z7 = cursorB.getInt(iD26) != 0;
                    boolean z8 = cursorB.getInt(iD27) != 0;
                    long j14 = cursorB.getLong(iD28);
                    iD28 = iD28;
                    int i21 = iD29;
                    long j15 = cursorB.getLong(i21);
                    iD29 = i21;
                    int i22 = iD30;
                    iD30 = i22;
                    arrayList.add(new z0.u(string, cVarF, string2, string3, bVarM, bVarM2, j6, j7, j8, new q0.d(oVarD, z5, z6, z7, z8, j14, j15, z0.b0.b(cursorB.isNull(i22) ? null : cursorB.getBlob(i22))), i7, aVarC, j9, j10, j11, j12, z4, sVarE, i12, i14, j13, i17, i19));
                    iD = i9;
                    i5 = i8;
                }
                cursorB.close();
                l0Var.j();
                return arrayList;
            } catch (java.lang.Throwable th) {
                th = th;
                cursorB.close();
                l0Var.j();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            l0Var = l0VarF;
        }
    }

    @Override // z0.v
    public void a(java.lang.String str) {
        this.f7074a.d();
        f0.k kVarB = this.f7077d.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        this.f7074a.e();
        try {
            kVarB.Q();
            this.f7074a.B();
        } finally {
            this.f7074a.i();
            this.f7077d.h(kVarB);
        }
    }

    @Override // z0.v
    public q0.y.c b(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT state FROM workspec WHERE id=?", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f7074a.d();
        q0.y.c cVarF = null;
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            if (cursorB.moveToFirst()) {
                java.lang.Integer numValueOf = cursorB.isNull(0) ? null : java.lang.Integer.valueOf(cursorB.getInt(0));
                if (numValueOf != null) {
                    z0.b0 b0Var = z0.b0.f6988a;
                    cVarF = z0.b0.f(numValueOf.intValue());
                }
            }
            return cVarF;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }

    @Override // z0.v
    public int c(q0.y.c cVar, java.lang.String str) {
        this.f7074a.d();
        f0.k kVarB = this.f7078e.b();
        z0.b0 b0Var = z0.b0.f6988a;
        kVarB.G(1, z0.b0.j(cVar));
        if (str == null) {
            kVarB.d0(2);
        } else {
            kVarB.E(2, str);
        }
        this.f7074a.e();
        try {
            int iQ = kVarB.Q();
            this.f7074a.B();
            return iQ;
        } finally {
            this.f7074a.i();
            this.f7078e.h(kVarB);
        }
    }

    @Override // z0.v
    public void d(z0.u uVar) {
        this.f7074a.d();
        this.f7074a.e();
        try {
            this.f7075b.j(uVar);
            this.f7074a.B();
        } finally {
            this.f7074a.i();
        }
    }

    @Override // z0.v
    public java.util.List<z0.u> e(int i5) throws java.lang.Throwable {
        androidx.room.l0 l0Var;
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))", 1);
        l0VarF.G(1, i5);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            int iD = e0.a.d(cursorB, "id");
            int iD2 = e0.a.d(cursorB, "state");
            int iD3 = e0.a.d(cursorB, "worker_class_name");
            int iD4 = e0.a.d(cursorB, "input_merger_class_name");
            int iD5 = e0.a.d(cursorB, "input");
            int iD6 = e0.a.d(cursorB, "output");
            int iD7 = e0.a.d(cursorB, "initial_delay");
            int iD8 = e0.a.d(cursorB, "interval_duration");
            int iD9 = e0.a.d(cursorB, "flex_duration");
            int iD10 = e0.a.d(cursorB, "run_attempt_count");
            int iD11 = e0.a.d(cursorB, "backoff_policy");
            int iD12 = e0.a.d(cursorB, "backoff_delay_duration");
            int iD13 = e0.a.d(cursorB, "last_enqueue_time");
            int iD14 = e0.a.d(cursorB, "minimum_retention_duration");
            l0Var = l0VarF;
            try {
                int iD15 = e0.a.d(cursorB, "schedule_requested_at");
                int iD16 = e0.a.d(cursorB, "run_in_foreground");
                int iD17 = e0.a.d(cursorB, "out_of_quota_policy");
                int iD18 = e0.a.d(cursorB, "period_count");
                int iD19 = e0.a.d(cursorB, "generation");
                int iD20 = e0.a.d(cursorB, "next_schedule_time_override");
                int iD21 = e0.a.d(cursorB, "next_schedule_time_override_generation");
                int iD22 = e0.a.d(cursorB, "stop_reason");
                int iD23 = e0.a.d(cursorB, "required_network_type");
                int iD24 = e0.a.d(cursorB, "requires_charging");
                int iD25 = e0.a.d(cursorB, "requires_device_idle");
                int iD26 = e0.a.d(cursorB, "requires_battery_not_low");
                int iD27 = e0.a.d(cursorB, "requires_storage_not_low");
                int iD28 = e0.a.d(cursorB, "trigger_content_update_delay");
                int iD29 = e0.a.d(cursorB, "trigger_max_content_delay");
                int iD30 = e0.a.d(cursorB, "content_uri_triggers");
                int i6 = iD14;
                java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    java.lang.String string = cursorB.isNull(iD) ? null : cursorB.getString(iD);
                    int i7 = cursorB.getInt(iD2);
                    z0.b0 b0Var = z0.b0.f6988a;
                    q0.y.c cVarF = z0.b0.f(i7);
                    java.lang.String string2 = cursorB.isNull(iD3) ? null : cursorB.getString(iD3);
                    java.lang.String string3 = cursorB.isNull(iD4) ? null : cursorB.getString(iD4);
                    androidx.work.b bVarM = androidx.work.b.m(cursorB.isNull(iD5) ? null : cursorB.getBlob(iD5));
                    androidx.work.b bVarM2 = androidx.work.b.m(cursorB.isNull(iD6) ? null : cursorB.getBlob(iD6));
                    long j5 = cursorB.getLong(iD7);
                    long j6 = cursorB.getLong(iD8);
                    long j7 = cursorB.getLong(iD9);
                    int i8 = cursorB.getInt(iD10);
                    q0.a aVarC = z0.b0.c(cursorB.getInt(iD11));
                    long j8 = cursorB.getLong(iD12);
                    long j9 = cursorB.getLong(iD13);
                    int i9 = i6;
                    long j10 = cursorB.getLong(i9);
                    int i10 = iD;
                    int i11 = iD15;
                    long j11 = cursorB.getLong(i11);
                    iD15 = i11;
                    iD16 = iD16;
                    boolean z4 = cursorB.getInt(iD16) != 0;
                    q0.s sVarE = z0.b0.e(cursorB.getInt(iD17));
                    iD17 = iD17;
                    int i12 = iD18;
                    int i13 = cursorB.getInt(i12);
                    iD18 = i12;
                    int i14 = iD19;
                    int i15 = cursorB.getInt(i14);
                    iD19 = i14;
                    int i16 = iD20;
                    long j12 = cursorB.getLong(i16);
                    iD20 = i16;
                    int i17 = iD21;
                    int i18 = cursorB.getInt(i17);
                    iD21 = i17;
                    int i19 = iD22;
                    int i20 = cursorB.getInt(i19);
                    iD22 = i19;
                    int i21 = iD23;
                    q0.o oVarD = z0.b0.d(cursorB.getInt(i21));
                    iD23 = i21;
                    iD24 = iD24;
                    boolean z5 = cursorB.getInt(iD24) != 0;
                    boolean z6 = cursorB.getInt(iD25) != 0;
                    boolean z7 = cursorB.getInt(iD26) != 0;
                    boolean z8 = cursorB.getInt(iD27) != 0;
                    long j13 = cursorB.getLong(iD28);
                    iD28 = iD28;
                    int i22 = iD29;
                    long j14 = cursorB.getLong(i22);
                    iD29 = i22;
                    int i23 = iD30;
                    iD30 = i23;
                    arrayList.add(new z0.u(string, cVarF, string2, string3, bVarM, bVarM2, j5, j6, j7, new q0.d(oVarD, z5, z6, z7, z8, j13, j14, z0.b0.b(cursorB.isNull(i23) ? null : cursorB.getBlob(i23))), i8, aVarC, j8, j9, j10, j11, z4, sVarE, i13, i15, j12, i18, i20));
                    iD = i10;
                    i6 = i9;
                }
                cursorB.close();
                l0Var.j();
                return arrayList;
            } catch (java.lang.Throwable th) {
                th = th;
                cursorB.close();
                l0Var.j();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            l0Var = l0VarF;
        }
    }

    @Override // z0.v
    public z0.u f(java.lang.String str) throws java.lang.Throwable {
        androidx.room.l0 l0Var;
        z0.u uVar;
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT * FROM workspec WHERE id=?", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            int iD = e0.a.d(cursorB, "id");
            int iD2 = e0.a.d(cursorB, "state");
            int iD3 = e0.a.d(cursorB, "worker_class_name");
            int iD4 = e0.a.d(cursorB, "input_merger_class_name");
            int iD5 = e0.a.d(cursorB, "input");
            int iD6 = e0.a.d(cursorB, "output");
            int iD7 = e0.a.d(cursorB, "initial_delay");
            int iD8 = e0.a.d(cursorB, "interval_duration");
            int iD9 = e0.a.d(cursorB, "flex_duration");
            int iD10 = e0.a.d(cursorB, "run_attempt_count");
            int iD11 = e0.a.d(cursorB, "backoff_policy");
            int iD12 = e0.a.d(cursorB, "backoff_delay_duration");
            int iD13 = e0.a.d(cursorB, "last_enqueue_time");
            int iD14 = e0.a.d(cursorB, "minimum_retention_duration");
            l0Var = l0VarF;
            try {
                int iD15 = e0.a.d(cursorB, "schedule_requested_at");
                int iD16 = e0.a.d(cursorB, "run_in_foreground");
                int iD17 = e0.a.d(cursorB, "out_of_quota_policy");
                int iD18 = e0.a.d(cursorB, "period_count");
                int iD19 = e0.a.d(cursorB, "generation");
                int iD20 = e0.a.d(cursorB, "next_schedule_time_override");
                int iD21 = e0.a.d(cursorB, "next_schedule_time_override_generation");
                int iD22 = e0.a.d(cursorB, "stop_reason");
                int iD23 = e0.a.d(cursorB, "required_network_type");
                int iD24 = e0.a.d(cursorB, "requires_charging");
                int iD25 = e0.a.d(cursorB, "requires_device_idle");
                int iD26 = e0.a.d(cursorB, "requires_battery_not_low");
                int iD27 = e0.a.d(cursorB, "requires_storage_not_low");
                int iD28 = e0.a.d(cursorB, "trigger_content_update_delay");
                int iD29 = e0.a.d(cursorB, "trigger_max_content_delay");
                int iD30 = e0.a.d(cursorB, "content_uri_triggers");
                if (cursorB.moveToFirst()) {
                    java.lang.String string = cursorB.isNull(iD) ? null : cursorB.getString(iD);
                    int i5 = cursorB.getInt(iD2);
                    z0.b0 b0Var = z0.b0.f6988a;
                    uVar = new z0.u(string, z0.b0.f(i5), cursorB.isNull(iD3) ? null : cursorB.getString(iD3), cursorB.isNull(iD4) ? null : cursorB.getString(iD4), androidx.work.b.m(cursorB.isNull(iD5) ? null : cursorB.getBlob(iD5)), androidx.work.b.m(cursorB.isNull(iD6) ? null : cursorB.getBlob(iD6)), cursorB.getLong(iD7), cursorB.getLong(iD8), cursorB.getLong(iD9), new q0.d(z0.b0.d(cursorB.getInt(iD23)), cursorB.getInt(iD24) != 0, cursorB.getInt(iD25) != 0, cursorB.getInt(iD26) != 0, cursorB.getInt(iD27) != 0, cursorB.getLong(iD28), cursorB.getLong(iD29), z0.b0.b(cursorB.isNull(iD30) ? null : cursorB.getBlob(iD30))), cursorB.getInt(iD10), z0.b0.c(cursorB.getInt(iD11)), cursorB.getLong(iD12), cursorB.getLong(iD13), cursorB.getLong(iD14), cursorB.getLong(iD15), cursorB.getInt(iD16) != 0, z0.b0.e(cursorB.getInt(iD17)), cursorB.getInt(iD18), cursorB.getInt(iD19), cursorB.getLong(iD20), cursorB.getInt(iD21), cursorB.getInt(iD22));
                } else {
                    uVar = null;
                }
                cursorB.close();
                l0Var.j();
                return uVar;
            } catch (java.lang.Throwable th) {
                th = th;
                cursorB.close();
                l0Var.j();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            l0Var = l0VarF;
        }
    }

    @Override // z0.v
    public void g(java.lang.String str, int i5) {
        this.f7074a.d();
        f0.k kVarB = this.f7091r.b();
        kVarB.G(1, i5);
        if (str == null) {
            kVarB.d0(2);
        } else {
            kVarB.E(2, str);
        }
        this.f7074a.e();
        try {
            kVarB.Q();
            this.f7074a.B();
        } finally {
            this.f7074a.i();
            this.f7091r.h(kVarB);
        }
    }

    @Override // z0.v
    public int h(java.lang.String str) {
        this.f7074a.d();
        f0.k kVarB = this.f7084k.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        this.f7074a.e();
        try {
            int iQ = kVarB.Q();
            this.f7074a.B();
            return iQ;
        } finally {
            this.f7074a.i();
            this.f7084k.h(kVarB);
        }
    }

    @Override // z0.v
    public void i(java.lang.String str, long j5) {
        this.f7074a.d();
        f0.k kVarB = this.f7082i.b();
        kVarB.G(1, j5);
        if (str == null) {
            kVarB.d0(2);
        } else {
            kVarB.E(2, str);
        }
        this.f7074a.e();
        try {
            kVarB.Q();
            this.f7074a.B();
        } finally {
            this.f7074a.i();
            this.f7082i.h(kVarB);
        }
    }

    @Override // z0.v
    public java.util.List<z0.u> j() throws java.lang.Throwable {
        androidx.room.l0 l0Var;
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT * FROM workspec WHERE state=1", 0);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            int iD = e0.a.d(cursorB, "id");
            int iD2 = e0.a.d(cursorB, "state");
            int iD3 = e0.a.d(cursorB, "worker_class_name");
            int iD4 = e0.a.d(cursorB, "input_merger_class_name");
            int iD5 = e0.a.d(cursorB, "input");
            int iD6 = e0.a.d(cursorB, "output");
            int iD7 = e0.a.d(cursorB, "initial_delay");
            int iD8 = e0.a.d(cursorB, "interval_duration");
            int iD9 = e0.a.d(cursorB, "flex_duration");
            int iD10 = e0.a.d(cursorB, "run_attempt_count");
            int iD11 = e0.a.d(cursorB, "backoff_policy");
            int iD12 = e0.a.d(cursorB, "backoff_delay_duration");
            int iD13 = e0.a.d(cursorB, "last_enqueue_time");
            int iD14 = e0.a.d(cursorB, "minimum_retention_duration");
            l0Var = l0VarF;
            try {
                int iD15 = e0.a.d(cursorB, "schedule_requested_at");
                int iD16 = e0.a.d(cursorB, "run_in_foreground");
                int iD17 = e0.a.d(cursorB, "out_of_quota_policy");
                int iD18 = e0.a.d(cursorB, "period_count");
                int iD19 = e0.a.d(cursorB, "generation");
                int iD20 = e0.a.d(cursorB, "next_schedule_time_override");
                int iD21 = e0.a.d(cursorB, "next_schedule_time_override_generation");
                int iD22 = e0.a.d(cursorB, "stop_reason");
                int iD23 = e0.a.d(cursorB, "required_network_type");
                int iD24 = e0.a.d(cursorB, "requires_charging");
                int iD25 = e0.a.d(cursorB, "requires_device_idle");
                int iD26 = e0.a.d(cursorB, "requires_battery_not_low");
                int iD27 = e0.a.d(cursorB, "requires_storage_not_low");
                int iD28 = e0.a.d(cursorB, "trigger_content_update_delay");
                int iD29 = e0.a.d(cursorB, "trigger_max_content_delay");
                int iD30 = e0.a.d(cursorB, "content_uri_triggers");
                int i5 = iD14;
                java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    java.lang.String string = cursorB.isNull(iD) ? null : cursorB.getString(iD);
                    int i6 = cursorB.getInt(iD2);
                    z0.b0 b0Var = z0.b0.f6988a;
                    q0.y.c cVarF = z0.b0.f(i6);
                    java.lang.String string2 = cursorB.isNull(iD3) ? null : cursorB.getString(iD3);
                    java.lang.String string3 = cursorB.isNull(iD4) ? null : cursorB.getString(iD4);
                    androidx.work.b bVarM = androidx.work.b.m(cursorB.isNull(iD5) ? null : cursorB.getBlob(iD5));
                    androidx.work.b bVarM2 = androidx.work.b.m(cursorB.isNull(iD6) ? null : cursorB.getBlob(iD6));
                    long j5 = cursorB.getLong(iD7);
                    long j6 = cursorB.getLong(iD8);
                    long j7 = cursorB.getLong(iD9);
                    int i7 = cursorB.getInt(iD10);
                    q0.a aVarC = z0.b0.c(cursorB.getInt(iD11));
                    long j8 = cursorB.getLong(iD12);
                    long j9 = cursorB.getLong(iD13);
                    int i8 = i5;
                    long j10 = cursorB.getLong(i8);
                    int i9 = iD;
                    int i10 = iD15;
                    long j11 = cursorB.getLong(i10);
                    iD15 = i10;
                    iD16 = iD16;
                    boolean z4 = cursorB.getInt(iD16) != 0;
                    q0.s sVarE = z0.b0.e(cursorB.getInt(iD17));
                    iD17 = iD17;
                    int i11 = iD18;
                    int i12 = cursorB.getInt(i11);
                    iD18 = i11;
                    int i13 = iD19;
                    int i14 = cursorB.getInt(i13);
                    iD19 = i13;
                    int i15 = iD20;
                    long j12 = cursorB.getLong(i15);
                    iD20 = i15;
                    int i16 = iD21;
                    int i17 = cursorB.getInt(i16);
                    iD21 = i16;
                    int i18 = iD22;
                    int i19 = cursorB.getInt(i18);
                    iD22 = i18;
                    int i20 = iD23;
                    q0.o oVarD = z0.b0.d(cursorB.getInt(i20));
                    iD23 = i20;
                    iD24 = iD24;
                    boolean z5 = cursorB.getInt(iD24) != 0;
                    boolean z6 = cursorB.getInt(iD25) != 0;
                    boolean z7 = cursorB.getInt(iD26) != 0;
                    boolean z8 = cursorB.getInt(iD27) != 0;
                    long j13 = cursorB.getLong(iD28);
                    iD28 = iD28;
                    int i21 = iD29;
                    long j14 = cursorB.getLong(i21);
                    iD29 = i21;
                    int i22 = iD30;
                    iD30 = i22;
                    arrayList.add(new z0.u(string, cVarF, string2, string3, bVarM, bVarM2, j5, j6, j7, new q0.d(oVarD, z5, z6, z7, z8, j13, j14, z0.b0.b(cursorB.isNull(i22) ? null : cursorB.getBlob(i22))), i7, aVarC, j8, j9, j10, j11, z4, sVarE, i12, i14, j12, i17, i19));
                    iD = i9;
                    i5 = i8;
                }
                cursorB.close();
                l0Var.j();
                return arrayList;
            } catch (java.lang.Throwable th) {
                th = th;
                cursorB.close();
                l0Var.j();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            l0Var = l0VarF;
        }
    }

    @Override // z0.v
    public int k(java.lang.String str) {
        this.f7074a.d();
        f0.k kVarB = this.f7079f.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        this.f7074a.e();
        try {
            int iQ = kVarB.Q();
            this.f7074a.B();
            return iQ;
        } finally {
            this.f7074a.i();
            this.f7079f.h(kVarB);
        }
    }

    @Override // z0.v
    public java.util.List<java.lang.String> l(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
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

    @Override // z0.v
    public java.util.List<androidx.work.b> m(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
            while (cursorB.moveToNext()) {
                arrayList.add(androidx.work.b.m(cursorB.isNull(0) ? null : cursorB.getBlob(0)));
            }
            return arrayList;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }

    @Override // z0.v
    public int n(java.lang.String str) {
        this.f7074a.d();
        f0.k kVarB = this.f7083j.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        this.f7074a.e();
        try {
            int iQ = kVarB.Q();
            this.f7074a.B();
            return iQ;
        } finally {
            this.f7074a.i();
            this.f7083j.h(kVarB);
        }
    }

    @Override // z0.v
    public void o(java.lang.String str) {
        this.f7074a.d();
        f0.k kVarB = this.f7080g.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        this.f7074a.e();
        try {
            kVarB.Q();
            this.f7074a.B();
        } finally {
            this.f7074a.i();
            this.f7080g.h(kVarB);
        }
    }

    @Override // z0.v
    public java.util.List<java.lang.String> p() {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
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

    @Override // z0.v
    public void q(z0.u uVar) {
        this.f7074a.d();
        this.f7074a.e();
        try {
            this.f7076c.j(uVar);
            this.f7074a.B();
        } finally {
            this.f7074a.i();
        }
    }

    @Override // z0.v
    public boolean r() {
        boolean z4 = false;
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            if (cursorB.moveToFirst() && cursorB.getInt(0) != 0) {
                z4 = true;
            }
            return z4;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }

    @Override // z0.v
    public int s() {
        androidx.room.l0 l0VarF = androidx.room.l0.f("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)", 0);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            return cursorB.moveToFirst() ? cursorB.getInt(0) : 0;
        } finally {
            cursorB.close();
            l0VarF.j();
        }
    }

    @Override // z0.v
    public int t(java.lang.String str, long j5) {
        this.f7074a.d();
        f0.k kVarB = this.f7087n.b();
        kVarB.G(1, j5);
        if (str == null) {
            kVarB.d0(2);
        } else {
            kVarB.E(2, str);
        }
        this.f7074a.e();
        try {
            int iQ = kVarB.Q();
            this.f7074a.B();
            return iQ;
        } finally {
            this.f7074a.i();
            this.f7087n.h(kVarB);
        }
    }

    @Override // z0.v
    public void u(java.lang.String str, int i5) {
        this.f7074a.d();
        f0.k kVarB = this.f7086m.b();
        if (str == null) {
            kVarB.d0(1);
        } else {
            kVarB.E(1, str);
        }
        kVarB.G(2, i5);
        this.f7074a.e();
        try {
            kVarB.Q();
            this.f7074a.B();
        } finally {
            this.f7074a.i();
            this.f7086m.h(kVarB);
        }
    }

    @Override // z0.v
    public java.util.List<z0.u> v() throws java.lang.Throwable {
        androidx.room.l0 l0Var;
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            int iD = e0.a.d(cursorB, "id");
            int iD2 = e0.a.d(cursorB, "state");
            int iD3 = e0.a.d(cursorB, "worker_class_name");
            int iD4 = e0.a.d(cursorB, "input_merger_class_name");
            int iD5 = e0.a.d(cursorB, "input");
            int iD6 = e0.a.d(cursorB, "output");
            int iD7 = e0.a.d(cursorB, "initial_delay");
            int iD8 = e0.a.d(cursorB, "interval_duration");
            int iD9 = e0.a.d(cursorB, "flex_duration");
            int iD10 = e0.a.d(cursorB, "run_attempt_count");
            int iD11 = e0.a.d(cursorB, "backoff_policy");
            int iD12 = e0.a.d(cursorB, "backoff_delay_duration");
            int iD13 = e0.a.d(cursorB, "last_enqueue_time");
            int iD14 = e0.a.d(cursorB, "minimum_retention_duration");
            l0Var = l0VarF;
            try {
                int iD15 = e0.a.d(cursorB, "schedule_requested_at");
                int iD16 = e0.a.d(cursorB, "run_in_foreground");
                int iD17 = e0.a.d(cursorB, "out_of_quota_policy");
                int iD18 = e0.a.d(cursorB, "period_count");
                int iD19 = e0.a.d(cursorB, "generation");
                int iD20 = e0.a.d(cursorB, "next_schedule_time_override");
                int iD21 = e0.a.d(cursorB, "next_schedule_time_override_generation");
                int iD22 = e0.a.d(cursorB, "stop_reason");
                int iD23 = e0.a.d(cursorB, "required_network_type");
                int iD24 = e0.a.d(cursorB, "requires_charging");
                int iD25 = e0.a.d(cursorB, "requires_device_idle");
                int iD26 = e0.a.d(cursorB, "requires_battery_not_low");
                int iD27 = e0.a.d(cursorB, "requires_storage_not_low");
                int iD28 = e0.a.d(cursorB, "trigger_content_update_delay");
                int iD29 = e0.a.d(cursorB, "trigger_max_content_delay");
                int iD30 = e0.a.d(cursorB, "content_uri_triggers");
                int i5 = iD14;
                java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    java.lang.String string = cursorB.isNull(iD) ? null : cursorB.getString(iD);
                    int i6 = cursorB.getInt(iD2);
                    z0.b0 b0Var = z0.b0.f6988a;
                    q0.y.c cVarF = z0.b0.f(i6);
                    java.lang.String string2 = cursorB.isNull(iD3) ? null : cursorB.getString(iD3);
                    java.lang.String string3 = cursorB.isNull(iD4) ? null : cursorB.getString(iD4);
                    androidx.work.b bVarM = androidx.work.b.m(cursorB.isNull(iD5) ? null : cursorB.getBlob(iD5));
                    androidx.work.b bVarM2 = androidx.work.b.m(cursorB.isNull(iD6) ? null : cursorB.getBlob(iD6));
                    long j5 = cursorB.getLong(iD7);
                    long j6 = cursorB.getLong(iD8);
                    long j7 = cursorB.getLong(iD9);
                    int i7 = cursorB.getInt(iD10);
                    q0.a aVarC = z0.b0.c(cursorB.getInt(iD11));
                    long j8 = cursorB.getLong(iD12);
                    long j9 = cursorB.getLong(iD13);
                    int i8 = i5;
                    long j10 = cursorB.getLong(i8);
                    int i9 = iD;
                    int i10 = iD15;
                    long j11 = cursorB.getLong(i10);
                    iD15 = i10;
                    iD16 = iD16;
                    boolean z4 = cursorB.getInt(iD16) != 0;
                    q0.s sVarE = z0.b0.e(cursorB.getInt(iD17));
                    iD17 = iD17;
                    int i11 = iD18;
                    int i12 = cursorB.getInt(i11);
                    iD18 = i11;
                    int i13 = iD19;
                    int i14 = cursorB.getInt(i13);
                    iD19 = i13;
                    int i15 = iD20;
                    long j12 = cursorB.getLong(i15);
                    iD20 = i15;
                    int i16 = iD21;
                    int i17 = cursorB.getInt(i16);
                    iD21 = i16;
                    int i18 = iD22;
                    int i19 = cursorB.getInt(i18);
                    iD22 = i18;
                    int i20 = iD23;
                    q0.o oVarD = z0.b0.d(cursorB.getInt(i20));
                    iD23 = i20;
                    iD24 = iD24;
                    boolean z5 = cursorB.getInt(iD24) != 0;
                    boolean z6 = cursorB.getInt(iD25) != 0;
                    boolean z7 = cursorB.getInt(iD26) != 0;
                    boolean z8 = cursorB.getInt(iD27) != 0;
                    long j13 = cursorB.getLong(iD28);
                    iD28 = iD28;
                    int i21 = iD29;
                    long j14 = cursorB.getLong(i21);
                    iD29 = i21;
                    int i22 = iD30;
                    iD30 = i22;
                    arrayList.add(new z0.u(string, cVarF, string2, string3, bVarM, bVarM2, j5, j6, j7, new q0.d(oVarD, z5, z6, z7, z8, j13, j14, z0.b0.b(cursorB.isNull(i22) ? null : cursorB.getBlob(i22))), i7, aVarC, j8, j9, j10, j11, z4, sVarE, i12, i14, j12, i17, i19));
                    iD = i9;
                    i5 = i8;
                }
                cursorB.close();
                l0Var.j();
                return arrayList;
            } catch (java.lang.Throwable th) {
                th = th;
                cursorB.close();
                l0Var.j();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            l0Var = l0VarF;
        }
    }

    @Override // z0.v
    public java.util.List<z0.u> w(int i5) throws java.lang.Throwable {
        androidx.room.l0 l0Var;
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", 1);
        l0VarF.G(1, i5);
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
        try {
            int iD = e0.a.d(cursorB, "id");
            int iD2 = e0.a.d(cursorB, "state");
            int iD3 = e0.a.d(cursorB, "worker_class_name");
            int iD4 = e0.a.d(cursorB, "input_merger_class_name");
            int iD5 = e0.a.d(cursorB, "input");
            int iD6 = e0.a.d(cursorB, "output");
            int iD7 = e0.a.d(cursorB, "initial_delay");
            int iD8 = e0.a.d(cursorB, "interval_duration");
            int iD9 = e0.a.d(cursorB, "flex_duration");
            int iD10 = e0.a.d(cursorB, "run_attempt_count");
            int iD11 = e0.a.d(cursorB, "backoff_policy");
            int iD12 = e0.a.d(cursorB, "backoff_delay_duration");
            int iD13 = e0.a.d(cursorB, "last_enqueue_time");
            int iD14 = e0.a.d(cursorB, "minimum_retention_duration");
            l0Var = l0VarF;
            try {
                int iD15 = e0.a.d(cursorB, "schedule_requested_at");
                int iD16 = e0.a.d(cursorB, "run_in_foreground");
                int iD17 = e0.a.d(cursorB, "out_of_quota_policy");
                int iD18 = e0.a.d(cursorB, "period_count");
                int iD19 = e0.a.d(cursorB, "generation");
                int iD20 = e0.a.d(cursorB, "next_schedule_time_override");
                int iD21 = e0.a.d(cursorB, "next_schedule_time_override_generation");
                int iD22 = e0.a.d(cursorB, "stop_reason");
                int iD23 = e0.a.d(cursorB, "required_network_type");
                int iD24 = e0.a.d(cursorB, "requires_charging");
                int iD25 = e0.a.d(cursorB, "requires_device_idle");
                int iD26 = e0.a.d(cursorB, "requires_battery_not_low");
                int iD27 = e0.a.d(cursorB, "requires_storage_not_low");
                int iD28 = e0.a.d(cursorB, "trigger_content_update_delay");
                int iD29 = e0.a.d(cursorB, "trigger_max_content_delay");
                int iD30 = e0.a.d(cursorB, "content_uri_triggers");
                int i6 = iD14;
                java.util.ArrayList arrayList = new java.util.ArrayList(cursorB.getCount());
                while (cursorB.moveToNext()) {
                    java.lang.String string = cursorB.isNull(iD) ? null : cursorB.getString(iD);
                    int i7 = cursorB.getInt(iD2);
                    z0.b0 b0Var = z0.b0.f6988a;
                    q0.y.c cVarF = z0.b0.f(i7);
                    java.lang.String string2 = cursorB.isNull(iD3) ? null : cursorB.getString(iD3);
                    java.lang.String string3 = cursorB.isNull(iD4) ? null : cursorB.getString(iD4);
                    androidx.work.b bVarM = androidx.work.b.m(cursorB.isNull(iD5) ? null : cursorB.getBlob(iD5));
                    androidx.work.b bVarM2 = androidx.work.b.m(cursorB.isNull(iD6) ? null : cursorB.getBlob(iD6));
                    long j5 = cursorB.getLong(iD7);
                    long j6 = cursorB.getLong(iD8);
                    long j7 = cursorB.getLong(iD9);
                    int i8 = cursorB.getInt(iD10);
                    q0.a aVarC = z0.b0.c(cursorB.getInt(iD11));
                    long j8 = cursorB.getLong(iD12);
                    long j9 = cursorB.getLong(iD13);
                    int i9 = i6;
                    long j10 = cursorB.getLong(i9);
                    int i10 = iD;
                    int i11 = iD15;
                    long j11 = cursorB.getLong(i11);
                    iD15 = i11;
                    iD16 = iD16;
                    boolean z4 = cursorB.getInt(iD16) != 0;
                    q0.s sVarE = z0.b0.e(cursorB.getInt(iD17));
                    iD17 = iD17;
                    int i12 = iD18;
                    int i13 = cursorB.getInt(i12);
                    iD18 = i12;
                    int i14 = iD19;
                    int i15 = cursorB.getInt(i14);
                    iD19 = i14;
                    int i16 = iD20;
                    long j12 = cursorB.getLong(i16);
                    iD20 = i16;
                    int i17 = iD21;
                    int i18 = cursorB.getInt(i17);
                    iD21 = i17;
                    int i19 = iD22;
                    int i20 = cursorB.getInt(i19);
                    iD22 = i19;
                    int i21 = iD23;
                    q0.o oVarD = z0.b0.d(cursorB.getInt(i21));
                    iD23 = i21;
                    iD24 = iD24;
                    boolean z5 = cursorB.getInt(iD24) != 0;
                    boolean z6 = cursorB.getInt(iD25) != 0;
                    boolean z7 = cursorB.getInt(iD26) != 0;
                    boolean z8 = cursorB.getInt(iD27) != 0;
                    long j13 = cursorB.getLong(iD28);
                    iD28 = iD28;
                    int i22 = iD29;
                    long j14 = cursorB.getLong(i22);
                    iD29 = i22;
                    int i23 = iD30;
                    iD30 = i23;
                    arrayList.add(new z0.u(string, cVarF, string2, string3, bVarM, bVarM2, j5, j6, j7, new q0.d(oVarD, z5, z6, z7, z8, j13, j14, z0.b0.b(cursorB.isNull(i23) ? null : cursorB.getBlob(i23))), i8, aVarC, j8, j9, j10, j11, z4, sVarE, i13, i15, j12, i18, i20));
                    iD = i10;
                    i6 = i9;
                }
                cursorB.close();
                l0Var.j();
                return arrayList;
            } catch (java.lang.Throwable th) {
                th = th;
                cursorB.close();
                l0Var.j();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            l0Var = l0VarF;
        }
    }

    @Override // z0.v
    public void x(java.lang.String str, androidx.work.b bVar) throws java.lang.Throwable {
        this.f7074a.d();
        f0.k kVarB = this.f7081h.b();
        byte[] bArrQ = androidx.work.b.q(bVar);
        if (bArrQ == null) {
            kVarB.d0(1);
        } else {
            kVarB.a0(1, bArrQ);
        }
        if (str == null) {
            kVarB.d0(2);
        } else {
            kVarB.E(2, str);
        }
        this.f7074a.e();
        try {
            kVarB.Q();
            this.f7074a.B();
        } finally {
            this.f7074a.i();
            this.f7081h.h(kVarB);
        }
    }

    @Override // z0.v
    public java.util.List<java.lang.String> y(java.lang.String str) {
        androidx.room.l0 l0VarF = androidx.room.l0.f("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (str == null) {
            l0VarF.d0(1);
        } else {
            l0VarF.E(1, str);
        }
        this.f7074a.d();
        android.database.Cursor cursorB = e0.b.b(this.f7074a, l0VarF, false, null);
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

    @Override // z0.v
    public int z() {
        this.f7074a.d();
        f0.k kVarB = this.f7088o.b();
        this.f7074a.e();
        try {
            int iQ = kVarB.Q();
            this.f7074a.B();
            return iQ;
        } finally {
            this.f7074a.i();
            this.f7088o.h(kVarB);
        }
    }
}
