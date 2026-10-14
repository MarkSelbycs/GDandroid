package androidx.appcompat.app;

/* JADX INFO: compiled from: AppCompatDialog.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends android.app.Dialog implements androidx.appcompat.app.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.app.d f325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w.e.a f326b;

    /* JADX INFO: compiled from: AppCompatDialog.java */
    public class a implements w.e.a {
        public a() {
        }

        @Override // w.e.a
        public boolean superDispatchKeyEvent(android.view.KeyEvent keyEvent) {
            return androidx.appcompat.app.e.this.c(keyEvent);
        }
    }

    public e(android.content.Context context, int i5) {
        super(context, b(context, i5));
        this.f326b = new androidx.appcompat.app.e.a();
        a().o(null);
        a().d();
    }

    public static int b(android.content.Context context, int i5) {
        if (i5 != 0) {
            return i5;
        }
        android.util.TypedValue typedValue = new android.util.TypedValue();
        context.getTheme().resolveAttribute(androidx.appcompat.R.attr.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public androidx.appcompat.app.d a() {
        if (this.f325a == null) {
            this.f325a = androidx.appcompat.app.d.f(this, this);
        }
        return this.f325a;
    }

    @Override // android.app.Dialog
    public void addContentView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        a().c(view, layoutParams);
    }

    public boolean c(android.view.KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean d(int i5) {
        return a().v(i5);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        return w.e.b(this.f326b, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    public <T extends android.view.View> T findViewById(int i5) {
        return (T) a().g(i5);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        a().m();
    }

    @Override // android.app.Dialog
    public void onCreate(android.os.Bundle bundle) {
        a().l();
        super.onCreate(bundle);
        a().o(bundle);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        a().u();
    }

    @Override // androidx.appcompat.app.c
    public void onSupportActionModeFinished(e.b bVar) {
    }

    @Override // androidx.appcompat.app.c
    public void onSupportActionModeStarted(e.b bVar) {
    }

    @Override // androidx.appcompat.app.c
    public e.b onWindowStartingSupportActionMode(e.b.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void setContentView(int i5) {
        a().w(i5);
    }

    @Override // android.app.Dialog
    public void setTitle(java.lang.CharSequence charSequence) {
        super.setTitle(charSequence);
        a().A(charSequence);
    }

    @Override // android.app.Dialog
    public void setContentView(android.view.View view) {
        a().x(view);
    }

    @Override // android.app.Dialog
    public void setContentView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        a().y(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i5) {
        super.setTitle(i5);
        a().A(getContext().getString(i5));
    }
}
