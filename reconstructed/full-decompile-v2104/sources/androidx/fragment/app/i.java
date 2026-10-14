package androidx.fragment.app;

/* JADX INFO: compiled from: FragmentTransition.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f1676a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final androidx.fragment.app.k f1677b = new androidx.fragment.app.j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final androidx.fragment.app.k f1678c = w();

    /* JADX INFO: compiled from: FragmentTransition.java */
    public static class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1679a;

        public a(java.util.ArrayList arrayList) {
            this.f1679a = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.fragment.app.i.A(this.f1679a, 4);
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    public static class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f1680a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.k f1681b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ android.view.View f1682c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.Fragment f1683d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1684e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1685f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1686g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f1687h;

        public b(java.lang.Object obj, androidx.fragment.app.k kVar, android.view.View view, androidx.fragment.app.Fragment fragment, java.util.ArrayList arrayList, java.util.ArrayList arrayList2, java.util.ArrayList arrayList3, java.lang.Object obj2) {
            this.f1680a = obj;
            this.f1681b = kVar;
            this.f1682c = view;
            this.f1683d = fragment;
            this.f1684e = arrayList;
            this.f1685f = arrayList2;
            this.f1686g = arrayList3;
            this.f1687h = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            java.lang.Object obj = this.f1680a;
            if (obj != null) {
                this.f1681b.p(obj, this.f1682c);
                this.f1685f.addAll(androidx.fragment.app.i.k(this.f1681b, this.f1680a, this.f1683d, this.f1684e, this.f1682c));
            }
            if (this.f1686g != null) {
                if (this.f1687h != null) {
                    java.util.ArrayList<android.view.View> arrayList = new java.util.ArrayList<>();
                    arrayList.add(this.f1682c);
                    this.f1681b.q(this.f1687h, this.f1686g, arrayList);
                }
                this.f1686g.clear();
                this.f1686g.add(this.f1682c);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    public static class c implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.Fragment f1688a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.Fragment f1689b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f1690c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ j.a f1691d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ android.view.View f1692e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.k f1693f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ android.graphics.Rect f1694g;

        public c(androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2, boolean z4, j.a aVar, android.view.View view, androidx.fragment.app.k kVar, android.graphics.Rect rect) {
            this.f1688a = fragment;
            this.f1689b = fragment2;
            this.f1690c = z4;
            this.f1691d = aVar;
            this.f1692e = view;
            this.f1693f = kVar;
            this.f1694g = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.fragment.app.i.f(this.f1688a, this.f1689b, this.f1690c, this.f1691d, false);
            android.view.View view = this.f1692e;
            if (view != null) {
                this.f1693f.k(view, this.f1694g);
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    public static class d implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.k f1695a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ j.a f1696b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f1697c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.i.e f1698d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1699e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ android.view.View f1700f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.Fragment f1701g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ androidx.fragment.app.Fragment f1702h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ boolean f1703i;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1704o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f1705p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final /* synthetic */ android.graphics.Rect f1706q;

        public d(androidx.fragment.app.k kVar, j.a aVar, java.lang.Object obj, androidx.fragment.app.i.e eVar, java.util.ArrayList arrayList, android.view.View view, androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2, boolean z4, java.util.ArrayList arrayList2, java.lang.Object obj2, android.graphics.Rect rect) {
            this.f1695a = kVar;
            this.f1696b = aVar;
            this.f1697c = obj;
            this.f1698d = eVar;
            this.f1699e = arrayList;
            this.f1700f = view;
            this.f1701g = fragment;
            this.f1702h = fragment2;
            this.f1703i = z4;
            this.f1704o = arrayList2;
            this.f1705p = obj2;
            this.f1706q = rect;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.a<java.lang.String, android.view.View> aVarH = androidx.fragment.app.i.h(this.f1695a, this.f1696b, this.f1697c, this.f1698d);
            if (aVarH != null) {
                this.f1699e.addAll(aVarH.values());
                this.f1699e.add(this.f1700f);
            }
            androidx.fragment.app.i.f(this.f1701g, this.f1702h, this.f1703i, aVarH, false);
            java.lang.Object obj = this.f1697c;
            if (obj != null) {
                this.f1695a.z(obj, this.f1704o, this.f1699e);
                android.view.View viewS = androidx.fragment.app.i.s(aVarH, this.f1698d, this.f1705p, this.f1703i);
                if (viewS != null) {
                    this.f1695a.k(viewS, this.f1706q);
                }
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransition.java */
    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.fragment.app.Fragment f1707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f1708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public androidx.fragment.app.a f1709c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public androidx.fragment.app.Fragment f1710d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1711e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public androidx.fragment.app.a f1712f;
    }

    public static void A(java.util.ArrayList<android.view.View> arrayList, int i5) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i5);
        }
    }

    public static void B(androidx.fragment.app.f fVar, java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2, int i5, int i6, boolean z4) {
        if (fVar.f1634q < 1) {
            return;
        }
        android.util.SparseArray sparseArray = new android.util.SparseArray();
        for (int i7 = i5; i7 < i6; i7++) {
            androidx.fragment.app.a aVar = arrayList.get(i7);
            if (arrayList2.get(i7).booleanValue()) {
                e(aVar, sparseArray, z4);
            } else {
                c(aVar, sparseArray, z4);
            }
        }
        if (sparseArray.size() != 0) {
            android.view.View view = new android.view.View(fVar.f1635r.e());
            int size = sparseArray.size();
            for (int i8 = 0; i8 < size; i8++) {
                int iKeyAt = sparseArray.keyAt(i8);
                j.a<java.lang.String, java.lang.String> aVarD = d(iKeyAt, arrayList, arrayList2, i5, i6);
                androidx.fragment.app.i.e eVar = (androidx.fragment.app.i.e) sparseArray.valueAt(i8);
                if (z4) {
                    o(fVar, iKeyAt, eVar, view, aVarD);
                } else {
                    n(fVar, iKeyAt, eVar, view, aVarD);
                }
            }
        }
    }

    public static void a(java.util.ArrayList<android.view.View> arrayList, j.a<java.lang.String, android.view.View> aVar, java.util.Collection<java.lang.String> collection) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            android.view.View viewM = aVar.m(size);
            if (collection.contains(w.q.v(viewM))) {
                arrayList.add(viewM);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0060  */
    /* JADX WARN: Code duplicated, block: B:55:0x0077  */
    /* JADX WARN: Code duplicated, block: B:56:0x0079  */
    /* JADX WARN: Code duplicated, block: B:63:0x0088 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x008a  */
    /* JADX WARN: Code duplicated, block: B:65:0x008d  */
    /* JADX WARN: Code duplicated, block: B:69:0x0095  */
    /* JADX WARN: Code duplicated, block: B:70:0x0097  */
    public static void b(androidx.fragment.app.a aVar, androidx.fragment.app.a.C0011a c0011a, android.util.SparseArray<androidx.fragment.app.i.e> sparseArray, boolean z4, boolean z5) {
        int i5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        android.view.View view;
        boolean z10;
        androidx.fragment.app.Fragment fragment = c0011a.f1612b;
        if (fragment == null || (i5 = fragment.D) == 0) {
            return;
        }
        int i6 = z4 ? f1676a[c0011a.f1611a] : c0011a.f1611a;
        boolean z11 = false;
        if (i6 == 1) {
            if (z5) {
                z6 = fragment.S;
            } else if (!fragment.f1513p || fragment.F) {
                z6 = false;
            } else {
                z6 = true;
            }
            z7 = false;
            z8 = false;
            z11 = z6;
            z9 = true;
        } else if (i6 == 3) {
            if (z5 ? !fragment.f1513p || fragment.F : fragment.f1513p || (view = fragment.N) == null || view.getVisibility() != 0 || fragment.U < 0.0f) {
                z10 = false;
            } else {
                z10 = true;
            }
            z8 = z10;
            z9 = false;
            z7 = true;
        } else if (i6 == 4) {
            if (!z5 ? !(!fragment.f1513p || fragment.F) : fragment.T && fragment.f1513p && fragment.F) {
                z10 = false;
            } else {
                z10 = true;
            }
            z8 = z10;
            z9 = false;
            z7 = true;
        } else if (i6 == 5) {
            if (!z5) {
                z6 = fragment.F;
            } else if (fragment.T && !fragment.F && fragment.f1513p) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = false;
            z8 = false;
            z11 = z6;
            z9 = true;
        } else if (i6 == 6) {
            if (z5) {
                z10 = false;
            } else {
                z10 = false;
            }
            z8 = z10;
            z9 = false;
            z7 = true;
        } else if (i6 != 7) {
            z9 = false;
            z7 = false;
            z8 = false;
        } else {
            if (z5) {
                z6 = fragment.S;
            } else {
                if (fragment.f1513p) {
                }
                z6 = false;
            }
            z7 = false;
            z8 = false;
            z11 = z6;
            z9 = true;
        }
        androidx.fragment.app.i.e eVarP = sparseArray.get(i5);
        if (z11) {
            eVarP = p(eVarP, sparseArray, i5);
            eVarP.f1707a = fragment;
            eVarP.f1708b = z4;
            eVarP.f1709c = aVar;
        }
        androidx.fragment.app.i.e eVarP2 = eVarP;
        if (!z5 && z9) {
            if (eVarP2 != null && eVarP2.f1710d == fragment) {
                eVarP2.f1710d = null;
            }
            androidx.fragment.app.f fVar = aVar.f1590a;
            if (fragment.f1502a < 1 && fVar.f1634q >= 1 && !aVar.f1609t) {
                fVar.w0(fragment);
                fVar.G0(fragment, 1, 0, 0, false);
            }
        }
        if (z8 && (eVarP2 == null || eVarP2.f1710d == null)) {
            eVarP2 = p(eVarP2, sparseArray, i5);
            eVarP2.f1710d = fragment;
            eVarP2.f1711e = z4;
            eVarP2.f1712f = aVar;
        }
        if (z5 || !z7 || eVarP2 == null || eVarP2.f1707a != fragment) {
            return;
        }
        eVarP2.f1707a = null;
    }

    public static void c(androidx.fragment.app.a aVar, android.util.SparseArray<androidx.fragment.app.i.e> sparseArray, boolean z4) {
        int size = aVar.f1591b.size();
        for (int i5 = 0; i5 < size; i5++) {
            b(aVar, aVar.f1591b.get(i5), sparseArray, false, z4);
        }
    }

    public static j.a<java.lang.String, java.lang.String> d(int i5, java.util.ArrayList<androidx.fragment.app.a> arrayList, java.util.ArrayList<java.lang.Boolean> arrayList2, int i6, int i7) {
        java.util.ArrayList<java.lang.String> arrayList3;
        java.util.ArrayList<java.lang.String> arrayList4;
        j.a<java.lang.String, java.lang.String> aVar = new j.a<>();
        for (int i8 = i7 - 1; i8 >= i6; i8--) {
            androidx.fragment.app.a aVar2 = arrayList.get(i8);
            if (aVar2.p(i5)) {
                boolean zBooleanValue = arrayList2.get(i8).booleanValue();
                java.util.ArrayList<java.lang.String> arrayList5 = aVar2.f1607r;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (zBooleanValue) {
                        arrayList3 = aVar2.f1607r;
                        arrayList4 = aVar2.f1608s;
                    } else {
                        java.util.ArrayList<java.lang.String> arrayList6 = aVar2.f1607r;
                        arrayList3 = aVar2.f1608s;
                        arrayList4 = arrayList6;
                    }
                    for (int i9 = 0; i9 < size; i9++) {
                        java.lang.String str = arrayList4.get(i9);
                        java.lang.String str2 = arrayList3.get(i9);
                        java.lang.String strRemove = aVar.remove(str2);
                        if (strRemove != null) {
                            aVar.put(str, strRemove);
                        } else {
                            aVar.put(str, str2);
                        }
                    }
                }
            }
        }
        return aVar;
    }

    public static void e(androidx.fragment.app.a aVar, android.util.SparseArray<androidx.fragment.app.i.e> sparseArray, boolean z4) {
        if (aVar.f1590a.f1636s.c()) {
            for (int size = aVar.f1591b.size() - 1; size >= 0; size--) {
                b(aVar, aVar.f1591b.get(size), sparseArray, true, z4);
            }
        }
    }

    public static void f(androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2, boolean z4, j.a<java.lang.String, android.view.View> aVar, boolean z5) {
        if (z4) {
            fragment2.m();
        } else {
            fragment.m();
        }
    }

    public static boolean g(androidx.fragment.app.k kVar, java.util.List<java.lang.Object> list) {
        int size = list.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (!kVar.e(list.get(i5))) {
                return false;
            }
        }
        return true;
    }

    public static j.a<java.lang.String, android.view.View> h(androidx.fragment.app.k kVar, j.a<java.lang.String, java.lang.String> aVar, java.lang.Object obj, androidx.fragment.app.i.e eVar) {
        java.util.ArrayList<java.lang.String> arrayList;
        androidx.fragment.app.Fragment fragment = eVar.f1707a;
        android.view.View viewA = fragment.A();
        if (aVar.isEmpty() || obj == null || viewA == null) {
            aVar.clear();
            return null;
        }
        j.a<java.lang.String, android.view.View> aVar2 = new j.a<>();
        kVar.j(aVar2, viewA);
        androidx.fragment.app.a aVar3 = eVar.f1709c;
        if (eVar.f1708b) {
            fragment.o();
            arrayList = aVar3.f1607r;
        } else {
            fragment.m();
            arrayList = aVar3.f1608s;
        }
        if (arrayList != null) {
            aVar2.o(arrayList);
            aVar2.o(aVar.values());
        }
        x(aVar, aVar2);
        return aVar2;
    }

    public static j.a<java.lang.String, android.view.View> i(androidx.fragment.app.k kVar, j.a<java.lang.String, java.lang.String> aVar, java.lang.Object obj, androidx.fragment.app.i.e eVar) {
        java.util.ArrayList<java.lang.String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        androidx.fragment.app.Fragment fragment = eVar.f1710d;
        j.a<java.lang.String, android.view.View> aVar2 = new j.a<>();
        kVar.j(aVar2, fragment.A());
        androidx.fragment.app.a aVar3 = eVar.f1712f;
        if (eVar.f1711e) {
            fragment.m();
            arrayList = aVar3.f1608s;
        } else {
            fragment.o();
            arrayList = aVar3.f1607r;
        }
        aVar2.o(arrayList);
        aVar.o(aVar2.keySet());
        return aVar2;
    }

    public static androidx.fragment.app.k j(androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (fragment != null) {
            java.lang.Object objN = fragment.n();
            if (objN != null) {
                arrayList.add(objN);
            }
            java.lang.Object objW = fragment.w();
            if (objW != null) {
                arrayList.add(objW);
            }
            java.lang.Object objY = fragment.y();
            if (objY != null) {
                arrayList.add(objY);
            }
        }
        if (fragment2 != null) {
            java.lang.Object objL = fragment2.l();
            if (objL != null) {
                arrayList.add(objL);
            }
            java.lang.Object objU = fragment2.u();
            if (objU != null) {
                arrayList.add(objU);
            }
            java.lang.Object objX = fragment2.x();
            if (objX != null) {
                arrayList.add(objX);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        androidx.fragment.app.k kVar = f1677b;
        if (kVar != null && g(kVar, arrayList)) {
            return kVar;
        }
        androidx.fragment.app.k kVar2 = f1678c;
        if (kVar2 != null && g(kVar2, arrayList)) {
            return kVar2;
        }
        if (kVar == null && kVar2 == null) {
            return null;
        }
        throw new java.lang.IllegalArgumentException("Invalid Transition types");
    }

    public static java.util.ArrayList<android.view.View> k(androidx.fragment.app.k kVar, java.lang.Object obj, androidx.fragment.app.Fragment fragment, java.util.ArrayList<android.view.View> arrayList, android.view.View view) {
        if (obj == null) {
            return null;
        }
        java.util.ArrayList<android.view.View> arrayList2 = new java.util.ArrayList<>();
        android.view.View viewA = fragment.A();
        if (viewA != null) {
            kVar.f(arrayList2, viewA);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        kVar.b(obj, arrayList2);
        return arrayList2;
    }

    public static java.lang.Object l(androidx.fragment.app.k kVar, android.view.ViewGroup viewGroup, android.view.View view, j.a<java.lang.String, java.lang.String> aVar, androidx.fragment.app.i.e eVar, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2, java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object obj3;
        android.graphics.Rect rect;
        androidx.fragment.app.Fragment fragment = eVar.f1707a;
        androidx.fragment.app.Fragment fragment2 = eVar.f1710d;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z4 = eVar.f1708b;
        java.lang.Object objT = aVar.isEmpty() ? null : t(kVar, fragment, fragment2, z4);
        j.a<java.lang.String, android.view.View> aVarI = i(kVar, aVar, objT, eVar);
        if (aVar.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(aVarI.values());
            obj3 = objT;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z4, aVarI, true);
        if (obj3 != null) {
            rect = new android.graphics.Rect();
            kVar.y(obj3, view, arrayList);
            z(kVar, obj3, obj2, aVarI, eVar.f1711e, eVar.f1712f);
            if (obj != null) {
                kVar.u(obj, rect);
            }
        } else {
            rect = null;
        }
        androidx.fragment.app.l.a(viewGroup, new androidx.fragment.app.i.d(kVar, aVar, obj3, eVar, arrayList2, view, fragment, fragment2, z4, arrayList, obj, rect));
        return obj3;
    }

    public static java.lang.Object m(androidx.fragment.app.k kVar, android.view.ViewGroup viewGroup, android.view.View view, j.a<java.lang.String, java.lang.String> aVar, androidx.fragment.app.i.e eVar, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2, java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object obj3;
        android.view.View view2;
        android.graphics.Rect rect;
        androidx.fragment.app.Fragment fragment = eVar.f1707a;
        androidx.fragment.app.Fragment fragment2 = eVar.f1710d;
        if (fragment != null) {
            fragment.A().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        boolean z4 = eVar.f1708b;
        java.lang.Object objT = aVar.isEmpty() ? null : t(kVar, fragment, fragment2, z4);
        j.a<java.lang.String, android.view.View> aVarI = i(kVar, aVar, objT, eVar);
        j.a<java.lang.String, android.view.View> aVarH = h(kVar, aVar, objT, eVar);
        if (aVar.isEmpty()) {
            if (aVarI != null) {
                aVarI.clear();
            }
            if (aVarH != null) {
                aVarH.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, aVarI, aVar.keySet());
            a(arrayList2, aVarH, aVar.values());
            obj3 = objT;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        f(fragment, fragment2, z4, aVarI, true);
        if (obj3 != null) {
            arrayList2.add(view);
            kVar.y(obj3, view, arrayList);
            z(kVar, obj3, obj2, aVarI, eVar.f1711e, eVar.f1712f);
            android.graphics.Rect rect2 = new android.graphics.Rect();
            android.view.View viewS = s(aVarH, eVar, obj, z4);
            if (viewS != null) {
                kVar.u(obj, rect2);
            }
            rect = rect2;
            view2 = viewS;
        } else {
            view2 = null;
            rect = null;
        }
        androidx.fragment.app.l.a(viewGroup, new androidx.fragment.app.i.c(fragment, fragment2, z4, aVarH, view2, kVar, rect));
        return obj3;
    }

    public static void n(androidx.fragment.app.f fVar, int i5, androidx.fragment.app.i.e eVar, android.view.View view, j.a<java.lang.String, java.lang.String> aVar) {
        androidx.fragment.app.Fragment fragment;
        androidx.fragment.app.Fragment fragment2;
        androidx.fragment.app.k kVarJ;
        java.lang.Object obj;
        android.view.ViewGroup viewGroup = fVar.f1636s.c() ? (android.view.ViewGroup) fVar.f1636s.b(i5) : null;
        if (viewGroup == null || (kVarJ = j((fragment2 = eVar.f1710d), (fragment = eVar.f1707a))) == null) {
            return;
        }
        boolean z4 = eVar.f1708b;
        boolean z5 = eVar.f1711e;
        java.lang.Object objQ = q(kVarJ, fragment, z4);
        java.lang.Object objR = r(kVarJ, fragment2, z5);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList<android.view.View> arrayList2 = new java.util.ArrayList<>();
        java.lang.Object objL = l(kVarJ, viewGroup, view, aVar, eVar, arrayList, arrayList2, objQ, objR);
        if (objQ == null && objL == null) {
            obj = objR;
            if (obj == null) {
                return;
            }
        } else {
            obj = objR;
        }
        java.util.ArrayList<android.view.View> arrayListK = k(kVarJ, obj, fragment2, arrayList, view);
        java.lang.Object obj2 = (arrayListK == null || arrayListK.isEmpty()) ? null : obj;
        kVarJ.a(objQ, view);
        java.lang.Object objU = u(kVarJ, objQ, obj2, objL, fragment, eVar.f1708b);
        if (objU != null) {
            java.util.ArrayList<android.view.View> arrayList3 = new java.util.ArrayList<>();
            kVarJ.t(objU, objQ, arrayList3, obj2, arrayListK, objL, arrayList2);
            y(kVarJ, viewGroup, fragment, view, arrayList2, objQ, arrayList3, obj2, arrayListK);
            kVarJ.w(viewGroup, arrayList2, aVar);
            kVarJ.c(viewGroup, objU);
            kVarJ.s(viewGroup, arrayList2, aVar);
        }
    }

    public static void o(androidx.fragment.app.f fVar, int i5, androidx.fragment.app.i.e eVar, android.view.View view, j.a<java.lang.String, java.lang.String> aVar) {
        androidx.fragment.app.Fragment fragment;
        androidx.fragment.app.Fragment fragment2;
        androidx.fragment.app.k kVarJ;
        java.lang.Object obj;
        android.view.ViewGroup viewGroup = fVar.f1636s.c() ? (android.view.ViewGroup) fVar.f1636s.b(i5) : null;
        if (viewGroup == null || (kVarJ = j((fragment2 = eVar.f1710d), (fragment = eVar.f1707a))) == null) {
            return;
        }
        boolean z4 = eVar.f1708b;
        boolean z5 = eVar.f1711e;
        java.util.ArrayList<android.view.View> arrayList = new java.util.ArrayList<>();
        java.util.ArrayList<android.view.View> arrayList2 = new java.util.ArrayList<>();
        java.lang.Object objQ = q(kVarJ, fragment, z4);
        java.lang.Object objR = r(kVarJ, fragment2, z5);
        java.lang.Object objM = m(kVarJ, viewGroup, view, aVar, eVar, arrayList2, arrayList, objQ, objR);
        if (objQ == null && objM == null) {
            obj = objR;
            if (obj == null) {
                return;
            }
        } else {
            obj = objR;
        }
        java.util.ArrayList<android.view.View> arrayListK = k(kVarJ, obj, fragment2, arrayList2, view);
        java.util.ArrayList<android.view.View> arrayListK2 = k(kVarJ, objQ, fragment, arrayList, view);
        A(arrayListK2, 4);
        java.lang.Object objU = u(kVarJ, objQ, obj, objM, fragment, z4);
        if (objU != null) {
            v(kVarJ, obj, fragment2, arrayListK);
            java.util.ArrayList<java.lang.String> arrayListO = kVarJ.o(arrayList);
            kVarJ.t(objU, objQ, arrayListK2, obj, arrayListK, objM, arrayList);
            kVarJ.c(viewGroup, objU);
            kVarJ.x(viewGroup, arrayList2, arrayList, arrayListO, aVar);
            A(arrayListK2, 0);
            kVarJ.z(objM, arrayList2, arrayList);
        }
    }

    public static androidx.fragment.app.i.e p(androidx.fragment.app.i.e eVar, android.util.SparseArray<androidx.fragment.app.i.e> sparseArray, int i5) {
        if (eVar != null) {
            return eVar;
        }
        androidx.fragment.app.i.e eVar2 = new androidx.fragment.app.i.e();
        sparseArray.put(i5, eVar2);
        return eVar2;
    }

    public static java.lang.Object q(androidx.fragment.app.k kVar, androidx.fragment.app.Fragment fragment, boolean z4) {
        if (fragment == null) {
            return null;
        }
        return kVar.g(z4 ? fragment.u() : fragment.l());
    }

    public static java.lang.Object r(androidx.fragment.app.k kVar, androidx.fragment.app.Fragment fragment, boolean z4) {
        if (fragment == null) {
            return null;
        }
        return kVar.g(z4 ? fragment.w() : fragment.n());
    }

    public static android.view.View s(j.a<java.lang.String, android.view.View> aVar, androidx.fragment.app.i.e eVar, java.lang.Object obj, boolean z4) {
        java.util.ArrayList<java.lang.String> arrayList;
        androidx.fragment.app.a aVar2 = eVar.f1709c;
        if (obj == null || aVar == null || (arrayList = aVar2.f1607r) == null || arrayList.isEmpty()) {
            return null;
        }
        return aVar.get(z4 ? aVar2.f1607r.get(0) : aVar2.f1608s.get(0));
    }

    public static java.lang.Object t(androidx.fragment.app.k kVar, androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2, boolean z4) {
        if (fragment == null || fragment2 == null) {
            return null;
        }
        return kVar.A(kVar.g(z4 ? fragment2.y() : fragment.x()));
    }

    public static java.lang.Object u(androidx.fragment.app.k kVar, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, androidx.fragment.app.Fragment fragment, boolean z4) {
        boolean zG;
        if (obj == null || obj2 == null || fragment == null) {
            zG = true;
        } else {
            zG = z4 ? fragment.g() : fragment.f();
        }
        return zG ? kVar.n(obj2, obj, obj3) : kVar.m(obj2, obj, obj3);
    }

    public static void v(androidx.fragment.app.k kVar, java.lang.Object obj, androidx.fragment.app.Fragment fragment, java.util.ArrayList<android.view.View> arrayList) {
        if (fragment != null && obj != null && fragment.f1513p && fragment.F && fragment.T) {
            fragment.T0(true);
            kVar.r(obj, fragment.A(), arrayList);
            androidx.fragment.app.l.a(fragment.M, new androidx.fragment.app.i.a(arrayList));
        }
    }

    public static androidx.fragment.app.k w() {
        try {
            return (androidx.fragment.app.k) java.lang.Class.forName("androidx.transition.FragmentTransitionSupport").getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static void x(j.a<java.lang.String, java.lang.String> aVar, j.a<java.lang.String, android.view.View> aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey(aVar.m(size))) {
                aVar.k(size);
            }
        }
    }

    public static void y(androidx.fragment.app.k kVar, android.view.ViewGroup viewGroup, androidx.fragment.app.Fragment fragment, android.view.View view, java.util.ArrayList<android.view.View> arrayList, java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList2, java.lang.Object obj2, java.util.ArrayList<android.view.View> arrayList3) {
        androidx.fragment.app.l.a(viewGroup, new androidx.fragment.app.i.b(obj, kVar, view, fragment, arrayList, arrayList2, arrayList3, obj2));
    }

    public static void z(androidx.fragment.app.k kVar, java.lang.Object obj, java.lang.Object obj2, j.a<java.lang.String, android.view.View> aVar, boolean z4, androidx.fragment.app.a aVar2) {
        java.util.ArrayList<java.lang.String> arrayList = aVar2.f1607r;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        android.view.View view = aVar.get(z4 ? aVar2.f1608s.get(0) : aVar2.f1607r.get(0));
        kVar.v(obj, view);
        if (obj2 != null) {
            kVar.v(obj2, view);
        }
    }
}
