package w;

/* JADX INFO: compiled from: AccessibilityDelegateCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final android.view.View.AccessibilityDelegate f6618c = new android.view.View.AccessibilityDelegate();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.view.View.AccessibilityDelegate f6619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final android.view.View.AccessibilityDelegate f6620b;

    /* JADX INFO: renamed from: w.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AccessibilityDelegateCompat.java */
    public static final class C0095a extends android.view.View.AccessibilityDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w.a f6621a;

        public C0095a(w.a aVar) {
            this.f6621a = aVar;
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean dispatchPopulateAccessibilityEvent(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            return this.f6621a.a(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public android.view.accessibility.AccessibilityNodeProvider getAccessibilityNodeProvider(android.view.View view) {
            x.d dVarB = this.f6621a.b(view);
            if (dVarB != null) {
                return (android.view.accessibility.AccessibilityNodeProvider) dVarB.a();
            }
            return null;
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityEvent(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            this.f6621a.f(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(android.view.View view, android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
            x.c cVarJ0 = x.c.j0(accessibilityNodeInfo);
            cVarJ0.c0(w.q.F(view));
            cVarJ0.W(w.q.B(view));
            cVarJ0.a0(w.q.h(view));
            cVarJ0.g0(w.q.u(view));
            this.f6621a.g(view, cVarJ0);
            cVarJ0.d(accessibilityNodeInfo.getText(), view);
            java.util.List<x.c.a> listC = w.a.c(view);
            for (int i5 = 0; i5 < listC.size(); i5++) {
                cVarJ0.b(listC.get(i5));
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            this.f6621a.h(view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean onRequestSendAccessibilityEvent(android.view.ViewGroup viewGroup, android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            return this.f6621a.i(viewGroup, view, accessibilityEvent);
        }

        @Override // android.view.View.AccessibilityDelegate
        public boolean performAccessibilityAction(android.view.View view, int i5, android.os.Bundle bundle) {
            return this.f6621a.j(view, i5, bundle);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEvent(android.view.View view, int i5) {
            this.f6621a.l(view, i5);
        }

        @Override // android.view.View.AccessibilityDelegate
        public void sendAccessibilityEventUnchecked(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            this.f6621a.m(view, accessibilityEvent);
        }
    }

    /* JADX INFO: compiled from: AccessibilityDelegateCompat.java */
    public static class b {
        public static android.view.accessibility.AccessibilityNodeProvider a(android.view.View.AccessibilityDelegate accessibilityDelegate, android.view.View view) {
            return accessibilityDelegate.getAccessibilityNodeProvider(view);
        }

        public static boolean b(android.view.View.AccessibilityDelegate accessibilityDelegate, android.view.View view, int i5, android.os.Bundle bundle) {
            return accessibilityDelegate.performAccessibilityAction(view, i5, bundle);
        }
    }

    public a() {
        this(f6618c);
    }

    public static java.util.List<x.c.a> c(android.view.View view) {
        java.util.List<x.c.a> list = (java.util.List) view.getTag(androidx.core.R.id.tag_accessibility_actions);
        return list == null ? java.util.Collections.emptyList() : list;
    }

    public boolean a(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        return this.f6619a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public x.d b(android.view.View view) {
        android.view.accessibility.AccessibilityNodeProvider accessibilityNodeProviderA = w.a.b.a(this.f6619a, view);
        if (accessibilityNodeProviderA != null) {
            return new x.d(accessibilityNodeProviderA);
        }
        return null;
    }

    public android.view.View.AccessibilityDelegate d() {
        return this.f6620b;
    }

    public final boolean e(android.text.style.ClickableSpan clickableSpan, android.view.View view) {
        if (clickableSpan != null) {
            android.text.style.ClickableSpan[] clickableSpanArrL = x.c.l(view.createAccessibilityNodeInfo().getText());
            for (int i5 = 0; clickableSpanArrL != null && i5 < clickableSpanArrL.length; i5++) {
                if (clickableSpan.equals(clickableSpanArrL[i5])) {
                    return true;
                }
            }
        }
        return false;
    }

    public void f(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        this.f6619a.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void g(android.view.View view, x.c cVar) {
        this.f6619a.onInitializeAccessibilityNodeInfo(view, cVar.i0());
    }

    public void h(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        this.f6619a.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean i(android.view.ViewGroup viewGroup, android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        return this.f6619a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public boolean j(android.view.View view, int i5, android.os.Bundle bundle) {
        java.util.List<x.c.a> listC = c(view);
        boolean zB = false;
        for (int i6 = 0; i6 < listC.size(); i6++) {
            x.c.a aVar = listC.get(i6);
            if (aVar.a() == i5) {
                zB = aVar.c(view, bundle);
                break;
            }
        }
        if (!zB) {
            zB = w.a.b.b(this.f6619a, view, i5, bundle);
        }
        return (zB || i5 != androidx.core.R.id.accessibility_action_clickable_span || bundle == null) ? zB : k(bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1), view);
    }

    public final boolean k(int i5, android.view.View view) {
        java.lang.ref.WeakReference weakReference;
        android.util.SparseArray sparseArray = (android.util.SparseArray) view.getTag(androidx.core.R.id.tag_accessibility_clickable_spans);
        if (sparseArray == null || (weakReference = (java.lang.ref.WeakReference) sparseArray.get(i5)) == null) {
            return false;
        }
        android.text.style.ClickableSpan clickableSpan = (android.text.style.ClickableSpan) weakReference.get();
        if (!e(clickableSpan, view)) {
            return false;
        }
        clickableSpan.onClick(view);
        return true;
    }

    public void l(android.view.View view, int i5) {
        this.f6619a.sendAccessibilityEvent(view, i5);
    }

    public void m(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        this.f6619a.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public a(android.view.View.AccessibilityDelegate accessibilityDelegate) {
        this.f6619a = accessibilityDelegate;
        this.f6620b = new w.a.C0095a(this);
    }
}
