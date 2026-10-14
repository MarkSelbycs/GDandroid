package v3;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface t<E> {

    /* JADX INFO: compiled from: Channel.kt */
    public static final class a {
        public static /* synthetic */ boolean a(v3.t tVar, java.lang.Throwable th, int i5, java.lang.Object obj) {
            if (obj != null) {
                throw new java.lang.UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i5 & 1) != 0) {
                th = null;
            }
            return tVar.g(th);
        }
    }

    boolean g(java.lang.Throwable th);

    java.lang.Object i(E e5);

    boolean l();

    void n(l3.l<? super java.lang.Throwable, a3.o> lVar);

    java.lang.Object o(E e5, d3.d<? super a3.o> dVar);
}
