package androidx.work;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class WorkManagerInitializer implements i0.a<q0.z> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.String f2589a = q0.n.i("WrkMgrInitializer");

    @Override // i0.a
    public java.util.List<java.lang.Class<? extends i0.a<?>>> a() {
        return java.util.Collections.emptyList();
    }

    @Override // i0.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public q0.z b(android.content.Context context) {
        q0.n.e().a(f2589a, "Initializing WorkManager with default configuration.");
        q0.z.f(context, new androidx.work.a.C0020a().a());
        return q0.z.e(context);
    }
}
