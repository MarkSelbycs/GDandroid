package a1;

/* JADX INFO: compiled from: IdGenerator.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.work.impl.WorkDatabase f28a;

    public g(androidx.work.impl.WorkDatabase workDatabase) {
        m3.k.e(workDatabase, "workDatabase");
        this.f28a = workDatabase;
    }

    public static final java.lang.Integer d(a1.g gVar) {
        m3.k.e(gVar, "this$0");
        return java.lang.Integer.valueOf(a1.h.d(gVar.f28a, "next_alarm_manager_id"));
    }

    public static final java.lang.Integer f(a1.g gVar, int i5, int i6) {
        m3.k.e(gVar, "this$0");
        int iD = a1.h.d(gVar.f28a, "next_job_scheduler_id");
        boolean z4 = false;
        if (i5 <= iD && iD <= i6) {
            z4 = true;
        }
        if (z4) {
            i5 = iD;
        } else {
            a1.h.e(gVar.f28a, "next_job_scheduler_id", i5 + 1);
        }
        return java.lang.Integer.valueOf(i5);
    }

    public final int c() {
        java.lang.Object objZ = this.f28a.z(new java.util.concurrent.Callable() { // from class: a1.e
            @Override // java.util.concurrent.Callable
            public final java.lang.Object call() {
                return a1.g.d(this.f24a);
            }
        });
        m3.k.d(objZ, "workDatabase.runInTransa…ANAGER_ID_KEY)\n        })");
        return ((java.lang.Number) objZ).intValue();
    }

    public final int e(final int i5, final int i6) {
        java.lang.Object objZ = this.f28a.z(new java.util.concurrent.Callable() { // from class: a1.f
            @Override // java.util.concurrent.Callable
            public final java.lang.Object call() {
                return a1.g.f(this.f25a, i5, i6);
            }
        });
        m3.k.d(objZ, "workDatabase.runInTransa…            id\n        })");
        return ((java.lang.Number) objZ).intValue();
    }
}
