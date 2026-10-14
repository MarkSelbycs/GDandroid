package r0;

/* JADX INFO: compiled from: WorkDatabasePathHelper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r0.a f5832a = new r0.a();

    public final java.io.File a(android.content.Context context) {
        m3.k.e(context, "context");
        java.io.File noBackupFilesDir = context.getNoBackupFilesDir();
        m3.k.d(noBackupFilesDir, "context.noBackupFilesDir");
        return noBackupFilesDir;
    }
}
