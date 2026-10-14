package androidx.appcompat.widget;

/* JADX INFO: compiled from: TintContextWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a0 extends android.content.ContextWrapper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f905c = new java.lang.Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static java.util.ArrayList<java.lang.ref.WeakReference<androidx.appcompat.widget.a0>> f906d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.res.Resources f907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.res.Resources.Theme f908b;

    public a0(android.content.Context context) {
        super(context);
        if (!androidx.appcompat.widget.g0.b()) {
            this.f907a = new androidx.appcompat.widget.c0(this, context.getResources());
            this.f908b = null;
            return;
        }
        androidx.appcompat.widget.g0 g0Var = new androidx.appcompat.widget.g0(this, context.getResources());
        this.f907a = g0Var;
        android.content.res.Resources.Theme themeNewTheme = g0Var.newTheme();
        this.f908b = themeNewTheme;
        themeNewTheme.setTo(context.getTheme());
    }

    public static boolean a(android.content.Context context) {
        return ((context instanceof androidx.appcompat.widget.a0) || (context.getResources() instanceof androidx.appcompat.widget.c0) || (context.getResources() instanceof androidx.appcompat.widget.g0) || !androidx.appcompat.widget.g0.b()) ? false : true;
    }

    public static android.content.Context b(android.content.Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f905c) {
            java.util.ArrayList<java.lang.ref.WeakReference<androidx.appcompat.widget.a0>> arrayList = f906d;
            if (arrayList == null) {
                f906d = new java.util.ArrayList<>();
            } else {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    java.lang.ref.WeakReference<androidx.appcompat.widget.a0> weakReference = f906d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f906d.remove(size);
                    }
                }
                for (int size2 = f906d.size() - 1; size2 >= 0; size2--) {
                    java.lang.ref.WeakReference<androidx.appcompat.widget.a0> weakReference2 = f906d.get(size2);
                    androidx.appcompat.widget.a0 a0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (a0Var != null && a0Var.getBaseContext() == context) {
                        return a0Var;
                    }
                }
            }
            androidx.appcompat.widget.a0 a0Var2 = new androidx.appcompat.widget.a0(context);
            f906d.add(new java.lang.ref.WeakReference<>(a0Var2));
            return a0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.AssetManager getAssets() {
        return this.f907a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources getResources() {
        return this.f907a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources.Theme getTheme() {
        android.content.res.Resources.Theme theme = this.f908b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i5) {
        android.content.res.Resources.Theme theme = this.f908b;
        if (theme == null) {
            super.setTheme(i5);
        } else {
            theme.applyStyle(i5, true);
        }
    }
}
