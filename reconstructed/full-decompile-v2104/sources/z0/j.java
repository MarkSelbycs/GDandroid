package z0;

/* JADX INFO: compiled from: SystemIdInfoDao.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface j {

    /* JADX INFO: compiled from: SystemIdInfoDao.kt */
    public static final class a {
        @java.lang.Deprecated
        public static z0.i a(z0.j jVar, z0.m mVar) {
            m3.k.e(mVar, "id");
            return z0.j.super.i(mVar);
        }

        @java.lang.Deprecated
        public static void b(z0.j jVar, z0.m mVar) {
            m3.k.e(mVar, "id");
            z0.j.super.h(mVar);
        }
    }

    void b(java.lang.String str, int i5);

    void c(z0.i iVar);

    java.util.List<java.lang.String> e();

    void f(java.lang.String str);

    z0.i g(java.lang.String str, int i5);

    default void h(z0.m mVar) {
        m3.k.e(mVar, "id");
        b(mVar.b(), mVar.a());
    }

    default z0.i i(z0.m mVar) {
        m3.k.e(mVar, "id");
        return g(mVar.b(), mVar.a());
    }
}
