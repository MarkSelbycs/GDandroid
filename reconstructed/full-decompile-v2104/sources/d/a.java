package d;

/* JADX INFO: compiled from: AllCapsTransformationMethod.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a implements android.text.method.TransformationMethod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.Locale f3938a;

    public a(android.content.Context context) {
        this.f3938a = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public java.lang.CharSequence getTransformation(java.lang.CharSequence charSequence, android.view.View view) {
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.f3938a);
        }
        return null;
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(android.view.View view, java.lang.CharSequence charSequence, boolean z4, int i5, android.graphics.Rect rect) {
    }
}
