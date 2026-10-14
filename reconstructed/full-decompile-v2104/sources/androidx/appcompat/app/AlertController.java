package androidx.appcompat.app;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class AlertController {
    public androidx.core.widget.NestedScrollView A;
    public android.graphics.drawable.Drawable C;
    public android.widget.ImageView D;
    public android.widget.TextView E;
    public android.widget.TextView F;
    public android.view.View G;
    public android.widget.ListAdapter H;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public boolean P;
    public android.os.Handler R;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.content.Context f179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final androidx.appcompat.app.e f180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.view.Window f181c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f182d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f183e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public java.lang.CharSequence f184f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public android.widget.ListView f185g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public android.view.View f186h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f187i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f188j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f189k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f190l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f191m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public android.widget.Button f193o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public java.lang.CharSequence f194p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public android.os.Message f195q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public android.graphics.drawable.Drawable f196r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public android.widget.Button f197s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public java.lang.CharSequence f198t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public android.os.Message f199u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public android.graphics.drawable.Drawable f200v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public android.widget.Button f201w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public java.lang.CharSequence f202x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public android.os.Message f203y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public android.graphics.drawable.Drawable f204z;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f192n = false;
    public int B = 0;
    public int I = -1;
    public int Q = 0;
    public final android.view.View.OnClickListener S = new androidx.appcompat.app.AlertController.a();

    public static class RecycleListView extends android.widget.ListView {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f205a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f206b;

        public RecycleListView(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.RecycleListView);
            this.f206b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(androidx.appcompat.R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f205a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(androidx.appcompat.R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }

        public void a(boolean z4, boolean z5) {
            if (z5 && z4) {
                return;
            }
            setPadding(getPaddingLeft(), z4 ? getPaddingTop() : this.f205a, getPaddingRight(), z5 ? getPaddingBottom() : this.f206b);
        }
    }

    public class a implements android.view.View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            android.os.Message messageObtain;
            android.os.Message message;
            android.os.Message message2;
            android.os.Message message3;
            androidx.appcompat.app.AlertController alertController = androidx.appcompat.app.AlertController.this;
            if (view == alertController.f193o && (message3 = alertController.f195q) != null) {
                messageObtain = android.os.Message.obtain(message3);
            } else if (view != alertController.f197s || (message2 = alertController.f199u) == null) {
                messageObtain = (view != alertController.f201w || (message = alertController.f203y) == null) ? null : android.os.Message.obtain(message);
            } else {
                messageObtain = android.os.Message.obtain(message2);
            }
            if (messageObtain != null) {
                messageObtain.sendToTarget();
            }
            androidx.appcompat.app.AlertController alertController2 = androidx.appcompat.app.AlertController.this;
            alertController2.R.obtainMessage(1, alertController2.f180b).sendToTarget();
        }
    }

    public static class b {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public android.content.DialogInterface.OnMultiChoiceClickListener J;
        public android.database.Cursor K;
        public java.lang.String L;
        public java.lang.String M;
        public android.widget.AdapterView.OnItemSelectedListener N;
        public androidx.appcompat.app.AlertController.b.e O;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.content.Context f208a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.view.LayoutInflater f209b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public android.graphics.drawable.Drawable f211d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public java.lang.CharSequence f213f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public android.view.View f214g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public java.lang.CharSequence f215h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public java.lang.CharSequence f216i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public android.graphics.drawable.Drawable f217j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public android.content.DialogInterface.OnClickListener f218k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public java.lang.CharSequence f219l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public android.graphics.drawable.Drawable f220m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public android.content.DialogInterface.OnClickListener f221n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public java.lang.CharSequence f222o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public android.graphics.drawable.Drawable f223p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public android.content.DialogInterface.OnClickListener f224q;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public android.content.DialogInterface.OnCancelListener f226s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public android.content.DialogInterface.OnDismissListener f227t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public android.content.DialogInterface.OnKeyListener f228u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public java.lang.CharSequence[] f229v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public android.widget.ListAdapter f230w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public android.content.DialogInterface.OnClickListener f231x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f232y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public android.view.View f233z;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f210c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f212e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean P = true;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public boolean f225r = true;

        public class a extends android.widget.ArrayAdapter<java.lang.CharSequence> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.app.AlertController.RecycleListView f234a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(android.content.Context context, int i5, int i6, java.lang.CharSequence[] charSequenceArr, androidx.appcompat.app.AlertController.RecycleListView recycleListView) {
                super(context, i5, i6, charSequenceArr);
                this.f234a = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public android.view.View getView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
                android.view.View view2 = super.getView(i5, view, viewGroup);
                boolean[] zArr = androidx.appcompat.app.AlertController.b.this.F;
                if (zArr != null && zArr[i5]) {
                    this.f234a.setItemChecked(i5, true);
                }
                return view2;
            }
        }

        /* JADX INFO: renamed from: androidx.appcompat.app.AlertController$b$b, reason: collision with other inner class name */
        public class C0002b extends android.widget.CursorAdapter {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final int f236a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f237b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.app.AlertController.RecycleListView f238c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.app.AlertController f239d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0002b(android.content.Context context, android.database.Cursor cursor, boolean z4, androidx.appcompat.app.AlertController.RecycleListView recycleListView, androidx.appcompat.app.AlertController alertController) {
                super(context, cursor, z4);
                this.f238c = recycleListView;
                this.f239d = alertController;
                android.database.Cursor cursor2 = getCursor();
                this.f236a = cursor2.getColumnIndexOrThrow(androidx.appcompat.app.AlertController.b.this.L);
                this.f237b = cursor2.getColumnIndexOrThrow(androidx.appcompat.app.AlertController.b.this.M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(android.view.View view, android.content.Context context, android.database.Cursor cursor) {
                ((android.widget.CheckedTextView) view.findViewById(android.R.id.text1)).setText(cursor.getString(this.f236a));
                this.f238c.setItemChecked(cursor.getPosition(), cursor.getInt(this.f237b) == 1);
            }

            @Override // android.widget.CursorAdapter
            public android.view.View newView(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup) {
                return androidx.appcompat.app.AlertController.b.this.f209b.inflate(this.f239d.M, viewGroup, false);
            }
        }

        public class c implements android.widget.AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.app.AlertController f241a;

            public c(androidx.appcompat.app.AlertController alertController) {
                this.f241a = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
                androidx.appcompat.app.AlertController.b.this.f231x.onClick(this.f241a.f180b, i5);
                if (androidx.appcompat.app.AlertController.b.this.H) {
                    return;
                }
                this.f241a.f180b.dismiss();
            }
        }

        public class d implements android.widget.AdapterView.OnItemClickListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.app.AlertController.RecycleListView f243a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ androidx.appcompat.app.AlertController f244b;

            public d(androidx.appcompat.app.AlertController.RecycleListView recycleListView, androidx.appcompat.app.AlertController alertController) {
                this.f243a = recycleListView;
                this.f244b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
                boolean[] zArr = androidx.appcompat.app.AlertController.b.this.F;
                if (zArr != null) {
                    zArr[i5] = this.f243a.isItemChecked(i5);
                }
                androidx.appcompat.app.AlertController.b.this.J.onClick(this.f244b.f180b, i5, this.f243a.isItemChecked(i5));
            }
        }

        public interface e {
            void a(android.widget.ListView listView);
        }

        public b(android.content.Context context) {
            this.f208a = context;
            this.f209b = (android.view.LayoutInflater) context.getSystemService("layout_inflater");
        }

        public void a(androidx.appcompat.app.AlertController alertController) {
            android.view.View view = this.f214g;
            if (view != null) {
                alertController.j(view);
            } else {
                java.lang.CharSequence charSequence = this.f213f;
                if (charSequence != null) {
                    alertController.o(charSequence);
                }
                android.graphics.drawable.Drawable drawable = this.f211d;
                if (drawable != null) {
                    alertController.l(drawable);
                }
                int i5 = this.f210c;
                if (i5 != 0) {
                    alertController.k(i5);
                }
                int i6 = this.f212e;
                if (i6 != 0) {
                    alertController.k(alertController.c(i6));
                }
            }
            java.lang.CharSequence charSequence2 = this.f215h;
            if (charSequence2 != null) {
                alertController.m(charSequence2);
            }
            java.lang.CharSequence charSequence3 = this.f216i;
            if (charSequence3 != null || this.f217j != null) {
                alertController.i(-1, charSequence3, this.f218k, null, this.f217j);
            }
            java.lang.CharSequence charSequence4 = this.f219l;
            if (charSequence4 != null || this.f220m != null) {
                alertController.i(-2, charSequence4, this.f221n, null, this.f220m);
            }
            java.lang.CharSequence charSequence5 = this.f222o;
            if (charSequence5 != null || this.f223p != null) {
                alertController.i(-3, charSequence5, this.f224q, null, this.f223p);
            }
            if (this.f229v != null || this.K != null || this.f230w != null) {
                b(alertController);
            }
            android.view.View view2 = this.f233z;
            if (view2 != null) {
                if (this.E) {
                    alertController.r(view2, this.A, this.B, this.C, this.D);
                    return;
                } else {
                    alertController.q(view2);
                    return;
                }
            }
            int i7 = this.f232y;
            if (i7 != 0) {
                alertController.p(i7);
            }
        }

        public final void b(androidx.appcompat.app.AlertController alertController) {
            android.widget.ListAdapter dVar;
            androidx.appcompat.app.AlertController.RecycleListView recycleListView = (androidx.appcompat.app.AlertController.RecycleListView) this.f209b.inflate(alertController.L, (android.view.ViewGroup) null);
            if (this.G) {
                dVar = this.K == null ? new androidx.appcompat.app.AlertController.b.a(this.f208a, alertController.M, android.R.id.text1, this.f229v, recycleListView) : new androidx.appcompat.app.AlertController.b.C0002b(this.f208a, this.K, false, recycleListView, alertController);
            } else {
                int i5 = this.H ? alertController.N : alertController.O;
                if (this.K != null) {
                    dVar = new android.widget.SimpleCursorAdapter(this.f208a, i5, this.K, new java.lang.String[]{this.L}, new int[]{android.R.id.text1});
                } else {
                    dVar = this.f230w;
                    if (dVar == null) {
                        dVar = new androidx.appcompat.app.AlertController.d(this.f208a, i5, android.R.id.text1, this.f229v);
                    }
                }
            }
            androidx.appcompat.app.AlertController.b.e eVar = this.O;
            if (eVar != null) {
                eVar.a(recycleListView);
            }
            alertController.H = dVar;
            alertController.I = this.I;
            if (this.f231x != null) {
                recycleListView.setOnItemClickListener(new androidx.appcompat.app.AlertController.b.c(alertController));
            } else if (this.J != null) {
                recycleListView.setOnItemClickListener(new androidx.appcompat.app.AlertController.b.d(recycleListView, alertController));
            }
            android.widget.AdapterView.OnItemSelectedListener onItemSelectedListener = this.N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.H) {
                recycleListView.setChoiceMode(1);
            } else if (this.G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f185g = recycleListView;
        }
    }

    public static final class c extends android.os.Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.ref.WeakReference<android.content.DialogInterface> f246a;

        public c(android.content.DialogInterface dialogInterface) {
            this.f246a = new java.lang.ref.WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            int i5 = message.what;
            if (i5 == -3 || i5 == -2 || i5 == -1) {
                ((android.content.DialogInterface.OnClickListener) message.obj).onClick(this.f246a.get(), message.what);
            } else {
                if (i5 != 1) {
                    return;
                }
                ((android.content.DialogInterface) message.obj).dismiss();
            }
        }
    }

    public static class d extends android.widget.ArrayAdapter<java.lang.CharSequence> {
        public d(android.content.Context context, int i5, int i6, java.lang.CharSequence[] charSequenceArr) {
            super(context, i5, i6, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i5) {
            return i5;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(android.content.Context context, androidx.appcompat.app.e eVar, android.view.Window window) {
        this.f179a = context;
        this.f180b = eVar;
        this.f181c = window;
        this.R = new androidx.appcompat.app.AlertController.c(eVar);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, androidx.appcompat.R.styleable.AlertDialog, androidx.appcompat.R.attr.alertDialogStyle, 0);
        this.J = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_android_layout, 0);
        this.K = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.L = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_listLayout, 0);
        this.M = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.N = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.O = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_listItemLayout, 0);
        this.P = typedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AlertDialog_showTitle, true);
        this.f182d = typedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.AlertDialog_buttonIconDimen, 0);
        typedArrayObtainStyledAttributes.recycle();
        eVar.d(1);
    }

    public static boolean a(android.view.View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof android.view.ViewGroup)) {
            return false;
        }
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static boolean x(android.content.Context context) {
        android.util.TypedValue typedValue = new android.util.TypedValue();
        context.getTheme().resolveAttribute(androidx.appcompat.R.attr.alertDialogCenterButtons, typedValue, true);
        return typedValue.data != 0;
    }

    public final void b(android.widget.Button button) {
        android.widget.LinearLayout.LayoutParams layoutParams = (android.widget.LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public int c(int i5) {
        android.util.TypedValue typedValue = new android.util.TypedValue();
        this.f179a.getTheme().resolveAttribute(i5, typedValue, true);
        return typedValue.resourceId;
    }

    public void d() {
        this.f180b.setContentView(h());
        w();
    }

    public boolean e(int i5, android.view.KeyEvent keyEvent) {
        androidx.core.widget.NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.s(keyEvent);
    }

    public boolean f(int i5, android.view.KeyEvent keyEvent) {
        androidx.core.widget.NestedScrollView nestedScrollView = this.A;
        return nestedScrollView != null && nestedScrollView.s(keyEvent);
    }

    public final android.view.ViewGroup g(android.view.View view, android.view.View view2) {
        if (view == null) {
            if (view2 instanceof android.view.ViewStub) {
                view2 = ((android.view.ViewStub) view2).inflate();
            }
            return (android.view.ViewGroup) view2;
        }
        if (view2 != null) {
            android.view.ViewParent parent = view2.getParent();
            if (parent instanceof android.view.ViewGroup) {
                ((android.view.ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof android.view.ViewStub) {
            view = ((android.view.ViewStub) view).inflate();
        }
        return (android.view.ViewGroup) view;
    }

    public final int h() {
        int i5 = this.K;
        if (i5 == 0) {
            return this.J;
        }
        return this.Q == 1 ? i5 : this.J;
    }

    public void i(int i5, java.lang.CharSequence charSequence, android.content.DialogInterface.OnClickListener onClickListener, android.os.Message message, android.graphics.drawable.Drawable drawable) {
        if (message == null && onClickListener != null) {
            message = this.R.obtainMessage(i5, onClickListener);
        }
        if (i5 == -3) {
            this.f202x = charSequence;
            this.f203y = message;
            this.f204z = drawable;
        } else if (i5 == -2) {
            this.f198t = charSequence;
            this.f199u = message;
            this.f200v = drawable;
        } else {
            if (i5 != -1) {
                throw new java.lang.IllegalArgumentException("Button does not exist");
            }
            this.f194p = charSequence;
            this.f195q = message;
            this.f196r = drawable;
        }
    }

    public void j(android.view.View view) {
        this.G = view;
    }

    public void k(int i5) {
        this.C = null;
        this.B = i5;
        android.widget.ImageView imageView = this.D;
        if (imageView != null) {
            if (i5 == 0) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageResource(this.B);
            }
        }
    }

    public void l(android.graphics.drawable.Drawable drawable) {
        this.C = drawable;
        this.B = 0;
        android.widget.ImageView imageView = this.D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                this.D.setImageDrawable(drawable);
            }
        }
    }

    public void m(java.lang.CharSequence charSequence) {
        this.f184f = charSequence;
        android.widget.TextView textView = this.F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public final void n(android.view.ViewGroup viewGroup, android.view.View view, int i5, int i6) {
        android.view.View viewFindViewById = this.f181c.findViewById(androidx.appcompat.R.id.scrollIndicatorUp);
        android.view.View viewFindViewById2 = this.f181c.findViewById(androidx.appcompat.R.id.scrollIndicatorDown);
        w.q.Z(view, i5, i6);
        if (viewFindViewById != null) {
            viewGroup.removeView(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            viewGroup.removeView(viewFindViewById2);
        }
    }

    public void o(java.lang.CharSequence charSequence) {
        this.f183e = charSequence;
        android.widget.TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    public void p(int i5) {
        this.f186h = null;
        this.f187i = i5;
        this.f192n = false;
    }

    public void q(android.view.View view) {
        this.f186h = view;
        this.f187i = 0;
        this.f192n = false;
    }

    public void r(android.view.View view, int i5, int i6, int i7, int i8) {
        this.f186h = view;
        this.f187i = 0;
        this.f192n = true;
        this.f188j = i5;
        this.f189k = i6;
        this.f190l = i7;
        this.f191m = i8;
    }

    public final void s(android.view.ViewGroup viewGroup) {
        int i5;
        android.widget.Button button = (android.widget.Button) viewGroup.findViewById(android.R.id.button1);
        this.f193o = button;
        button.setOnClickListener(this.S);
        if (android.text.TextUtils.isEmpty(this.f194p) && this.f196r == null) {
            this.f193o.setVisibility(8);
            i5 = 0;
        } else {
            this.f193o.setText(this.f194p);
            android.graphics.drawable.Drawable drawable = this.f196r;
            if (drawable != null) {
                int i6 = this.f182d;
                drawable.setBounds(0, 0, i6, i6);
                this.f193o.setCompoundDrawables(this.f196r, null, null, null);
            }
            this.f193o.setVisibility(0);
            i5 = 1;
        }
        android.widget.Button button2 = (android.widget.Button) viewGroup.findViewById(android.R.id.button2);
        this.f197s = button2;
        button2.setOnClickListener(this.S);
        if (android.text.TextUtils.isEmpty(this.f198t) && this.f200v == null) {
            this.f197s.setVisibility(8);
        } else {
            this.f197s.setText(this.f198t);
            android.graphics.drawable.Drawable drawable2 = this.f200v;
            if (drawable2 != null) {
                int i7 = this.f182d;
                drawable2.setBounds(0, 0, i7, i7);
                this.f197s.setCompoundDrawables(this.f200v, null, null, null);
            }
            this.f197s.setVisibility(0);
            i5 |= 2;
        }
        android.widget.Button button3 = (android.widget.Button) viewGroup.findViewById(android.R.id.button3);
        this.f201w = button3;
        button3.setOnClickListener(this.S);
        if (android.text.TextUtils.isEmpty(this.f202x) && this.f204z == null) {
            this.f201w.setVisibility(8);
        } else {
            this.f201w.setText(this.f202x);
            android.graphics.drawable.Drawable drawable3 = this.f196r;
            if (drawable3 != null) {
                int i8 = this.f182d;
                drawable3.setBounds(0, 0, i8, i8);
                this.f193o.setCompoundDrawables(this.f196r, null, null, null);
            }
            this.f201w.setVisibility(0);
            i5 |= 4;
        }
        if (x(this.f179a)) {
            if (i5 == 1) {
                b(this.f193o);
            } else if (i5 == 2) {
                b(this.f197s);
            } else if (i5 == 4) {
                b(this.f201w);
            }
        }
        if (i5 != 0) {
            return;
        }
        viewGroup.setVisibility(8);
    }

    public final void t(android.view.ViewGroup viewGroup) {
        androidx.core.widget.NestedScrollView nestedScrollView = (androidx.core.widget.NestedScrollView) this.f181c.findViewById(androidx.appcompat.R.id.scrollView);
        this.A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.A.setNestedScrollingEnabled(false);
        android.widget.TextView textView = (android.widget.TextView) viewGroup.findViewById(android.R.id.message);
        this.F = textView;
        if (textView == null) {
            return;
        }
        java.lang.CharSequence charSequence = this.f184f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.A.removeView(this.F);
        if (this.f185g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        android.view.ViewGroup viewGroup2 = (android.view.ViewGroup) this.A.getParent();
        int iIndexOfChild = viewGroup2.indexOfChild(this.A);
        viewGroup2.removeViewAt(iIndexOfChild);
        viewGroup2.addView(this.f185g, iIndexOfChild, new android.view.ViewGroup.LayoutParams(-1, -1));
    }

    public final void u(android.view.ViewGroup viewGroup) {
        android.view.View viewInflate = this.f186h;
        if (viewInflate == null) {
            viewInflate = this.f187i != 0 ? android.view.LayoutInflater.from(this.f179a).inflate(this.f187i, viewGroup, false) : null;
        }
        boolean z4 = viewInflate != null;
        if (!z4 || !a(viewInflate)) {
            this.f181c.setFlags(131072, 131072);
        }
        if (!z4) {
            viewGroup.setVisibility(8);
            return;
        }
        android.widget.FrameLayout frameLayout = (android.widget.FrameLayout) this.f181c.findViewById(androidx.appcompat.R.id.custom);
        frameLayout.addView(viewInflate, new android.view.ViewGroup.LayoutParams(-1, -1));
        if (this.f192n) {
            frameLayout.setPadding(this.f188j, this.f189k, this.f190l, this.f191m);
        }
        if (this.f185g != null) {
            ((androidx.appcompat.widget.LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).f755a = 0.0f;
        }
    }

    public final void v(android.view.ViewGroup viewGroup) {
        if (this.G != null) {
            viewGroup.addView(this.G, 0, new android.view.ViewGroup.LayoutParams(-1, -2));
            this.f181c.findViewById(androidx.appcompat.R.id.title_template).setVisibility(8);
            return;
        }
        this.D = (android.widget.ImageView) this.f181c.findViewById(android.R.id.icon);
        if (!(!android.text.TextUtils.isEmpty(this.f183e)) || !this.P) {
            this.f181c.findViewById(androidx.appcompat.R.id.title_template).setVisibility(8);
            this.D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        android.widget.TextView textView = (android.widget.TextView) this.f181c.findViewById(androidx.appcompat.R.id.alertTitle);
        this.E = textView;
        textView.setText(this.f183e);
        int i5 = this.B;
        if (i5 != 0) {
            this.D.setImageResource(i5);
            return;
        }
        android.graphics.drawable.Drawable drawable = this.C;
        if (drawable != null) {
            this.D.setImageDrawable(drawable);
        } else {
            this.E.setPadding(this.D.getPaddingLeft(), this.D.getPaddingTop(), this.D.getPaddingRight(), this.D.getPaddingBottom());
            this.D.setVisibility(8);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void w() {
        android.view.View viewFindViewById;
        android.widget.ListAdapter listAdapter;
        android.view.View viewFindViewById2;
        android.view.View viewFindViewById3 = this.f181c.findViewById(androidx.appcompat.R.id.parentPanel);
        int i5 = androidx.appcompat.R.id.topPanel;
        android.view.View viewFindViewById4 = viewFindViewById3.findViewById(i5);
        int i6 = androidx.appcompat.R.id.contentPanel;
        android.view.View viewFindViewById5 = viewFindViewById3.findViewById(i6);
        int i7 = androidx.appcompat.R.id.buttonPanel;
        android.view.View viewFindViewById6 = viewFindViewById3.findViewById(i7);
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) viewFindViewById3.findViewById(androidx.appcompat.R.id.customPanel);
        u(viewGroup);
        android.view.View viewFindViewById7 = viewGroup.findViewById(i5);
        android.view.View viewFindViewById8 = viewGroup.findViewById(i6);
        android.view.View viewFindViewById9 = viewGroup.findViewById(i7);
        android.view.ViewGroup viewGroupG = g(viewFindViewById7, viewFindViewById4);
        android.view.ViewGroup viewGroupG2 = g(viewFindViewById8, viewFindViewById5);
        android.view.ViewGroup viewGroupG3 = g(viewFindViewById9, viewFindViewById6);
        t(viewGroupG2);
        s(viewGroupG3);
        v(viewGroupG);
        boolean z4 = viewGroup.getVisibility() != 8;
        boolean z5 = (viewGroupG == null || viewGroupG.getVisibility() == 8) ? 0 : 1;
        boolean z6 = (viewGroupG3 == null || viewGroupG3.getVisibility() == 8) ? false : true;
        if (!z6 && viewGroupG2 != null && (viewFindViewById2 = viewGroupG2.findViewById(androidx.appcompat.R.id.textSpacerNoButtons)) != null) {
            viewFindViewById2.setVisibility(0);
        }
        if (z5 != 0) {
            androidx.core.widget.NestedScrollView nestedScrollView = this.A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            android.view.View viewFindViewById10 = (this.f184f == null && this.f185g == null) ? null : viewGroupG.findViewById(androidx.appcompat.R.id.titleDividerNoCustom);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        } else if (viewGroupG2 != null && (viewFindViewById = viewGroupG2.findViewById(androidx.appcompat.R.id.textSpacerNoTitle)) != null) {
            viewFindViewById.setVisibility(0);
        }
        android.widget.ListView listView = this.f185g;
        if (listView instanceof androidx.appcompat.app.AlertController.RecycleListView) {
            ((androidx.appcompat.app.AlertController.RecycleListView) listView).a(z5, z6);
        }
        if (!z4) {
            android.view.View view = this.f185g;
            if (view == null) {
                view = this.A;
            }
            if (view != null) {
                n(viewGroupG2, view, z5 | (z6 ? 2 : 0), 3);
            }
        }
        android.widget.ListView listView2 = this.f185g;
        if (listView2 == null || (listAdapter = this.H) == null) {
            return;
        }
        listView2.setAdapter(listAdapter);
        int i8 = this.I;
        if (i8 > -1) {
            listView2.setItemChecked(i8, true);
            listView2.setSelection(i8);
        }
    }
}
