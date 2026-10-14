package androidx.work.multiprocess;

/* JADX INFO: compiled from: RemoteWorkManager.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class j {
    public static androidx.work.multiprocess.j a(android.content.Context context) {
        androidx.work.multiprocess.j jVarR = r0.p0.o(context).r();
        if (jVarR != null) {
            return jVarR;
        }
        throw new java.lang.IllegalStateException("Unable to initialize RemoteWorkManager");
    }

    public abstract r2.a<java.lang.Void> b(java.lang.String str, q0.h hVar);

    public abstract r2.a<java.lang.Void> c(java.util.UUID uuid, androidx.work.b bVar);
}
