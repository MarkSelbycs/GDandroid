package t3;

/* JADX INFO: compiled from: CancellableContinuation.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class m {
    public static final <T> t3.k<T> a(d3.d<? super T> dVar) {
        if (!(dVar instanceof y3.j)) {
            return new t3.k<>(dVar, 1);
        }
        t3.k<T> kVarJ = ((y3.j) dVar).j();
        if (kVarJ != null) {
            if (!kVarJ.H()) {
                kVarJ = null;
            }
            if (kVarJ != null) {
                return kVarJ;
            }
        }
        return new t3.k<>(dVar, 2);
    }
}
