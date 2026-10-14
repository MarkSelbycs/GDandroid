package y3;

/* JADX INFO: compiled from: ConcurrentLinkedList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f0<S extends y3.e0<S>> {
    public static <S extends y3.e0<S>> java.lang.Object a(java.lang.Object obj) {
        return obj;
    }

    public static final S b(java.lang.Object obj) {
        if (obj == y3.d.f6888a) {
            throw new java.lang.IllegalStateException("Does not contain segment".toString());
        }
        m3.k.c(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (S) obj;
    }

    public static final boolean c(java.lang.Object obj) {
        return obj == y3.d.f6888a;
    }
}
