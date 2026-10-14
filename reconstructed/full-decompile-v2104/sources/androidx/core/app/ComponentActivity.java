package androidx.core.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ComponentActivity extends android.app.Activity implements androidx.lifecycle.g, w.e.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public j.g<java.lang.Class<? extends androidx.core.app.ComponentActivity.a>, androidx.core.app.ComponentActivity.a> f1274a = new j.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.lifecycle.h f1275b = new androidx.lifecycle.h(this);

    @java.lang.Deprecated
    public static class a {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        android.view.View decorView = getWindow().getDecorView();
        if (decorView == null || !w.e.a(decorView, keyEvent)) {
            return w.e.b(this, decorView, this, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(android.view.KeyEvent keyEvent) {
        android.view.View decorView = getWindow().getDecorView();
        if (decorView == null || !w.e.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @java.lang.Deprecated
    public <T extends androidx.core.app.ComponentActivity.a> T getExtraData(java.lang.Class<T> cls) {
        return (T) this.f1274a.get(cls);
    }

    @Override // androidx.lifecycle.g
    public androidx.lifecycle.d getLifecycle() {
        return this.f1275b;
    }

    @Override // android.app.Activity
    @android.annotation.SuppressLint({"RestrictedApi"})
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        androidx.lifecycle.m.f(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(android.os.Bundle bundle) {
        this.f1275b.h(androidx.lifecycle.d.c.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @java.lang.Deprecated
    public void putExtraData(androidx.core.app.ComponentActivity.a aVar) {
        this.f1274a.put((java.lang.Class<? extends androidx.core.app.ComponentActivity.a>) aVar.getClass(), aVar);
    }

    @Override // w.e.a
    public boolean superDispatchKeyEvent(android.view.KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }
}
