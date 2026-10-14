package e;

/* JADX INFO: compiled from: ActionBarPolicy.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public android.content.Context f3972a;

    public a(android.content.Context context) {
        this.f3972a = context;
    }

    public static e.a b(android.content.Context context) {
        return new e.a(context);
    }

    public boolean a() {
        return this.f3972a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int c() {
        return this.f3972a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int d() {
        android.content.res.Configuration configuration = this.f3972a.getResources().getConfiguration();
        int i5 = configuration.screenWidthDp;
        int i6 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i5 > 600) {
            return 5;
        }
        if (i5 > 960 && i6 > 720) {
            return 5;
        }
        if (i5 > 720 && i6 > 960) {
            return 5;
        }
        if (i5 >= 500) {
            return 4;
        }
        if (i5 > 640 && i6 > 480) {
            return 4;
        }
        if (i5 <= 480 || i6 <= 640) {
            return i5 >= 360 ? 3 : 2;
        }
        return 4;
    }

    public int e() {
        return this.f3972a.getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_action_bar_stacked_tab_max_width);
    }

    public int f() {
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.f3972a.obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        int layoutDimension = typedArrayObtainStyledAttributes.getLayoutDimension(androidx.appcompat.R.styleable.ActionBar_height, 0);
        android.content.res.Resources resources = this.f3972a.getResources();
        if (!g()) {
            layoutDimension = java.lang.Math.min(layoutDimension, resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_action_bar_stacked_max_height));
        }
        typedArrayObtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean g() {
        return this.f3972a.getResources().getBoolean(androidx.appcompat.R.bool.abc_action_bar_embed_tabs);
    }

    public boolean h() {
        return true;
    }
}
