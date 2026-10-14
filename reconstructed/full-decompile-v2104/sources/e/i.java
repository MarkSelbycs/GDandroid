package e;

/* JADX INFO: compiled from: WindowCallbackWrapper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i implements android.view.Window.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.Window.Callback f4037a;

    public i(android.view.Window.Callback callback) {
        if (callback == null) {
            throw new java.lang.IllegalArgumentException("Window callback may not be null");
        }
        this.f4037a = callback;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(android.view.MotionEvent motionEvent) {
        return this.f4037a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        return this.f4037a.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(android.view.KeyEvent keyEvent) {
        return this.f4037a.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        return this.f4037a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(android.view.MotionEvent motionEvent) {
        return this.f4037a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(android.view.MotionEvent motionEvent) {
        return this.f4037a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(android.view.ActionMode actionMode) {
        this.f4037a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(android.view.ActionMode actionMode) {
        this.f4037a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
        this.f4037a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
        this.f4037a.onContentChanged();
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i5, android.view.Menu menu) {
        return this.f4037a.onCreatePanelMenu(i5, menu);
    }

    @Override // android.view.Window.Callback
    public android.view.View onCreatePanelView(int i5) {
        return this.f4037a.onCreatePanelView(i5);
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f4037a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i5, android.view.MenuItem menuItem) {
        return this.f4037a.onMenuItemSelected(i5, menuItem);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i5, android.view.Menu menu) {
        return this.f4037a.onMenuOpened(i5, menu);
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i5, android.view.Menu menu) {
        this.f4037a.onPanelClosed(i5, menu);
    }

    @Override // android.view.Window.Callback
    public void onPointerCaptureChanged(boolean z4) {
        this.f4037a.onPointerCaptureChanged(z4);
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i5, android.view.View view, android.view.Menu menu) {
        return this.f4037a.onPreparePanel(i5, view, menu);
    }

    @Override // android.view.Window.Callback
    public void onProvideKeyboardShortcuts(java.util.List<android.view.KeyboardShortcutGroup> list, android.view.Menu menu, int i5) {
        this.f4037a.onProvideKeyboardShortcuts(list, menu, i5);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested(android.view.SearchEvent searchEvent) {
        return this.f4037a.onSearchRequested(searchEvent);
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(android.view.WindowManager.LayoutParams layoutParams) {
        this.f4037a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z4) {
        this.f4037a.onWindowFocusChanged(z4);
    }

    @Override // android.view.Window.Callback
    public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback) {
        return this.f4037a.onWindowStartingActionMode(callback);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        return this.f4037a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback, int i5) {
        return this.f4037a.onWindowStartingActionMode(callback, i5);
    }
}
