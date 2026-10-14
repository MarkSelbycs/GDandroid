package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ActionMenuPresenter extends androidx.appcompat.view.menu.a implements w.b.a {
    public boolean A;
    public int B;
    public final android.util.SparseBooleanArray C;
    public android.view.View D;
    public androidx.appcompat.widget.ActionMenuPresenter.e E;
    public androidx.appcompat.widget.ActionMenuPresenter.a F;
    public androidx.appcompat.widget.ActionMenuPresenter.c G;
    public androidx.appcompat.widget.ActionMenuPresenter.b H;
    public final androidx.appcompat.widget.ActionMenuPresenter.f I;
    public int J;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public androidx.appcompat.widget.ActionMenuPresenter.d f619p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.graphics.drawable.Drawable f620q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f621r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f622s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f623t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f624u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f625v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f626w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f627x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f628y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f629z;

    public static class SavedState implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<androidx.appcompat.widget.ActionMenuPresenter.SavedState> CREATOR = new androidx.appcompat.widget.ActionMenuPresenter.SavedState.a();
        public int openSubMenuId;

        public static class a implements android.os.Parcelable.Creator<androidx.appcompat.widget.ActionMenuPresenter.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.appcompat.widget.ActionMenuPresenter.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.appcompat.widget.ActionMenuPresenter.SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.appcompat.widget.ActionMenuPresenter.SavedState[] newArray(int i5) {
                return new androidx.appcompat.widget.ActionMenuPresenter.SavedState[i5];
            }
        }

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            parcel.writeInt(this.openSubMenuId);
        }

        public SavedState(android.os.Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }
    }

    public class a extends androidx.appcompat.view.menu.h {
        public a(android.content.Context context, androidx.appcompat.view.menu.l lVar, android.view.View view) {
            super(context, lVar, view, false, androidx.appcompat.R.attr.actionOverflowMenuStyle);
            if (!((androidx.appcompat.view.menu.g) lVar.getItem()).l()) {
                android.view.View view2 = androidx.appcompat.widget.ActionMenuPresenter.this.f619p;
                f(view2 == null ? (android.view.View) androidx.appcompat.widget.ActionMenuPresenter.this.f431i : view2);
            }
            j(androidx.appcompat.widget.ActionMenuPresenter.this.I);
        }

        @Override // androidx.appcompat.view.menu.h
        public void e() {
            androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = androidx.appcompat.widget.ActionMenuPresenter.this;
            actionMenuPresenter.F = null;
            actionMenuPresenter.J = 0;
            super.e();
        }
    }

    public class b extends androidx.appcompat.view.menu.ActionMenuItemView.b {
        public b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public f.i a() {
            androidx.appcompat.widget.ActionMenuPresenter.a aVar = androidx.appcompat.widget.ActionMenuPresenter.this.F;
            if (aVar != null) {
                return aVar.c();
            }
            return null;
        }
    }

    public class c implements java.lang.Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public androidx.appcompat.widget.ActionMenuPresenter.e f632a;

        public c(androidx.appcompat.widget.ActionMenuPresenter.e eVar) {
            this.f632a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (androidx.appcompat.widget.ActionMenuPresenter.this.f425c != null) {
                androidx.appcompat.widget.ActionMenuPresenter.this.f425c.d();
            }
            android.view.View view = (android.view.View) androidx.appcompat.widget.ActionMenuPresenter.this.f431i;
            if (view != null && view.getWindowToken() != null && this.f632a.m()) {
                androidx.appcompat.widget.ActionMenuPresenter.this.E = this.f632a;
            }
            androidx.appcompat.widget.ActionMenuPresenter.this.G = null;
        }
    }

    public class d extends androidx.appcompat.widget.AppCompatImageView implements androidx.appcompat.widget.ActionMenuView.a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f634c;

        public class a extends androidx.appcompat.widget.r {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.widget.ActionMenuPresenter f636o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(android.view.View view, androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter) {
                super(view);
                this.f636o = actionMenuPresenter;
            }

            @Override // androidx.appcompat.widget.r
            public f.i b() {
                androidx.appcompat.widget.ActionMenuPresenter.e eVar = androidx.appcompat.widget.ActionMenuPresenter.this.E;
                if (eVar == null) {
                    return null;
                }
                return eVar.c();
            }

            @Override // androidx.appcompat.widget.r
            public boolean c() {
                androidx.appcompat.widget.ActionMenuPresenter.this.K();
                return true;
            }

            @Override // androidx.appcompat.widget.r
            public boolean d() {
                androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = androidx.appcompat.widget.ActionMenuPresenter.this;
                if (actionMenuPresenter.G != null) {
                    return false;
                }
                actionMenuPresenter.B();
                return true;
            }
        }

        public d(android.content.Context context) {
            super(context, null, androidx.appcompat.R.attr.actionOverflowButtonStyle);
            this.f634c = new float[2];
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            androidx.appcompat.widget.f0.a(this, getContentDescription());
            setOnTouchListener(new androidx.appcompat.widget.ActionMenuPresenter.d.a(this, androidx.appcompat.widget.ActionMenuPresenter.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            androidx.appcompat.widget.ActionMenuPresenter.this.K();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i5, int i6, int i7, int i8) {
            boolean frame = super.setFrame(i5, i6, i7, i8);
            android.graphics.drawable.Drawable drawable = getDrawable();
            android.graphics.drawable.Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = java.lang.Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                p.a.e(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    public class e extends androidx.appcompat.view.menu.h {
        public e(android.content.Context context, androidx.appcompat.view.menu.e eVar, android.view.View view, boolean z4) {
            super(context, eVar, view, z4, androidx.appcompat.R.attr.actionOverflowMenuStyle);
            h(8388613);
            j(androidx.appcompat.widget.ActionMenuPresenter.this.I);
        }

        @Override // androidx.appcompat.view.menu.h
        public void e() {
            if (androidx.appcompat.widget.ActionMenuPresenter.this.f425c != null) {
                androidx.appcompat.widget.ActionMenuPresenter.this.f425c.close();
            }
            androidx.appcompat.widget.ActionMenuPresenter.this.E = null;
            super.e();
        }
    }

    public class f implements androidx.appcompat.view.menu.i.a {
        public f() {
        }

        @Override // androidx.appcompat.view.menu.i.a
        public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
            if (eVar instanceof androidx.appcompat.view.menu.l) {
                eVar.D().e(false);
            }
            androidx.appcompat.view.menu.i.a aVarN = androidx.appcompat.widget.ActionMenuPresenter.this.n();
            if (aVarN != null) {
                aVarN.a(eVar, z4);
            }
        }

        @Override // androidx.appcompat.view.menu.i.a
        public boolean b(androidx.appcompat.view.menu.e eVar) {
            if (eVar == null) {
                return false;
            }
            androidx.appcompat.widget.ActionMenuPresenter.this.J = ((androidx.appcompat.view.menu.l) eVar).getItem().getItemId();
            androidx.appcompat.view.menu.i.a aVarN = androidx.appcompat.widget.ActionMenuPresenter.this.n();
            if (aVarN != null) {
                return aVarN.b(eVar);
            }
            return false;
        }
    }

    public ActionMenuPresenter(android.content.Context context) {
        super(context, androidx.appcompat.R.layout.abc_action_menu_layout, androidx.appcompat.R.layout.abc_action_menu_item_layout);
        this.C = new android.util.SparseBooleanArray();
        this.I = new androidx.appcompat.widget.ActionMenuPresenter.f();
    }

    public android.graphics.drawable.Drawable A() {
        androidx.appcompat.widget.ActionMenuPresenter.d dVar = this.f619p;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.f621r) {
            return this.f620q;
        }
        return null;
    }

    public boolean B() {
        java.lang.Object obj;
        androidx.appcompat.widget.ActionMenuPresenter.c cVar = this.G;
        if (cVar != null && (obj = this.f431i) != null) {
            ((android.view.View) obj).removeCallbacks(cVar);
            this.G = null;
            return true;
        }
        androidx.appcompat.widget.ActionMenuPresenter.e eVar = this.E;
        if (eVar == null) {
            return false;
        }
        eVar.b();
        return true;
    }

    public boolean C() {
        androidx.appcompat.widget.ActionMenuPresenter.a aVar = this.F;
        if (aVar == null) {
            return false;
        }
        aVar.b();
        return true;
    }

    public boolean D() {
        return this.G != null || E();
    }

    public boolean E() {
        androidx.appcompat.widget.ActionMenuPresenter.e eVar = this.E;
        return eVar != null && eVar.d();
    }

    public void F(android.content.res.Configuration configuration) {
        if (!this.f627x) {
            this.f626w = e.a.b(this.f424b).d();
        }
        androidx.appcompat.view.menu.e eVar = this.f425c;
        if (eVar != null) {
            eVar.K(true);
        }
    }

    public void G(boolean z4) {
        this.A = z4;
    }

    public void H(androidx.appcompat.widget.ActionMenuView actionMenuView) {
        this.f431i = actionMenuView;
        actionMenuView.b(this.f425c);
    }

    public void I(android.graphics.drawable.Drawable drawable) {
        androidx.appcompat.widget.ActionMenuPresenter.d dVar = this.f619p;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.f621r = true;
            this.f620q = drawable;
        }
    }

    public void J(boolean z4) {
        this.f622s = z4;
        this.f623t = true;
    }

    public boolean K() {
        androidx.appcompat.view.menu.e eVar;
        if (!this.f622s || E() || (eVar = this.f425c) == null || this.f431i == null || this.G != null || eVar.z().isEmpty()) {
            return false;
        }
        androidx.appcompat.widget.ActionMenuPresenter.c cVar = new androidx.appcompat.widget.ActionMenuPresenter.c(new androidx.appcompat.widget.ActionMenuPresenter.e(this.f424b, this.f425c, this.f619p, true));
        this.G = cVar;
        ((android.view.View) this.f431i).post(cVar);
        super.j(null);
        return true;
    }

    @Override // androidx.appcompat.view.menu.a, androidx.appcompat.view.menu.i
    public void a(androidx.appcompat.view.menu.e eVar, boolean z4) {
        y();
        super.a(eVar, z4);
    }

    @Override // w.b.a
    public void b(boolean z4) {
        if (z4) {
            super.j(null);
            return;
        }
        androidx.appcompat.view.menu.e eVar = this.f425c;
        if (eVar != null) {
            eVar.e(false);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.ActionMenuPresenter] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r14v1, types: [androidx.appcompat.view.menu.g] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v17 */
    @Override // androidx.appcompat.view.menu.i
    public boolean c() {
        java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListE;
        int size;
        int i5;
        int iJ;
        ?? r5;
        androidx.appcompat.widget.ActionMenuPresenter actionMenuPresenter = this;
        androidx.appcompat.view.menu.e eVar = actionMenuPresenter.f425c;
        ?? r6 = 0;
        if (eVar != null) {
            arrayListE = eVar.E();
            size = arrayListE.size();
        } else {
            arrayListE = null;
            size = 0;
        }
        int i6 = actionMenuPresenter.f626w;
        int i7 = actionMenuPresenter.f625v;
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) actionMenuPresenter.f431i;
        boolean z4 = false;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            androidx.appcompat.view.menu.g gVar = arrayListE.get(i10);
            if (gVar.o()) {
                i8++;
            } else if (gVar.n()) {
                i9++;
            } else {
                z4 = true;
            }
            if (actionMenuPresenter.A && gVar.isActionViewExpanded()) {
                i6 = 0;
            }
        }
        if (actionMenuPresenter.f622s && (z4 || i9 + i8 > i6)) {
            i6--;
        }
        int i11 = i6 - i8;
        android.util.SparseBooleanArray sparseBooleanArray = actionMenuPresenter.C;
        sparseBooleanArray.clear();
        if (actionMenuPresenter.f628y) {
            int i12 = actionMenuPresenter.B;
            iJ = i7 / i12;
            i5 = i12 + ((i7 % i12) / iJ);
        } else {
            i5 = 0;
            iJ = 0;
        }
        int i13 = 0;
        int i14 = 0;
        ?? r7 = actionMenuPresenter;
        while (i13 < size) {
            androidx.appcompat.view.menu.g gVar2 = arrayListE.get(i13);
            if (gVar2.o()) {
                android.view.View viewO = r7.o(gVar2, r7.D, viewGroup);
                if (r7.D == null) {
                    r7.D = viewO;
                }
                if (r7.f628y) {
                    iJ -= androidx.appcompat.widget.ActionMenuView.J(viewO, i5, iJ, iMakeMeasureSpec, r6);
                } else {
                    viewO.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                }
                int measuredWidth = viewO.getMeasuredWidth();
                i7 -= measuredWidth;
                if (i14 == 0) {
                    i14 = measuredWidth;
                }
                int groupId = gVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                gVar2.u(true);
                r5 = r6;
                size = size;
            } else if (gVar2.n()) {
                int groupId2 = gVar2.getGroupId();
                boolean z5 = sparseBooleanArray.get(groupId2);
                boolean z6 = (i11 > 0 || z5) && i7 > 0 && (!r7.f628y || iJ > 0);
                boolean z7 = z6;
                if (z6) {
                    android.view.View viewO2 = r7.o(gVar2, r7.D, viewGroup);
                    if (r7.D == null) {
                        r7.D = viewO2;
                    }
                    if (r7.f628y) {
                        int iJ2 = androidx.appcompat.widget.ActionMenuView.J(viewO2, i5, iJ, iMakeMeasureSpec, 0);
                        iJ -= iJ2;
                        if (iJ2 == 0) {
                            z7 = false;
                        }
                    } else {
                        viewO2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    }
                    int measuredWidth2 = viewO2.getMeasuredWidth();
                    i7 -= measuredWidth2;
                    if (i14 == 0) {
                        i14 = measuredWidth2;
                    }
                    z6 = z7 & (!r7.f628y ? i7 + i14 <= 0 : i7 < 0);
                }
                if (z6 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z5) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i15 = 0; i15 < i13; i15++) {
                        androidx.appcompat.view.menu.g gVar3 = arrayListE.get(i15);
                        if (gVar3.getGroupId() == groupId2) {
                            if (gVar3.l()) {
                                i11++;
                            }
                            gVar3.u(false);
                        }
                    }
                }
                if (z6) {
                    i11--;
                }
                gVar2.u(z6);
                r5 = 0;
            } else {
                r5 = r6;
                size = size;
                gVar2.u(r5);
            }
            i13++;
            r6 = r5;
            size = size;
            r7 = this;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.a, androidx.appcompat.view.menu.i
    public void d(android.content.Context context, androidx.appcompat.view.menu.e eVar) {
        super.d(context, eVar);
        android.content.res.Resources resources = context.getResources();
        e.a aVarB = e.a.b(context);
        if (!this.f623t) {
            this.f622s = aVarB.h();
        }
        if (!this.f629z) {
            this.f624u = aVarB.c();
        }
        if (!this.f627x) {
            this.f626w = aVarB.d();
        }
        int measuredWidth = this.f624u;
        if (this.f622s) {
            if (this.f619p == null) {
                androidx.appcompat.widget.ActionMenuPresenter.d dVar = new androidx.appcompat.widget.ActionMenuPresenter.d(this.f423a);
                this.f619p = dVar;
                if (this.f621r) {
                    dVar.setImageDrawable(this.f620q);
                    this.f620q = null;
                    this.f621r = false;
                }
                int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f619p.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f619p.getMeasuredWidth();
        } else {
            this.f619p = null;
        }
        this.f625v = measuredWidth;
        this.B = (int) (resources.getDisplayMetrics().density * 56.0f);
        this.D = null;
    }

    @Override // androidx.appcompat.view.menu.a
    public void g(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.j.a aVar) {
        aVar.d(gVar, 0);
        androidx.appcompat.view.menu.ActionMenuItemView actionMenuItemView = (androidx.appcompat.view.menu.ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((androidx.appcompat.widget.ActionMenuView) this.f431i);
        if (this.H == null) {
            this.H = new androidx.appcompat.widget.ActionMenuPresenter.b();
        }
        actionMenuItemView.setPopupCallback(this.H);
    }

    @Override // androidx.appcompat.view.menu.a, androidx.appcompat.view.menu.i
    public boolean j(androidx.appcompat.view.menu.l lVar) {
        boolean z4 = false;
        if (!lVar.hasVisibleItems()) {
            return false;
        }
        androidx.appcompat.view.menu.l lVar2 = lVar;
        while (lVar2.e0() != this.f425c) {
            lVar2 = (androidx.appcompat.view.menu.l) lVar2.e0();
        }
        android.view.View viewZ = z(lVar2.getItem());
        if (viewZ == null) {
            return false;
        }
        this.J = lVar.getItem().getItemId();
        int size = lVar.size();
        for (int i5 = 0; i5 < size; i5++) {
            android.view.MenuItem item = lVar.getItem(i5);
            if (item.isVisible() && item.getIcon() != null) {
                z4 = true;
                break;
            }
        }
        androidx.appcompat.widget.ActionMenuPresenter.a aVar = new androidx.appcompat.widget.ActionMenuPresenter.a(this.f424b, lVar, viewZ);
        this.F = aVar;
        aVar.g(z4);
        this.F.k();
        super.j(lVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.a, androidx.appcompat.view.menu.i
    public void k(boolean z4) {
        super.k(z4);
        ((android.view.View) this.f431i).requestLayout();
        androidx.appcompat.view.menu.e eVar = this.f425c;
        boolean z5 = false;
        if (eVar != null) {
            java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListS = eVar.s();
            int size = arrayListS.size();
            for (int i5 = 0; i5 < size; i5++) {
                w.b bVarB = arrayListS.get(i5).b();
                if (bVarB != null) {
                    bVarB.i(this);
                }
            }
        }
        androidx.appcompat.view.menu.e eVar2 = this.f425c;
        java.util.ArrayList<androidx.appcompat.view.menu.g> arrayListZ = eVar2 != null ? eVar2.z() : null;
        if (this.f622s && arrayListZ != null) {
            int size2 = arrayListZ.size();
            if (size2 == 1) {
                z5 = !arrayListZ.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z5 = true;
            }
        }
        if (z5) {
            if (this.f619p == null) {
                this.f619p = new androidx.appcompat.widget.ActionMenuPresenter.d(this.f423a);
            }
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.f619p.getParent();
            if (viewGroup != this.f431i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f619p);
                }
                androidx.appcompat.widget.ActionMenuView actionMenuView = (androidx.appcompat.widget.ActionMenuView) this.f431i;
                actionMenuView.addView(this.f619p, actionMenuView.D());
            }
        } else {
            androidx.appcompat.widget.ActionMenuPresenter.d dVar = this.f619p;
            if (dVar != null) {
                java.lang.Object parent = dVar.getParent();
                java.lang.Object obj = this.f431i;
                if (parent == obj) {
                    ((android.view.ViewGroup) obj).removeView(this.f619p);
                }
            }
        }
        ((androidx.appcompat.widget.ActionMenuView) this.f431i).setOverflowReserved(this.f622s);
    }

    @Override // androidx.appcompat.view.menu.a
    public boolean m(android.view.ViewGroup viewGroup, int i5) {
        if (viewGroup.getChildAt(i5) == this.f619p) {
            return false;
        }
        return super.m(viewGroup, i5);
    }

    @Override // androidx.appcompat.view.menu.a
    public android.view.View o(androidx.appcompat.view.menu.g gVar, android.view.View view, android.view.ViewGroup viewGroup) {
        android.view.View actionView = gVar.getActionView();
        if (actionView == null || gVar.j()) {
            actionView = super.o(gVar, view, viewGroup);
        }
        actionView.setVisibility(gVar.isActionViewExpanded() ? 8 : 0);
        androidx.appcompat.widget.ActionMenuView actionMenuView = (androidx.appcompat.widget.ActionMenuView) viewGroup;
        android.view.ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.a
    public androidx.appcompat.view.menu.j p(android.view.ViewGroup viewGroup) {
        androidx.appcompat.view.menu.j jVar = this.f431i;
        androidx.appcompat.view.menu.j jVarP = super.p(viewGroup);
        if (jVar != jVarP) {
            ((androidx.appcompat.widget.ActionMenuView) jVarP).setPresenter(this);
        }
        return jVarP;
    }

    @Override // androidx.appcompat.view.menu.a
    public boolean r(int i5, androidx.appcompat.view.menu.g gVar) {
        return gVar.l();
    }

    public boolean y() {
        return B() | C();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final android.view.View z(android.view.MenuItem menuItem) {
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.f431i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = viewGroup.getChildAt(i5);
            if ((childAt instanceof androidx.appcompat.view.menu.j.a) && ((androidx.appcompat.view.menu.j.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }
}
