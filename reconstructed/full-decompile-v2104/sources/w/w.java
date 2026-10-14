package w;

/* JADX INFO: compiled from: ViewPropertyAnimatorCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.ref.WeakReference<android.view.View> f6685a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.Runnable f6686b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public java.lang.Runnable f6687c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f6688d = -1;

    /* JADX INFO: compiled from: ViewPropertyAnimatorCompat.java */
    public class a extends android.animation.AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ w.x f6689a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ android.view.View f6690b;

        public a(w.x xVar, android.view.View view) {
            this.f6689a = xVar;
            this.f6690b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            this.f6689a.c(this.f6690b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            this.f6689a.a(this.f6690b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
            this.f6689a.b(this.f6690b);
        }
    }

    /* JADX INFO: compiled from: ViewPropertyAnimatorCompat.java */
    public static class b {
        public static android.view.ViewPropertyAnimator a(android.view.ViewPropertyAnimator viewPropertyAnimator, android.animation.ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
            return viewPropertyAnimator.setUpdateListener(animatorUpdateListener);
        }
    }

    public w(android.view.View view) {
        this.f6685a = new java.lang.ref.WeakReference<>(view);
    }

    public w.w b(float f5) {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            view.animate().alpha(f5);
        }
        return this;
    }

    public void c() {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long d() {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public w.w f(long j5) {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            view.animate().setDuration(j5);
        }
        return this;
    }

    public w.w g(android.view.animation.Interpolator interpolator) {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public w.w h(w.x xVar) {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            i(view, xVar);
        }
        return this;
    }

    public final void i(android.view.View view, w.x xVar) {
        if (xVar != null) {
            view.animate().setListener(new w.w.a(xVar, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public w.w j(long j5) {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            view.animate().setStartDelay(j5);
        }
        return this;
    }

    public w.w k(final w.z zVar) {
        final android.view.View view = this.f6685a.get();
        if (view != null) {
            w.w.b.a(view.animate(), zVar != null ? new android.animation.ValueAnimator.AnimatorUpdateListener() { // from class: w.v
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
                    zVar.a(view);
                }
            } : null);
        }
        return this;
    }

    public void l() {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public w.w m(float f5) {
        android.view.View view = this.f6685a.get();
        if (view != null) {
            view.animate().translationY(f5);
        }
        return this;
    }
}
