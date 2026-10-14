package z;

/* JADX INFO: compiled from: ViewDragHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final android.view.animation.Interpolator f6957w = new z.a.InterpolatorC0109a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6959b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float[] f6961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f6962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f6963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f6964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f6965h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f6966i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f6967j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6968k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public android.view.VelocityTracker f6969l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f6970m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f6971n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f6972o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f6973p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.widget.OverScroller f6974q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final z.a.c f6975r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public android.view.View f6976s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f6977t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final android.view.ViewGroup f6978u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6960c = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final java.lang.Runnable f6979v = new z.a.b();

    /* JADX INFO: renamed from: z.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ViewDragHelper.java */
    public static class InterpolatorC0109a implements android.view.animation.Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f5) {
            float f6 = f5 - 1.0f;
            return (f6 * f6 * f6 * f6 * f6) + 1.0f;
        }
    }

    /* JADX INFO: compiled from: ViewDragHelper.java */
    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.a.this.K(0);
        }
    }

    /* JADX INFO: compiled from: ViewDragHelper.java */
    public static abstract class c {
        public abstract int a(android.view.View view, int i5, int i6);

        public abstract int b(android.view.View view, int i5, int i6);

        public int c(int i5) {
            return i5;
        }

        public abstract int d(android.view.View view);

        public int e(android.view.View view) {
            return 0;
        }

        public abstract void f(int i5, int i6);

        public boolean g(int i5) {
            return false;
        }

        public void h(int i5, int i6) {
        }

        public abstract void i(android.view.View view, int i5);

        public abstract void j(int i5);

        public abstract void k(android.view.View view, int i5, int i6, int i7, int i8);

        public abstract void l(android.view.View view, float f5, float f6);

        public abstract boolean m(android.view.View view, int i5);
    }

    public a(android.content.Context context, android.view.ViewGroup viewGroup, z.a.c cVar) {
        if (viewGroup == null) {
            throw new java.lang.IllegalArgumentException("Parent view may not be null");
        }
        if (cVar == null) {
            throw new java.lang.IllegalArgumentException("Callback may not be null");
        }
        this.f6978u = viewGroup;
        this.f6975r = cVar;
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(context);
        this.f6972o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f6959b = viewConfiguration.getScaledTouchSlop();
        this.f6970m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f6971n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f6974q = new android.widget.OverScroller(context, f6957w);
    }

    public static z.a o(android.view.ViewGroup viewGroup, float f5, z.a.c cVar) {
        z.a aVarP = p(viewGroup, cVar);
        aVarP.f6959b = (int) (aVarP.f6959b * (1.0f / f5));
        return aVarP;
    }

    public static z.a p(android.view.ViewGroup viewGroup, z.a.c cVar) {
        return new z.a(viewGroup.getContext(), viewGroup, cVar);
    }

    public int A() {
        return this.f6958a;
    }

    public boolean B(int i5, int i6) {
        return E(this.f6976s, i5, i6);
    }

    public boolean C(int i5) {
        return ((1 << i5) & this.f6968k) != 0;
    }

    public final boolean D(int i5) {
        if (C(i5)) {
            return true;
        }
        android.util.Log.e("ViewDragHelper", "Ignoring pointerId=" + i5 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public boolean E(android.view.View view, int i5, int i6) {
        return view != null && i5 >= view.getLeft() && i5 < view.getRight() && i6 >= view.getTop() && i6 < view.getBottom();
    }

    public void F(android.view.MotionEvent motionEvent) {
        int i5;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
        }
        if (this.f6969l == null) {
            this.f6969l = android.view.VelocityTracker.obtain();
        }
        this.f6969l.addMovement(motionEvent);
        int i6 = 0;
        if (actionMasked == 0) {
            float x4 = motionEvent.getX();
            float y4 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            android.view.View viewU = u((int) x4, (int) y4);
            I(x4, y4, pointerId);
            Q(viewU, pointerId);
            int i7 = this.f6965h[pointerId];
            int i8 = this.f6973p;
            if ((i7 & i8) != 0) {
                this.f6975r.h(i7 & i8, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f6958a == 1) {
                G();
            }
            b();
            return;
        }
        if (actionMasked == 2) {
            if (this.f6958a == 1) {
                if (D(this.f6960c)) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f6960c);
                    float x5 = motionEvent.getX(iFindPointerIndex);
                    float y5 = motionEvent.getY(iFindPointerIndex);
                    float[] fArr = this.f6963f;
                    int i9 = this.f6960c;
                    int i10 = (int) (x5 - fArr[i9]);
                    int i11 = (int) (y5 - this.f6964g[i9]);
                    s(this.f6976s.getLeft() + i10, this.f6976s.getTop() + i11, i10, i11);
                    J(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i6 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i6);
                if (D(pointerId2)) {
                    float x6 = motionEvent.getX(i6);
                    float y6 = motionEvent.getY(i6);
                    float f5 = x6 - this.f6961d[pointerId2];
                    float f6 = y6 - this.f6962e[pointerId2];
                    H(f5, f6, pointerId2);
                    if (this.f6958a != 1) {
                        android.view.View viewU2 = u((int) x6, (int) y6);
                        if (g(viewU2, f5, f6) && Q(viewU2, pointerId2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i6++;
            }
            J(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f6958a == 1) {
                q(0.0f, 0.0f);
            }
            b();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x7 = motionEvent.getX(actionIndex);
            float y7 = motionEvent.getY(actionIndex);
            I(x7, y7, pointerId3);
            if (this.f6958a != 0) {
                if (B((int) x7, (int) y7)) {
                    Q(this.f6976s, pointerId3);
                    return;
                }
                return;
            } else {
                Q(u((int) x7, (int) y7), pointerId3);
                int i12 = this.f6965h[pointerId3];
                int i13 = this.f6973p;
                if ((i12 & i13) != 0) {
                    this.f6975r.h(i12 & i13, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f6958a == 1 && pointerId4 == this.f6960c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i6 >= pointerCount2) {
                    i5 = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i6);
                if (pointerId5 != this.f6960c) {
                    android.view.View viewU3 = u((int) motionEvent.getX(i6), (int) motionEvent.getY(i6));
                    android.view.View view = this.f6976s;
                    if (viewU3 == view && Q(view, pointerId5)) {
                        i5 = this.f6960c;
                        break;
                    }
                }
                i6++;
            }
            if (i5 == -1) {
                G();
            }
        }
        k(pointerId4);
    }

    public final void G() {
        this.f6969l.computeCurrentVelocity(com.cndatacom.sdk.portal.receiver.PortalSdkReceiver.ACTION_CODE_INTERFACE_INFO, this.f6970m);
        q(h(this.f6969l.getXVelocity(this.f6960c), this.f6971n, this.f6970m), h(this.f6969l.getYVelocity(this.f6960c), this.f6971n, this.f6970m));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3, types: [z.a$c] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void H(float f5, float f6, int i5) {
        int i6;
        boolean zD = d(f5, f6, i5, 1);
        ?? r5 = zD;
        if (d(f6, f5, i5, 4)) {
            r5 = (zD ? 1 : 0) | 4;
        }
        ?? r6 = r5;
        if (d(f5, f6, i5, 2)) {
            r6 = (r5 == true ? 1 : 0) | 2;
        }
        ?? r7 = r6;
        if (d(f6, f5, i5, 8)) {
            i6 = (r6 == true ? 1 : 0) | 8;
        }
        if (r7 == 0) {
            r7 = i6;
            return;
        }
        r7 = i6;
        int[] iArr = this.f6966i;
        iArr[i5] = (iArr[i5] | r7) == true ? 1 : 0;
        this.f6975r.f(r7, i5);
    }

    public final void I(float f5, float f6, int i5) {
        t(i5);
        float[] fArr = this.f6961d;
        this.f6963f[i5] = f5;
        fArr[i5] = f5;
        float[] fArr2 = this.f6962e;
        this.f6964g[i5] = f6;
        fArr2[i5] = f6;
        this.f6965h[i5] = y((int) f5, (int) f6);
        this.f6968k |= 1 << i5;
    }

    public final void J(android.view.MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i5 = 0; i5 < pointerCount; i5++) {
            int pointerId = motionEvent.getPointerId(i5);
            if (D(pointerId)) {
                float x4 = motionEvent.getX(i5);
                float y4 = motionEvent.getY(i5);
                this.f6963f[pointerId] = x4;
                this.f6964g[pointerId] = y4;
            }
        }
    }

    public void K(int i5) {
        this.f6978u.removeCallbacks(this.f6979v);
        if (this.f6958a != i5) {
            this.f6958a = i5;
            this.f6975r.j(i5);
            if (this.f6958a == 0) {
                this.f6976s = null;
            }
        }
    }

    public void L(int i5) {
        this.f6973p = i5;
    }

    public void M(float f5) {
        this.f6971n = f5;
    }

    public boolean N(int i5, int i6) {
        if (this.f6977t) {
            return v(i5, i6, (int) this.f6969l.getXVelocity(this.f6960c), (int) this.f6969l.getYVelocity(this.f6960c));
        }
        throw new java.lang.IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ff  */
    public boolean O(android.view.MotionEvent motionEvent) {
        boolean z4;
        android.view.View viewU;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            b();
        }
        if (this.f6969l == null) {
            this.f6969l = android.view.VelocityTracker.obtain();
        }
        this.f6969l.addMovement(motionEvent);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                b();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    b();
                } else if (actionMasked == 5) {
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    float x4 = motionEvent.getX(actionIndex);
                    float y4 = motionEvent.getY(actionIndex);
                    I(x4, y4, pointerId);
                    int i5 = this.f6958a;
                    if (i5 == 0) {
                        int i6 = this.f6965h[pointerId];
                        int i7 = this.f6973p;
                        if ((i6 & i7) != 0) {
                            this.f6975r.h(i6 & i7, pointerId);
                        }
                    } else if (i5 == 2 && (viewU = u((int) x4, (int) y4)) == this.f6976s) {
                        Q(viewU, pointerId);
                    }
                } else if (actionMasked == 6) {
                    k(motionEvent.getPointerId(actionIndex));
                }
            } else if (this.f6961d != null && this.f6962e != null) {
                int pointerCount = motionEvent.getPointerCount();
                for (int i8 = 0; i8 < pointerCount; i8++) {
                    int pointerId2 = motionEvent.getPointerId(i8);
                    if (D(pointerId2)) {
                        float x5 = motionEvent.getX(i8);
                        float y5 = motionEvent.getY(i8);
                        float f5 = x5 - this.f6961d[pointerId2];
                        float f6 = y5 - this.f6962e[pointerId2];
                        android.view.View viewU2 = u((int) x5, (int) y5);
                        boolean z5 = viewU2 != null && g(viewU2, f5, f6);
                        if (!z5) {
                            H(f5, f6, pointerId2);
                            if (this.f6958a != 1) {
                                break;
                            }
                        } else {
                            int left = viewU2.getLeft();
                            int i9 = (int) f5;
                            int iA = this.f6975r.a(viewU2, left + i9, i9);
                            int top = viewU2.getTop();
                            int i10 = (int) f6;
                            int iB = this.f6975r.b(viewU2, top + i10, i10);
                            int iD = this.f6975r.d(viewU2);
                            int iE = this.f6975r.e(viewU2);
                            if ((iD == 0 || (iD > 0 && iA == left)) && (iE == 0 || (iE > 0 && iB == top))) {
                                break;
                            }
                            H(f5, f6, pointerId2);
                            if (this.f6958a != 1 || (z5 && Q(viewU2, pointerId2))) {
                                break;
                            }
                        }
                    }
                }
                J(motionEvent);
            }
            z4 = false;
        } else {
            float x6 = motionEvent.getX();
            float y6 = motionEvent.getY();
            z4 = false;
            int pointerId3 = motionEvent.getPointerId(0);
            I(x6, y6, pointerId3);
            android.view.View viewU3 = u((int) x6, (int) y6);
            if (viewU3 == this.f6976s && this.f6958a == 2) {
                Q(viewU3, pointerId3);
            }
            int i11 = this.f6965h[pointerId3];
            int i12 = this.f6973p;
            if ((i11 & i12) != 0) {
                this.f6975r.h(i11 & i12, pointerId3);
            }
        }
        if (this.f6958a == 1) {
            return true;
        }
        return z4;
    }

    public boolean P(android.view.View view, int i5, int i6) {
        this.f6976s = view;
        this.f6960c = -1;
        boolean zV = v(i5, i6, 0, 0);
        if (!zV && this.f6958a == 0 && this.f6976s != null) {
            this.f6976s = null;
        }
        return zV;
    }

    public boolean Q(android.view.View view, int i5) {
        if (view == this.f6976s && this.f6960c == i5) {
            return true;
        }
        if (view == null || !this.f6975r.m(view, i5)) {
            return false;
        }
        this.f6960c = i5;
        c(view, i5);
        return true;
    }

    public void a() {
        b();
        if (this.f6958a == 2) {
            int currX = this.f6974q.getCurrX();
            int currY = this.f6974q.getCurrY();
            this.f6974q.abortAnimation();
            int currX2 = this.f6974q.getCurrX();
            int currY2 = this.f6974q.getCurrY();
            this.f6975r.k(this.f6976s, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        K(0);
    }

    public void b() {
        this.f6960c = -1;
        j();
        android.view.VelocityTracker velocityTracker = this.f6969l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f6969l = null;
        }
    }

    public void c(android.view.View view, int i5) {
        if (view.getParent() == this.f6978u) {
            this.f6976s = view;
            this.f6960c = i5;
            this.f6975r.i(view, i5);
            K(1);
            return;
        }
        throw new java.lang.IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f6978u + ")");
    }

    public final boolean d(float f5, float f6, int i5, int i6) {
        float fAbs = java.lang.Math.abs(f5);
        float fAbs2 = java.lang.Math.abs(f6);
        if ((this.f6965h[i5] & i6) != i6 || (this.f6973p & i6) == 0 || (this.f6967j[i5] & i6) == i6 || (this.f6966i[i5] & i6) == i6) {
            return false;
        }
        int i7 = this.f6959b;
        if (fAbs <= i7 && fAbs2 <= i7) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.f6975r.g(i6)) {
            return (this.f6966i[i5] & i6) == 0 && fAbs > ((float) this.f6959b);
        }
        int[] iArr = this.f6967j;
        iArr[i5] = iArr[i5] | i6;
        return false;
    }

    public boolean e(int i5) {
        int length = this.f6961d.length;
        for (int i6 = 0; i6 < length; i6++) {
            if (f(i5, i6)) {
                return true;
            }
        }
        return false;
    }

    public boolean f(int i5, int i6) {
        if (!C(i6)) {
            return false;
        }
        boolean z4 = (i5 & 1) == 1;
        boolean z5 = (i5 & 2) == 2;
        float f5 = this.f6963f[i6] - this.f6961d[i6];
        float f6 = this.f6964g[i6] - this.f6962e[i6];
        if (z4 && z5) {
            float f7 = (f5 * f5) + (f6 * f6);
            int i7 = this.f6959b;
            return f7 > ((float) (i7 * i7));
        }
        if (z4) {
            return java.lang.Math.abs(f5) > ((float) this.f6959b);
        }
        return z5 && java.lang.Math.abs(f6) > ((float) this.f6959b);
    }

    public final boolean g(android.view.View view, float f5, float f6) {
        if (view == null) {
            return false;
        }
        boolean z4 = this.f6975r.d(view) > 0;
        boolean z5 = this.f6975r.e(view) > 0;
        if (z4 && z5) {
            float f7 = (f5 * f5) + (f6 * f6);
            int i5 = this.f6959b;
            return f7 > ((float) (i5 * i5));
        }
        if (z4) {
            return java.lang.Math.abs(f5) > ((float) this.f6959b);
        }
        return z5 && java.lang.Math.abs(f6) > ((float) this.f6959b);
    }

    public final float h(float f5, float f6, float f7) {
        float fAbs = java.lang.Math.abs(f5);
        if (fAbs < f6) {
            return 0.0f;
        }
        if (fAbs > f7) {
            return f5 > 0.0f ? f7 : -f7;
        }
        return f5;
    }

    public final int i(int i5, int i6, int i7) {
        int iAbs = java.lang.Math.abs(i5);
        if (iAbs < i6) {
            return 0;
        }
        if (iAbs > i7) {
            return i5 > 0 ? i7 : -i7;
        }
        return i5;
    }

    public final void j() {
        float[] fArr = this.f6961d;
        if (fArr == null) {
            return;
        }
        java.util.Arrays.fill(fArr, 0.0f);
        java.util.Arrays.fill(this.f6962e, 0.0f);
        java.util.Arrays.fill(this.f6963f, 0.0f);
        java.util.Arrays.fill(this.f6964g, 0.0f);
        java.util.Arrays.fill(this.f6965h, 0);
        java.util.Arrays.fill(this.f6966i, 0);
        java.util.Arrays.fill(this.f6967j, 0);
        this.f6968k = 0;
    }

    public final void k(int i5) {
        if (this.f6961d == null || !C(i5)) {
            return;
        }
        this.f6961d[i5] = 0.0f;
        this.f6962e[i5] = 0.0f;
        this.f6963f[i5] = 0.0f;
        this.f6964g[i5] = 0.0f;
        this.f6965h[i5] = 0;
        this.f6966i[i5] = 0;
        this.f6967j[i5] = 0;
        this.f6968k = (~(1 << i5)) & this.f6968k;
    }

    public final int l(int i5, int i6, int i7) {
        if (i5 == 0) {
            return 0;
        }
        int width = this.f6978u.getWidth();
        float f5 = width / 2;
        float fR = f5 + (r(java.lang.Math.min(1.0f, java.lang.Math.abs(i5) / width)) * f5);
        int iAbs = java.lang.Math.abs(i6);
        return java.lang.Math.min(iAbs > 0 ? java.lang.Math.round(java.lang.Math.abs(fR / iAbs) * 1000.0f) * 4 : (int) (((java.lang.Math.abs(i5) / i7) + 1.0f) * 256.0f), 600);
    }

    public final int m(android.view.View view, int i5, int i6, int i7, int i8) {
        float f5;
        float f6;
        float f7;
        float f8;
        int i9 = i(i7, (int) this.f6971n, (int) this.f6970m);
        int i10 = i(i8, (int) this.f6971n, (int) this.f6970m);
        int iAbs = java.lang.Math.abs(i5);
        int iAbs2 = java.lang.Math.abs(i6);
        int iAbs3 = java.lang.Math.abs(i9);
        int iAbs4 = java.lang.Math.abs(i10);
        int i11 = iAbs3 + iAbs4;
        int i12 = iAbs + iAbs2;
        if (i9 != 0) {
            f5 = iAbs3;
            f6 = i11;
        } else {
            f5 = iAbs;
            f6 = i12;
        }
        float f9 = f5 / f6;
        if (i10 != 0) {
            f7 = iAbs4;
            f8 = i11;
        } else {
            f7 = iAbs2;
            f8 = i12;
        }
        return (int) ((l(i5, i9, this.f6975r.d(view)) * f9) + (l(i6, i10, this.f6975r.e(view)) * (f7 / f8)));
    }

    public boolean n(boolean z4) {
        if (this.f6958a == 2) {
            boolean zComputeScrollOffset = this.f6974q.computeScrollOffset();
            int currX = this.f6974q.getCurrX();
            int currY = this.f6974q.getCurrY();
            int left = currX - this.f6976s.getLeft();
            int top = currY - this.f6976s.getTop();
            if (left != 0) {
                w.q.G(this.f6976s, left);
            }
            if (top != 0) {
                w.q.H(this.f6976s, top);
            }
            if (left != 0 || top != 0) {
                this.f6975r.k(this.f6976s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.f6974q.getFinalX() && currY == this.f6974q.getFinalY()) {
                this.f6974q.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                if (z4) {
                    this.f6978u.post(this.f6979v);
                } else {
                    K(0);
                }
            }
        }
        return this.f6958a == 2;
    }

    public final void q(float f5, float f6) {
        this.f6977t = true;
        this.f6975r.l(this.f6976s, f5, f6);
        this.f6977t = false;
        if (this.f6958a == 1) {
            K(0);
        }
    }

    public final float r(float f5) {
        return (float) java.lang.Math.sin((f5 - 0.5f) * 0.47123894f);
    }

    public final void s(int i5, int i6, int i7, int i8) {
        int left = this.f6976s.getLeft();
        int top = this.f6976s.getTop();
        if (i7 != 0) {
            i5 = this.f6975r.a(this.f6976s, i5, i7);
            w.q.G(this.f6976s, i5 - left);
        }
        int i9 = i5;
        if (i8 != 0) {
            i6 = this.f6975r.b(this.f6976s, i6, i8);
            w.q.H(this.f6976s, i6 - top);
        }
        int i10 = i6;
        if (i7 == 0 && i8 == 0) {
            return;
        }
        this.f6975r.k(this.f6976s, i9, i10, i9 - left, i10 - top);
    }

    public final void t(int i5) {
        float[] fArr = this.f6961d;
        if (fArr == null || fArr.length <= i5) {
            int i6 = i5 + 1;
            float[] fArr2 = new float[i6];
            float[] fArr3 = new float[i6];
            float[] fArr4 = new float[i6];
            float[] fArr5 = new float[i6];
            int[] iArr = new int[i6];
            int[] iArr2 = new int[i6];
            int[] iArr3 = new int[i6];
            if (fArr != null) {
                java.lang.System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f6962e;
                java.lang.System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f6963f;
                java.lang.System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f6964g;
                java.lang.System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f6965h;
                java.lang.System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f6966i;
                java.lang.System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f6967j;
                java.lang.System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f6961d = fArr2;
            this.f6962e = fArr3;
            this.f6963f = fArr4;
            this.f6964g = fArr5;
            this.f6965h = iArr;
            this.f6966i = iArr2;
            this.f6967j = iArr3;
        }
    }

    public android.view.View u(int i5, int i6) {
        for (int childCount = this.f6978u.getChildCount() - 1; childCount >= 0; childCount--) {
            android.view.View childAt = this.f6978u.getChildAt(this.f6975r.c(childCount));
            if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && i6 >= childAt.getTop() && i6 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean v(int i5, int i6, int i7, int i8) {
        int left = this.f6976s.getLeft();
        int top = this.f6976s.getTop();
        int i9 = i5 - left;
        int i10 = i6 - top;
        if (i9 == 0 && i10 == 0) {
            this.f6974q.abortAnimation();
            K(0);
            return false;
        }
        this.f6974q.startScroll(left, top, i9, i10, m(this.f6976s, i9, i10, i7, i8));
        K(2);
        return true;
    }

    public android.view.View w() {
        return this.f6976s;
    }

    public int x() {
        return this.f6972o;
    }

    public final int y(int i5, int i6) {
        int i7 = i5 < this.f6978u.getLeft() + this.f6972o ? 1 : 0;
        if (i6 < this.f6978u.getTop() + this.f6972o) {
            i7 |= 4;
        }
        if (i5 > this.f6978u.getRight() - this.f6972o) {
            i7 |= 2;
        }
        return i6 > this.f6978u.getBottom() - this.f6972o ? i7 | 8 : i7;
    }

    public int z() {
        return this.f6959b;
    }
}
