package androidx.fragment.app;

/* JADX INFO: compiled from: BackStackRecord.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class a extends androidx.fragment.app.h implements androidx.fragment.app.f.l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final androidx.fragment.app.f f1590a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1592c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1593d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1594e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1595f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1596g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1597h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f1598i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public java.lang.String f1600k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1601l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1603n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public java.lang.CharSequence f1604o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1605p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public java.lang.CharSequence f1606q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public java.util.ArrayList<java.lang.String> f1607r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public java.util.ArrayList<java.lang.String> f1608s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public java.util.ArrayList<java.lang.Runnable> f1610u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.ArrayList<androidx.fragment.app.a.C0011a> f1591b = new java.util.ArrayList<>();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1599j = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1602m = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f1609t = false;

    /* JADX INFO: renamed from: androidx.fragment.app.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BackStackRecord.java */
    public static final class C0011a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1611a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public androidx.fragment.app.Fragment f1612b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1613c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1614d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1615e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1616f;

        public C0011a() {
        }

        public C0011a(int i5, androidx.fragment.app.Fragment fragment) {
            this.f1611a = i5;
            this.f1612b = fragment;
        }
    }

    public a(androidx.fragment.app.f fVar) {
        this.f1590a = fVar;
    }

    public static boolean r(androidx.fragment.app.a.C0011a c0011a) {
        androidx.fragment.app.Fragment fragment = c0011a.f1612b;
        return (fragment == null || !fragment.f1513p || fragment.N == null || fragment.G || fragment.F || !fragment.H()) ? false : true;
    }

    @Override // androidx.fragment.app.f.l
    public boolean a(java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2) {
        if (androidx.fragment.app.f.J) {
            android.util.Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(java.lang.Boolean.FALSE);
        if (!this.f1598i) {
            return true;
        }
        this.f1590a.i(this);
        return true;
    }

    @Override // androidx.fragment.app.h
    public androidx.fragment.app.h b(int i5, androidx.fragment.app.Fragment fragment, java.lang.String str) {
        i(i5, fragment, str, 1);
        return this;
    }

    @Override // androidx.fragment.app.h
    public androidx.fragment.app.h c(androidx.fragment.app.Fragment fragment) {
        f(new androidx.fragment.app.a.C0011a(7, fragment));
        return this;
    }

    @Override // androidx.fragment.app.h
    public int d() {
        return h(false);
    }

    @Override // androidx.fragment.app.h
    public androidx.fragment.app.h e(androidx.fragment.app.Fragment fragment) {
        f(new androidx.fragment.app.a.C0011a(6, fragment));
        return this;
    }

    public void f(androidx.fragment.app.a.C0011a c0011a) {
        this.f1591b.add(c0011a);
        c0011a.f1613c = this.f1592c;
        c0011a.f1614d = this.f1593d;
        c0011a.f1615e = this.f1594e;
        c0011a.f1616f = this.f1595f;
    }

    public void g(int i5) {
        if (this.f1598i) {
            if (androidx.fragment.app.f.J) {
                android.util.Log.v("FragmentManager", "Bump nesting in " + this + " by " + i5);
            }
            int size = this.f1591b.size();
            for (int i6 = 0; i6 < size; i6++) {
                androidx.fragment.app.a.C0011a c0011a = this.f1591b.get(i6);
                androidx.fragment.app.Fragment fragment = c0011a.f1612b;
                if (fragment != null) {
                    fragment.f1519v += i5;
                    if (androidx.fragment.app.f.J) {
                        android.util.Log.v("FragmentManager", "Bump nesting of " + c0011a.f1612b + " to " + c0011a.f1612b.f1519v);
                    }
                }
            }
        }
    }

    public int h(boolean z4) {
        if (this.f1601l) {
            throw new java.lang.IllegalStateException("commit already called");
        }
        if (androidx.fragment.app.f.J) {
            android.util.Log.v("FragmentManager", "Commit: " + this);
            java.io.PrintWriter printWriter = new java.io.PrintWriter(new v.c("FragmentManager"));
            j("  ", null, printWriter, null);
            printWriter.close();
        }
        this.f1601l = true;
        if (this.f1598i) {
            this.f1602m = this.f1590a.k(this);
        } else {
            this.f1602m = -1;
        }
        this.f1590a.c0(this, z4);
        return this.f1602m;
    }

    public final void i(int i5, androidx.fragment.app.Fragment fragment, java.lang.String str, int i6) {
        java.lang.Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !java.lang.reflect.Modifier.isPublic(modifiers) || (cls.isMemberClass() && !java.lang.reflect.Modifier.isStatic(modifiers))) {
            throw new java.lang.IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        fragment.f1520w = this.f1590a;
        if (str != null) {
            java.lang.String str2 = fragment.E;
            if (str2 != null && !str.equals(str2)) {
                throw new java.lang.IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.E + " now " + str);
            }
            fragment.E = str;
        }
        if (i5 != 0) {
            if (i5 == -1) {
                throw new java.lang.IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i7 = fragment.C;
            if (i7 != 0 && i7 != i5) {
                throw new java.lang.IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.C + " now " + i5);
            }
            fragment.C = i5;
            fragment.D = i5;
        }
        f(new androidx.fragment.app.a.C0011a(i6, fragment));
    }

    public void j(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        k(str, printWriter, true);
    }

    public void k(java.lang.String str, java.io.PrintWriter printWriter, boolean z4) {
        java.lang.String str2;
        if (z4) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f1600k);
            printWriter.print(" mIndex=");
            printWriter.print(this.f1602m);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f1601l);
            if (this.f1596g != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(java.lang.Integer.toHexString(this.f1596g));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(java.lang.Integer.toHexString(this.f1597h));
            }
            if (this.f1592c != 0 || this.f1593d != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(java.lang.Integer.toHexString(this.f1592c));
                printWriter.print(" mExitAnim=#");
                printWriter.println(java.lang.Integer.toHexString(this.f1593d));
            }
            if (this.f1594e != 0 || this.f1595f != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(java.lang.Integer.toHexString(this.f1594e));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(java.lang.Integer.toHexString(this.f1595f));
            }
            if (this.f1603n != 0 || this.f1604o != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(java.lang.Integer.toHexString(this.f1603n));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f1604o);
            }
            if (this.f1605p != 0 || this.f1606q != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(java.lang.Integer.toHexString(this.f1605p));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f1606q);
            }
        }
        if (this.f1591b.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f1591b.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.fragment.app.a.C0011a c0011a = this.f1591b.get(i5);
            switch (c0011a.f1611a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                default:
                    str2 = "cmd=" + c0011a.f1611a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i5);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(c0011a.f1612b);
            if (z4) {
                if (c0011a.f1613c != 0 || c0011a.f1614d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(java.lang.Integer.toHexString(c0011a.f1613c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(java.lang.Integer.toHexString(c0011a.f1614d));
                }
                if (c0011a.f1615e != 0 || c0011a.f1616f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(java.lang.Integer.toHexString(c0011a.f1615e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(java.lang.Integer.toHexString(c0011a.f1616f));
                }
            }
        }
    }

    public void l() {
        int size = this.f1591b.size();
        for (int i5 = 0; i5 < size; i5++) {
            androidx.fragment.app.a.C0011a c0011a = this.f1591b.get(i5);
            androidx.fragment.app.Fragment fragment = c0011a.f1612b;
            if (fragment != null) {
                fragment.W0(this.f1596g, this.f1597h);
            }
            switch (c0011a.f1611a) {
                case 1:
                    fragment.V0(c0011a.f1613c);
                    this.f1590a.j(fragment, false);
                    break;
                case 2:
                default:
                    throw new java.lang.IllegalArgumentException("Unknown cmd: " + c0011a.f1611a);
                case 3:
                    fragment.V0(c0011a.f1614d);
                    this.f1590a.N0(fragment);
                    break;
                case 4:
                    fragment.V0(c0011a.f1614d);
                    this.f1590a.t0(fragment);
                    break;
                case 5:
                    fragment.V0(c0011a.f1613c);
                    this.f1590a.d1(fragment);
                    break;
                case 6:
                    fragment.V0(c0011a.f1614d);
                    this.f1590a.t(fragment);
                    break;
                case 7:
                    fragment.V0(c0011a.f1613c);
                    this.f1590a.n(fragment);
                    break;
                case 8:
                    this.f1590a.a1(fragment);
                    break;
                case 9:
                    this.f1590a.a1(null);
                    break;
            }
            if (!this.f1609t && c0011a.f1611a != 1 && fragment != null) {
                this.f1590a.D0(fragment);
            }
        }
        if (this.f1609t) {
            return;
        }
        androidx.fragment.app.f fVar = this.f1590a;
        fVar.E0(fVar.f1634q, true);
    }

    public void m(boolean z4) {
        for (int size = this.f1591b.size() - 1; size >= 0; size--) {
            androidx.fragment.app.a.C0011a c0011a = this.f1591b.get(size);
            androidx.fragment.app.Fragment fragment = c0011a.f1612b;
            if (fragment != null) {
                fragment.W0(androidx.fragment.app.f.S0(this.f1596g), this.f1597h);
            }
            switch (c0011a.f1611a) {
                case 1:
                    fragment.V0(c0011a.f1616f);
                    this.f1590a.N0(fragment);
                    break;
                case 2:
                default:
                    throw new java.lang.IllegalArgumentException("Unknown cmd: " + c0011a.f1611a);
                case 3:
                    fragment.V0(c0011a.f1615e);
                    this.f1590a.j(fragment, false);
                    break;
                case 4:
                    fragment.V0(c0011a.f1615e);
                    this.f1590a.d1(fragment);
                    break;
                case 5:
                    fragment.V0(c0011a.f1616f);
                    this.f1590a.t0(fragment);
                    break;
                case 6:
                    fragment.V0(c0011a.f1615e);
                    this.f1590a.n(fragment);
                    break;
                case 7:
                    fragment.V0(c0011a.f1616f);
                    this.f1590a.t(fragment);
                    break;
                case 8:
                    this.f1590a.a1(null);
                    break;
                case 9:
                    this.f1590a.a1(fragment);
                    break;
            }
            if (!this.f1609t && c0011a.f1611a != 3 && fragment != null) {
                this.f1590a.D0(fragment);
            }
        }
        if (this.f1609t || !z4) {
            return;
        }
        androidx.fragment.app.f fVar = this.f1590a;
        fVar.E0(fVar.f1634q, true);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00b2  */
    public androidx.fragment.app.Fragment n(java.util.ArrayList<androidx.fragment.app.Fragment> arrayList, androidx.fragment.app.Fragment fragment) {
        androidx.fragment.app.Fragment fragment2 = fragment;
        int i5 = 0;
        while (i5 < this.f1591b.size()) {
            androidx.fragment.app.a.C0011a c0011a = this.f1591b.get(i5);
            int i6 = c0011a.f1611a;
            if (i6 == 1) {
                arrayList.add(c0011a.f1612b);
            } else if (i6 == 2) {
                androidx.fragment.app.Fragment fragment3 = c0011a.f1612b;
                int i7 = fragment3.D;
                boolean z4 = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    androidx.fragment.app.Fragment fragment4 = arrayList.get(size);
                    if (fragment4.D == i7) {
                        if (fragment4 == fragment3) {
                            z4 = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.f1591b.add(i5, new androidx.fragment.app.a.C0011a(9, fragment4));
                                i5++;
                                fragment2 = null;
                            }
                            androidx.fragment.app.a.C0011a c0011a2 = new androidx.fragment.app.a.C0011a(3, fragment4);
                            c0011a2.f1613c = c0011a.f1613c;
                            c0011a2.f1615e = c0011a.f1615e;
                            c0011a2.f1614d = c0011a.f1614d;
                            c0011a2.f1616f = c0011a.f1616f;
                            this.f1591b.add(i5, c0011a2);
                            arrayList.remove(fragment4);
                            i5++;
                        }
                    }
                }
                if (z4) {
                    this.f1591b.remove(i5);
                    i5--;
                } else {
                    c0011a.f1611a = 1;
                    arrayList.add(fragment3);
                }
            } else if (i6 == 3 || i6 == 6) {
                arrayList.remove(c0011a.f1612b);
                androidx.fragment.app.Fragment fragment5 = c0011a.f1612b;
                if (fragment5 == fragment2) {
                    this.f1591b.add(i5, new androidx.fragment.app.a.C0011a(9, fragment5));
                    i5++;
                    fragment2 = null;
                }
            } else if (i6 == 7) {
                arrayList.add(c0011a.f1612b);
            } else if (i6 == 8) {
                this.f1591b.add(i5, new androidx.fragment.app.a.C0011a(9, fragment2));
                i5++;
                fragment2 = c0011a.f1612b;
            }
            i5++;
        }
        return fragment2;
    }

    public java.lang.String o() {
        return this.f1600k;
    }

    public boolean p(int i5) {
        int size = this.f1591b.size();
        for (int i6 = 0; i6 < size; i6++) {
            androidx.fragment.app.Fragment fragment = this.f1591b.get(i6).f1612b;
            int i7 = fragment != null ? fragment.D : 0;
            if (i7 != 0 && i7 == i5) {
                return true;
            }
        }
        return false;
    }

    public boolean q(java.util.ArrayList<androidx.fragment.app.a> arrayList, int i5, int i6) {
        if (i6 == i5) {
            return false;
        }
        int size = this.f1591b.size();
        int i7 = -1;
        for (int i8 = 0; i8 < size; i8++) {
            androidx.fragment.app.Fragment fragment = this.f1591b.get(i8).f1612b;
            int i9 = fragment != null ? fragment.D : 0;
            if (i9 != 0 && i9 != i7) {
                for (int i10 = i5; i10 < i6; i10++) {
                    androidx.fragment.app.a aVar = arrayList.get(i10);
                    int size2 = aVar.f1591b.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        androidx.fragment.app.Fragment fragment2 = aVar.f1591b.get(i11).f1612b;
                        if ((fragment2 != null ? fragment2.D : 0) == i9) {
                            return true;
                        }
                    }
                }
                i7 = i9;
            }
        }
        return false;
    }

    public boolean s() {
        for (int i5 = 0; i5 < this.f1591b.size(); i5++) {
            if (r(this.f1591b.get(i5))) {
                return true;
            }
        }
        return false;
    }

    public void t() {
        java.util.ArrayList<java.lang.Runnable> arrayList = this.f1610u;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i5 = 0; i5 < size; i5++) {
                this.f1610u.get(i5).run();
            }
            this.f1610u = null;
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(com.alibaba.fastjson.asm.Opcodes.IOR);
        sb.append("BackStackEntry{");
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        if (this.f1602m >= 0) {
            sb.append(" #");
            sb.append(this.f1602m);
        }
        if (this.f1600k != null) {
            sb.append(" ");
            sb.append(this.f1600k);
        }
        sb.append("}");
        return sb.toString();
    }

    public void u(androidx.fragment.app.Fragment.f fVar) {
        for (int i5 = 0; i5 < this.f1591b.size(); i5++) {
            androidx.fragment.app.a.C0011a c0011a = this.f1591b.get(i5);
            if (r(c0011a)) {
                c0011a.f1612b.X0(fVar);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0022  */
    /* JADX WARN: Code duplicated, block: B:14:0x0028  */
    public androidx.fragment.app.Fragment v(java.util.ArrayList<androidx.fragment.app.Fragment> arrayList, androidx.fragment.app.Fragment fragment) {
        for (int i5 = 0; i5 < this.f1591b.size(); i5++) {
            androidx.fragment.app.a.C0011a c0011a = this.f1591b.get(i5);
            int i6 = c0011a.f1611a;
            if (i6 == 1) {
                arrayList.remove(c0011a.f1612b);
            } else if (i6 != 3) {
                switch (i6) {
                    case 6:
                        arrayList.add(c0011a.f1612b);
                        break;
                    case 7:
                        arrayList.remove(c0011a.f1612b);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = c0011a.f1612b;
                        break;
                }
            } else {
                arrayList.add(c0011a.f1612b);
            }
        }
        return fragment;
    }
}
