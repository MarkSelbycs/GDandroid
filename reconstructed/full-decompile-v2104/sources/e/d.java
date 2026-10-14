package e;

/* JADX INFO: compiled from: ContextThemeWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends android.content.ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.content.res.Resources.Theme f3976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.view.LayoutInflater f3977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.content.res.Configuration f3978d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.content.res.Resources f3979e;

    public d() {
        super(null);
    }

    public final android.content.res.Resources a() {
        if (this.f3979e == null) {
            android.content.res.Configuration configuration = this.f3978d;
            if (configuration == null) {
                this.f3979e = super.getResources();
            } else {
                this.f3979e = createConfigurationContext(configuration).getResources();
            }
        }
        return this.f3979e;
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(android.content.Context context) {
        super.attachBaseContext(context);
    }

    public int b() {
        return this.f3975a;
    }

    public final void c() {
        boolean z4 = this.f3976b == null;
        if (z4) {
            this.f3976b = getResources().newTheme();
            android.content.res.Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f3976b.setTo(theme);
            }
        }
        d(this.f3976b, this.f3975a, z4);
    }

    public void d(android.content.res.Resources.Theme theme, int i5, boolean z4) {
        theme.applyStyle(i5, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources getResources() {
        return a();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public java.lang.Object getSystemService(java.lang.String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f3977c == null) {
            this.f3977c = android.view.LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f3977c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources.Theme getTheme() {
        android.content.res.Resources.Theme theme = this.f3976b;
        if (theme != null) {
            return theme;
        }
        if (this.f3975a == 0) {
            this.f3975a = androidx.appcompat.R.style.Theme_AppCompat_Light;
        }
        c();
        return this.f3976b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i5) {
        if (this.f3975a != i5) {
            this.f3975a = i5;
            c();
        }
    }

    public d(android.content.Context context, int i5) {
        super(context);
        this.f3975a = i5;
    }

    public d(android.content.Context context, android.content.res.Resources.Theme theme) {
        super(context);
        this.f3976b = theme;
    }
}
