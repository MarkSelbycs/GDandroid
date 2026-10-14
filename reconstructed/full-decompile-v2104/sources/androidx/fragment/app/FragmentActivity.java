package androidx.fragment.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class FragmentActivity extends androidx.core.app.ComponentActivity implements androidx.lifecycle.r {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.lifecycle.q f1547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1548f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1549g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1551i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1552o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1553p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1554q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public j.h<java.lang.String> f1555r;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.os.Handler f1545c = new androidx.fragment.app.FragmentActivity.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final androidx.fragment.app.c f1546d = androidx.fragment.app.c.b(new androidx.fragment.app.FragmentActivity.b());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1550h = true;

    public class a extends android.os.Handler {
        public a() {
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            if (message.what != 2) {
                super.handleMessage(message);
            } else {
                androidx.fragment.app.FragmentActivity.this.g();
                androidx.fragment.app.FragmentActivity.this.f1546d.s();
            }
        }
    }

    public class b extends androidx.fragment.app.d<androidx.fragment.app.FragmentActivity> {
        public b() {
            super(androidx.fragment.app.FragmentActivity.this);
        }

        @Override // androidx.fragment.app.b
        public android.view.View b(int i5) {
            return androidx.fragment.app.FragmentActivity.this.findViewById(i5);
        }

        @Override // androidx.fragment.app.b
        public boolean c() {
            android.view.Window window = androidx.fragment.app.FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.d
        public void h(androidx.fragment.app.Fragment fragment) {
            androidx.fragment.app.FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.d
        public void i(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
            androidx.fragment.app.FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.d
        public android.view.LayoutInflater j() {
            return androidx.fragment.app.FragmentActivity.this.getLayoutInflater().cloneInContext(androidx.fragment.app.FragmentActivity.this);
        }

        @Override // androidx.fragment.app.d
        public int k() {
            android.view.Window window = androidx.fragment.app.FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // androidx.fragment.app.d
        public boolean l() {
            return androidx.fragment.app.FragmentActivity.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.d
        public boolean m(androidx.fragment.app.Fragment fragment) {
            return !androidx.fragment.app.FragmentActivity.this.isFinishing();
        }

        @Override // androidx.fragment.app.d
        public void n() {
            androidx.fragment.app.FragmentActivity.this.supportInvalidateOptionsMenu();
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.Object f1558a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.lifecycle.q f1559b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.fragment.app.g f1560c;
    }

    public static void b(int i5) {
        if ((i5 & (-65536)) != 0) {
            throw new java.lang.IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    public static boolean e(androidx.fragment.app.e eVar, androidx.lifecycle.d.c cVar) {
        boolean zE = false;
        for (androidx.fragment.app.Fragment fragment : eVar.e()) {
            if (fragment != null) {
                if (fragment.getLifecycle().a().b(androidx.lifecycle.d.c.STARTED)) {
                    fragment.X.h(cVar);
                    zE = true;
                }
                androidx.fragment.app.e eVarR0 = fragment.r0();
                if (eVarR0 != null) {
                    zE |= e(eVarR0, cVar);
                }
            }
        }
        return zE;
    }

    public final int a(androidx.fragment.app.Fragment fragment) {
        if (this.f1555r.t() >= 65534) {
            throw new java.lang.IllegalStateException("Too many pending Fragment activity results.");
        }
        while (this.f1555r.j(this.f1554q) >= 0) {
            this.f1554q = (this.f1554q + 1) % 65534;
        }
        int i5 = this.f1554q;
        this.f1555r.m(i5, fragment.f1508f);
        this.f1554q = (this.f1554q + 1) % 65534;
        return i5;
    }

    public final android.view.View c(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        return this.f1546d.w(view, str, context, attributeSet);
    }

    public final void d() {
        while (e(getSupportFragmentManager(), androidx.lifecycle.d.c.CREATED)) {
        }
    }

    @Override // android.app.Activity
    public void dump(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        printWriter.println(" State:");
        java.lang.String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.f1548f);
        printWriter.print(" mResumed=");
        printWriter.print(this.f1549g);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1550h);
        if (getApplication() != null) {
            b0.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.f1546d.u().b(str, fileDescriptor, printWriter, strArr);
    }

    public boolean f(android.view.View view, android.view.Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    public void g() {
        this.f1546d.p();
    }

    public java.lang.Object getLastCustomNonConfigurationInstance() {
        androidx.fragment.app.FragmentActivity.c cVar = (androidx.fragment.app.FragmentActivity.c) getLastNonConfigurationInstance();
        if (cVar != null) {
            return cVar.f1558a;
        }
        return null;
    }

    @Override // androidx.core.app.ComponentActivity, androidx.lifecycle.g
    public androidx.lifecycle.d getLifecycle() {
        return super.getLifecycle();
    }

    public androidx.fragment.app.e getSupportFragmentManager() {
        return this.f1546d.u();
    }

    @java.lang.Deprecated
    public b0.a getSupportLoaderManager() {
        return b0.a.b(this);
    }

    @Override // androidx.lifecycle.r
    public androidx.lifecycle.q getViewModelStore() {
        if (getApplication() == null) {
            throw new java.lang.IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f1547e == null) {
            androidx.fragment.app.FragmentActivity.c cVar = (androidx.fragment.app.FragmentActivity.c) getLastNonConfigurationInstance();
            if (cVar != null) {
                this.f1547e = cVar.f1559b;
            }
            if (this.f1547e == null) {
                this.f1547e = new androidx.lifecycle.q();
            }
        }
        return this.f1547e;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i5, int i6, android.content.Intent intent) {
        this.f1546d.v();
        int i7 = i5 >> 16;
        if (i7 == 0) {
            androidx.core.app.a.c cVarJ = androidx.core.app.a.j();
            if (cVarJ == null || !cVarJ.a(this, i5, i6, intent)) {
                super.onActivityResult(i5, i6, intent);
                return;
            }
            return;
        }
        int i8 = i7 - 1;
        java.lang.String strG = this.f1555r.g(i8);
        this.f1555r.p(i8);
        if (strG == null) {
            android.util.Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
            return;
        }
        androidx.fragment.app.Fragment fragmentT = this.f1546d.t(strG);
        if (fragmentT != null) {
            fragmentT.M(i5 & 65535, i6, intent);
            return;
        }
        android.util.Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strG);
    }

    public void onAttachFragment(androidx.fragment.app.Fragment fragment) {
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        androidx.fragment.app.e eVarU = this.f1546d.u();
        if (eVarU.f() || !eVarU.g()) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f1546d.v();
        this.f1546d.d(configuration);
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        androidx.lifecycle.q qVar;
        this.f1546d.a(null);
        super.onCreate(bundle);
        androidx.fragment.app.FragmentActivity.c cVar = (androidx.fragment.app.FragmentActivity.c) getLastNonConfigurationInstance();
        if (cVar != null && (qVar = cVar.f1559b) != null && this.f1547e == null) {
            this.f1547e = qVar;
        }
        if (bundle != null) {
            this.f1546d.x(bundle.getParcelable("android:support:fragments"), cVar != null ? cVar.f1560c : null);
            if (bundle.containsKey("android:support:next_request_index")) {
                this.f1554q = bundle.getInt("android:support:next_request_index");
                int[] intArray = bundle.getIntArray("android:support:request_indicies");
                java.lang.String[] stringArray = bundle.getStringArray("android:support:request_fragment_who");
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    android.util.Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.f1555r = new j.h<>(intArray.length);
                    for (int i5 = 0; i5 < intArray.length; i5++) {
                        this.f1555r.m(intArray[i5], stringArray[i5]);
                    }
                }
            }
        }
        if (this.f1555r == null) {
            this.f1555r = new j.h<>();
            this.f1554q = 0;
        }
        this.f1546d.f();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i5, android.view.Menu menu) {
        return i5 == 0 ? super.onCreatePanelMenu(i5, menu) | this.f1546d.g(menu, getMenuInflater()) : super.onCreatePanelMenu(i5, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public android.view.View onCreateView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        android.view.View viewC = c(view, str, context, attributeSet);
        return viewC == null ? super.onCreateView(view, str, context, attributeSet) : viewC;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f1547e != null && !isChangingConfigurations()) {
            this.f1547e.a();
        }
        this.f1546d.h();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.f1546d.i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i5, android.view.MenuItem menuItem) {
        if (super.onMenuItemSelected(i5, menuItem)) {
            return true;
        }
        if (i5 == 0) {
            return this.f1546d.k(menuItem);
        }
        if (i5 != 6) {
            return false;
        }
        return this.f1546d.e(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z4) {
        this.f1546d.j(z4);
    }

    @Override // android.app.Activity
    public void onNewIntent(android.content.Intent intent) {
        super.onNewIntent(intent);
        this.f1546d.v();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i5, android.view.Menu menu) {
        if (i5 == 0) {
            this.f1546d.l(menu);
        }
        super.onPanelClosed(i5, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1549g = false;
        if (this.f1545c.hasMessages(2)) {
            this.f1545c.removeMessages(2);
            g();
        }
        this.f1546d.m();
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z4) {
        this.f1546d.n(z4);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        this.f1545c.removeMessages(2);
        g();
        this.f1546d.s();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i5, android.view.View view, android.view.Menu menu) {
        return (i5 != 0 || menu == null) ? super.onPreparePanel(i5, view, menu) : f(view, menu) | this.f1546d.o(menu);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i5, java.lang.String[] strArr, int[] iArr) {
        this.f1546d.v();
        int i6 = (i5 >> 16) & 65535;
        if (i6 != 0) {
            int i7 = i6 - 1;
            java.lang.String strG = this.f1555r.g(i7);
            this.f1555r.p(i7);
            if (strG == null) {
                android.util.Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            androidx.fragment.app.Fragment fragmentT = this.f1546d.t(strG);
            if (fragmentT != null) {
                fragmentT.k0(i5 & 65535, strArr, iArr);
                return;
            }
            android.util.Log.w("FragmentActivity", "Activity result no fragment exists for who: " + strG);
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1545c.sendEmptyMessage(2);
        this.f1549g = true;
        this.f1546d.s();
    }

    public java.lang.Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final java.lang.Object onRetainNonConfigurationInstance() {
        java.lang.Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        androidx.fragment.app.g gVarY = this.f1546d.y();
        if (gVarY == null && this.f1547e == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        androidx.fragment.app.FragmentActivity.c cVar = new androidx.fragment.app.FragmentActivity.c();
        cVar.f1558a = objOnRetainCustomNonConfigurationInstance;
        cVar.f1559b = this.f1547e;
        cVar.f1560c = gVarY;
        return cVar;
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(android.os.Bundle bundle) {
        super.onSaveInstanceState(bundle);
        d();
        android.os.Parcelable parcelableZ = this.f1546d.z();
        if (parcelableZ != null) {
            bundle.putParcelable("android:support:fragments", parcelableZ);
        }
        if (this.f1555r.t() > 0) {
            bundle.putInt("android:support:next_request_index", this.f1554q);
            int[] iArr = new int[this.f1555r.t()];
            java.lang.String[] strArr = new java.lang.String[this.f1555r.t()];
            for (int i5 = 0; i5 < this.f1555r.t(); i5++) {
                iArr[i5] = this.f1555r.k(i5);
                strArr[i5] = this.f1555r.u(i5);
            }
            bundle.putIntArray("android:support:request_indicies", iArr);
            bundle.putStringArray("android:support:request_fragment_who", strArr);
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.f1550h = false;
        if (!this.f1548f) {
            this.f1548f = true;
            this.f1546d.c();
        }
        this.f1546d.v();
        this.f1546d.s();
        this.f1546d.q();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.f1546d.v();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.f1550h = true;
        d();
        this.f1546d.r();
    }

    public void setEnterSharedElementCallback(androidx.core.app.k kVar) {
        androidx.core.app.a.l(this, kVar);
    }

    public void setExitSharedElementCallback(androidx.core.app.k kVar) {
        androidx.core.app.a.m(this, kVar);
    }

    @Override // android.app.Activity
    public void startActivityForResult(android.content.Intent intent, int i5) {
        if (!this.f1553p && i5 != -1) {
            b(i5);
        }
        super.startActivityForResult(intent, i5);
    }

    public void startActivityFromFragment(androidx.fragment.app.Fragment fragment, android.content.Intent intent, int i5) {
        startActivityFromFragment(fragment, intent, i5, (android.os.Bundle) null);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(android.content.IntentSender intentSender, int i5, android.content.Intent intent, int i6, int i7, int i8) throws android.content.IntentSender.SendIntentException {
        if (!this.f1552o && i5 != -1) {
            b(i5);
        }
        super.startIntentSenderForResult(intentSender, i5, intent, i6, i7, i8);
    }

    public void startIntentSenderFromFragment(androidx.fragment.app.Fragment fragment, android.content.IntentSender intentSender, int i5, android.content.Intent intent, int i6, int i7, int i8, android.os.Bundle bundle) throws android.content.IntentSender.SendIntentException {
        this.f1552o = true;
        try {
            if (i5 == -1) {
                androidx.core.app.a.o(this, intentSender, i5, intent, i6, i7, i8, bundle);
                this.f1552o = false;
            } else {
                b(i5);
                androidx.core.app.a.o(this, intentSender, ((a(fragment) + 1) << 16) + (i5 & 65535), intent, i6, i7, i8, bundle);
                this.f1552o = false;
            }
        } catch (java.lang.Throwable th) {
            this.f1552o = false;
            throw th;
        }
    }

    public void supportFinishAfterTransition() {
        androidx.core.app.a.i(this);
    }

    @java.lang.Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        androidx.core.app.a.k(this);
    }

    public void supportStartPostponedEnterTransition() {
        androidx.core.app.a.p(this);
    }

    public final void validateRequestPermissionsRequestCode(int i5) {
        if (this.f1551i || i5 == -1) {
            return;
        }
        b(i5);
    }

    public void startActivityFromFragment(androidx.fragment.app.Fragment fragment, android.content.Intent intent, int i5, android.os.Bundle bundle) {
        this.f1553p = true;
        try {
            if (i5 == -1) {
                androidx.core.app.a.n(this, intent, -1, bundle);
                this.f1553p = false;
            } else {
                b(i5);
                androidx.core.app.a.n(this, intent, ((a(fragment) + 1) << 16) + (i5 & 65535), bundle);
                this.f1553p = false;
            }
        } catch (java.lang.Throwable th) {
            this.f1553p = false;
            throw th;
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public android.view.View onCreateView(java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        android.view.View viewC = c(null, str, context, attributeSet);
        return viewC == null ? super.onCreateView(str, context, attributeSet) : viewC;
    }

    @Override // android.app.Activity
    public void startActivityForResult(android.content.Intent intent, int i5, android.os.Bundle bundle) {
        if (!this.f1553p && i5 != -1) {
            b(i5);
        }
        super.startActivityForResult(intent, i5, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(android.content.IntentSender intentSender, int i5, android.content.Intent intent, int i6, int i7, int i8, android.os.Bundle bundle) throws android.content.IntentSender.SendIntentException {
        if (!this.f1552o && i5 != -1) {
            b(i5);
        }
        super.startIntentSenderForResult(intentSender, i5, intent, i6, i7, i8, bundle);
    }
}
