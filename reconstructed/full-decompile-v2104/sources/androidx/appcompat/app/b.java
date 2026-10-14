package androidx.appcompat.app;

/* JADX INFO: compiled from: AlertDialog.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends androidx.appcompat.app.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final androidx.appcompat.app.AlertController f321c;

    /* JADX INFO: compiled from: AlertDialog.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final androidx.appcompat.app.AlertController.b f322a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f323b;

        public a(android.content.Context context) {
            this(context, androidx.appcompat.app.b.e(context, 0));
        }

        public androidx.appcompat.app.b a() {
            androidx.appcompat.app.b bVar = new androidx.appcompat.app.b(this.f322a.f208a, this.f323b);
            this.f322a.a(bVar.f321c);
            bVar.setCancelable(this.f322a.f225r);
            if (this.f322a.f225r) {
                bVar.setCanceledOnTouchOutside(true);
            }
            bVar.setOnCancelListener(this.f322a.f226s);
            bVar.setOnDismissListener(this.f322a.f227t);
            android.content.DialogInterface.OnKeyListener onKeyListener = this.f322a.f228u;
            if (onKeyListener != null) {
                bVar.setOnKeyListener(onKeyListener);
            }
            return bVar;
        }

        public android.content.Context b() {
            return this.f322a.f208a;
        }

        public androidx.appcompat.app.b.a c(android.widget.ListAdapter listAdapter, android.content.DialogInterface.OnClickListener onClickListener) {
            androidx.appcompat.app.AlertController.b bVar = this.f322a;
            bVar.f230w = listAdapter;
            bVar.f231x = onClickListener;
            return this;
        }

        public androidx.appcompat.app.b.a d(android.view.View view) {
            this.f322a.f214g = view;
            return this;
        }

        public androidx.appcompat.app.b.a e(android.graphics.drawable.Drawable drawable) {
            this.f322a.f211d = drawable;
            return this;
        }

        public androidx.appcompat.app.b.a f(android.content.DialogInterface.OnKeyListener onKeyListener) {
            this.f322a.f228u = onKeyListener;
            return this;
        }

        public androidx.appcompat.app.b.a g(java.lang.CharSequence charSequence) {
            this.f322a.f213f = charSequence;
            return this;
        }

        public a(android.content.Context context, int i5) {
            this.f322a = new androidx.appcompat.app.AlertController.b(new android.view.ContextThemeWrapper(context, androidx.appcompat.app.b.e(context, i5)));
            this.f323b = i5;
        }
    }

    public b(android.content.Context context, int i5) {
        super(context, e(context, i5));
        this.f321c = new androidx.appcompat.app.AlertController(getContext(), this, getWindow());
    }

    public static int e(android.content.Context context, int i5) {
        if (((i5 >>> 24) & 255) >= 1) {
            return i5;
        }
        android.util.TypedValue typedValue = new android.util.TypedValue();
        context.getTheme().resolveAttribute(androidx.appcompat.R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // androidx.appcompat.app.e, android.app.Dialog
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        this.f321c.d();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i5, android.view.KeyEvent keyEvent) {
        if (this.f321c.e(i5, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i5, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i5, android.view.KeyEvent keyEvent) {
        if (this.f321c.f(i5, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i5, keyEvent);
    }

    @Override // androidx.appcompat.app.e, android.app.Dialog
    public void setTitle(java.lang.CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f321c.o(charSequence);
    }
}
