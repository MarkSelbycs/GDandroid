package androidx.fragment.app;

/* JADX INFO: compiled from: OneShotPreDrawListener.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l implements android.view.ViewTreeObserver.OnPreDrawListener, android.view.View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.View f1739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.view.ViewTreeObserver f1740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.lang.Runnable f1741c;

    public l(android.view.View view, java.lang.Runnable runnable) {
        this.f1739a = view;
        this.f1740b = view.getViewTreeObserver();
        this.f1741c = runnable;
    }

    public static androidx.fragment.app.l a(android.view.View view, java.lang.Runnable runnable) {
        androidx.fragment.app.l lVar = new androidx.fragment.app.l(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(lVar);
        view.addOnAttachStateChangeListener(lVar);
        return lVar;
    }

    public void b() {
        if (this.f1740b.isAlive()) {
            this.f1740b.removeOnPreDrawListener(this);
        } else {
            this.f1739a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f1739a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.f1741c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(android.view.View view) {
        this.f1740b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(android.view.View view) {
        b();
    }
}
