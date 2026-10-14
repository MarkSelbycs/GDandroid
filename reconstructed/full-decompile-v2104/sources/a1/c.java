package a1;

/* JADX INFO: compiled from: EnqueueRunnable.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c implements java.lang.Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.String f21c = q0.n.i("EnqueueRunnable");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r0.c0 f22a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final r0.q f23b;

    public c(r0.c0 c0Var) {
        this(c0Var, new r0.q());
    }

    public static boolean b(r0.c0 c0Var) {
        boolean zC = c(c0Var.g(), c0Var.f(), (java.lang.String[]) r0.c0.l(c0Var).toArray(new java.lang.String[0]), c0Var.d(), c0Var.b());
        c0Var.k();
        return zC;
    }

    /* JADX WARN: Code duplicated, block: B:85:0x015a  */
    public static boolean c(r0.p0 p0Var, java.util.List<? extends q0.b0> list, java.lang.String[] strArr, java.lang.String str, q0.g gVar) {
        boolean z4;
        boolean z5;
        boolean z6;
        java.lang.String[] strArr2 = strArr;
        long jA = p0Var.m().a().a();
        androidx.work.impl.WorkDatabase workDatabaseU = p0Var.u();
        boolean z7 = true;
        boolean z8 = strArr2 != null && strArr2.length > 0;
        if (z8) {
            z4 = true;
            z5 = false;
            z6 = false;
            for (java.lang.String str2 : strArr2) {
                z0.u uVarF = workDatabaseU.J().f(str2);
                if (uVarF == null) {
                    q0.n.e().c(f21c, "Prerequisite " + str2 + " doesn't exist; not enqueuing");
                    return false;
                }
                q0.y.c cVar = uVarF.f7033b;
                z4 &= cVar == q0.y.c.SUCCEEDED;
                if (cVar == q0.y.c.FAILED) {
                    z6 = true;
                } else if (cVar == q0.y.c.CANCELLED) {
                    z5 = true;
                }
            }
        } else {
            z4 = true;
            z5 = false;
            z6 = false;
        }
        boolean z9 = !android.text.TextUtils.isEmpty(str);
        if (z9 && !z8) {
            java.util.List<z0.u.b> listA = workDatabaseU.J().A(str);
            if (!listA.isEmpty()) {
                if (gVar == q0.g.APPEND || gVar == q0.g.APPEND_OR_REPLACE) {
                    z0.b bVarD = workDatabaseU.D();
                    java.util.List arrayList = new java.util.ArrayList();
                    for (z0.u.b bVar : listA) {
                        if (!bVarD.d(bVar.f7055a)) {
                            q0.y.c cVar2 = bVar.f7056b;
                            boolean z10 = (cVar2 == q0.y.c.SUCCEEDED) & z4;
                            if (cVar2 == q0.y.c.FAILED) {
                                z6 = true;
                            } else if (cVar2 == q0.y.c.CANCELLED) {
                                z5 = true;
                            }
                            arrayList.add(bVar.f7055a);
                            z4 = z10;
                        }
                        bVarD = bVarD;
                    }
                    if (gVar == q0.g.APPEND_OR_REPLACE && (z5 || z6)) {
                        z0.v vVarJ = workDatabaseU.J();
                        java.util.Iterator<z0.u.b> it = vVarJ.A(str).iterator();
                        while (it.hasNext()) {
                            vVarJ.a(it.next().f7055a);
                        }
                        arrayList = java.util.Collections.emptyList();
                        z5 = false;
                        z6 = false;
                    }
                    strArr2 = (java.lang.String[]) arrayList.toArray(strArr2);
                    z8 = strArr2.length > 0;
                } else {
                    if (gVar == q0.g.KEEP) {
                        java.util.Iterator<z0.u.b> it2 = listA.iterator();
                        while (it2.hasNext()) {
                            q0.y.c cVar3 = it2.next().f7056b;
                            if (cVar3 == q0.y.c.ENQUEUED || cVar3 == q0.y.c.RUNNING) {
                                return false;
                            }
                        }
                    }
                    a1.b.d(str, p0Var, false).run();
                    z0.v vVarJ2 = workDatabaseU.J();
                    java.util.Iterator<z0.u.b> it3 = listA.iterator();
                    while (it3.hasNext()) {
                        vVarJ2.a(it3.next().f7055a);
                    }
                }
            }
            z7 = false;
        } else {
            z7 = false;
        }
        java.util.Iterator<? extends q0.b0> it4 = list.iterator();
        while (it4.hasNext()) {
            q0.b0 next = it4.next();
            z0.u uVarD = next.d();
            if (!z8 || z4) {
                uVarD.f7045n = jA;
            } else if (z6) {
                uVarD.f7033b = q0.y.c.FAILED;
            } else if (z5) {
                uVarD.f7033b = q0.y.c.CANCELLED;
            } else {
                uVarD.f7033b = q0.y.c.BLOCKED;
            }
            java.util.Iterator<? extends q0.b0> it5 = it4;
            if (uVarD.f7033b == q0.y.c.ENQUEUED) {
                z7 = true;
            }
            workDatabaseU.J().d(a1.d.b(p0Var.s(), uVarD));
            if (z8) {
                int length = strArr2.length;
                int i5 = 0;
                while (i5 < length) {
                    workDatabaseU.D().a(new z0.a(next.b(), strArr2[i5]));
                    i5++;
                    length = length;
                    strArr2 = strArr2;
                }
            }
            java.lang.String[] strArr3 = strArr2;
            workDatabaseU.K().d(next.b(), next.c());
            if (z9) {
                workDatabaseU.H().a(new z0.n(str, next.b()));
            }
            it4 = it5;
            strArr2 = strArr3;
        }
        return z7;
    }

    public static boolean e(r0.c0 c0Var) {
        java.util.List<r0.c0> listE = c0Var.e();
        boolean zE = false;
        if (listE != null) {
            for (r0.c0 c0Var2 : listE) {
                if (c0Var2.j()) {
                    q0.n.e().k(f21c, "Already enqueued work ids (" + android.text.TextUtils.join(", ", c0Var2.c()) + ")");
                } else {
                    zE |= e(c0Var2);
                }
            }
        }
        return b(c0Var) | zE;
    }

    public boolean a() {
        r0.p0 p0VarG = this.f22a.g();
        androidx.work.impl.WorkDatabase workDatabaseU = p0VarG.u();
        workDatabaseU.e();
        try {
            a1.d.a(workDatabaseU, p0VarG.m(), this.f22a);
            boolean zE = e(this.f22a);
            workDatabaseU.B();
            return zE;
        } finally {
            workDatabaseU.i();
        }
    }

    public q0.r d() {
        return this.f23b;
    }

    public void f() {
        r0.p0 p0VarG = this.f22a.g();
        r0.z.h(p0VarG.m(), p0VarG.u(), p0VarG.s());
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f22a.h()) {
                throw new java.lang.IllegalStateException("WorkContinuation has cycles (" + this.f22a + ")");
            }
            if (a()) {
                a1.l.c(this.f22a.g().l(), androidx.work.impl.background.systemalarm.RescheduleReceiver.class, true);
                f();
            }
            this.f23b.b(q0.r.f5715a);
        } catch (java.lang.Throwable th) {
            this.f23b.b(new q0.r.b.a(th));
        }
    }

    public c(r0.c0 c0Var, r0.q qVar) {
        this.f22a = c0Var;
        this.f23b = qVar;
    }
}
