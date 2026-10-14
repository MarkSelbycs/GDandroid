package q0;

/* JADX INFO: compiled from: WorkerFactory.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f5663a = q0.n.i("WorkerFactory");

    /* JADX INFO: compiled from: WorkerFactory.java */
    public class a extends q0.c0 {
        @Override // q0.c0
        public androidx.work.c a(android.content.Context context, java.lang.String str, androidx.work.WorkerParameters workerParameters) {
            return null;
        }
    }

    public static q0.c0 c() {
        return new q0.c0.a();
    }

    public abstract androidx.work.c a(android.content.Context context, java.lang.String str, androidx.work.WorkerParameters workerParameters);

    public final androidx.work.c b(android.content.Context context, java.lang.String str, androidx.work.WorkerParameters workerParameters) {
        androidx.work.c cVarA = a(context, str, workerParameters);
        if (cVarA == null) {
            java.lang.Class clsAsSubclass = null;
            try {
                clsAsSubclass = java.lang.Class.forName(str).asSubclass(androidx.work.c.class);
            } catch (java.lang.Throwable th) {
                q0.n.e().d(f5663a, "Invalid class: " + str, th);
            }
            if (clsAsSubclass != null) {
                try {
                    cVarA = (androidx.work.c) clsAsSubclass.getDeclaredConstructor(android.content.Context.class, androidx.work.WorkerParameters.class).newInstance(context, workerParameters);
                } catch (java.lang.Throwable th2) {
                    q0.n.e().d(f5663a, "Could not instantiate " + str, th2);
                }
            }
        }
        if (cVarA == null || !cVarA.isUsed()) {
            return cVarA;
        }
        throw new java.lang.IllegalStateException("WorkerFactory (" + getClass().getName() + ") returned an instance of a ListenableWorker (" + str + ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker.");
    }
}
