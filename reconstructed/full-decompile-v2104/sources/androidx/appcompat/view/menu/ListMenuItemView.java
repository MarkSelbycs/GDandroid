package androidx.appcompat.view.menu;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class ListMenuItemView extends android.widget.LinearLayout implements androidx.appcompat.view.menu.j.a, android.widget.AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public androidx.appcompat.view.menu.g f405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public android.widget.ImageView f406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.widget.RadioButton f407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public android.widget.TextView f408d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.widget.CheckBox f409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public android.widget.TextView f410f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.widget.ImageView f411g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.widget.ImageView f412h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public android.widget.LinearLayout f413i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.graphics.drawable.Drawable f414o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f415p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.content.Context f416q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f417r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public android.graphics.drawable.Drawable f418s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f419t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f420u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public android.view.LayoutInflater f421v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f422w;

    public ListMenuItemView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.listMenuViewStyle);
    }

    private android.view.LayoutInflater getInflater() {
        if (this.f421v == null) {
            this.f421v = android.view.LayoutInflater.from(getContext());
        }
        return this.f421v;
    }

    private void setSubMenuArrowVisible(boolean z4) {
        android.widget.ImageView imageView = this.f411g;
        if (imageView != null) {
            imageView.setVisibility(z4 ? 0 : 8);
        }
    }

    public final void a(android.view.View view) {
        b(view, -1);
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(android.graphics.Rect rect) {
        android.widget.ImageView imageView = this.f412h;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        android.widget.LinearLayout.LayoutParams layoutParams = (android.widget.LinearLayout.LayoutParams) this.f412h.getLayoutParams();
        rect.top += this.f412h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    public final void b(android.view.View view, int i5) {
        android.widget.LinearLayout linearLayout = this.f413i;
        if (linearLayout != null) {
            linearLayout.addView(view, i5);
        } else {
            addView(view, i5);
        }
    }

    @Override // androidx.appcompat.view.menu.j.a
    public boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.j.a
    public void d(androidx.appcompat.view.menu.g gVar, int i5) {
        this.f405a = gVar;
        this.f420u = i5;
        setVisibility(gVar.isVisible() ? 0 : 8);
        setTitle(gVar.i(this));
        setCheckable(gVar.isCheckable());
        h(gVar.A(), gVar.g());
        setIcon(gVar.getIcon());
        setEnabled(gVar.isEnabled());
        setSubMenuArrowVisible(gVar.hasSubMenu());
        setContentDescription(gVar.getContentDescription());
    }

    public final void e() {
        android.widget.CheckBox checkBox = (android.widget.CheckBox) getInflater().inflate(androidx.appcompat.R.layout.abc_list_menu_item_checkbox, (android.view.ViewGroup) this, false);
        this.f409e = checkBox;
        a(checkBox);
    }

    public final void f() {
        android.widget.ImageView imageView = (android.widget.ImageView) getInflater().inflate(androidx.appcompat.R.layout.abc_list_menu_item_icon, (android.view.ViewGroup) this, false);
        this.f406b = imageView;
        b(imageView, 0);
    }

    public final void g() {
        android.widget.RadioButton radioButton = (android.widget.RadioButton) getInflater().inflate(androidx.appcompat.R.layout.abc_list_menu_item_radio, (android.view.ViewGroup) this, false);
        this.f407c = radioButton;
        a(radioButton);
    }

    @Override // androidx.appcompat.view.menu.j.a
    public androidx.appcompat.view.menu.g getItemData() {
        return this.f405a;
    }

    public void h(boolean z4, char c5) {
        int i5 = (z4 && this.f405a.A()) ? 0 : 8;
        if (i5 == 0) {
            this.f410f.setText(this.f405a.h());
        }
        if (this.f410f.getVisibility() != i5) {
            this.f410f.setVisibility(i5);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        w.q.R(this, this.f414o);
        android.widget.TextView textView = (android.widget.TextView) findViewById(androidx.appcompat.R.id.title);
        this.f408d = textView;
        int i5 = this.f415p;
        if (i5 != -1) {
            textView.setTextAppearance(this.f416q, i5);
        }
        this.f410f = (android.widget.TextView) findViewById(androidx.appcompat.R.id.shortcut);
        android.widget.ImageView imageView = (android.widget.ImageView) findViewById(androidx.appcompat.R.id.submenuarrow);
        this.f411g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f418s);
        }
        this.f412h = (android.widget.ImageView) findViewById(androidx.appcompat.R.id.group_divider);
        this.f413i = (android.widget.LinearLayout) findViewById(androidx.appcompat.R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i5, int i6) {
        if (this.f406b != null && this.f417r) {
            android.view.ViewGroup.LayoutParams layoutParams = getLayoutParams();
            android.widget.LinearLayout.LayoutParams layoutParams2 = (android.widget.LinearLayout.LayoutParams) this.f406b.getLayoutParams();
            int i7 = layoutParams.height;
            if (i7 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i7;
            }
        }
        super.onMeasure(i5, i6);
    }

    public void setCheckable(boolean z4) {
        android.widget.CompoundButton compoundButton;
        android.widget.CompoundButton compoundButton2;
        if (!z4 && this.f407c == null && this.f409e == null) {
            return;
        }
        if (this.f405a.m()) {
            if (this.f407c == null) {
                g();
            }
            compoundButton = this.f407c;
            compoundButton2 = this.f409e;
        } else {
            if (this.f409e == null) {
                e();
            }
            compoundButton = this.f409e;
            compoundButton2 = this.f407c;
        }
        if (z4) {
            compoundButton.setChecked(this.f405a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (compoundButton2 == null || compoundButton2.getVisibility() == 8) {
                return;
            }
            compoundButton2.setVisibility(8);
            return;
        }
        android.widget.CheckBox checkBox = this.f409e;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        android.widget.RadioButton radioButton = this.f407c;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z4) {
        android.widget.CompoundButton compoundButton;
        if (this.f405a.m()) {
            if (this.f407c == null) {
                g();
            }
            compoundButton = this.f407c;
        } else {
            if (this.f409e == null) {
                e();
            }
            compoundButton = this.f409e;
        }
        compoundButton.setChecked(z4);
    }

    public void setForceShowIcon(boolean z4) {
        this.f422w = z4;
        this.f417r = z4;
    }

    public void setGroupDividerEnabled(boolean z4) {
        android.widget.ImageView imageView = this.f412h;
        if (imageView != null) {
            imageView.setVisibility((this.f419t || !z4) ? 8 : 0);
        }
    }

    public void setIcon(android.graphics.drawable.Drawable drawable) {
        boolean z4 = this.f405a.z() || this.f422w;
        if (z4 || this.f417r) {
            android.widget.ImageView imageView = this.f406b;
            if (imageView == null && drawable == null && !this.f417r) {
                return;
            }
            if (imageView == null) {
                f();
            }
            if (drawable == null && !this.f417r) {
                this.f406b.setVisibility(8);
                return;
            }
            android.widget.ImageView imageView2 = this.f406b;
            if (!z4) {
                drawable = null;
            }
            imageView2.setImageDrawable(drawable);
            if (this.f406b.getVisibility() != 0) {
                this.f406b.setVisibility(0);
            }
        }
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f408d.getVisibility() != 8) {
                this.f408d.setVisibility(8);
            }
        } else {
            this.f408d.setText(charSequence);
            if (this.f408d.getVisibility() != 0) {
                this.f408d.setVisibility(0);
            }
        }
    }

    public ListMenuItemView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet);
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(getContext(), attributeSet, androidx.appcompat.R.styleable.MenuView, i5, 0);
        this.f414o = d0VarT.f(androidx.appcompat.R.styleable.MenuView_android_itemBackground);
        this.f415p = d0VarT.m(androidx.appcompat.R.styleable.MenuView_android_itemTextAppearance, -1);
        this.f417r = d0VarT.a(androidx.appcompat.R.styleable.MenuView_preserveIconSpacing, false);
        this.f416q = context;
        this.f418s = d0VarT.f(androidx.appcompat.R.styleable.MenuView_subMenuArrow);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, androidx.appcompat.R.attr.dropDownListViewStyle, 0);
        this.f419t = typedArrayObtainStyledAttributes.hasValue(0);
        d0VarT.u();
        typedArrayObtainStyledAttributes.recycle();
    }
}
