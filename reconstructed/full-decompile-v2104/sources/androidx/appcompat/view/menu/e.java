package androidx.appcompat.view.menu;

/* JADX INFO: compiled from: MenuBuilder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e implements q.a {
    public static final int[] A = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f480a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.content.res.Resources f481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f482c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f483d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public androidx.appcompat.view.menu.e.a f484e;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public android.view.ContextMenu.ContextMenuInfo f492m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public java.lang.CharSequence f493n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.graphics.drawable.Drawable f494o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public android.view.View f495p;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public androidx.appcompat.view.menu.g f503x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f505z;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f491l = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f496q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f497r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f498s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f499t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f500u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public java.util.ArrayList<androidx.appcompat.view.menu.g> f501v = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public java.util.concurrent.CopyOnWriteArrayList<java.lang.ref.WeakReference<androidx.appcompat.view.menu.i>> f502w = new java.util.concurrent.CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f504y = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<androidx.appcompat.view.menu.g> f485f = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<androidx.appcompat.view.menu.g> f486g = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f487h = true;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public java.util.ArrayList<androidx.appcompat.view.menu.g> f488i = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public java.util.ArrayList<androidx.appcompat.view.menu.g> f489j = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f490k = true;

    /* JADX INFO: compiled from: MenuBuilder.java */
    public interface a {
        boolean a(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem);

        void b(androidx.appcompat.view.menu.e eVar);
    }

    /* JADX INFO: compiled from: MenuBuilder.java */
    public interface b {
        boolean a(androidx.appcompat.view.menu.g gVar);
    }

    public e(android.content.Context context) {
        this.f480a = context;
        this.f481b = context.getResources();
        b0(true);
    }

    public static int B(int i5) {
        int i6 = ((-65536) & i5) >> 16;
        if (i6 >= 0) {
            int[] iArr = A;
            if (i6 < iArr.length) {
                return (i5 & 65535) | (iArr[i6] << 16);
            }
        }
        throw new java.lang.IllegalArgumentException("order does not contain a valid category.");
    }

    public static int n(java.util.ArrayList<androidx.appcompat.view.menu.g> arrayList, int i5) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).f() <= i5) {
                return size + 1;
            }
        }
        return 0;
    }

    public boolean A() {
        return this.f499t;
    }

    public android.content.res.Resources C() {
        return this.f481b;
    }

    public androidx.appcompat.view.menu.e D() {
        return this;
    }

    public java.util.ArrayList<androidx.appcompat.view.menu.g> E() {
        if (!this.f487h) {
            return this.f486g;
        }
        this.f486g.clear();
        int size = this.f485f.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.appcompat.view.menu.g gVar = this.f485f.get(i5);
            if (gVar.isVisible()) {
                this.f486g.add(gVar);
            }
        }
        this.f487h = false;
        this.f490k = true;
        return this.f486g;
    }

    public boolean F() {
        return this.f504y;
    }

    public boolean G() {
        return this.f482c;
    }

    public boolean H() {
        return this.f483d;
    }

    public void I(androidx.appcompat.view.menu.g gVar) {
        this.f490k = true;
        K(true);
    }

    public void J(androidx.appcompat.view.menu.g gVar) {
        this.f487h = true;
        K(true);
    }

    public void K(boolean z4) {
        if (this.f496q) {
            this.f497r = true;
            if (z4) {
                this.f498s = true;
                return;
            }
            return;
        }
        if (z4) {
            this.f487h = true;
            this.f490k = true;
        }
        i(z4);
    }

    public boolean L(android.view.MenuItem menuItem, int i5) {
        return M(menuItem, null, i5);
    }

    public boolean M(android.view.MenuItem menuItem, androidx.appcompat.view.menu.i iVar, int i5) {
        androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) menuItem;
        if (gVar == null || !gVar.isEnabled()) {
            return false;
        }
        boolean zK = gVar.k();
        w.b bVarB = gVar.b();
        boolean z4 = bVarB != null && bVarB.a();
        if (gVar.j()) {
            zK |= gVar.expandActionView();
            if (zK) {
                e(true);
            }
        } else if (gVar.hasSubMenu() || z4) {
            if ((i5 & 4) == 0) {
                e(false);
            }
            if (!gVar.hasSubMenu()) {
                gVar.x(new androidx.appcompat.view.menu.l(u(), this, gVar));
            }
            androidx.appcompat.view.menu.l lVar = (androidx.appcompat.view.menu.l) gVar.getSubMenu();
            if (z4) {
                bVarB.f(lVar);
            }
            zK |= j(lVar, iVar);
            if (!zK) {
                e(true);
            }
        } else if ((i5 & 1) == 0) {
            e(true);
        }
        return zK;
    }

    public final void N(int i5, boolean z4) {
        if (i5 < 0 || i5 >= this.f485f.size()) {
            return;
        }
        this.f485f.remove(i5);
        if (z4) {
            K(true);
        }
    }

    public void O(androidx.appcompat.view.menu.i iVar) {
        for (java.lang.ref.WeakReference<androidx.appcompat.view.menu.i> weakReference : this.f502w) {
            androidx.appcompat.view.menu.i iVar2 = weakReference.get();
            if (iVar2 == null || iVar2 == iVar) {
                this.f502w.remove(weakReference);
            }
        }
    }

    public void P(android.os.Bundle bundle) {
        android.view.MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        android.util.SparseArray<android.os.Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(t());
        int size = size();
        for (int i5 = 0; i5 < size; i5++) {
            android.view.MenuItem item = getItem(i5);
            android.view.View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((androidx.appcompat.view.menu.l) item.getSubMenu()).P(bundle);
            }
        }
        int i6 = bundle.getInt("android:menu:expandedactionview");
        if (i6 <= 0 || (menuItemFindItem = findItem(i6)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    public void Q(android.os.Bundle bundle) {
        int size = size();
        android.util.SparseArray<? extends android.os.Parcelable> sparseArray = null;
        for (int i5 = 0; i5 < size; i5++) {
            android.view.MenuItem item = getItem(i5);
            android.view.View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new android.util.SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((androidx.appcompat.view.menu.l) item.getSubMenu()).Q(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(t(), sparseArray);
        }
    }

    public void R(androidx.appcompat.view.menu.e.a aVar) {
        this.f484e = aVar;
    }

    public androidx.appcompat.view.menu.e S(int i5) {
        this.f491l = i5;
        return this;
    }

    public void T(android.view.MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f485f.size();
        d0();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.appcompat.view.menu.g gVar = this.f485f.get(i5);
            if (gVar.getGroupId() == groupId && gVar.m() && gVar.isCheckable()) {
                gVar.s(gVar == menuItem);
            }
        }
        c0();
    }

    public androidx.appcompat.view.menu.e U(int i5) {
        W(0, null, i5, null, null);
        return this;
    }

    public androidx.appcompat.view.menu.e V(android.graphics.drawable.Drawable drawable) {
        W(0, null, 0, drawable, null);
        return this;
    }

    public final void W(int i5, java.lang.CharSequence charSequence, int i6, android.graphics.drawable.Drawable drawable, android.view.View view) {
        android.content.res.Resources resourcesC = C();
        if (view != null) {
            this.f495p = view;
            this.f493n = null;
            this.f494o = null;
        } else {
            if (i5 > 0) {
                this.f493n = resourcesC.getText(i5);
            } else if (charSequence != null) {
                this.f493n = charSequence;
            }
            if (i6 > 0) {
                this.f494o = androidx.core.content.a.b(u(), i6);
            } else if (drawable != null) {
                this.f494o = drawable;
            }
            this.f495p = null;
        }
        K(false);
    }

    public androidx.appcompat.view.menu.e X(int i5) {
        W(i5, null, 0, null, null);
        return this;
    }

    public androidx.appcompat.view.menu.e Y(java.lang.CharSequence charSequence) {
        W(0, charSequence, 0, null, null);
        return this;
    }

    public androidx.appcompat.view.menu.e Z(android.view.View view) {
        W(0, null, 0, null, view);
        return this;
    }

    public android.view.MenuItem a(int i5, int i6, int i7, java.lang.CharSequence charSequence) {
        int iB = B(i7);
        androidx.appcompat.view.menu.g gVarG = g(i5, i6, i7, iB, charSequence, this.f491l);
        android.view.ContextMenu.ContextMenuInfo contextMenuInfo = this.f492m;
        if (contextMenuInfo != null) {
            gVarG.v(contextMenuInfo);
        }
        java.util.ArrayList<androidx.appcompat.view.menu.g> arrayList = this.f485f;
        arrayList.add(n(arrayList, iB), gVarG);
        K(true);
        return gVarG;
    }

    public void a0(boolean z4) {
        this.f505z = z4;
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(java.lang.CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i5, int i6, int i7, android.content.ComponentName componentName, android.content.Intent[] intentArr, android.content.Intent intent, int i8, android.view.MenuItem[] menuItemArr) {
        int i9;
        android.content.pm.PackageManager packageManager = this.f480a.getPackageManager();
        java.util.List<android.content.pm.ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i8 & 1) == 0) {
            removeGroup(i5);
        }
        for (int i10 = 0; i10 < size; i10++) {
            android.content.pm.ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i10);
            int i11 = resolveInfo.specificIndex;
            android.content.Intent intent2 = new android.content.Intent(i11 < 0 ? intent : intentArr[i11]);
            android.content.pm.ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new android.content.ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            android.view.MenuItem intent3 = add(i5, i6, i7, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i9 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i9] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(java.lang.CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public void b(androidx.appcompat.view.menu.i iVar) {
        c(iVar, this.f480a);
    }

    public final void b0(boolean z4) {
        this.f483d = z4 && this.f481b.getConfiguration().keyboard != 1 && w.s.c(android.view.ViewConfiguration.get(this.f480a), this.f480a);
    }

    public void c(androidx.appcompat.view.menu.i iVar, android.content.Context context) {
        this.f502w.add(new java.lang.ref.WeakReference<>(iVar));
        iVar.d(context, this);
        this.f490k = true;
    }

    public void c0() {
        this.f496q = false;
        if (this.f497r) {
            this.f497r = false;
            K(this.f498s);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        androidx.appcompat.view.menu.g gVar = this.f503x;
        if (gVar != null) {
            f(gVar);
        }
        this.f485f.clear();
        K(true);
    }

    public void clearHeader() {
        this.f494o = null;
        this.f493n = null;
        this.f495p = null;
        K(false);
    }

    @Override // android.view.Menu
    public void close() {
        e(true);
    }

    public void d() {
        androidx.appcompat.view.menu.e.a aVar = this.f484e;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    public void d0() {
        if (this.f496q) {
            return;
        }
        this.f496q = true;
        this.f497r = false;
        this.f498s = false;
    }

    public final void e(boolean z4) {
        if (this.f500u) {
            return;
        }
        this.f500u = true;
        for (java.lang.ref.WeakReference<androidx.appcompat.view.menu.i> weakReference : this.f502w) {
            androidx.appcompat.view.menu.i iVar = weakReference.get();
            if (iVar == null) {
                this.f502w.remove(weakReference);
            } else {
                iVar.a(this, z4);
            }
        }
        this.f500u = false;
    }

    public boolean f(androidx.appcompat.view.menu.g gVar) {
        boolean zE = false;
        if (!this.f502w.isEmpty() && this.f503x == gVar) {
            d0();
            for (java.lang.ref.WeakReference<androidx.appcompat.view.menu.i> weakReference : this.f502w) {
                androidx.appcompat.view.menu.i iVar = weakReference.get();
                if (iVar != null) {
                    zE = iVar.e(this, gVar);
                    if (zE) {
                        break;
                    }
                } else {
                    this.f502w.remove(weakReference);
                }
            }
            c0();
            if (zE) {
                this.f503x = null;
            }
        }
        return zE;
    }

    @Override // android.view.Menu
    public android.view.MenuItem findItem(int i5) {
        android.view.MenuItem menuItemFindItem;
        int size = size();
        for (int i6 = 0; i6 < size; i6++) {
            androidx.appcompat.view.menu.g gVar = this.f485f.get(i6);
            if (gVar.getItemId() == i5) {
                return gVar;
            }
            if (gVar.hasSubMenu() && (menuItemFindItem = gVar.getSubMenu().findItem(i5)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final androidx.appcompat.view.menu.g g(int i5, int i6, int i7, int i8, java.lang.CharSequence charSequence, int i9) {
        return new androidx.appcompat.view.menu.g(this, i5, i6, i7, i8, charSequence, i9);
    }

    @Override // android.view.Menu
    public android.view.MenuItem getItem(int i5) {
        return this.f485f.get(i5);
    }

    public boolean h(androidx.appcompat.view.menu.e eVar, android.view.MenuItem menuItem) {
        androidx.appcompat.view.menu.e.a aVar = this.f484e;
        return aVar != null && aVar.a(eVar, menuItem);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f505z) {
            return true;
        }
        int size = size();
        for (int i5 = 0; i5 < size; i5++) {
            if (this.f485f.get(i5).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i(boolean z4) {
        if (this.f502w.isEmpty()) {
            return;
        }
        d0();
        for (java.lang.ref.WeakReference<androidx.appcompat.view.menu.i> weakReference : this.f502w) {
            androidx.appcompat.view.menu.i iVar = weakReference.get();
            if (iVar == null) {
                this.f502w.remove(weakReference);
            } else {
                iVar.k(z4);
            }
        }
        c0();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i5, android.view.KeyEvent keyEvent) {
        return p(i5, keyEvent) != null;
    }

    public final boolean j(androidx.appcompat.view.menu.l lVar, androidx.appcompat.view.menu.i iVar) {
        if (this.f502w.isEmpty()) {
            return false;
        }
        boolean zJ = iVar != null ? iVar.j(lVar) : false;
        for (java.lang.ref.WeakReference<androidx.appcompat.view.menu.i> weakReference : this.f502w) {
            androidx.appcompat.view.menu.i iVar2 = weakReference.get();
            if (iVar2 == null) {
                this.f502w.remove(weakReference);
            } else if (!zJ) {
                zJ = iVar2.j(lVar);
            }
        }
        return zJ;
    }

    public boolean k(androidx.appcompat.view.menu.g gVar) {
        boolean zH = false;
        if (this.f502w.isEmpty()) {
            return false;
        }
        d0();
        for (java.lang.ref.WeakReference<androidx.appcompat.view.menu.i> weakReference : this.f502w) {
            androidx.appcompat.view.menu.i iVar = weakReference.get();
            if (iVar != null) {
                zH = iVar.h(this, gVar);
                if (zH) {
                    break;
                }
            } else {
                this.f502w.remove(weakReference);
            }
        }
        c0();
        if (zH) {
            this.f503x = gVar;
        }
        return zH;
    }

    public int l(int i5) {
        return m(i5, 0);
    }

    public int m(int i5, int i6) {
        int size = size();
        if (i6 < 0) {
            i6 = 0;
        }
        while (i6 < size) {
            if (this.f485f.get(i6).getGroupId() == i5) {
                return i6;
            }
            i6++;
        }
        return -1;
    }

    public int o(int i5) {
        int size = size();
        for (int i6 = 0; i6 < size; i6++) {
            if (this.f485f.get(i6).getItemId() == i5) {
                return i6;
            }
        }
        return -1;
    }

    public androidx.appcompat.view.menu.g p(int i5, android.view.KeyEvent keyEvent) {
        java.util.ArrayList<androidx.appcompat.view.menu.g> arrayList = this.f501v;
        arrayList.clear();
        q(arrayList, i5, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        android.view.KeyCharacterMap.KeyData keyData = new android.view.KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zG = G();
        for (int i6 = 0; i6 < size; i6++) {
            androidx.appcompat.view.menu.g gVar = arrayList.get(i6);
            char alphabeticShortcut = zG ? gVar.getAlphabeticShortcut() : gVar.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (zG && alphabeticShortcut == '\b' && i5 == 67))) {
                return gVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i5, int i6) {
        return L(findItem(i5), i6);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i5, android.view.KeyEvent keyEvent, int i6) {
        androidx.appcompat.view.menu.g gVarP = p(i5, keyEvent);
        boolean zL = gVarP != null ? L(gVarP, i6) : false;
        if ((i6 & 2) != 0) {
            e(true);
        }
        return zL;
    }

    public void q(java.util.List<androidx.appcompat.view.menu.g> list, int i5, android.view.KeyEvent keyEvent) {
        boolean zG = G();
        int modifiers = keyEvent.getModifiers();
        android.view.KeyCharacterMap.KeyData keyData = new android.view.KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i5 == 67) {
            int size = this.f485f.size();
            for (int i6 = 0; i6 < size; i6++) {
                androidx.appcompat.view.menu.g gVar = this.f485f.get(i6);
                if (gVar.hasSubMenu()) {
                    ((androidx.appcompat.view.menu.e) gVar.getSubMenu()).q(list, i5, keyEvent);
                }
                char alphabeticShortcut = zG ? gVar.getAlphabeticShortcut() : gVar.getNumericShortcut();
                if (((modifiers & 69647) == ((zG ? gVar.getAlphabeticModifiers() : gVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (zG && alphabeticShortcut == '\b' && i5 == 67)) && gVar.isEnabled()) {
                        list.add(gVar);
                    }
                }
            }
        }
    }

    public void r() {
        java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListE = E();
        if (this.f490k) {
            boolean zC = false;
            for (java.lang.ref.WeakReference<androidx.appcompat.view.menu.i> weakReference : this.f502w) {
                androidx.appcompat.view.menu.i iVar = weakReference.get();
                if (iVar == null) {
                    this.f502w.remove(weakReference);
                } else {
                    zC |= iVar.c();
                }
            }
            if (zC) {
                this.f488i.clear();
                this.f489j.clear();
                int size = arrayListE.size();
                for (int i5 = 0; i5 < size; i5++) {
                    androidx.appcompat.view.menu.g gVar = arrayListE.get(i5);
                    if (gVar.l()) {
                        this.f488i.add(gVar);
                    } else {
                        this.f489j.add(gVar);
                    }
                }
            } else {
                this.f488i.clear();
                this.f489j.clear();
                this.f489j.addAll(E());
            }
            this.f490k = false;
        }
    }

    @Override // android.view.Menu
    public void removeGroup(int i5) {
        int iL = l(i5);
        if (iL >= 0) {
            int size = this.f485f.size() - iL;
            int i6 = 0;
            while (true) {
                int i7 = i6 + 1;
                if (i6 >= size || this.f485f.get(iL).getGroupId() != i5) {
                    break;
                }
                N(iL, false);
                i6 = i7;
            }
            K(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i5) {
        N(o(i5), true);
    }

    public java.util.ArrayList<androidx.appcompat.view.menu.g> s() {
        r();
        return this.f488i;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i5, boolean z4, boolean z5) {
        int size = this.f485f.size();
        for (int i6 = 0; i6 < size; i6++) {
            androidx.appcompat.view.menu.g gVar = this.f485f.get(i6);
            if (gVar.getGroupId() == i5) {
                gVar.t(z5);
                gVar.setCheckable(z4);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z4) {
        this.f504y = z4;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i5, boolean z4) {
        int size = this.f485f.size();
        for (int i6 = 0; i6 < size; i6++) {
            androidx.appcompat.view.menu.g gVar = this.f485f.get(i6);
            if (gVar.getGroupId() == i5) {
                gVar.setEnabled(z4);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i5, boolean z4) {
        int size = this.f485f.size();
        boolean z5 = false;
        for (int i6 = 0; i6 < size; i6++) {
            androidx.appcompat.view.menu.g gVar = this.f485f.get(i6);
            if (gVar.getGroupId() == i5 && gVar.y(z4)) {
                z5 = true;
            }
        }
        if (z5) {
            K(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z4) {
        this.f482c = z4;
        K(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f485f.size();
    }

    public java.lang.String t() {
        return "android:menu:actionviewstates";
    }

    public android.content.Context u() {
        return this.f480a;
    }

    public androidx.appcompat.view.menu.g v() {
        return this.f503x;
    }

    public android.graphics.drawable.Drawable w() {
        return this.f494o;
    }

    public java.lang.CharSequence x() {
        return this.f493n;
    }

    public android.view.View y() {
        return this.f495p;
    }

    public java.util.ArrayList<androidx.appcompat.view.menu.g> z() {
        r();
        return this.f489j;
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i5) {
        return a(0, 0, 0, this.f481b.getString(i5));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i5) {
        return addSubMenu(0, 0, 0, this.f481b.getString(i5));
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i5, int i6, int i7, java.lang.CharSequence charSequence) {
        return a(i5, i6, i7, charSequence);
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i5, int i6, int i7, java.lang.CharSequence charSequence) {
        androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) a(i5, i6, i7, charSequence);
        androidx.appcompat.view.menu.l lVar = new androidx.appcompat.view.menu.l(this.f480a, this, gVar);
        gVar.x(lVar);
        return lVar;
    }

    @Override // android.view.Menu
    public android.view.MenuItem add(int i5, int i6, int i7, int i8) {
        return a(i5, i6, i7, this.f481b.getString(i8));
    }

    @Override // android.view.Menu
    public android.view.SubMenu addSubMenu(int i5, int i6, int i7, int i8) {
        return addSubMenu(i5, i6, i7, this.f481b.getString(i8));
    }
}
