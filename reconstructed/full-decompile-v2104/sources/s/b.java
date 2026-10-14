package s;

/* JADX INFO: compiled from: HandlerCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class b {

    /* JADX INFO: compiled from: HandlerCompat.java */
    public static class a {
        public static android.os.Handler a(android.os.Looper looper) {
            return android.os.Handler.createAsync(looper);
        }
    }

    public static android.os.Handler a(android.os.Looper looper) {
        return s.b.a.a(looper);
    }
}
