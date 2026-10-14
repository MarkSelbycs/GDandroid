package androidx.appcompat.widget;

/* JADX INFO: compiled from: ForwardingListener.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class r implements android.view.View.OnTouchListener, android.view.View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f1026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final android.view.View f1029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.Runnable f1030e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.Runnable f1031f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1032g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1033h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f1034i = new int[2];

    /* JADX INFO: compiled from: ForwardingListener.java */
    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            android.view.ViewParent parent = androidx.appcompat.widget.r.this.f1029d.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: compiled from: ForwardingListener.java */
    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.r.this.e();
        }
    }

    public r(android.view.View view) {
        this.f1029d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1026a = android.view.ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = android.view.ViewConfiguration.getTapTimeout();
        this.f1027b = tapTimeout;
        this.f1028c = (tapTimeout + android.view.ViewConfiguration.getLongPressTimeout()) / 2;
    }

    public static boolean h(android.view.View view, float f5, float f6, float f7) {
        float f8 = -f7;
        return f5 >= f8 && f6 >= f8 && f5 < ((float) (view.getRight() - view.getLeft())) + f7 && f6 < ((float) (view.getBottom() - view.getTop())) + f7;
    }

    public final void a() {
        java.lang.Runnable runnable = this.f1031f;
        if (runnable != null) {
            this.f1029d.removeCallbacks(runnable);
        }
        java.lang.Runnable runnable2 = this.f1030e;
        if (runnable2 != null) {
            this.f1029d.removeCallbacks(runnable2);
        }
    }

    public abstract f.i b();

    public abstract boolean c();

    public boolean d() {
        f.i iVarB = b();
        if (iVarB == null || !iVarB.f()) {
            return true;
        }
        iVarB.dismiss();
        return true;
    }

    public void e() {
        a();
        android.view.View view = this.f1029d;
        if (view.isEnabled() && !view.isLongClickable() && c()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long jUptimeMillis = android.os.SystemClock.uptimeMillis();
            android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            this.f1032g = true;
        }
    }

    public final boolean f(android.view.MotionEvent motionEvent) {
        androidx.appcompat.widget.p pVar;
        android.view.View view = this.f1029d;
        f.i iVarB = b();
        if (iVarB == null || !iVarB.f() || (pVar = (androidx.appcompat.widget.p) iVarB.g()) == null || !pVar.isShown()) {
            return false;
        }
        android.view.MotionEvent motionEventObtainNoHistory = android.view.MotionEvent.obtainNoHistory(motionEvent);
        i(view, motionEventObtainNoHistory);
        j(pVar, motionEventObtainNoHistory);
        boolean zE = pVar.e(motionEventObtainNoHistory, this.f1033h);
        motionEventObtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return zE && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    public final boolean g(android.view.MotionEvent motionEvent) {
        android.view.View view = this.f1029d;
        if (!view.isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1033h = motionEvent.getPointerId(0);
            if (this.f1030e == null) {
                this.f1030e = new androidx.appcompat.widget.r.a();
            }
            view.postDelayed(this.f1030e, this.f1027b);
            if (this.f1031f == null) {
                this.f1031f = new androidx.appcompat.widget.r.b();
            }
            view.postDelayed(this.f1031f, this.f1028c);
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f1033h);
            if (iFindPointerIndex >= 0 && !h(view, motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), this.f1026a)) {
                a();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
        } else if (actionMasked == 3) {
            a();
        }
        return false;
    }

    public final boolean i(android.view.View view, android.view.MotionEvent motionEvent) {
        int[] iArr = this.f1034i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(iArr[0], iArr[1]);
        return true;
    }

    public final boolean j(android.view.View view, android.view.MotionEvent motionEvent) {
        int[] iArr = this.f1034i;
        view.getLocationOnScreen(iArr);
        motionEvent.offsetLocation(-iArr[0], -iArr[1]);
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(android.view.View view, android.view.MotionEvent motionEvent) {
        boolean z4;
        boolean z5 = this.f1032g;
        if (z5) {
            z4 = f(motionEvent) || !d();
        } else {
            z4 = g(motionEvent) && c();
            if (z4) {
                long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1029d.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f1032g = z4;
        return z4 || z5;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(android.view.View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(android.view.View view) {
        this.f1032g = false;
        this.f1033h = -1;
        java.lang.Runnable runnable = this.f1030e;
        if (runnable != null) {
            this.f1029d.removeCallbacks(runnable);
        }
    }
}
