package e;

/* JADX INFO: compiled from: SupportMenuInflater.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends android.view.MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final java.lang.Class<?>[] f3993e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final java.lang.Class<?>[] f3994f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Object[] f3995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.lang.Object[] f3996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.content.Context f3997c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.lang.Object f3998d;

    /* JADX INFO: compiled from: SupportMenuInflater.java */
    public static class a implements android.view.MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final java.lang.Class<?>[] f3999c = {android.view.MenuItem.class};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.Object f4000a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.lang.reflect.Method f4001b;

        public a(java.lang.Object obj, java.lang.String str) {
            this.f4000a = obj;
            java.lang.Class<?> cls = obj.getClass();
            try {
                this.f4001b = cls.getMethod(str, f3999c);
            } catch (java.lang.Exception e5) {
                android.view.InflateException inflateException = new android.view.InflateException("Couldn't resolve menu item onClick handler " + str + " in class " + cls.getName());
                inflateException.initCause(e5);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(android.view.MenuItem menuItem) {
            try {
                if (this.f4001b.getReturnType() == java.lang.Boolean.TYPE) {
                    return ((java.lang.Boolean) this.f4001b.invoke(this.f4000a, menuItem)).booleanValue();
                }
                this.f4001b.invoke(this.f4000a, menuItem);
                return true;
            } catch (java.lang.Exception e5) {
                throw new java.lang.RuntimeException(e5);
            }
        }
    }

    /* JADX INFO: compiled from: SupportMenuInflater.java */
    public class b {
        public w.b A;
        public java.lang.CharSequence B;
        public java.lang.CharSequence C;
        public android.content.res.ColorStateList D = null;
        public android.graphics.PorterDuff.Mode E = null;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public android.view.Menu f4002a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4003b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f4004c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4005d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4006e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f4007f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f4008g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f4009h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f4010i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f4011j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public java.lang.CharSequence f4012k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public java.lang.CharSequence f4013l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f4014m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public char f4015n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f4016o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public char f4017p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f4018q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f4019r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public boolean f4020s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f4021t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public boolean f4022u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f4023v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f4024w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public java.lang.String f4025x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public java.lang.String f4026y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public java.lang.String f4027z;

        public b(android.view.Menu menu) {
            this.f4002a = menu;
            h();
        }

        public void a() {
            this.f4009h = true;
            i(this.f4002a.add(this.f4003b, this.f4010i, this.f4011j, this.f4012k));
        }

        public android.view.SubMenu b() {
            this.f4009h = true;
            android.view.SubMenu subMenuAddSubMenu = this.f4002a.addSubMenu(this.f4003b, this.f4010i, this.f4011j, this.f4012k);
            i(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public final char c(java.lang.String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        public boolean d() {
            return this.f4009h;
        }

        public final <T> T e(java.lang.String str, java.lang.Class<?>[] clsArr, java.lang.Object[] objArr) {
            try {
                java.lang.reflect.Constructor<?> constructor = e.g.this.f3997c.getClassLoader().loadClass(str).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (java.lang.Exception e5) {
                android.util.Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e5);
                return null;
            }
        }

        public void f(android.util.AttributeSet attributeSet) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = e.g.this.f3997c.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.MenuGroup);
            this.f4003b = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.MenuGroup_android_id, 0);
            this.f4004c = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.MenuGroup_android_menuCategory, 0);
            this.f4005d = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.MenuGroup_android_orderInCategory, 0);
            this.f4006e = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.f4007f = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.MenuGroup_android_visible, true);
            this.f4008g = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        public void g(android.util.AttributeSet attributeSet) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = e.g.this.f3997c.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.MenuItem);
            this.f4010i = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.MenuItem_android_id, 0);
            this.f4011j = (typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.MenuItem_android_menuCategory, this.f4004c) & (-65536)) | (typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.MenuItem_android_orderInCategory, this.f4005d) & 65535);
            this.f4012k = typedArrayObtainStyledAttributes.getText(androidx.appcompat.R.styleable.MenuItem_android_title);
            this.f4013l = typedArrayObtainStyledAttributes.getText(androidx.appcompat.R.styleable.MenuItem_android_titleCondensed);
            this.f4014m = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.MenuItem_android_icon, 0);
            this.f4015n = c(typedArrayObtainStyledAttributes.getString(androidx.appcompat.R.styleable.MenuItem_android_alphabeticShortcut));
            this.f4016o = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.MenuItem_alphabeticModifiers, 4096);
            this.f4017p = c(typedArrayObtainStyledAttributes.getString(androidx.appcompat.R.styleable.MenuItem_android_numericShortcut));
            this.f4018q = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.MenuItem_numericModifiers, 4096);
            int i5 = androidx.appcompat.R.styleable.MenuItem_android_checkable;
            if (typedArrayObtainStyledAttributes.hasValue(i5)) {
                this.f4019r = typedArrayObtainStyledAttributes.getBoolean(i5, false) ? 1 : 0;
            } else {
                this.f4019r = this.f4006e;
            }
            this.f4020s = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.MenuItem_android_checked, false);
            this.f4021t = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.MenuItem_android_visible, this.f4007f);
            this.f4022u = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.MenuItem_android_enabled, this.f4008g);
            this.f4023v = typedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.MenuItem_showAsAction, -1);
            this.f4027z = typedArrayObtainStyledAttributes.getString(androidx.appcompat.R.styleable.MenuItem_android_onClick);
            this.f4024w = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.MenuItem_actionLayout, 0);
            this.f4025x = typedArrayObtainStyledAttributes.getString(androidx.appcompat.R.styleable.MenuItem_actionViewClass);
            java.lang.String string = typedArrayObtainStyledAttributes.getString(androidx.appcompat.R.styleable.MenuItem_actionProviderClass);
            this.f4026y = string;
            boolean z4 = string != null;
            if (z4 && this.f4024w == 0 && this.f4025x == null) {
                this.A = (w.b) e(string, e.g.f3994f, e.g.this.f3996b);
            } else {
                if (z4) {
                    android.util.Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                this.A = null;
            }
            this.B = typedArrayObtainStyledAttributes.getText(androidx.appcompat.R.styleable.MenuItem_contentDescription);
            this.C = typedArrayObtainStyledAttributes.getText(androidx.appcompat.R.styleable.MenuItem_tooltipText);
            int i6 = androidx.appcompat.R.styleable.MenuItem_iconTintMode;
            if (typedArrayObtainStyledAttributes.hasValue(i6)) {
                this.E = androidx.appcompat.widget.o.d(typedArrayObtainStyledAttributes.getInt(i6, -1), this.E);
            } else {
                this.E = null;
            }
            int i7 = androidx.appcompat.R.styleable.MenuItem_iconTint;
            if (typedArrayObtainStyledAttributes.hasValue(i7)) {
                this.D = typedArrayObtainStyledAttributes.getColorStateList(i7);
            } else {
                this.D = null;
            }
            typedArrayObtainStyledAttributes.recycle();
            this.f4009h = false;
        }

        public void h() {
            this.f4003b = 0;
            this.f4004c = 0;
            this.f4005d = 0;
            this.f4006e = 0;
            this.f4007f = true;
            this.f4008g = true;
        }

        public final void i(android.view.MenuItem menuItem) {
            boolean z4 = false;
            menuItem.setChecked(this.f4020s).setVisible(this.f4021t).setEnabled(this.f4022u).setCheckable(this.f4019r >= 1).setTitleCondensed(this.f4013l).setIcon(this.f4014m);
            int i5 = this.f4023v;
            if (i5 >= 0) {
                menuItem.setShowAsAction(i5);
            }
            if (this.f4027z != null) {
                if (e.g.this.f3997c.isRestricted()) {
                    throw new java.lang.IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuItem.setOnMenuItemClickListener(new e.g.a(e.g.this.b(), this.f4027z));
            }
            boolean z5 = menuItem instanceof androidx.appcompat.view.menu.g;
            if (z5) {
            }
            if (this.f4019r >= 2) {
                if (z5) {
                    ((androidx.appcompat.view.menu.g) menuItem).t(true);
                } else if (menuItem instanceof f.d) {
                    ((f.d) menuItem).i(true);
                }
            }
            java.lang.String str = this.f4025x;
            if (str != null) {
                menuItem.setActionView((android.view.View) e(str, e.g.f3993e, e.g.this.f3995a));
                z4 = true;
            }
            int i6 = this.f4024w;
            if (i6 > 0) {
                if (z4) {
                    android.util.Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                } else {
                    menuItem.setActionView(i6);
                }
            }
            w.b bVar = this.A;
            if (bVar != null) {
                w.h.a(menuItem, bVar);
            }
            w.h.c(menuItem, this.B);
            w.h.g(menuItem, this.C);
            w.h.b(menuItem, this.f4015n, this.f4016o);
            w.h.f(menuItem, this.f4017p, this.f4018q);
            android.graphics.PorterDuff.Mode mode = this.E;
            if (mode != null) {
                w.h.e(menuItem, mode);
            }
            android.content.res.ColorStateList colorStateList = this.D;
            if (colorStateList != null) {
                w.h.d(menuItem, colorStateList);
            }
        }
    }

    static {
        java.lang.Class<?>[] clsArr = {android.content.Context.class};
        f3993e = clsArr;
        f3994f = clsArr;
    }

    public g(android.content.Context context) {
        super(context);
        this.f3997c = context;
        java.lang.Object[] objArr = {context};
        this.f3995a = objArr;
        this.f3996b = objArr;
    }

    public final java.lang.Object a(java.lang.Object obj) {
        return (!(obj instanceof android.app.Activity) && (obj instanceof android.content.ContextWrapper)) ? a(((android.content.ContextWrapper) obj).getBaseContext()) : obj;
    }

    public java.lang.Object b() {
        if (this.f3998d == null) {
            this.f3998d = a(this.f3997c);
        }
        return this.f3998d;
    }

    public final void c(org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.view.Menu menu) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        e.g.b bVar = new e.g.b(menu);
        int eventType = xmlPullParser.getEventType();
        do {
            if (eventType == 2) {
                java.lang.String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                    break;
                }
                throw new java.lang.RuntimeException("Expecting menu, got " + name);
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        java.lang.String str = null;
        boolean z4 = false;
        boolean z5 = false;
        while (!z4) {
            if (eventType == 1) {
                throw new java.lang.RuntimeException("Unexpected end of document");
            }
            if (eventType != 2) {
                if (eventType == 3) {
                    java.lang.String name2 = xmlPullParser.getName();
                    if (z5 && name2.equals(str)) {
                        str = null;
                        z5 = false;
                    } else if (name2.equals("group")) {
                        bVar.h();
                    } else if (name2.equals("item")) {
                        if (!bVar.d()) {
                            w.b bVar2 = bVar.A;
                            if (bVar2 == null || !bVar2.a()) {
                                bVar.a();
                            } else {
                                bVar.b();
                            }
                        }
                    } else if (name2.equals("menu")) {
                        z4 = true;
                    }
                }
            } else if (!z5) {
                java.lang.String name3 = xmlPullParser.getName();
                if (name3.equals("group")) {
                    bVar.f(attributeSet);
                } else if (name3.equals("item")) {
                    bVar.g(attributeSet);
                } else if (name3.equals("menu")) {
                    c(xmlPullParser, attributeSet, bVar.b());
                } else {
                    str = name3;
                    z5 = true;
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    @Override // android.view.MenuInflater
    public void inflate(int i5, android.view.Menu menu) {
        if (!(menu instanceof q.a)) {
            super.inflate(i5, menu);
            return;
        }
        android.content.res.XmlResourceParser layout = null;
        try {
            try {
                try {
                    layout = this.f3997c.getResources().getLayout(i5);
                    c(layout, android.util.Xml.asAttributeSet(layout), menu);
                    if (layout != null) {
                        layout.close();
                    }
                } catch (org.xmlpull.v1.XmlPullParserException e5) {
                    throw new android.view.InflateException("Error inflating menu XML", e5);
                }
            } catch (java.io.IOException e6) {
                throw new android.view.InflateException("Error inflating menu XML", e6);
            }
        } catch (java.lang.Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
