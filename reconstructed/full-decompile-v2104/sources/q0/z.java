package q0;

/* JADX INFO: compiled from: WorkManager.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@android.annotation.SuppressLint({"AddedAbstractMethod"})
public abstract class z {

    /* JADX INFO: compiled from: WorkManager.java */
    public enum a {
        NOT_APPLIED,
        APPLIED_IMMEDIATELY,
        APPLIED_FOR_NEXT_RUN
    }

    public static q0.z e(android.content.Context context) {
        return r0.p0.o(context);
    }

    public static void f(android.content.Context context, androidx.work.a aVar) {
        r0.p0.f(context, aVar);
    }

    public static boolean g() {
        return r0.p0.g();
    }

    public abstract q0.r a(java.lang.String str);

    public abstract q0.r b(java.util.List<? extends q0.b0> list);

    public final q0.r c(q0.b0 b0Var) {
        return b(java.util.Collections.singletonList(b0Var));
    }

    public abstract q0.r d(java.lang.String str, q0.f fVar, q0.t tVar);
}
