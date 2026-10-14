package f2;

/* JADX INFO: compiled from: JSONGetter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface i<K> extends s1.b {
    default f2.l f(K k5) {
        java.lang.Object objB = b(k5);
        if (f2.p.c(objB)) {
            return null;
        }
        return objB instanceof f2.b ? (f2.l) objB : new f2.l(objB, h());
    }

    f2.f h();
}
