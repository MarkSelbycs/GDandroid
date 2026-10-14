package y3;

/* JADX INFO: compiled from: ConcurrentLinkedList.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final y3.h0 f6888a = new y3.h0("CLOSED");

    public static final <N extends y3.e<N>> N b(N n5) {
        while (true) {
            java.lang.Object objF = n5.f();
            if (objF == f6888a) {
                return n5;
            }
            y3.e eVar = (y3.e) objF;
            if (eVar != null) {
                n5 = (N) eVar;
            } else if (n5.j()) {
                return n5;
            }
        }
    }

    public static final <S extends y3.e0<S>> java.lang.Object c(S s5, long j5, l3.p<? super java.lang.Long, ? super S, ? extends S> pVar) {
        while (true) {
            if (s5.f6893c >= j5 && !s5.h()) {
                return y3.f0.a(s5);
            }
            java.lang.Object objF = s5.f();
            if (objF == f6888a) {
                return y3.f0.a(f6888a);
            }
            S sU = (S) ((y3.e) objF);
            if (sU == null) {
                sU = pVar.u(java.lang.Long.valueOf(s5.f6893c + 1), s5);
                if (s5.l(sU)) {
                    if (s5.h()) {
                        s5.k();
                    }
                }
            }
            s5 = (java.lang.Object) sU;
        }
    }
}
