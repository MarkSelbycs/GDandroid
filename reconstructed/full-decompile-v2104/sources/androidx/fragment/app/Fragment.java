package androidx.fragment.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class Fragment implements android.content.ComponentCallbacks, android.view.View.OnCreateContextMenuListener, androidx.lifecycle.g, androidx.lifecycle.r {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final j.g<java.lang.String, java.lang.Class<?>> f1500b0 = new j.g<>();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final java.lang.Object f1501c0 = new java.lang.Object();
    public androidx.lifecycle.q A;
    public androidx.fragment.app.Fragment B;
    public int C;
    public int D;
    public java.lang.String E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean L;
    public android.view.ViewGroup M;
    public android.view.View N;
    public android.view.View O;
    public boolean P;
    public androidx.fragment.app.Fragment.d R;
    public boolean S;
    public boolean T;
    public float U;
    public android.view.LayoutInflater V;
    public boolean W;
    public androidx.lifecycle.h Y;
    public androidx.lifecycle.g Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.os.Bundle f1504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.util.SparseArray<android.os.Parcelable> f1505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.lang.Boolean f1506d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.String f1508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.os.Bundle f1509g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public androidx.fragment.app.Fragment f1510h;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f1512o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1513p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f1514q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1515r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f1516s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1517t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f1518u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f1519v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public androidx.fragment.app.f f1520w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public androidx.fragment.app.d f1521x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public androidx.fragment.app.f f1522y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public androidx.fragment.app.g f1523z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1502a = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1507e = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1511i = -1;
    public boolean K = true;
    public boolean Q = true;
    public androidx.lifecycle.h X = new androidx.lifecycle.h(this);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public androidx.lifecycle.k<androidx.lifecycle.g> f1503a0 = new androidx.lifecycle.k<>();

    public static class SavedState implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<androidx.fragment.app.Fragment.SavedState> CREATOR = new androidx.fragment.app.Fragment.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.os.Bundle f1524a;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.fragment.app.Fragment.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.fragment.app.Fragment.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.fragment.app.Fragment.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.fragment.app.Fragment.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.fragment.app.Fragment.SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public androidx.fragment.app.Fragment.SavedState[] newArray(int i5) {
                return new androidx.fragment.app.Fragment.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            android.os.Bundle bundle = parcel.readBundle();
            this.f1524a = bundle;
            if (classLoader == null || bundle == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            parcel.writeBundle(this.f1524a);
        }
    }

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.fragment.app.Fragment.this.a();
        }
    }

    public class b extends androidx.fragment.app.b {
        public b() {
        }

        @Override // androidx.fragment.app.b
        public androidx.fragment.app.Fragment a(android.content.Context context, java.lang.String str, android.os.Bundle bundle) {
            return androidx.fragment.app.Fragment.this.f1521x.a(context, str, bundle);
        }

        @Override // androidx.fragment.app.b
        public android.view.View b(int i5) {
            android.view.View view = androidx.fragment.app.Fragment.this.N;
            if (view != null) {
                return view.findViewById(i5);
            }
            throw new java.lang.IllegalStateException("Fragment does not have a view");
        }

        @Override // androidx.fragment.app.b
        public boolean c() {
            return androidx.fragment.app.Fragment.this.N != null;
        }
    }

    public class c implements androidx.lifecycle.g {
        public c() {
        }

        @Override // androidx.lifecycle.g
        public androidx.lifecycle.d getLifecycle() {
            androidx.fragment.app.Fragment fragment = androidx.fragment.app.Fragment.this;
            if (fragment.Y == null) {
                fragment.Y = new androidx.lifecycle.h(fragment.Z);
            }
            return androidx.fragment.app.Fragment.this.Y;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.view.View f1528a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public android.animation.Animator f1529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1530c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1531d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1532e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1533f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public java.lang.Object f1534g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public java.lang.Object f1535h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public java.lang.Object f1536i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public java.lang.Object f1537j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public java.lang.Object f1538k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public java.lang.Object f1539l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public java.lang.Boolean f1540m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public java.lang.Boolean f1541n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public boolean f1542o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public androidx.fragment.app.Fragment.f f1543p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public boolean f1544q;

        public d() {
            java.lang.Object obj = androidx.fragment.app.Fragment.f1501c0;
            this.f1535h = obj;
            this.f1536i = null;
            this.f1537j = obj;
            this.f1538k = null;
            this.f1539l = obj;
        }
    }

    public static class e extends java.lang.RuntimeException {
        public e(java.lang.String str, java.lang.Exception exc) {
            super(str, exc);
        }
    }

    public interface f {
        void a();

        void b();
    }

    public static androidx.fragment.app.Fragment C(android.content.Context context, java.lang.String str, android.os.Bundle bundle) {
        try {
            j.g<java.lang.String, java.lang.Class<?>> gVar = f1500b0;
            java.lang.Class<?> clsLoadClass = gVar.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                gVar.put(str, clsLoadClass);
            }
            androidx.fragment.app.Fragment fragment = (androidx.fragment.app.Fragment) clsLoadClass.getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragment.getClass().getClassLoader());
                fragment.S0(bundle);
            }
            return fragment;
        } catch (java.lang.ClassNotFoundException e5) {
            throw new androidx.fragment.app.Fragment.e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e5);
        } catch (java.lang.IllegalAccessException e6) {
            throw new androidx.fragment.app.Fragment.e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e6);
        } catch (java.lang.InstantiationException e7) {
            throw new androidx.fragment.app.Fragment.e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e7);
        } catch (java.lang.NoSuchMethodException e8) {
            throw new androidx.fragment.app.Fragment.e("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e8);
        } catch (java.lang.reflect.InvocationTargetException e9) {
            throw new androidx.fragment.app.Fragment.e("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e9);
        }
    }

    public static boolean J(android.content.Context context, java.lang.String str) {
        try {
            j.g<java.lang.String, java.lang.Class<?>> gVar = f1500b0;
            java.lang.Class<?> clsLoadClass = gVar.get(str);
            if (clsLoadClass == null) {
                clsLoadClass = context.getClassLoader().loadClass(str);
                gVar.put(str, clsLoadClass);
            }
            return androidx.fragment.app.Fragment.class.isAssignableFrom(clsLoadClass);
        } catch (java.lang.ClassNotFoundException unused) {
            return false;
        }
    }

    public android.view.View A() {
        return this.N;
    }

    public void A0() {
        this.L = false;
        Z();
        this.V = null;
        if (!this.L) {
            throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onDetach()");
        }
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            if (this.I) {
                fVar.z();
                this.f1522y = null;
                return;
            }
            throw new java.lang.IllegalStateException("Child FragmentManager of " + this + " was not  destroyed and this fragment is not retaining instance");
        }
    }

    public void B() {
        this.f1507e = -1;
        this.f1508f = null;
        this.f1513p = false;
        this.f1514q = false;
        this.f1515r = false;
        this.f1516s = false;
        this.f1517t = false;
        this.f1519v = 0;
        this.f1520w = null;
        this.f1522y = null;
        this.f1521x = null;
        this.C = 0;
        this.D = 0;
        this.E = null;
        this.F = false;
        this.G = false;
        this.I = false;
    }

    public android.view.LayoutInflater B0(android.os.Bundle bundle) {
        android.view.LayoutInflater layoutInflaterA0 = a0(bundle);
        this.V = layoutInflaterA0;
        return layoutInflaterA0;
    }

    public void C0() {
        onLowMemory();
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.B();
        }
    }

    public void D() {
        if (this.f1521x == null) {
            throw new java.lang.IllegalStateException("Fragment has not been attached yet.");
        }
        androidx.fragment.app.f fVar = new androidx.fragment.app.f();
        this.f1522y = fVar;
        fVar.m(this.f1521x, new androidx.fragment.app.Fragment.b(), this);
    }

    public void D0(boolean z4) {
        e0(z4);
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.C(z4);
        }
    }

    public final boolean E() {
        return this.G;
    }

    public boolean E0(android.view.MenuItem menuItem) {
        if (this.F) {
            return false;
        }
        if (this.J && this.K && f0(menuItem)) {
            return true;
        }
        androidx.fragment.app.f fVar = this.f1522y;
        return fVar != null && fVar.R(menuItem);
    }

    public boolean F() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return false;
        }
        return dVar.f1544q;
    }

    public void F0(android.view.Menu menu) {
        if (this.F) {
            return;
        }
        if (this.J && this.K) {
            g0(menu);
        }
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.S(menu);
        }
    }

    public final boolean G() {
        return this.f1519v > 0;
    }

    public void G0() {
        if (this.N != null) {
            this.Y.f(androidx.lifecycle.d.b.ON_PAUSE);
        }
        this.X.f(androidx.lifecycle.d.b.ON_PAUSE);
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.T();
        }
        this.f1502a = 3;
        this.L = false;
        h0();
        if (this.L) {
            return;
        }
        throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onPause()");
    }

    public boolean H() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return false;
        }
        return dVar.f1542o;
    }

    public void H0(boolean z4) {
        i0(z4);
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.U(z4);
        }
    }

    public final boolean I() {
        androidx.fragment.app.f fVar = this.f1520w;
        if (fVar == null) {
            return false;
        }
        return fVar.f();
    }

    public boolean I0(android.view.Menu menu) {
        boolean z4 = false;
        if (this.F) {
            return false;
        }
        if (this.J && this.K) {
            j0(menu);
            z4 = true;
        }
        androidx.fragment.app.f fVar = this.f1522y;
        return fVar != null ? z4 | fVar.V(menu) : z4;
    }

    public void J0() {
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.H0();
            this.f1522y.f0();
        }
        this.f1502a = 4;
        this.L = false;
        l0();
        if (!this.L) {
            throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onResume()");
        }
        androidx.fragment.app.f fVar2 = this.f1522y;
        if (fVar2 != null) {
            fVar2.W();
            this.f1522y.f0();
        }
        androidx.lifecycle.h hVar = this.X;
        androidx.lifecycle.d.b bVar = androidx.lifecycle.d.b.ON_RESUME;
        hVar.f(bVar);
        if (this.N != null) {
            this.Y.f(bVar);
        }
    }

    public void K() {
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.H0();
        }
    }

    public void K0(android.os.Bundle bundle) {
        android.os.Parcelable parcelableT0;
        m0(bundle);
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar == null || (parcelableT0 = fVar.T0()) == null) {
            return;
        }
        bundle.putParcelable("android:support:fragments", parcelableT0);
    }

    public void L(android.os.Bundle bundle) {
        this.L = true;
    }

    public void L0() {
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.H0();
            this.f1522y.f0();
        }
        this.f1502a = 3;
        this.L = false;
        n0();
        if (!this.L) {
            throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onStart()");
        }
        androidx.fragment.app.f fVar2 = this.f1522y;
        if (fVar2 != null) {
            fVar2.X();
        }
        androidx.lifecycle.h hVar = this.X;
        androidx.lifecycle.d.b bVar = androidx.lifecycle.d.b.ON_START;
        hVar.f(bVar);
        if (this.N != null) {
            this.Y.f(bVar);
        }
    }

    public void M(int i5, int i6, android.content.Intent intent) {
    }

    public void M0() {
        if (this.N != null) {
            this.Y.f(androidx.lifecycle.d.b.ON_STOP);
        }
        this.X.f(androidx.lifecycle.d.b.ON_STOP);
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.Z();
        }
        this.f1502a = 2;
        this.L = false;
        o0();
        if (this.L) {
            return;
        }
        throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onStop()");
    }

    @java.lang.Deprecated
    public void N(android.app.Activity activity) {
        this.L = true;
    }

    public final android.content.Context N0() {
        android.content.Context contextK = k();
        if (contextK != null) {
            return contextK;
        }
        throw new java.lang.IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public void O(android.content.Context context) {
        this.L = true;
        androidx.fragment.app.d dVar = this.f1521x;
        android.app.Activity activityD = dVar == null ? null : dVar.d();
        if (activityD != null) {
            this.L = false;
            N(activityD);
        }
    }

    public void O0(android.os.Bundle bundle) {
        android.os.Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        if (this.f1522y == null) {
            D();
        }
        this.f1522y.Q0(parcelable, this.f1523z);
        this.f1523z = null;
        this.f1522y.x();
    }

    public void P(androidx.fragment.app.Fragment fragment) {
    }

    public final void P0(android.os.Bundle bundle) {
        android.util.SparseArray<android.os.Parcelable> sparseArray = this.f1505c;
        if (sparseArray != null) {
            this.O.restoreHierarchyState(sparseArray);
            this.f1505c = null;
        }
        this.L = false;
        q0(bundle);
        if (this.L) {
            if (this.N != null) {
                this.Y.f(androidx.lifecycle.d.b.ON_CREATE);
            }
        } else {
            throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onViewStateRestored()");
        }
    }

    public boolean Q(android.view.MenuItem menuItem) {
        return false;
    }

    public void Q0(android.view.View view) {
        c().f1528a = view;
    }

    public void R(android.os.Bundle bundle) {
        this.L = true;
        O0(bundle);
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar == null || fVar.u0(1)) {
            return;
        }
        this.f1522y.x();
    }

    public void R0(android.animation.Animator animator) {
        c().f1529b = animator;
    }

    public android.view.animation.Animation S(int i5, boolean z4, int i6) {
        return null;
    }

    public void S0(android.os.Bundle bundle) {
        if (this.f1507e >= 0 && I()) {
            throw new java.lang.IllegalStateException("Fragment already active and state has been saved");
        }
        this.f1509g = bundle;
    }

    public android.animation.Animator T(int i5, boolean z4, int i6) {
        return null;
    }

    public void T0(boolean z4) {
        c().f1544q = z4;
    }

    public void U(android.view.Menu menu, android.view.MenuInflater menuInflater) {
    }

    public final void U0(int i5, androidx.fragment.app.Fragment fragment) {
        this.f1507e = i5;
        if (fragment == null) {
            this.f1508f = "android:fragment:" + this.f1507e;
            return;
        }
        this.f1508f = fragment.f1508f + ":" + this.f1507e;
    }

    public android.view.View V(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        return null;
    }

    public void V0(int i5) {
        if (this.R == null && i5 == 0) {
            return;
        }
        c().f1531d = i5;
    }

    public void W() {
        this.L = true;
        androidx.fragment.app.FragmentActivity fragmentActivityE = e();
        boolean z4 = fragmentActivityE != null && fragmentActivityE.isChangingConfigurations();
        androidx.lifecycle.q qVar = this.A;
        if (qVar == null || z4) {
            return;
        }
        qVar.a();
    }

    public void W0(int i5, int i6) {
        if (this.R == null && i5 == 0 && i6 == 0) {
            return;
        }
        c();
        androidx.fragment.app.Fragment.d dVar = this.R;
        dVar.f1532e = i5;
        dVar.f1533f = i6;
    }

    public void X() {
    }

    public void X0(androidx.fragment.app.Fragment.f fVar) {
        c();
        androidx.fragment.app.Fragment.d dVar = this.R;
        androidx.fragment.app.Fragment.f fVar2 = dVar.f1543p;
        if (fVar == fVar2) {
            return;
        }
        if (fVar != null && fVar2 != null) {
            throw new java.lang.IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        if (dVar.f1542o) {
            dVar.f1543p = fVar;
        }
        if (fVar != null) {
            fVar.b();
        }
    }

    public void Y() {
        this.L = true;
    }

    public void Y0(int i5) {
        c().f1530c = i5;
    }

    public void Z() {
        this.L = true;
    }

    public void Z0() {
        androidx.fragment.app.f fVar = this.f1520w;
        if (fVar == null || fVar.f1635r == null) {
            c().f1542o = false;
        } else if (android.os.Looper.myLooper() != this.f1520w.f1635r.g().getLooper()) {
            this.f1520w.f1635r.g().postAtFrontOfQueue(new androidx.fragment.app.Fragment.a());
        } else {
            a();
        }
    }

    public void a() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        androidx.fragment.app.Fragment.f fVar = null;
        if (dVar != null) {
            dVar.f1542o = false;
            androidx.fragment.app.Fragment.f fVar2 = dVar.f1543p;
            dVar.f1543p = null;
            fVar = fVar2;
        }
        if (fVar != null) {
            fVar.a();
        }
    }

    public android.view.LayoutInflater a0(android.os.Bundle bundle) {
        return q(bundle);
    }

    public void b(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(java.lang.Integer.toHexString(this.C));
        printWriter.print(" mContainerId=#");
        printWriter.print(java.lang.Integer.toHexString(this.D));
        printWriter.print(" mTag=");
        printWriter.println(this.E);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f1502a);
        printWriter.print(" mIndex=");
        printWriter.print(this.f1507e);
        printWriter.print(" mWho=");
        printWriter.print(this.f1508f);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f1519v);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f1513p);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f1514q);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f1515r);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f1516s);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.F);
        printWriter.print(" mDetached=");
        printWriter.print(this.G);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.K);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.J);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.H);
        printWriter.print(" mRetaining=");
        printWriter.print(this.I);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.Q);
        if (this.f1520w != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f1520w);
        }
        if (this.f1521x != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f1521x);
        }
        if (this.B != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.B);
        }
        if (this.f1509g != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f1509g);
        }
        if (this.f1504b != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f1504b);
        }
        if (this.f1505c != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f1505c);
        }
        if (this.f1510h != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(this.f1510h);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f1512o);
        }
        if (r() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(r());
        }
        if (this.M != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.M);
        }
        if (this.N != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.N);
        }
        if (this.O != null) {
            printWriter.print(str);
            printWriter.print("mInnerView=");
            printWriter.println(this.N);
        }
        if (h() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(h());
            printWriter.print(str);
            printWriter.print("mStateAfterAnimating=");
            printWriter.println(z());
        }
        if (k() != null) {
            b0.a.b(this).a(str, fileDescriptor, printWriter, strArr);
        }
        if (this.f1522y != null) {
            printWriter.print(str);
            printWriter.println("Child " + this.f1522y + ":");
            this.f1522y.b(str + "  ", fileDescriptor, printWriter, strArr);
        }
    }

    public void b0(boolean z4) {
    }

    public final androidx.fragment.app.Fragment.d c() {
        if (this.R == null) {
            this.R = new androidx.fragment.app.Fragment.d();
        }
        return this.R;
    }

    @java.lang.Deprecated
    public void c0(android.app.Activity activity, android.util.AttributeSet attributeSet, android.os.Bundle bundle) {
        this.L = true;
    }

    public androidx.fragment.app.Fragment d(java.lang.String str) {
        if (str.equals(this.f1508f)) {
            return this;
        }
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            return fVar.k0(str);
        }
        return null;
    }

    public void d0(android.content.Context context, android.util.AttributeSet attributeSet, android.os.Bundle bundle) {
        this.L = true;
        androidx.fragment.app.d dVar = this.f1521x;
        android.app.Activity activityD = dVar == null ? null : dVar.d();
        if (activityD != null) {
            this.L = false;
            c0(activityD, attributeSet, bundle);
        }
    }

    public final androidx.fragment.app.FragmentActivity e() {
        androidx.fragment.app.d dVar = this.f1521x;
        if (dVar == null) {
            return null;
        }
        return (androidx.fragment.app.FragmentActivity) dVar.d();
    }

    public void e0(boolean z4) {
    }

    public final boolean equals(java.lang.Object obj) {
        return super.equals(obj);
    }

    public boolean f() {
        java.lang.Boolean bool;
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null || (bool = dVar.f1541n) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean f0(android.view.MenuItem menuItem) {
        return false;
    }

    public boolean g() {
        java.lang.Boolean bool;
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null || (bool = dVar.f1540m) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public void g0(android.view.Menu menu) {
    }

    @Override // androidx.lifecycle.g
    public androidx.lifecycle.d getLifecycle() {
        return this.X;
    }

    @Override // androidx.lifecycle.r
    public androidx.lifecycle.q getViewModelStore() {
        if (k() == null) {
            throw new java.lang.IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.A == null) {
            this.A = new androidx.lifecycle.q();
        }
        return this.A;
    }

    public android.view.View h() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        return dVar.f1528a;
    }

    public void h0() {
        this.L = true;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public android.animation.Animator i() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        return dVar.f1529b;
    }

    public void i0(boolean z4) {
    }

    public final androidx.fragment.app.e j() {
        if (this.f1522y == null) {
            D();
            int i5 = this.f1502a;
            if (i5 >= 4) {
                this.f1522y.W();
            } else if (i5 >= 3) {
                this.f1522y.X();
            } else if (i5 >= 2) {
                this.f1522y.u();
            } else if (i5 >= 1) {
                this.f1522y.x();
            }
        }
        return this.f1522y;
    }

    public void j0(android.view.Menu menu) {
    }

    public android.content.Context k() {
        androidx.fragment.app.d dVar = this.f1521x;
        if (dVar == null) {
            return null;
        }
        return dVar.e();
    }

    public void k0(int i5, java.lang.String[] strArr, int[] iArr) {
    }

    public java.lang.Object l() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        return dVar.f1534g;
    }

    public void l0() {
        this.L = true;
    }

    public androidx.core.app.k m() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        java.util.Objects.requireNonNull(dVar);
        return null;
    }

    public void m0(android.os.Bundle bundle) {
    }

    public java.lang.Object n() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        return dVar.f1536i;
    }

    public void n0() {
        this.L = true;
    }

    public androidx.core.app.k o() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        java.util.Objects.requireNonNull(dVar);
        return null;
    }

    public void o0() {
        this.L = true;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        this.L = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(android.view.ContextMenu contextMenu, android.view.View view, android.view.ContextMenu.ContextMenuInfo contextMenuInfo) {
        e().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.L = true;
    }

    public final androidx.fragment.app.e p() {
        return this.f1520w;
    }

    public void p0(android.view.View view, android.os.Bundle bundle) {
    }

    @java.lang.Deprecated
    public android.view.LayoutInflater q(android.os.Bundle bundle) {
        androidx.fragment.app.d dVar = this.f1521x;
        if (dVar == null) {
            throw new java.lang.IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        android.view.LayoutInflater layoutInflaterJ = dVar.j();
        j();
        w.f.a(layoutInflaterJ, this.f1522y.r0());
        return layoutInflaterJ;
    }

    public void q0(android.os.Bundle bundle) {
        this.L = true;
    }

    public int r() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return 0;
        }
        return dVar.f1531d;
    }

    public androidx.fragment.app.e r0() {
        return this.f1522y;
    }

    public int s() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return 0;
        }
        return dVar.f1532e;
    }

    public void s0(android.os.Bundle bundle) {
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.H0();
        }
        this.f1502a = 2;
        this.L = false;
        L(bundle);
        if (this.L) {
            androidx.fragment.app.f fVar2 = this.f1522y;
            if (fVar2 != null) {
                fVar2.u();
                return;
            }
            return;
        }
        throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onActivityCreated()");
    }

    public int t() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return 0;
        }
        return dVar.f1533f;
    }

    public void t0(android.content.res.Configuration configuration) {
        onConfigurationChanged(configuration);
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.v(configuration);
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(com.alibaba.fastjson.asm.Opcodes.IOR);
        v.b.a(this, sb);
        if (this.f1507e >= 0) {
            sb.append(" #");
            sb.append(this.f1507e);
        }
        if (this.C != 0) {
            sb.append(" id=0x");
            sb.append(java.lang.Integer.toHexString(this.C));
        }
        if (this.E != null) {
            sb.append(" ");
            sb.append(this.E);
        }
        sb.append('}');
        return sb.toString();
    }

    public java.lang.Object u() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        java.lang.Object obj = dVar.f1537j;
        return obj == f1501c0 ? n() : obj;
    }

    public boolean u0(android.view.MenuItem menuItem) {
        if (this.F) {
            return false;
        }
        if (Q(menuItem)) {
            return true;
        }
        androidx.fragment.app.f fVar = this.f1522y;
        return fVar != null && fVar.w(menuItem);
    }

    public final android.content.res.Resources v() {
        return N0().getResources();
    }

    public void v0(android.os.Bundle bundle) {
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.H0();
        }
        this.f1502a = 1;
        this.L = false;
        R(bundle);
        this.W = true;
        if (this.L) {
            this.X.f(androidx.lifecycle.d.b.ON_CREATE);
            return;
        }
        throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onCreate()");
    }

    public java.lang.Object w() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        java.lang.Object obj = dVar.f1535h;
        return obj == f1501c0 ? l() : obj;
    }

    public boolean w0(android.view.Menu menu, android.view.MenuInflater menuInflater) {
        boolean z4 = false;
        if (this.F) {
            return false;
        }
        if (this.J && this.K) {
            U(menu, menuInflater);
            z4 = true;
        }
        androidx.fragment.app.f fVar = this.f1522y;
        return fVar != null ? z4 | fVar.y(menu, menuInflater) : z4;
    }

    public java.lang.Object x() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        return dVar.f1538k;
    }

    public void x0(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.H0();
        }
        this.f1518u = true;
        this.Z = new androidx.fragment.app.Fragment.c();
        this.Y = null;
        android.view.View viewV = V(layoutInflater, viewGroup, bundle);
        this.N = viewV;
        if (viewV != null) {
            this.Z.getLifecycle();
            this.f1503a0.i(this.Z);
        } else {
            if (this.Y != null) {
                throw new java.lang.IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.Z = null;
        }
    }

    public java.lang.Object y() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return null;
        }
        java.lang.Object obj = dVar.f1539l;
        return obj == f1501c0 ? x() : obj;
    }

    public void y0() {
        this.X.f(androidx.lifecycle.d.b.ON_DESTROY);
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.z();
        }
        this.f1502a = 0;
        this.L = false;
        this.W = false;
        W();
        if (this.L) {
            this.f1522y = null;
            return;
        }
        throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onDestroy()");
    }

    public int z() {
        androidx.fragment.app.Fragment.d dVar = this.R;
        if (dVar == null) {
            return 0;
        }
        return dVar.f1530c;
    }

    public void z0() {
        if (this.N != null) {
            this.Y.f(androidx.lifecycle.d.b.ON_DESTROY);
        }
        androidx.fragment.app.f fVar = this.f1522y;
        if (fVar != null) {
            fVar.A();
        }
        this.f1502a = 1;
        this.L = false;
        Y();
        if (this.L) {
            b0.a.b(this).c();
            this.f1518u = false;
        } else {
            throw new androidx.fragment.app.m("Fragment " + this + " did not call through to super.onDestroyView()");
        }
    }
}
