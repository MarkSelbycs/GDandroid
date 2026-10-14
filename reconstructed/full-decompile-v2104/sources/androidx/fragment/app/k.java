package androidx.fragment.app;

/* JADX INFO: compiled from: FragmentTransitionImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public abstract class k {

    /* JADX INFO: compiled from: FragmentTransitionImpl.java */
    public class a implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f1727a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1728b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1729c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1730d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1731e;

        public a(int i5, java.util.ArrayList arrayList, java.util.ArrayList arrayList2, java.util.ArrayList arrayList3, java.util.ArrayList arrayList4) {
            this.f1727a = i5;
            this.f1728b = arrayList;
            this.f1729c = arrayList2;
            this.f1730d = arrayList3;
            this.f1731e = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i5 = 0; i5 < this.f1727a; i5++) {
                w.q.a0((android.view.View) this.f1728b.get(i5), (java.lang.String) this.f1729c.get(i5));
                w.q.a0((android.view.View) this.f1730d.get(i5), (java.lang.String) this.f1731e.get(i5));
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionImpl.java */
    public class b implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1733a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.util.Map f1734b;

        public b(java.util.ArrayList arrayList, java.util.Map map) {
            this.f1733a = arrayList;
            this.f1734b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f1733a.size();
            for (int i5 = 0; i5 < size; i5++) {
                android.view.View view = (android.view.View) this.f1733a.get(i5);
                java.lang.String strV = w.q.v(view);
                if (strV != null) {
                    w.q.a0(view, androidx.fragment.app.k.i(this.f1734b, strV));
                }
            }
        }
    }

    /* JADX INFO: compiled from: FragmentTransitionImpl.java */
    public class c implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f1736a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ java.util.Map f1737b;

        public c(java.util.ArrayList arrayList, java.util.Map map) {
            this.f1736a = arrayList;
            this.f1737b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            int size = this.f1736a.size();
            for (int i5 = 0; i5 < size; i5++) {
                android.view.View view = (android.view.View) this.f1736a.get(i5);
                w.q.a0(view, (java.lang.String) this.f1737b.get(w.q.v(view)));
            }
        }
    }

    public static void d(java.util.List<android.view.View> list, android.view.View view) {
        int size = list.size();
        if (h(list, view, size)) {
            return;
        }
        list.add(view);
        for (int i5 = size; i5 < list.size(); i5++) {
            android.view.View view2 = list.get(i5);
            if (view2 instanceof android.view.ViewGroup) {
                android.view.ViewGroup viewGroup = (android.view.ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i6 = 0; i6 < childCount; i6++) {
                    android.view.View childAt = viewGroup.getChildAt(i6);
                    if (!h(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    public static boolean h(java.util.List<android.view.View> list, android.view.View view, int i5) {
        for (int i6 = 0; i6 < i5; i6++) {
            if (list.get(i6) == view) {
                return true;
            }
        }
        return false;
    }

    public static java.lang.String i(java.util.Map<java.lang.String, java.lang.String> map, java.lang.String str) {
        for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
            if (str.equals(entry.getValue())) {
                return entry.getKey();
            }
        }
        return null;
    }

    public static boolean l(java.util.List list) {
        return list == null || list.isEmpty();
    }

    public abstract java.lang.Object A(java.lang.Object obj);

    public abstract void a(java.lang.Object obj, android.view.View view);

    public abstract void b(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList);

    public abstract void c(android.view.ViewGroup viewGroup, java.lang.Object obj);

    public abstract boolean e(java.lang.Object obj);

    public void f(java.util.ArrayList<android.view.View> arrayList, android.view.View view) {
        if (view.getVisibility() == 0) {
            if (!(view instanceof android.view.ViewGroup)) {
                arrayList.add(view);
                return;
            }
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
            if (w.t.a(viewGroup)) {
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                f(arrayList, viewGroup.getChildAt(i5));
            }
        }
    }

    public abstract java.lang.Object g(java.lang.Object obj);

    public void j(java.util.Map<java.lang.String, android.view.View> map, android.view.View view) {
        if (view.getVisibility() == 0) {
            java.lang.String strV = w.q.v(view);
            if (strV != null) {
                map.put(strV, view);
            }
            if (view instanceof android.view.ViewGroup) {
                android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    j(map, viewGroup.getChildAt(i5));
                }
            }
        }
    }

    public void k(android.view.View view, android.graphics.Rect rect) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        rect.set(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }

    public abstract java.lang.Object m(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3);

    public abstract java.lang.Object n(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3);

    public java.util.ArrayList<java.lang.String> o(java.util.ArrayList<android.view.View> arrayList) {
        java.util.ArrayList<java.lang.String> arrayList2 = new java.util.ArrayList<>();
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            android.view.View view = arrayList.get(i5);
            arrayList2.add(w.q.v(view));
            w.q.a0(view, null);
        }
        return arrayList2;
    }

    public abstract void p(java.lang.Object obj, android.view.View view);

    public abstract void q(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2);

    public abstract void r(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList);

    public void s(android.view.ViewGroup viewGroup, java.util.ArrayList<android.view.View> arrayList, java.util.Map<java.lang.String, java.lang.String> map) {
        androidx.fragment.app.l.a(viewGroup, new androidx.fragment.app.k.c(arrayList, map));
    }

    public abstract void t(java.lang.Object obj, java.lang.Object obj2, java.util.ArrayList<android.view.View> arrayList, java.lang.Object obj3, java.util.ArrayList<android.view.View> arrayList2, java.lang.Object obj4, java.util.ArrayList<android.view.View> arrayList3);

    public abstract void u(java.lang.Object obj, android.graphics.Rect rect);

    public abstract void v(java.lang.Object obj, android.view.View view);

    public void w(android.view.View view, java.util.ArrayList<android.view.View> arrayList, java.util.Map<java.lang.String, java.lang.String> map) {
        androidx.fragment.app.l.a(view, new androidx.fragment.app.k.b(arrayList, map));
    }

    public void x(android.view.View view, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2, java.util.ArrayList<java.lang.String> arrayList3, java.util.Map<java.lang.String, java.lang.String> map) {
        int size = arrayList2.size();
        java.util.ArrayList arrayList4 = new java.util.ArrayList();
        for (int i5 = 0; i5 < size; i5++) {
            android.view.View view2 = arrayList.get(i5);
            java.lang.String strV = w.q.v(view2);
            arrayList4.add(strV);
            if (strV != null) {
                w.q.a0(view2, null);
                java.lang.String str = map.get(strV);
                for (int i6 = 0; i6 < size; i6++) {
                    if (str.equals(arrayList3.get(i6))) {
                        w.q.a0(arrayList2.get(i6), strV);
                        break;
                    }
                }
            }
        }
        androidx.fragment.app.l.a(view, new androidx.fragment.app.k.a(size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    public abstract void y(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList);

    public abstract void z(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2);
}
