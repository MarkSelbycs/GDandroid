package v3;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g {
    public static final <E> v3.d<E> a(int i5, v3.a aVar, l3.l<? super E, a3.o> lVar) {
        v3.d<E> bVar;
        if (i5 != -2) {
            if (i5 == -1) {
                if (aVar == v3.a.SUSPEND) {
                    return new v3.n(1, v3.a.DROP_OLDEST, lVar);
                }
                throw new java.lang.IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
            }
            if (i5 != 0) {
                if (i5 != Integer.MAX_VALUE) {
                    return aVar == v3.a.SUSPEND ? new v3.b(i5, lVar) : new v3.n(i5, aVar, lVar);
                }
                return new v3.b(Integer.MAX_VALUE, lVar);
            }
            bVar = aVar == v3.a.SUSPEND ? new v3.b<>(0, lVar) : new v3.n<>(1, aVar, lVar);
        } else {
            bVar = aVar == v3.a.SUSPEND ? new v3.b<>(v3.d.f6599n.a(), lVar) : new v3.n<>(1, aVar, lVar);
        }
        return bVar;
    }

    public static /* synthetic */ v3.d b(int i5, v3.a aVar, l3.l lVar, int i6, java.lang.Object obj) {
        if ((i6 & 1) != 0) {
            i5 = 0;
        }
        if ((i6 & 2) != 0) {
            aVar = v3.a.SUSPEND;
        }
        if ((i6 & 4) != 0) {
            lVar = null;
        }
        return a(i5, aVar, lVar);
    }
}
