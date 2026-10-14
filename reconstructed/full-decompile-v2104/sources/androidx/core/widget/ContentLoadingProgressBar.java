package androidx.core.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ContentLoadingProgressBar extends android.widget.ProgressBar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f1389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f1390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f1391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final java.lang.Runnable f1393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final java.lang.Runnable f1394f;

    public ContentLoadingProgressBar(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1389a = -1L;
        this.f1390b = false;
        this.f1391c = false;
        this.f1392d = false;
        this.f1393e = new java.lang.Runnable() { // from class: androidx.core.widget.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f1447a.c();
            }
        };
        this.f1394f = new java.lang.Runnable() { // from class: androidx.core.widget.e
            @Override // java.lang.Runnable
            public final void run() {
                this.f1448a.d();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        this.f1390b = false;
        this.f1389a = -1L;
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f1391c = false;
        if (this.f1392d) {
            return;
        }
        this.f1389a = java.lang.System.currentTimeMillis();
        setVisibility(0);
    }

    public final void e() {
        removeCallbacks(this.f1393e);
        removeCallbacks(this.f1394f);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        e();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
    }
}
