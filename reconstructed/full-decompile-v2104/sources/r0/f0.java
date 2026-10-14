package r0;

/* JADX INFO: compiled from: WorkDatabasePathHelper.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r0.f0 f5850a = new r0.f0();

    public static final void d(android.content.Context context) {
        m3.k.e(context, "context");
        r0.f0 f0Var = f5850a;
        if (f0Var.b(context).exists()) {
            q0.n.e().a(r0.g0.f5852a, "Migrating WorkDatabase to the no-backup directory");
            for (java.util.Map.Entry<java.io.File, java.io.File> entry : f0Var.e(context).entrySet()) {
                java.io.File key = entry.getKey();
                java.io.File value = entry.getValue();
                if (key.exists()) {
                    if (value.exists()) {
                        q0.n.e().k(r0.g0.f5852a, "Over-writing contents of " + value);
                    }
                    q0.n.e().a(r0.g0.f5852a, key.renameTo(value) ? "Migrated " + key + "to " + value : "Renaming " + key + " to " + value + " failed");
                }
            }
        }
    }

    public final java.io.File a(android.content.Context context) {
        m3.k.e(context, "context");
        return c(context);
    }

    public final java.io.File b(android.content.Context context) {
        m3.k.e(context, "context");
        java.io.File databasePath = context.getDatabasePath("androidx.work.workdb");
        m3.k.d(databasePath, "context.getDatabasePath(WORK_DATABASE_NAME)");
        return databasePath;
    }

    public final java.io.File c(android.content.Context context) {
        return new java.io.File(r0.a.f5832a.a(context), "androidx.work.workdb");
    }

    public final java.util.Map<java.io.File, java.io.File> e(android.content.Context context) {
        m3.k.e(context, "context");
        java.io.File fileB = b(context);
        java.io.File fileA = a(context);
        java.lang.String[] strArr = r0.g0.f5853b;
        java.util.LinkedHashMap linkedHashMap = new java.util.LinkedHashMap(p3.m.a(b3.g0.d(strArr.length), 16));
        for (java.lang.String str : strArr) {
            a3.h hVarA = a3.l.a(new java.io.File(fileB.getPath() + str), new java.io.File(fileA.getPath() + str));
            linkedHashMap.put(hVarA.e(), hVarA.f());
        }
        return b3.h0.j(linkedHashMap, a3.l.a(fileB, fileA));
    }
}
