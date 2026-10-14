package androidx.appcompat.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AppCompatActivity extends androidx.fragment.app.FragmentActivity implements androidx.appcompat.app.c, androidx.core.app.l.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public androidx.appcompat.app.d f247s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f248t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public android.content.res.Resources f249u;

    @Override // android.app.Activity
    public void addContentView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        getDelegate().c(view, layoutParams);
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        androidx.appcompat.app.ActionBar supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.g()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        androidx.appcompat.app.ActionBar supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.q(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends android.view.View> T findViewById(int i5) {
        return (T) getDelegate().g(i5);
    }

    public androidx.appcompat.app.d getDelegate() {
        if (this.f247s == null) {
            this.f247s = androidx.appcompat.app.d.e(this, this);
        }
        return this.f247s;
    }

    public androidx.appcompat.app.a getDrawerToggleDelegate() {
        return getDelegate().i();
    }

    @Override // android.app.Activity
    public android.view.MenuInflater getMenuInflater() {
        return getDelegate().j();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources getResources() {
        if (this.f249u == null && androidx.appcompat.widget.g0.b()) {
            this.f249u = new androidx.appcompat.widget.g0(this, super.getResources());
        }
        android.content.res.Resources resources = this.f249u;
        return resources == null ? super.getResources() : resources;
    }

    public androidx.appcompat.app.ActionBar getSupportActionBar() {
        return getDelegate().k();
    }

    @Override // androidx.core.app.l.a
    public android.content.Intent getSupportParentActivityIntent() {
        return androidx.core.app.c.a(this);
    }

    public final boolean h(int i5, android.view.KeyEvent keyEvent) {
        return false;
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().m();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getDelegate().n(configuration);
        if (this.f249u != null) {
            this.f249u.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        androidx.appcompat.app.d delegate = getDelegate();
        delegate.l();
        delegate.o(bundle);
        if (delegate.d() && this.f248t != 0) {
            onApplyThemeResource(getTheme(), this.f248t, false);
        }
        super.onCreate(bundle);
    }

    public void onCreateSupportNavigateUpTaskStack(androidx.core.app.l lVar) {
        lVar.b(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().p();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i5, android.view.KeyEvent keyEvent) {
        if (h(i5, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i5, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i5, android.view.MenuItem menuItem) {
        if (super.onMenuItemSelected(i5, menuItem)) {
            return true;
        }
        androidx.appcompat.app.ActionBar supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.j() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i5, android.view.Menu menu) {
        return super.onMenuOpened(i5, menu);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i5, android.view.Menu menu) {
        super.onPanelClosed(i5, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(android.os.Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().q(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().r();
    }

    public void onPrepareSupportNavigateUpTaskStack(androidx.core.app.l lVar) {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(android.os.Bundle bundle) {
        super.onSaveInstanceState(bundle);
        getDelegate().s(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        getDelegate().t();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        getDelegate().u();
    }

    @Override // androidx.appcompat.app.c
    public void onSupportActionModeFinished(e.b bVar) {
    }

    @Override // androidx.appcompat.app.c
    public void onSupportActionModeStarted(e.b bVar) {
    }

    @java.lang.Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        android.content.Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        androidx.core.app.l lVarD = androidx.core.app.l.d(this);
        onCreateSupportNavigateUpTaskStack(lVarD);
        onPrepareSupportNavigateUpTaskStack(lVarD);
        lVarD.e();
        try {
            androidx.core.app.a.h(this);
            return true;
        } catch (java.lang.IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(java.lang.CharSequence charSequence, int i5) {
        super.onTitleChanged(charSequence, i5);
        getDelegate().A(charSequence);
    }

    @Override // androidx.appcompat.app.c
    public e.b onWindowStartingSupportActionMode(e.b.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        androidx.appcompat.app.ActionBar supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.r()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i5) {
        getDelegate().w(i5);
    }

    public void setSupportActionBar(androidx.appcompat.widget.Toolbar toolbar) {
        getDelegate().z(toolbar);
    }

    @java.lang.Deprecated
    public void setSupportProgress(int i5) {
    }

    @java.lang.Deprecated
    public void setSupportProgressBarIndeterminate(boolean z4) {
    }

    @java.lang.Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z4) {
    }

    @java.lang.Deprecated
    public void setSupportProgressBarVisibility(boolean z4) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i5) {
        super.setTheme(i5);
        this.f248t = i5;
    }

    public e.b startSupportActionMode(e.b.a aVar) {
        return getDelegate().B(aVar);
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        getDelegate().m();
    }

    public void supportNavigateUpTo(android.content.Intent intent) {
        androidx.core.app.c.e(this, intent);
    }

    public boolean supportRequestWindowFeature(int i5) {
        return getDelegate().v(i5);
    }

    public boolean supportShouldUpRecreateTask(android.content.Intent intent) {
        return androidx.core.app.c.f(this, intent);
    }

    @Override // android.app.Activity
    public void setContentView(android.view.View view) {
        getDelegate().x(view);
    }

    @Override // android.app.Activity
    public void setContentView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        getDelegate().y(view, layoutParams);
    }
}
