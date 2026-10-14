package w;

/* JADX INFO: compiled from: WindowInsetsCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final w.a0 f6622b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w.a0.l f6623a;

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    @android.annotation.SuppressLint({"SoonBlockedPrivateApi"})
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static java.lang.reflect.Field f6624a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static java.lang.reflect.Field f6625b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static java.lang.reflect.Field f6626c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static boolean f6627d;

        static {
            try {
                java.lang.reflect.Field declaredField = android.view.View.class.getDeclaredField("mAttachInfo");
                f6624a = declaredField;
                declaredField.setAccessible(true);
                java.lang.Class<?> cls = java.lang.Class.forName("android.view.View$AttachInfo");
                java.lang.reflect.Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f6625b = declaredField2;
                declaredField2.setAccessible(true);
                java.lang.reflect.Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f6626c = declaredField3;
                declaredField3.setAccessible(true);
                f6627d = true;
            } catch (java.lang.ReflectiveOperationException e5) {
                android.util.Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e5.getMessage(), e5);
            }
        }

        public static w.a0 a(android.view.View view) {
            if (f6627d && view.isAttachedToWindow()) {
                try {
                    java.lang.Object obj = f6624a.get(view.getRootView());
                    if (obj != null) {
                        android.graphics.Rect rect = (android.graphics.Rect) f6625b.get(obj);
                        android.graphics.Rect rect2 = (android.graphics.Rect) f6626c.get(obj);
                        if (rect != null && rect2 != null) {
                            w.a0 a0VarA = new w.a0.b().b(o.b.c(rect)).c(o.b.c(rect2)).a();
                            a0VarA.p(a0VarA);
                            a0VarA.d(view.getRootView());
                            return a0VarA;
                        }
                    }
                } catch (java.lang.IllegalAccessException e5) {
                    android.util.Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e5.getMessage(), e5);
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class e extends w.a0.d {
        public e() {
        }

        public e(w.a0 a0Var) {
            super(a0Var);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w.a0 f6636a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public o.b[] f6637b;

        public f() {
            this(new w.a0((w.a0) null));
        }

        public final void a() {
            o.b[] bVarArr = this.f6637b;
            if (bVarArr != null) {
                o.b bVarF = bVarArr[w.a0.m.a(1)];
                o.b bVarF2 = this.f6637b[w.a0.m.a(2)];
                if (bVarF2 == null) {
                    bVarF2 = this.f6636a.f(2);
                }
                if (bVarF == null) {
                    bVarF = this.f6636a.f(1);
                }
                f(o.b.a(bVarF, bVarF2));
                o.b bVar = this.f6637b[w.a0.m.a(16)];
                if (bVar != null) {
                    e(bVar);
                }
                o.b bVar2 = this.f6637b[w.a0.m.a(32)];
                if (bVar2 != null) {
                    c(bVar2);
                }
                o.b bVar3 = this.f6637b[w.a0.m.a(64)];
                if (bVar3 != null) {
                    g(bVar3);
                }
            }
        }

        public w.a0 b() {
            throw null;
        }

        public void c(o.b bVar) {
        }

        public void d(o.b bVar) {
            throw null;
        }

        public void e(o.b bVar) {
        }

        public void f(o.b bVar) {
            throw null;
        }

        public void g(o.b bVar) {
        }

        public f(w.a0 a0Var) {
            this.f6636a = a0Var;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class i extends w.a0.h {
        public i(w.a0 a0Var, android.view.WindowInsets windowInsets) {
            super(a0Var, windowInsets);
        }

        @Override // w.a0.l
        public w.a0 a() {
            return w.a0.s(this.f6643c.consumeDisplayCutout());
        }

        @Override // w.a0.g, w.a0.l
        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof w.a0.i)) {
                return false;
            }
            w.a0.i iVar = (w.a0.i) obj;
            return java.util.Objects.equals(this.f6643c, iVar.f6643c) && java.util.Objects.equals(this.f6647g, iVar.f6647g);
        }

        @Override // w.a0.l
        public w.c f() {
            return w.c.e(this.f6643c.getDisplayCutout());
        }

        @Override // w.a0.l
        public int hashCode() {
            return this.f6643c.hashCode();
        }

        public i(w.a0 a0Var, w.a0.i iVar) {
            super(a0Var, iVar);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class k extends w.a0.j {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final w.a0 f6652q = w.a0.s(android.view.WindowInsets.CONSUMED);

        public k(w.a0 a0Var, android.view.WindowInsets windowInsets) {
            super(a0Var, windowInsets);
        }

        @Override // w.a0.g, w.a0.l
        public final void d(android.view.View view) {
        }

        @Override // w.a0.g, w.a0.l
        public o.b g(int i5) {
            return o.b.d(this.f6643c.getInsets(w.a0.n.a(i5)));
        }

        public k(w.a0 a0Var, w.a0.k kVar) {
            super(a0Var, kVar);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final w.a0 f6653b = new w.a0.b().a().a().b().c();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w.a0 f6654a;

        public l(w.a0 a0Var) {
            this.f6654a = a0Var;
        }

        public w.a0 a() {
            return this.f6654a;
        }

        public w.a0 b() {
            return this.f6654a;
        }

        public w.a0 c() {
            return this.f6654a;
        }

        public void d(android.view.View view) {
        }

        public void e(w.a0 a0Var) {
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof w.a0.l)) {
                return false;
            }
            w.a0.l lVar = (w.a0.l) obj;
            return n() == lVar.n() && m() == lVar.m() && v.d.a(k(), lVar.k()) && v.d.a(i(), lVar.i()) && v.d.a(f(), lVar.f());
        }

        public w.c f() {
            return null;
        }

        public o.b g(int i5) {
            return o.b.f5263e;
        }

        public o.b h() {
            return k();
        }

        public int hashCode() {
            return v.d.b(java.lang.Boolean.valueOf(n()), java.lang.Boolean.valueOf(m()), k(), i(), f());
        }

        public o.b i() {
            return o.b.f5263e;
        }

        public o.b j() {
            return k();
        }

        public o.b k() {
            return o.b.f5263e;
        }

        public o.b l() {
            return k();
        }

        public boolean m() {
            return false;
        }

        public boolean n() {
            return false;
        }

        public void o(o.b[] bVarArr) {
        }

        public void p(o.b bVar) {
        }

        public void q(w.a0 a0Var) {
        }

        public void r(o.b bVar) {
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static final class m {
        public static int a(int i5) {
            if (i5 == 1) {
                return 0;
            }
            if (i5 == 2) {
                return 1;
            }
            if (i5 == 4) {
                return 2;
            }
            if (i5 == 8) {
                return 3;
            }
            if (i5 == 16) {
                return 4;
            }
            if (i5 == 32) {
                return 5;
            }
            if (i5 == 64) {
                return 6;
            }
            if (i5 == 128) {
                return 7;
            }
            if (i5 == 256) {
                return 8;
            }
            throw new java.lang.IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i5);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static final class n {
        public static int a(int i5) {
            int iStatusBars;
            int i6 = 0;
            for (int i7 = 1; i7 <= 256; i7 <<= 1) {
                if ((i5 & i7) != 0) {
                    if (i7 == 1) {
                        iStatusBars = android.view.WindowInsets.Type.statusBars();
                    } else if (i7 == 2) {
                        iStatusBars = android.view.WindowInsets.Type.navigationBars();
                    } else if (i7 == 4) {
                        iStatusBars = android.view.WindowInsets.Type.captionBar();
                    } else if (i7 == 8) {
                        iStatusBars = android.view.WindowInsets.Type.ime();
                    } else if (i7 == 16) {
                        iStatusBars = android.view.WindowInsets.Type.systemGestures();
                    } else if (i7 == 32) {
                        iStatusBars = android.view.WindowInsets.Type.mandatorySystemGestures();
                    } else if (i7 == 64) {
                        iStatusBars = android.view.WindowInsets.Type.tappableElement();
                    } else if (i7 == 128) {
                        iStatusBars = android.view.WindowInsets.Type.displayCutout();
                    }
                    i6 |= iStatusBars;
                }
            }
            return i6;
        }
    }

    static {
        if (android.os.Build.VERSION.SDK_INT >= 30) {
            f6622b = w.a0.k.f6652q;
        } else {
            f6622b = w.a0.l.f6653b;
        }
    }

    public a0(android.view.WindowInsets windowInsets) {
        int i5 = android.os.Build.VERSION.SDK_INT;
        if (i5 >= 30) {
            this.f6623a = new w.a0.k(this, windowInsets);
        } else if (i5 >= 29) {
            this.f6623a = new w.a0.j(this, windowInsets);
        } else {
            this.f6623a = new w.a0.i(this, windowInsets);
        }
    }

    public static w.a0 s(android.view.WindowInsets windowInsets) {
        return t(windowInsets, null);
    }

    public static w.a0 t(android.view.WindowInsets windowInsets, android.view.View view) {
        w.a0 a0Var = new w.a0((android.view.WindowInsets) v.h.b(windowInsets));
        if (view != null && w.q.C(view)) {
            a0Var.p(w.q.t(view));
            a0Var.d(view.getRootView());
        }
        return a0Var;
    }

    @java.lang.Deprecated
    public w.a0 a() {
        return this.f6623a.a();
    }

    @java.lang.Deprecated
    public w.a0 b() {
        return this.f6623a.b();
    }

    @java.lang.Deprecated
    public w.a0 c() {
        return this.f6623a.c();
    }

    public void d(android.view.View view) {
        this.f6623a.d(view);
    }

    public w.c e() {
        return this.f6623a.f();
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof w.a0) {
            return v.d.a(this.f6623a, ((w.a0) obj).f6623a);
        }
        return false;
    }

    public o.b f(int i5) {
        return this.f6623a.g(i5);
    }

    @java.lang.Deprecated
    public o.b g() {
        return this.f6623a.i();
    }

    @java.lang.Deprecated
    public int h() {
        return this.f6623a.k().f5267d;
    }

    public int hashCode() {
        w.a0.l lVar = this.f6623a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    @java.lang.Deprecated
    public int i() {
        return this.f6623a.k().f5264a;
    }

    @java.lang.Deprecated
    public int j() {
        return this.f6623a.k().f5266c;
    }

    @java.lang.Deprecated
    public int k() {
        return this.f6623a.k().f5265b;
    }

    public boolean l() {
        return this.f6623a.m();
    }

    @java.lang.Deprecated
    public w.a0 m(int i5, int i6, int i7, int i8) {
        return new w.a0.b(this).c(o.b.b(i5, i6, i7, i8)).a();
    }

    public void n(o.b[] bVarArr) {
        this.f6623a.o(bVarArr);
    }

    public void o(o.b bVar) {
        this.f6623a.p(bVar);
    }

    public void p(w.a0 a0Var) {
        this.f6623a.q(a0Var);
    }

    public void q(o.b bVar) {
        this.f6623a.r(bVar);
    }

    public android.view.WindowInsets r() {
        w.a0.l lVar = this.f6623a;
        if (lVar instanceof w.a0.g) {
            return ((w.a0.g) lVar).f6643c;
        }
        return null;
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class c extends w.a0.f {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static java.lang.reflect.Field f6629e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static boolean f6630f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static java.lang.reflect.Constructor<android.view.WindowInsets> f6631g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static boolean f6632h;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public android.view.WindowInsets f6633c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public o.b f6634d;

        public c() {
            this.f6633c = h();
        }

        private static android.view.WindowInsets h() {
            if (!f6630f) {
                try {
                    f6629e = android.view.WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (java.lang.ReflectiveOperationException e5) {
                    android.util.Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e5);
                }
                f6630f = true;
            }
            java.lang.reflect.Field field = f6629e;
            if (field != null) {
                try {
                    android.view.WindowInsets windowInsets = (android.view.WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new android.view.WindowInsets(windowInsets);
                    }
                } catch (java.lang.ReflectiveOperationException e6) {
                    android.util.Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e6);
                }
            }
            if (!f6632h) {
                try {
                    f6631g = android.view.WindowInsets.class.getConstructor(android.graphics.Rect.class);
                } catch (java.lang.ReflectiveOperationException e7) {
                    android.util.Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e7);
                }
                f6632h = true;
            }
            java.lang.reflect.Constructor<android.view.WindowInsets> constructor = f6631g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new android.graphics.Rect());
                } catch (java.lang.ReflectiveOperationException e8) {
                    android.util.Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e8);
                }
            }
            return null;
        }

        @Override // w.a0.f
        public w.a0 b() {
            a();
            w.a0 a0VarS = w.a0.s(this.f6633c);
            a0VarS.n(this.f6637b);
            a0VarS.q(this.f6634d);
            return a0VarS;
        }

        @Override // w.a0.f
        public void d(o.b bVar) {
            this.f6634d = bVar;
        }

        @Override // w.a0.f
        public void f(o.b bVar) {
            android.view.WindowInsets windowInsets = this.f6633c;
            if (windowInsets != null) {
                this.f6633c = windowInsets.replaceSystemWindowInsets(bVar.f5264a, bVar.f5265b, bVar.f5266c, bVar.f5267d);
            }
        }

        public c(w.a0 a0Var) {
            super(a0Var);
            this.f6633c = a0Var.r();
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class d extends w.a0.f {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final android.view.WindowInsets.Builder f6635c;

        public d() {
            this.f6635c = new android.view.WindowInsets.Builder();
        }

        @Override // w.a0.f
        public w.a0 b() {
            a();
            w.a0 a0VarS = w.a0.s(this.f6635c.build());
            a0VarS.n(this.f6637b);
            return a0VarS;
        }

        @Override // w.a0.f
        public void c(o.b bVar) {
            this.f6635c.setMandatorySystemGestureInsets(bVar.e());
        }

        @Override // w.a0.f
        public void d(o.b bVar) {
            this.f6635c.setStableInsets(bVar.e());
        }

        @Override // w.a0.f
        public void e(o.b bVar) {
            this.f6635c.setSystemGestureInsets(bVar.e());
        }

        @Override // w.a0.f
        public void f(o.b bVar) {
            this.f6635c.setSystemWindowInsets(bVar.e());
        }

        @Override // w.a0.f
        public void g(o.b bVar) {
            this.f6635c.setTappableElementInsets(bVar.e());
        }

        public d(w.a0 a0Var) {
            android.view.WindowInsets.Builder builder;
            super(a0Var);
            android.view.WindowInsets windowInsetsR = a0Var.r();
            if (windowInsetsR != null) {
                builder = new android.view.WindowInsets.Builder(windowInsetsR);
            } else {
                builder = new android.view.WindowInsets.Builder();
            }
            this.f6635c = builder;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class h extends w.a0.g {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public o.b f6648m;

        public h(w.a0 a0Var, android.view.WindowInsets windowInsets) {
            super(a0Var, windowInsets);
            this.f6648m = null;
        }

        @Override // w.a0.l
        public w.a0 b() {
            return w.a0.s(this.f6643c.consumeStableInsets());
        }

        @Override // w.a0.l
        public w.a0 c() {
            return w.a0.s(this.f6643c.consumeSystemWindowInsets());
        }

        @Override // w.a0.l
        public final o.b i() {
            if (this.f6648m == null) {
                this.f6648m = o.b.b(this.f6643c.getStableInsetLeft(), this.f6643c.getStableInsetTop(), this.f6643c.getStableInsetRight(), this.f6643c.getStableInsetBottom());
            }
            return this.f6648m;
        }

        @Override // w.a0.l
        public boolean m() {
            return this.f6643c.isConsumed();
        }

        @Override // w.a0.l
        public void r(o.b bVar) {
            this.f6648m = bVar;
        }

        public h(w.a0 a0Var, w.a0.h hVar) {
            super(a0Var, hVar);
            this.f6648m = null;
            this.f6648m = hVar.f6648m;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class g extends w.a0.l {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static boolean f6638h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static java.lang.reflect.Method f6639i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static java.lang.Class<?> f6640j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static java.lang.reflect.Field f6641k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static java.lang.reflect.Field f6642l;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final android.view.WindowInsets f6643c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public o.b[] f6644d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public o.b f6645e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public w.a0 f6646f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public o.b f6647g;

        public g(w.a0 a0Var, android.view.WindowInsets windowInsets) {
            super(a0Var);
            this.f6645e = null;
            this.f6643c = windowInsets;
        }

        @android.annotation.SuppressLint({"WrongConstant"})
        private o.b s(int i5, boolean z4) {
            o.b bVarA = o.b.f5263e;
            for (int i6 = 1; i6 <= 256; i6 <<= 1) {
                if ((i5 & i6) != 0) {
                    bVarA = o.b.a(bVarA, t(i6, z4));
                }
            }
            return bVarA;
        }

        private o.b u() {
            w.a0 a0Var = this.f6646f;
            return a0Var != null ? a0Var.g() : o.b.f5263e;
        }

        private o.b v(android.view.View view) {
            if (android.os.Build.VERSION.SDK_INT >= 30) {
                throw new java.lang.UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f6638h) {
                w();
            }
            java.lang.reflect.Method method = f6639i;
            if (method != null && f6640j != null && f6641k != null) {
                try {
                    java.lang.Object objInvoke = method.invoke(view, new java.lang.Object[0]);
                    if (objInvoke == null) {
                        android.util.Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new java.lang.NullPointerException());
                        return null;
                    }
                    android.graphics.Rect rect = (android.graphics.Rect) f6641k.get(f6642l.get(objInvoke));
                    if (rect != null) {
                        return o.b.c(rect);
                    }
                    return null;
                } catch (java.lang.ReflectiveOperationException e5) {
                    android.util.Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e5.getMessage(), e5);
                }
            }
            return null;
        }

        @android.annotation.SuppressLint({"PrivateApi"})
        private static void w() {
            try {
                f6639i = android.view.View.class.getDeclaredMethod("getViewRootImpl", new java.lang.Class[0]);
                java.lang.Class<?> cls = java.lang.Class.forName("android.view.View$AttachInfo");
                f6640j = cls;
                f6641k = cls.getDeclaredField("mVisibleInsets");
                f6642l = java.lang.Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f6641k.setAccessible(true);
                f6642l.setAccessible(true);
            } catch (java.lang.ReflectiveOperationException e5) {
                android.util.Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e5.getMessage(), e5);
            }
            f6638h = true;
        }

        @Override // w.a0.l
        public void d(android.view.View view) {
            o.b bVarV = v(view);
            if (bVarV == null) {
                bVarV = o.b.f5263e;
            }
            p(bVarV);
        }

        @Override // w.a0.l
        public void e(w.a0 a0Var) {
            a0Var.p(this.f6646f);
            a0Var.o(this.f6647g);
        }

        @Override // w.a0.l
        public boolean equals(java.lang.Object obj) {
            if (super.equals(obj)) {
                return java.util.Objects.equals(this.f6647g, ((w.a0.g) obj).f6647g);
            }
            return false;
        }

        @Override // w.a0.l
        public o.b g(int i5) {
            return s(i5, false);
        }

        @Override // w.a0.l
        public final o.b k() {
            if (this.f6645e == null) {
                this.f6645e = o.b.b(this.f6643c.getSystemWindowInsetLeft(), this.f6643c.getSystemWindowInsetTop(), this.f6643c.getSystemWindowInsetRight(), this.f6643c.getSystemWindowInsetBottom());
            }
            return this.f6645e;
        }

        @Override // w.a0.l
        public boolean n() {
            return this.f6643c.isRound();
        }

        @Override // w.a0.l
        public void o(o.b[] bVarArr) {
            this.f6644d = bVarArr;
        }

        @Override // w.a0.l
        public void p(o.b bVar) {
            this.f6647g = bVar;
        }

        @Override // w.a0.l
        public void q(w.a0 a0Var) {
            this.f6646f = a0Var;
        }

        public o.b t(int i5, boolean z4) {
            o.b bVarG;
            int i6;
            if (i5 == 1) {
                return z4 ? o.b.b(0, java.lang.Math.max(u().f5265b, k().f5265b), 0, 0) : o.b.b(0, k().f5265b, 0, 0);
            }
            if (i5 == 2) {
                if (z4) {
                    o.b bVarU = u();
                    o.b bVarI = i();
                    return o.b.b(java.lang.Math.max(bVarU.f5264a, bVarI.f5264a), 0, java.lang.Math.max(bVarU.f5266c, bVarI.f5266c), java.lang.Math.max(bVarU.f5267d, bVarI.f5267d));
                }
                o.b bVarK = k();
                w.a0 a0Var = this.f6646f;
                bVarG = a0Var != null ? a0Var.g() : null;
                int iMin = bVarK.f5267d;
                if (bVarG != null) {
                    iMin = java.lang.Math.min(iMin, bVarG.f5267d);
                }
                return o.b.b(bVarK.f5264a, 0, bVarK.f5266c, iMin);
            }
            if (i5 != 8) {
                if (i5 == 16) {
                    return j();
                }
                if (i5 == 32) {
                    return h();
                }
                if (i5 == 64) {
                    return l();
                }
                if (i5 != 128) {
                    return o.b.f5263e;
                }
                w.a0 a0Var2 = this.f6646f;
                w.c cVarE = a0Var2 != null ? a0Var2.e() : f();
                return cVarE != null ? o.b.b(cVarE.b(), cVarE.d(), cVarE.c(), cVarE.a()) : o.b.f5263e;
            }
            o.b[] bVarArr = this.f6644d;
            bVarG = bVarArr != null ? bVarArr[w.a0.m.a(8)] : null;
            if (bVarG != null) {
                return bVarG;
            }
            o.b bVarK2 = k();
            o.b bVarU2 = u();
            int i7 = bVarK2.f5267d;
            if (i7 > bVarU2.f5267d) {
                return o.b.b(0, 0, 0, i7);
            }
            o.b bVar = this.f6647g;
            return (bVar == null || bVar.equals(o.b.f5263e) || (i6 = this.f6647g.f5267d) <= bVarU2.f5267d) ? o.b.f5263e : o.b.b(0, 0, 0, i6);
        }

        public g(w.a0 a0Var, w.a0.g gVar) {
            this(a0Var, new android.view.WindowInsets(gVar.f6643c));
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static class j extends w.a0.i {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public o.b f6649n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public o.b f6650o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public o.b f6651p;

        public j(w.a0 a0Var, android.view.WindowInsets windowInsets) {
            super(a0Var, windowInsets);
            this.f6649n = null;
            this.f6650o = null;
            this.f6651p = null;
        }

        @Override // w.a0.l
        public o.b h() {
            if (this.f6650o == null) {
                this.f6650o = o.b.d(this.f6643c.getMandatorySystemGestureInsets());
            }
            return this.f6650o;
        }

        @Override // w.a0.l
        public o.b j() {
            if (this.f6649n == null) {
                this.f6649n = o.b.d(this.f6643c.getSystemGestureInsets());
            }
            return this.f6649n;
        }

        @Override // w.a0.l
        public o.b l() {
            if (this.f6651p == null) {
                this.f6651p = o.b.d(this.f6643c.getTappableElementInsets());
            }
            return this.f6651p;
        }

        @Override // w.a0.h, w.a0.l
        public void r(o.b bVar) {
        }

        public j(w.a0 a0Var, w.a0.j jVar) {
            super(a0Var, jVar);
            this.f6649n = null;
            this.f6650o = null;
            this.f6651p = null;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w.a0.f f6628a;

        public b() {
            int i5 = android.os.Build.VERSION.SDK_INT;
            if (i5 >= 30) {
                this.f6628a = new w.a0.e();
            } else if (i5 >= 29) {
                this.f6628a = new w.a0.d();
            } else {
                this.f6628a = new w.a0.c();
            }
        }

        public w.a0 a() {
            return this.f6628a.b();
        }

        @java.lang.Deprecated
        public w.a0.b b(o.b bVar) {
            this.f6628a.d(bVar);
            return this;
        }

        @java.lang.Deprecated
        public w.a0.b c(o.b bVar) {
            this.f6628a.f(bVar);
            return this;
        }

        public b(w.a0 a0Var) {
            int i5 = android.os.Build.VERSION.SDK_INT;
            if (i5 >= 30) {
                this.f6628a = new w.a0.e(a0Var);
            } else if (i5 >= 29) {
                this.f6628a = new w.a0.d(a0Var);
            } else {
                this.f6628a = new w.a0.c(a0Var);
            }
        }
    }

    public a0(w.a0 a0Var) {
        if (a0Var != null) {
            w.a0.l lVar = a0Var.f6623a;
            int i5 = android.os.Build.VERSION.SDK_INT;
            if (i5 >= 30 && (lVar instanceof w.a0.k)) {
                this.f6623a = new w.a0.k(this, (w.a0.k) lVar);
            } else if (i5 >= 29 && (lVar instanceof w.a0.j)) {
                this.f6623a = new w.a0.j(this, (w.a0.j) lVar);
            } else if (lVar instanceof w.a0.i) {
                this.f6623a = new w.a0.i(this, (w.a0.i) lVar);
            } else if (lVar instanceof w.a0.h) {
                this.f6623a = new w.a0.h(this, (w.a0.h) lVar);
            } else if (lVar instanceof w.a0.g) {
                this.f6623a = new w.a0.g(this, (w.a0.g) lVar);
            } else {
                this.f6623a = new w.a0.l(this);
            }
            lVar.e(this);
            return;
        }
        this.f6623a = new w.a0.l(this);
    }
}
