package androidx.work.impl;

/* JADX INFO: compiled from: WorkManagerImplExt.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: androidx.work.impl.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: WorkManagerImplExt.kt */
    public /* synthetic */ class C0023a extends m3.j implements l3.t<android.content.Context, androidx.work.a, c1.b, androidx.work.impl.WorkDatabase, x0.m, r0.u, java.util.List<? extends r0.w>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final androidx.work.impl.a.C0023a f2658o = new androidx.work.impl.a.C0023a();

        public C0023a() {
            super(6, androidx.work.impl.a.class, "createSchedulers", "createSchedulers(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;", 1);
        }

        @Override // l3.t
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public final java.util.List<r0.w> h(android.content.Context context, androidx.work.a aVar, c1.b bVar, androidx.work.impl.WorkDatabase workDatabase, x0.m mVar, r0.u uVar) {
            m3.k.e(context, "p0");
            m3.k.e(aVar, "p1");
            m3.k.e(bVar, "p2");
            m3.k.e(workDatabase, "p3");
            m3.k.e(mVar, "p4");
            m3.k.e(uVar, "p5");
            return androidx.work.impl.a.b(context, aVar, bVar, workDatabase, mVar, uVar);
        }
    }

    public static final java.util.List<r0.w> b(android.content.Context context, androidx.work.a aVar, c1.b bVar, androidx.work.impl.WorkDatabase workDatabase, x0.m mVar, r0.u uVar) {
        r0.w wVarC = r0.z.c(context, workDatabase, aVar);
        m3.k.d(wVarC, "createBestAvailableBackg…kDatabase, configuration)");
        return b3.o.g(wVarC, new s0.b(context, aVar, mVar, uVar, new r0.o0(uVar, bVar), bVar));
    }

    public static final r0.p0 c(android.content.Context context, androidx.work.a aVar) {
        m3.k.e(context, "context");
        m3.k.e(aVar, "configuration");
        return e(context, aVar, null, null, null, null, null, 124, null);
    }

    public static final r0.p0 d(android.content.Context context, androidx.work.a aVar, c1.b bVar, androidx.work.impl.WorkDatabase workDatabase, x0.m mVar, r0.u uVar, l3.t<? super android.content.Context, ? super androidx.work.a, ? super c1.b, ? super androidx.work.impl.WorkDatabase, ? super x0.m, ? super r0.u, ? extends java.util.List<? extends r0.w>> tVar) {
        m3.k.e(context, "context");
        m3.k.e(aVar, "configuration");
        m3.k.e(bVar, "workTaskExecutor");
        m3.k.e(workDatabase, "workDatabase");
        m3.k.e(mVar, "trackers");
        m3.k.e(uVar, "processor");
        m3.k.e(tVar, "schedulersCreator");
        return new r0.p0(context.getApplicationContext(), aVar, bVar, workDatabase, tVar.h(context, aVar, bVar, workDatabase, mVar, uVar), uVar, mVar);
    }

    public static /* synthetic */ r0.p0 e(android.content.Context context, androidx.work.a aVar, c1.b bVar, androidx.work.impl.WorkDatabase workDatabase, x0.m mVar, r0.u uVar, l3.t tVar, int i5, java.lang.Object obj) {
        androidx.work.impl.WorkDatabase workDatabaseB;
        x0.m mVar2;
        c1.b cVar = (i5 & 4) != 0 ? new c1.c(aVar.m()) : bVar;
        if ((i5 & 8) != 0) {
            androidx.work.impl.WorkDatabase.a aVar2 = androidx.work.impl.WorkDatabase.f2648p;
            android.content.Context applicationContext = context.getApplicationContext();
            m3.k.d(applicationContext, "context.applicationContext");
            c1.a aVarC = cVar.c();
            m3.k.d(aVarC, "workTaskExecutor.serialTaskExecutor");
            workDatabaseB = aVar2.b(applicationContext, aVarC, aVar.a(), context.getResources().getBoolean(androidx.work.R.bool.workmanager_test_configuration));
        } else {
            workDatabaseB = workDatabase;
        }
        if ((i5 & 16) != 0) {
            android.content.Context applicationContext2 = context.getApplicationContext();
            m3.k.d(applicationContext2, "context.applicationContext");
            mVar2 = new x0.m(applicationContext2, cVar, null, null, null, null, 60, null);
        } else {
            mVar2 = mVar;
        }
        return d(context, aVar, cVar, workDatabaseB, mVar2, (i5 & 32) != 0 ? new r0.u(context.getApplicationContext(), aVar, cVar, workDatabaseB) : uVar, (i5 & 64) != 0 ? androidx.work.impl.a.C0023a.f2658o : tVar);
    }
}
