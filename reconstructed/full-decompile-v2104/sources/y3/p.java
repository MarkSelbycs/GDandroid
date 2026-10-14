package y3;

/* JADX INFO: compiled from: LimitedDispatcher.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class p {
    public static final void a(int i5) {
        if (i5 >= 1) {
            return;
        }
        throw new java.lang.IllegalArgumentException(("Expected positive parallelism level, but got " + i5).toString());
    }
}
