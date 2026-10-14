package u2;

/* JADX INFO: compiled from: $Gson$Preconditions.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a {
    public static void a(boolean z4) {
        if (!z4) {
            throw new java.lang.IllegalArgumentException();
        }
    }

    public static <T> T b(T t5) {
        java.util.Objects.requireNonNull(t5);
        return t5;
    }
}
