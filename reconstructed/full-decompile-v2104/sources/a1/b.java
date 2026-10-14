package a1;

/* JADX INFO: compiled from: CancelWorkRunnable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class b implements java.lang.Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r0.q f12a = new r0.q();

    /* JADX INFO: compiled from: CancelWorkRunnable.java */
    public class a extends a1.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ r0.p0 f13b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.util.UUID f14c;

        public a(r0.p0 p0Var, java.util.UUID uuid) {
            this.f13b = p0Var;
            this.f14c = uuid;
        }

        @Override // a1.b
        public void i() {
            androidx.work.impl.WorkDatabase workDatabaseU = this.f13b.u();
            workDatabaseU.e();
            try {
                a(this.f13b, this.f14c.toString());
                workDatabaseU.B();
                workDatabaseU.i();
                h(this.f13b);
            } catch (java.lang.Throwable th) {
                workDatabaseU.i();
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: a1.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CancelWorkRunnable.java */
    public class C0000b extends a1.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ r0.p0 f15b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f16c;

        public C0000b(r0.p0 p0Var, java.lang.String str) {
            this.f15b = p0Var;
            this.f16c = str;
        }

        @Override // a1.b
        public void i() {
            androidx.work.impl.WorkDatabase workDatabaseU = this.f15b.u();
            workDatabaseU.e();
            try {
                java.util.Iterator<java.lang.String> it = workDatabaseU.J().l(this.f16c).iterator();
                while (it.hasNext()) {
                    a(this.f15b, it.next());
                }
                workDatabaseU.B();
                workDatabaseU.i();
                h(this.f15b);
            } catch (java.lang.Throwable th) {
                workDatabaseU.i();
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: CancelWorkRunnable.java */
    public class c extends a1.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ r0.p0 f17b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f18c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ boolean f19d;

        public c(r0.p0 p0Var, java.lang.String str, boolean z4) {
            this.f17b = p0Var;
            this.f18c = str;
            this.f19d = z4;
        }

        @Override // a1.b
        public void i() {
            androidx.work.impl.WorkDatabase workDatabaseU = this.f17b.u();
            workDatabaseU.e();
            try {
                java.util.Iterator<java.lang.String> it = workDatabaseU.J().y(this.f18c).iterator();
                while (it.hasNext()) {
                    a(this.f17b, it.next());
                }
                workDatabaseU.B();
                workDatabaseU.i();
                if (this.f19d) {
                    h(this.f17b);
                }
            } catch (java.lang.Throwable th) {
                workDatabaseU.i();
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: CancelWorkRunnable.java */
    public class d extends a1.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ r0.p0 f20b;

        public d(r0.p0 p0Var) {
            this.f20b = p0Var;
        }

        @Override // a1.b
        public void i() {
            androidx.work.impl.WorkDatabase workDatabaseU = this.f20b.u();
            workDatabaseU.e();
            try {
                java.util.Iterator<java.lang.String> it = workDatabaseU.J().p().iterator();
                while (it.hasNext()) {
                    a(this.f20b, it.next());
                }
                new a1.m(this.f20b.u()).d(this.f20b.m().a().a());
                workDatabaseU.B();
            } finally {
                workDatabaseU.i();
            }
        }
    }

    public static a1.b b(r0.p0 p0Var) {
        return new a1.b.d(p0Var);
    }

    public static a1.b c(java.util.UUID uuid, r0.p0 p0Var) {
        return new a1.b.a(p0Var, uuid);
    }

    public static a1.b d(java.lang.String str, r0.p0 p0Var, boolean z4) {
        return new a1.b.c(p0Var, str, z4);
    }

    public static a1.b e(java.lang.String str, r0.p0 p0Var) {
        return new a1.b.C0000b(p0Var, str);
    }

    public void a(r0.p0 p0Var, java.lang.String str) {
        g(p0Var.u(), str);
        p0Var.q().t(str, 1);
        java.util.Iterator<r0.w> it = p0Var.s().iterator();
        while (it.hasNext()) {
            it.next().b(str);
        }
    }

    public q0.r f() {
        return this.f12a;
    }

    public final void g(androidx.work.impl.WorkDatabase workDatabase, java.lang.String str) {
        z0.v vVarJ = workDatabase.J();
        z0.b bVarD = workDatabase.D();
        java.util.LinkedList linkedList = new java.util.LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            java.lang.String str2 = (java.lang.String) linkedList.remove();
            q0.y.c cVarB = vVarJ.b(str2);
            if (cVarB != q0.y.c.SUCCEEDED && cVarB != q0.y.c.FAILED) {
                vVarJ.k(str2);
            }
            linkedList.addAll(bVarD.c(str2));
        }
    }

    public void h(r0.p0 p0Var) {
        r0.z.h(p0Var.m(), p0Var.u(), p0Var.s());
    }

    public abstract void i();

    @Override // java.lang.Runnable
    public void run() {
        try {
            i();
            this.f12a.b(q0.r.f5715a);
        } catch (java.lang.Throwable th) {
            this.f12a.b(new q0.r.b.a(th));
        }
    }
}
