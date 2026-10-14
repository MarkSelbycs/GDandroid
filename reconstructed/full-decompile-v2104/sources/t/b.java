package t;

/* JADX INFO: compiled from: CalleeHandler.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b {
    public static android.os.Handler a() {
        return android.os.Looper.myLooper() == null ? new android.os.Handler(android.os.Looper.getMainLooper()) : new android.os.Handler();
    }
}
