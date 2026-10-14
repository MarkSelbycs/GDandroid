package w;

/* JADX INFO: compiled from: MotionEventCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i {
    public static boolean a(android.view.MotionEvent motionEvent, int i5) {
        return (motionEvent.getSource() & i5) == i5;
    }
}
