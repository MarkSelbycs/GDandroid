package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: MenuDialogHelper.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class f implements android.content.DialogInterface.OnKeyListener, android.content.DialogInterface.OnClickListener, android.content.DialogInterface.OnDismissListener, androidx.appcompat.view.menu.i.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.view.menu.e f506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public androidx.appcompat.app.b f507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public androidx.appcompat.view.menu.c f508c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public androidx.appcompat.view.menu.i.a f509d;

    public f(androidx.appcompat.view.menu.e eVar) {
        this.f506a = eVar;
    }

    @Override // androidx.appcompat.view.menu.i.a
    public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
        if (z4 || eVar == this.f506a) {
            c();
        }
        androidx.appcompat.view.menu.i.a aVar = this.f509d;
        if (aVar != null) {
            aVar.a(eVar, z4);
        }
    }

    @Override // androidx.appcompat.view.menu.i.a
    public boolean b(androidx.appcompat.view.menu.e eVar) {
        androidx.appcompat.view.menu.i.a aVar = this.f509d;
        if (aVar != null) {
            return aVar.b(eVar);
        }
        return false;
    }

    public void c() {
        androidx.appcompat.app.b bVar = this.f507b;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    public void d(android.os.IBinder iBinder) {
        androidx.appcompat.view.menu.e eVar = this.f506a;
        androidx.appcompat.app.b.a aVar = new androidx.appcompat.app.b.a(eVar.u());
        androidx.appcompat.view.menu.c cVar = new androidx.appcompat.view.menu.c(aVar.b(), androidx.appcompat.R.layout.abc_list_menu_item_layout);
        this.f508c = cVar;
        cVar.i(this);
        this.f506a.b(this.f508c);
        aVar.c(this.f508c.b(), this);
        android.view.View viewY = eVar.y();
        if (viewY != null) {
            aVar.d(viewY);
        } else {
            aVar.e(eVar.w()).g(eVar.x());
        }
        aVar.f(this);
        androidx.appcompat.app.b bVarA = aVar.a();
        this.f507b = bVarA;
        bVarA.setOnDismissListener(this);
        android.view.WindowManager.LayoutParams attributes = this.f507b.getWindow().getAttributes();
        attributes.type = com.alibaba.fastjson.JSONStreamContext.PropertyValue;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f507b.show();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(android.content.DialogInterface dialogInterface, int i5) {
        this.f506a.L((androidx.appcompat.view.menu.g) this.f508c.b().getItem(i5), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(android.content.DialogInterface dialogInterface) {
        this.f508c.a(this.f506a, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(android.content.DialogInterface dialogInterface, int i5, android.view.KeyEvent keyEvent) {
        android.view.Window window;
        android.view.View decorView;
        android.view.KeyEvent.DispatcherState keyDispatcherState;
        android.view.View decorView2;
        android.view.KeyEvent.DispatcherState keyDispatcherState2;
        if (i5 == 82 || i5 == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                android.view.Window window2 = this.f507b.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f507b.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f506a.e(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f506a.performShortcut(i5, keyEvent, 0);
    }
}
