package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatHintHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {
    public static android.view.inputmethod.InputConnection a(android.view.inputmethod.InputConnection inputConnection, android.view.inputmethod.EditorInfo editorInfo, android.view.View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            for (android.view.ViewParent parent = view.getParent(); parent instanceof android.view.View; parent = parent.getParent()) {
                if (parent instanceof androidx.appcompat.widget.i0) {
                    editorInfo.hintText = ((androidx.appcompat.widget.i0) parent).a();
                    break;
                }
            }
        }
        return inputConnection;
    }
}
