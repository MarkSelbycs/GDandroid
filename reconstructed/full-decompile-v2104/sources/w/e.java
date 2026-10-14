package w;

/* JADX INFO: compiled from: KeyEventDispatcher.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e {

    /* JADX INFO: compiled from: KeyEventDispatcher.java */
    public interface a {
        boolean superDispatchKeyEvent(android.view.KeyEvent keyEvent);
    }

    public static boolean a(android.view.View view, android.view.KeyEvent keyEvent) {
        return w.q.d(view, keyEvent);
    }

    @android.annotation.SuppressLint({"LambdaLast"})
    public static boolean b(w.e.a aVar, android.view.View view, android.view.Window.Callback callback, android.view.KeyEvent keyEvent) {
        if (aVar == null) {
            return false;
        }
        return aVar.superDispatchKeyEvent(keyEvent);
    }
}
