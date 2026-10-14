package r0;

/* JADX INFO: compiled from: Schedulers.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f5966a = q0.n.i("Schedulers");

    public static r0.w c(android.content.Context context, androidx.work.impl.WorkDatabase workDatabase, androidx.work.a aVar) {
        u0.b bVar = new u0.b(context, workDatabase, aVar);
        a1.l.c(context, androidx.work.impl.background.systemjob.SystemJobService.class, true);
        q0.n.e().a(f5966a, "Created SystemJobScheduler and enabled SystemJobService");
        return bVar;
    }

    public static /* synthetic */ void d(java.util.List list, z0.m mVar, androidx.work.a aVar, androidx.work.impl.WorkDatabase workDatabase) {
        java.util.Iterator it = list.iterator();
        while (it.hasNext()) {
            ((r0.w) it.next()).b(mVar.b());
        }
        h(aVar, workDatabase, list);
    }

    public static /* synthetic */ void e(java.util.concurrent.Executor executor, final java.util.List list, final androidx.work.a aVar, final androidx.work.impl.WorkDatabase workDatabase, final z0.m mVar, boolean z4) {
        executor.execute(new java.lang.Runnable() { // from class: r0.x
            @Override // java.lang.Runnable
            public final void run() {
                r0.z.d(list, mVar, aVar, workDatabase);
            }
        });
    }

    public static void f(z0.v vVar, q0.b bVar, java.util.List<z0.u> list) {
        if (list.size() > 0) {
            long jA = bVar.a();
            java.util.Iterator<z0.u> it = list.iterator();
            while (it.hasNext()) {
                vVar.t(it.next().f7032a, jA);
            }
        }
    }

    public static void g(final java.util.List<r0.w> list, r0.u uVar, final java.util.concurrent.Executor executor, final androidx.work.impl.WorkDatabase workDatabase, final androidx.work.a aVar) {
        uVar.e(new r0.f() { // from class: r0.y
            @Override // r0.f
            public final void c(z0.m mVar, boolean z4) {
                r0.z.e(executor, list, aVar, workDatabase, mVar, z4);
            }
        });
    }

    public static void h(androidx.work.a aVar, androidx.work.impl.WorkDatabase workDatabase, java.util.List<r0.w> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        z0.v vVarJ = workDatabase.J();
        workDatabase.e();
        try {
            java.util.List<z0.u> listB = vVarJ.B();
            f(vVarJ, aVar.a(), listB);
            java.util.List<z0.u> listE = vVarJ.e(aVar.h());
            f(vVarJ, aVar.a(), listE);
            if (listB != null) {
                listE.addAll(listB);
            }
            java.util.List<z0.u> listW = vVarJ.w(200);
            workDatabase.B();
            workDatabase.i();
            if (listE.size() > 0) {
                z0.u[] uVarArr = (z0.u[]) listE.toArray(new z0.u[listE.size()]);
                for (r0.w wVar : list) {
                    if (wVar.d()) {
                        wVar.e(uVarArr);
                    }
                }
            }
            if (listW.size() > 0) {
                z0.u[] uVarArr2 = (z0.u[]) listW.toArray(new z0.u[listW.size()]);
                for (r0.w wVar2 : list) {
                    if (!wVar2.d()) {
                        wVar2.e(uVarArr2);
                    }
                }
            }
        } catch (java.lang.Throwable th) {
            workDatabase.i();
            throw th;
        }
    }
}
