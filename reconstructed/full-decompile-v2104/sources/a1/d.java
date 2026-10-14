package a1;

/* JADX INFO: compiled from: EnqueueUtils.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {
    public static final void a(androidx.work.impl.WorkDatabase workDatabase, androidx.work.a aVar, r0.c0 c0Var) {
        int i5;
        m3.k.e(workDatabase, "workDatabase");
        m3.k.e(aVar, "configuration");
        m3.k.e(c0Var, "continuation");
        java.util.List listH = b3.o.h(c0Var);
        int i6 = 0;
        while (!listH.isEmpty()) {
            r0.c0 c0Var2 = (r0.c0) b3.t.o(listH);
            java.util.List<? extends q0.b0> listF = c0Var2.f();
            m3.k.d(listF, "current.work");
            if ((listF instanceof java.util.Collection) && listF.isEmpty()) {
                i5 = 0;
            } else {
                java.util.Iterator<T> it = listF.iterator();
                i5 = 0;
                while (it.hasNext()) {
                    if (((q0.b0) it.next()).d().f7041j.e() && (i5 = i5 + 1) < 0) {
                        b3.o.j();
                    }
                }
            }
            i6 += i5;
            java.util.List<r0.c0> listE = c0Var2.e();
            if (listE != null) {
                listH.addAll(listE);
            }
        }
        if (i6 == 0) {
            return;
        }
        int iS = workDatabase.J().s();
        int iB = aVar.b();
        if (iS + i6 <= iB) {
            return;
        }
        throw new java.lang.IllegalArgumentException("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: " + iB + ";\nalready enqueued count: " + iS + ";\ncurrent enqueue operation count: " + i6 + ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed.");
    }

    public static final z0.u b(java.util.List<? extends r0.w> list, z0.u uVar) {
        m3.k.e(list, "schedulers");
        m3.k.e(uVar, "workSpec");
        return uVar;
    }
}
