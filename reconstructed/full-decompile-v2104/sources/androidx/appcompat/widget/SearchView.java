package androidx.appcompat.widget;

/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class SearchView extends androidx.appcompat.widget.LinearLayoutCompat implements e.c {

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final androidx.appcompat.widget.SearchView.k f785v0 = new androidx.appcompat.widget.SearchView.k();
    public final android.widget.ImageView A;
    public final android.widget.ImageView B;
    public final android.view.View C;
    public androidx.appcompat.widget.SearchView.o D;
    public android.graphics.Rect E;
    public android.graphics.Rect F;
    public int[] G;
    public int[] H;
    public final android.widget.ImageView I;
    public final android.graphics.drawable.Drawable J;
    public final int K;
    public final int L;
    public final android.content.Intent M;
    public final android.content.Intent N;
    public final java.lang.CharSequence O;
    public androidx.appcompat.widget.SearchView.m P;
    public androidx.appcompat.widget.SearchView.l Q;
    public android.view.View.OnFocusChangeListener R;
    public androidx.appcompat.widget.SearchView.n S;
    public android.view.View.OnClickListener T;
    public boolean U;
    public boolean V;
    public y.a W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f786a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public java.lang.CharSequence f787b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f788c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f789d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f790e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f791f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public java.lang.CharSequence f792g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public java.lang.CharSequence f793h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f794i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f795j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public android.app.SearchableInfo f796k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public android.os.Bundle f797l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final java.lang.Runnable f798m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public java.lang.Runnable f799n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable.ConstantState> f800o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final android.view.View.OnClickListener f801p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public android.view.View.OnKeyListener f802q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final android.widget.TextView.OnEditorActionListener f803r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final android.widget.AdapterView.OnItemClickListener f804s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final android.widget.AdapterView.OnItemSelectedListener f805t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final androidx.appcompat.widget.SearchView.SearchAutoComplete f806u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public android.text.TextWatcher f807u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final android.view.View f808v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final android.view.View f809w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final android.view.View f810x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final android.widget.ImageView f811y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final android.widget.ImageView f812z;

    public static class SavedState extends androidx.customview.view.AbsSavedState {
        public static final android.os.Parcelable.Creator<androidx.appcompat.widget.SearchView.SavedState> CREATOR = new androidx.appcompat.widget.SearchView.SavedState.a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f813a;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.appcompat.widget.SearchView.SavedState> {
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public androidx.appcompat.widget.SearchView.SavedState createFromParcel(android.os.Parcel parcel) {
                return new androidx.appcompat.widget.SearchView.SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public androidx.appcompat.widget.SearchView.SavedState createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.appcompat.widget.SearchView.SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public androidx.appcompat.widget.SearchView.SavedState[] newArray(int i5) {
                return new androidx.appcompat.widget.SearchView.SavedState[i5];
            }
        }

        public SavedState(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        public java.lang.String toString() {
            return "SearchView.SavedState{" + java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)) + " isIconified=" + this.f813a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i5) {
            super.writeToParcel(parcel, i5);
            parcel.writeValue(java.lang.Boolean.valueOf(this.f813a));
        }

        public SavedState(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f813a = ((java.lang.Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public static class SearchAutoComplete extends androidx.appcompat.widget.AppCompatAutoCompleteTextView {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f814d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public androidx.appcompat.widget.SearchView f815e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f816f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final java.lang.Runnable f817g;

        public class a implements java.lang.Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                androidx.appcompat.widget.SearchView.SearchAutoComplete.this.b();
            }
        }

        public SearchAutoComplete(android.content.Context context, android.util.AttributeSet attributeSet) {
            this(context, attributeSet, androidx.appcompat.R.attr.autoCompleteTextViewStyle);
        }

        private int getSearchViewTextMinWidthDp() {
            android.content.res.Configuration configuration = getResources().getConfiguration();
            int i5 = configuration.screenWidthDp;
            int i6 = configuration.screenHeightDp;
            if (i5 >= 960 && i6 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i5 < 600) {
                return (i5 < 640 || i6 < 480) ? com.alibaba.fastjson.asm.Opcodes.IF_ICMPNE : com.alibaba.fastjson.asm.Opcodes.CHECKCAST;
            }
            return com.alibaba.fastjson.asm.Opcodes.CHECKCAST;
        }

        public boolean a() {
            return android.text.TextUtils.getTrimmedLength(getText()) == 0;
        }

        public void b() {
            if (this.f816f) {
                ((android.view.inputmethod.InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f816f = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f814d <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo editorInfo) {
            android.view.inputmethod.InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f816f) {
                removeCallbacks(this.f817g);
                post(this.f817g);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) android.util.TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z4, int i5, android.graphics.Rect rect) {
            super.onFocusChanged(z4, i5, rect);
            this.f815e.X();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i5, android.view.KeyEvent keyEvent) {
            if (i5 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    android.view.KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    android.view.KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f815e.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i5, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z4) {
            super.onWindowFocusChanged(z4);
            if (z4 && this.f815e.hasFocus() && getVisibility() == 0) {
                this.f816f = true;
                if (androidx.appcompat.widget.SearchView.K(getContext())) {
                    androidx.appcompat.widget.SearchView.f785v0.c(this, true);
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(java.lang.CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z4) {
            android.view.inputmethod.InputMethodManager inputMethodManager = (android.view.inputmethod.InputMethodManager) getContext().getSystemService("input_method");
            if (!z4) {
                this.f816f = false;
                removeCallbacks(this.f817g);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f816f = true;
                    return;
                }
                this.f816f = false;
                removeCallbacks(this.f817g);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(androidx.appcompat.widget.SearchView searchView) {
            this.f815e = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i5) {
            super.setThreshold(i5);
            this.f814d = i5;
        }

        public SearchAutoComplete(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
            super(context, attributeSet, i5);
            this.f817g = new androidx.appcompat.widget.SearchView.SearchAutoComplete.a();
            this.f814d = getThreshold();
        }
    }

    public class a implements android.text.TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(android.text.Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(java.lang.CharSequence charSequence, int i5, int i6, int i7) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(java.lang.CharSequence charSequence, int i5, int i6, int i7) {
            androidx.appcompat.widget.SearchView.this.W(charSequence);
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.SearchView.this.d0();
        }
    }

    public class c implements java.lang.Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            y.a aVar = androidx.appcompat.widget.SearchView.this.W;
            if (aVar == null || !(aVar instanceof androidx.appcompat.widget.x)) {
                return;
            }
            aVar.b(null);
        }
    }

    public class d implements android.view.View.OnFocusChangeListener {
        public d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(android.view.View view, boolean z4) {
            androidx.appcompat.widget.SearchView searchView = androidx.appcompat.widget.SearchView.this;
            android.view.View.OnFocusChangeListener onFocusChangeListener = searchView.R;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z4);
            }
        }
    }

    public class e implements android.view.View.OnLayoutChangeListener {
        public e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(android.view.View view, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
            androidx.appcompat.widget.SearchView.this.z();
        }
    }

    public class f implements android.view.View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            androidx.appcompat.widget.SearchView searchView = androidx.appcompat.widget.SearchView.this;
            if (view == searchView.f811y) {
                searchView.T();
                return;
            }
            if (view == searchView.A) {
                searchView.P();
                return;
            }
            if (view == searchView.f812z) {
                searchView.U();
            } else if (view == searchView.B) {
                searchView.Y();
            } else if (view == searchView.f806u) {
                searchView.F();
            }
        }
    }

    public class g implements android.view.View.OnKeyListener {
        public g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(android.view.View view, int i5, android.view.KeyEvent keyEvent) {
            androidx.appcompat.widget.SearchView searchView = androidx.appcompat.widget.SearchView.this;
            if (searchView.f796k0 == null) {
                return false;
            }
            if (searchView.f806u.isPopupShowing() && androidx.appcompat.widget.SearchView.this.f806u.getListSelection() != -1) {
                return androidx.appcompat.widget.SearchView.this.V(view, i5, keyEvent);
            }
            if (androidx.appcompat.widget.SearchView.this.f806u.a() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i5 != 66) {
                return false;
            }
            view.cancelLongPress();
            androidx.appcompat.widget.SearchView searchView2 = androidx.appcompat.widget.SearchView.this;
            searchView2.N(0, null, searchView2.f806u.getText().toString());
            return true;
        }
    }

    public class h implements android.widget.TextView.OnEditorActionListener {
        public h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(android.widget.TextView textView, int i5, android.view.KeyEvent keyEvent) {
            androidx.appcompat.widget.SearchView.this.U();
            return true;
        }
    }

    public class i implements android.widget.AdapterView.OnItemClickListener {
        public i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
            androidx.appcompat.widget.SearchView.this.Q(i5, 0, null);
        }
    }

    public class j implements android.widget.AdapterView.OnItemSelectedListener {
        public j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(android.widget.AdapterView<?> adapterView, android.view.View view, int i5, long j5) {
            androidx.appcompat.widget.SearchView.this.R(i5);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(android.widget.AdapterView<?> adapterView) {
        }
    }

    public static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.lang.reflect.Method f829a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.lang.reflect.Method f830b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public java.lang.reflect.Method f831c;

        public k() {
            try {
                java.lang.reflect.Method declaredMethod = android.widget.AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new java.lang.Class[0]);
                this.f829a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (java.lang.NoSuchMethodException unused) {
            }
            try {
                java.lang.reflect.Method declaredMethod2 = android.widget.AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new java.lang.Class[0]);
                this.f830b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (java.lang.NoSuchMethodException unused2) {
            }
            try {
                java.lang.reflect.Method method = android.widget.AutoCompleteTextView.class.getMethod("ensureImeVisible", java.lang.Boolean.TYPE);
                this.f831c = method;
                method.setAccessible(true);
            } catch (java.lang.NoSuchMethodException unused3) {
            }
        }

        public void a(android.widget.AutoCompleteTextView autoCompleteTextView) {
            java.lang.reflect.Method method = this.f830b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new java.lang.Object[0]);
                } catch (java.lang.Exception unused) {
                }
            }
        }

        public void b(android.widget.AutoCompleteTextView autoCompleteTextView) {
            java.lang.reflect.Method method = this.f829a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new java.lang.Object[0]);
                } catch (java.lang.Exception unused) {
                }
            }
        }

        public void c(android.widget.AutoCompleteTextView autoCompleteTextView, boolean z4) {
            java.lang.reflect.Method method = this.f831c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, java.lang.Boolean.valueOf(z4));
                } catch (java.lang.Exception unused) {
                }
            }
        }
    }

    public interface l {
        boolean a();
    }

    public interface m {
        boolean a(java.lang.String str);

        boolean b(java.lang.String str);
    }

    public interface n {
        boolean a(int i5);

        boolean b(int i5);
    }

    public static class o extends android.view.TouchDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.view.View f832a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.graphics.Rect f833b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final android.graphics.Rect f834c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final android.graphics.Rect f835d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f836e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f837f;

        public o(android.graphics.Rect rect, android.graphics.Rect rect2, android.view.View view) {
            super(rect, view);
            this.f836e = android.view.ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f833b = new android.graphics.Rect();
            this.f835d = new android.graphics.Rect();
            this.f834c = new android.graphics.Rect();
            a(rect, rect2);
            this.f832a = view;
        }

        public void a(android.graphics.Rect rect, android.graphics.Rect rect2) {
            this.f833b.set(rect);
            this.f835d.set(rect);
            android.graphics.Rect rect3 = this.f835d;
            int i5 = this.f836e;
            rect3.inset(-i5, -i5);
            this.f834c.set(rect2);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003f  */
        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
            boolean z4;
            boolean z5;
            int x4 = (int) motionEvent.getX();
            int y4 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z6 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z5 = this.f837f;
                    if (z5 && !this.f835d.contains(x4, y4)) {
                        z6 = z5;
                        z4 = false;
                    }
                } else if (action != 3) {
                    z4 = true;
                    z6 = false;
                } else {
                    z5 = this.f837f;
                    this.f837f = false;
                }
                z6 = z5;
                z4 = true;
            } else if (this.f833b.contains(x4, y4)) {
                this.f837f = true;
                z4 = true;
            } else {
                z4 = true;
                z6 = false;
            }
            if (!z6) {
                return false;
            }
            if (!z4 || this.f834c.contains(x4, y4)) {
                android.graphics.Rect rect = this.f834c;
                motionEvent.setLocation(x4 - rect.left, y4 - rect.top);
            } else {
                motionEvent.setLocation(this.f832a.getWidth() / 2, this.f832a.getHeight() / 2);
            }
            return this.f832a.dispatchTouchEvent(motionEvent);
        }
    }

    public SearchView(android.content.Context context) {
        this(context, null);
    }

    public static boolean K(android.content.Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(java.lang.CharSequence charSequence) {
        this.f806u.setText(charSequence);
        this.f806u.setSelection(android.text.TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public final android.content.Intent A(java.lang.String str, android.net.Uri uri, java.lang.String str2, java.lang.String str3, int i5, java.lang.String str4) {
        android.content.Intent intent = new android.content.Intent(str);
        intent.addFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f793h0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        android.os.Bundle bundle = this.f797l0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i5 != 0) {
            intent.putExtra("action_key", i5);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f796k0.getSearchActivity());
        return intent;
    }

    public final android.content.Intent B(android.database.Cursor cursor, int i5, java.lang.String str) {
        int position;
        java.lang.String strO;
        try {
            java.lang.String strO2 = androidx.appcompat.widget.x.o(cursor, "suggest_intent_action");
            if (strO2 == null) {
                strO2 = this.f796k0.getSuggestIntentAction();
            }
            if (strO2 == null) {
                strO2 = "android.intent.action.SEARCH";
            }
            java.lang.String str2 = strO2;
            java.lang.String strO3 = androidx.appcompat.widget.x.o(cursor, "suggest_intent_data");
            if (strO3 == null) {
                strO3 = this.f796k0.getSuggestIntentData();
            }
            if (strO3 != null && (strO = androidx.appcompat.widget.x.o(cursor, "suggest_intent_data_id")) != null) {
                strO3 = strO3 + "/" + android.net.Uri.encode(strO);
            }
            return A(str2, strO3 == null ? null : android.net.Uri.parse(strO3), androidx.appcompat.widget.x.o(cursor, "suggest_intent_extra_data"), androidx.appcompat.widget.x.o(cursor, "suggest_intent_query"), i5, str);
        } catch (java.lang.RuntimeException e5) {
            try {
                position = cursor.getPosition();
            } catch (java.lang.RuntimeException unused) {
                position = -1;
            }
            android.util.Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e5);
            return null;
        }
    }

    public final android.content.Intent C(android.content.Intent intent, android.app.SearchableInfo searchableInfo) {
        android.content.ComponentName searchActivity = searchableInfo.getSearchActivity();
        android.content.Intent intent2 = new android.content.Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        android.app.PendingIntent activity = android.app.PendingIntent.getActivity(getContext(), 0, intent2, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY);
        android.os.Bundle bundle = new android.os.Bundle();
        android.os.Bundle bundle2 = this.f797l0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        android.content.Intent intent3 = new android.content.Intent(intent);
        android.content.res.Resources resources = getResources();
        java.lang.String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        java.lang.String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        java.lang.String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final android.content.Intent D(android.content.Intent intent, android.app.SearchableInfo searchableInfo) {
        android.content.Intent intent2 = new android.content.Intent(intent);
        android.content.ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    public final void E() {
        this.f806u.dismissDropDown();
    }

    public void F() {
        androidx.appcompat.widget.SearchView.k kVar = f785v0;
        kVar.b(this.f806u);
        kVar.a(this.f806u);
    }

    public final void G(android.view.View view, android.graphics.Rect rect) {
        view.getLocationInWindow(this.G);
        getLocationInWindow(this.H);
        int[] iArr = this.G;
        int i5 = iArr[1];
        int[] iArr2 = this.H;
        int i6 = i5 - iArr2[1];
        int i7 = iArr[0] - iArr2[0];
        rect.set(i7, i6, view.getWidth() + i7, view.getHeight() + i6);
    }

    public final java.lang.CharSequence H(java.lang.CharSequence charSequence) {
        if (!this.U || this.J == null) {
            return charSequence;
        }
        int textSize = (int) (((double) this.f806u.getTextSize()) * 1.25d);
        this.J.setBounds(0, 0, textSize, textSize);
        android.text.SpannableStringBuilder spannableStringBuilder = new android.text.SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new android.text.style.ImageSpan(this.J), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    public final boolean I() {
        android.app.SearchableInfo searchableInfo = this.f796k0;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        android.content.Intent intent = null;
        if (this.f796k0.getVoiceSearchLaunchWebSearch()) {
            intent = this.M;
        } else if (this.f796k0.getVoiceSearchLaunchRecognizer()) {
            intent = this.N;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    public boolean J() {
        return this.V;
    }

    public final boolean L() {
        return (this.f786a0 || this.f791f0) && !J();
    }

    public final void M(android.content.Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (java.lang.RuntimeException e5) {
            android.util.Log.e("SearchView", "Failed launch activity: " + intent, e5);
        }
    }

    public void N(int i5, java.lang.String str, java.lang.String str2) {
        getContext().startActivity(A("android.intent.action.SEARCH", null, null, str2, i5, str));
    }

    public final boolean O(int i5, int i6, java.lang.String str) {
        android.database.Cursor cursorC = this.W.c();
        if (cursorC == null || !cursorC.moveToPosition(i5)) {
            return false;
        }
        M(B(cursorC, i6, str));
        return true;
    }

    public void P() {
        if (!android.text.TextUtils.isEmpty(this.f806u.getText())) {
            this.f806u.setText("");
            this.f806u.requestFocus();
            this.f806u.setImeVisibility(true);
        } else if (this.U) {
            androidx.appcompat.widget.SearchView.l lVar = this.Q;
            if (lVar == null || !lVar.a()) {
                clearFocus();
                i0(true);
            }
        }
    }

    public boolean Q(int i5, int i6, java.lang.String str) {
        androidx.appcompat.widget.SearchView.n nVar = this.S;
        if (nVar != null && nVar.b(i5)) {
            return false;
        }
        O(i5, 0, null);
        this.f806u.setImeVisibility(false);
        E();
        return true;
    }

    public boolean R(int i5) {
        androidx.appcompat.widget.SearchView.n nVar = this.S;
        if (nVar != null && nVar.a(i5)) {
            return false;
        }
        a0(i5);
        return true;
    }

    public void S(java.lang.CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void T() {
        i0(false);
        this.f806u.requestFocus();
        this.f806u.setImeVisibility(true);
        android.view.View.OnClickListener onClickListener = this.T;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void U() {
        android.text.Editable text = this.f806u.getText();
        if (text == null || android.text.TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        androidx.appcompat.widget.SearchView.m mVar = this.P;
        if (mVar == null || !mVar.b(text.toString())) {
            if (this.f796k0 != null) {
                N(0, null, text.toString());
            }
            this.f806u.setImeVisibility(false);
            E();
        }
    }

    public boolean V(android.view.View view, int i5, android.view.KeyEvent keyEvent) {
        if (this.f796k0 != null && this.W != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i5 == 66 || i5 == 84 || i5 == 61) {
                return Q(this.f806u.getListSelection(), 0, null);
            }
            if (i5 == 21 || i5 == 22) {
                this.f806u.setSelection(i5 == 21 ? 0 : this.f806u.length());
                this.f806u.setListSelection(0);
                this.f806u.clearListSelection();
                f785v0.c(this.f806u, true);
                return true;
            }
            if (i5 == 19) {
                this.f806u.getListSelection();
                return false;
            }
        }
        return false;
    }

    public void W(java.lang.CharSequence charSequence) {
        android.text.Editable text = this.f806u.getText();
        this.f793h0 = text;
        boolean z4 = !android.text.TextUtils.isEmpty(text);
        h0(z4);
        j0(!z4);
        c0();
        g0();
        if (this.P != null && !android.text.TextUtils.equals(charSequence, this.f792g0)) {
            this.P.a(charSequence.toString());
        }
        this.f792g0 = charSequence.toString();
    }

    public void X() {
        i0(J());
        Z();
        if (this.f806u.hasFocus()) {
            F();
        }
    }

    public void Y() {
        android.app.SearchableInfo searchableInfo = this.f796k0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(D(this.M, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(C(this.N, searchableInfo));
            }
        } catch (android.content.ActivityNotFoundException unused) {
            android.util.Log.w("SearchView", "Could not find voice search activity");
        }
    }

    public final void Z() {
        post(this.f798m0);
    }

    public final void a0(int i5) {
        android.text.Editable text = this.f806u.getText();
        android.database.Cursor cursorC = this.W.c();
        if (cursorC == null) {
            return;
        }
        if (!cursorC.moveToPosition(i5)) {
            setQuery(text);
            return;
        }
        java.lang.CharSequence charSequenceA = this.W.a(cursorC);
        if (charSequenceA != null) {
            setQuery(charSequenceA);
        } else {
            setQuery(text);
        }
    }

    public void b0(java.lang.CharSequence charSequence, boolean z4) {
        this.f806u.setText(charSequence);
        if (charSequence != null) {
            androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = this.f806u;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f793h0 = charSequence;
        }
        if (!z4 || android.text.TextUtils.isEmpty(charSequence)) {
            return;
        }
        U();
    }

    @Override // e.c
    public void c() {
        if (this.f794i0) {
            return;
        }
        this.f794i0 = true;
        int imeOptions = this.f806u.getImeOptions();
        this.f795j0 = imeOptions;
        this.f806u.setImeOptions(imeOptions | 33554432);
        this.f806u.setText("");
        setIconified(false);
    }

    public final void c0() {
        boolean z4 = true;
        boolean z5 = !android.text.TextUtils.isEmpty(this.f806u.getText());
        if (!z5 && (!this.U || this.f794i0)) {
            z4 = false;
        }
        this.A.setVisibility(z4 ? 0 : 8);
        android.graphics.drawable.Drawable drawable = this.A.getDrawable();
        if (drawable != null) {
            drawable.setState(z5 ? android.view.ViewGroup.ENABLED_STATE_SET : android.view.ViewGroup.EMPTY_STATE_SET);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f789d0 = true;
        super.clearFocus();
        this.f806u.clearFocus();
        this.f806u.setImeVisibility(false);
        this.f789d0 = false;
    }

    @Override // e.c
    public void d() {
        b0("", false);
        clearFocus();
        i0(true);
        this.f806u.setImeOptions(this.f795j0);
        this.f794i0 = false;
    }

    public void d0() {
        int[] iArr = this.f806u.hasFocus() ? android.view.ViewGroup.FOCUSED_STATE_SET : android.view.ViewGroup.EMPTY_STATE_SET;
        android.graphics.drawable.Drawable background = this.f809w.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        android.graphics.drawable.Drawable background2 = this.f810x.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    public final void e0() {
        java.lang.CharSequence queryHint = getQueryHint();
        androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = this.f806u;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(H(queryHint));
    }

    public final void f0() {
        this.f806u.setThreshold(this.f796k0.getSuggestThreshold());
        this.f806u.setImeOptions(this.f796k0.getImeOptions());
        int inputType = this.f796k0.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.f796k0.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.f806u.setInputType(inputType);
        y.a aVar = this.W;
        if (aVar != null) {
            aVar.b(null);
        }
        if (this.f796k0.getSuggestAuthority() != null) {
            androidx.appcompat.widget.x xVar = new androidx.appcompat.widget.x(getContext(), this, this.f796k0, this.f800o0);
            this.W = xVar;
            this.f806u.setAdapter(xVar);
            ((androidx.appcompat.widget.x) this.W).x(this.f788c0 ? 2 : 1);
        }
    }

    public final void g0() {
        this.f810x.setVisibility((L() && (this.f812z.getVisibility() == 0 || this.B.getVisibility() == 0)) ? 0 : 8);
    }

    public int getImeOptions() {
        return this.f806u.getImeOptions();
    }

    public int getInputType() {
        return this.f806u.getInputType();
    }

    public int getMaxWidth() {
        return this.f790e0;
    }

    public java.lang.CharSequence getQuery() {
        return this.f806u.getText();
    }

    public java.lang.CharSequence getQueryHint() {
        java.lang.CharSequence charSequence = this.f787b0;
        if (charSequence != null) {
            return charSequence;
        }
        android.app.SearchableInfo searchableInfo = this.f796k0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.O : getContext().getText(this.f796k0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.L;
    }

    public int getSuggestionRowLayout() {
        return this.K;
    }

    public y.a getSuggestionsAdapter() {
        return this.W;
    }

    public final void h0(boolean z4) {
        this.f812z.setVisibility((this.f786a0 && L() && hasFocus() && (z4 || !this.f791f0)) ? 0 : 8);
    }

    public final void i0(boolean z4) {
        this.V = z4;
        int i5 = z4 ? 0 : 8;
        boolean z5 = !android.text.TextUtils.isEmpty(this.f806u.getText());
        this.f811y.setVisibility(i5);
        h0(z5);
        this.f808v.setVisibility(z4 ? 8 : 0);
        this.I.setVisibility((this.I.getDrawable() == null || this.U) ? 8 : 0);
        c0();
        j0(!z5);
        g0();
    }

    public final void j0(boolean z4) {
        int i5 = 8;
        if (this.f791f0 && !J() && z4) {
            this.f812z.setVisibility(8);
            i5 = 0;
        }
        this.B.setVisibility(i5);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f798m0);
        post(this.f799n0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        if (z4) {
            G(this.f806u, this.E);
            android.graphics.Rect rect = this.F;
            android.graphics.Rect rect2 = this.E;
            rect.set(rect2.left, 0, rect2.right, i8 - i6);
            androidx.appcompat.widget.SearchView.o oVar = this.D;
            if (oVar != null) {
                oVar.a(this.F, this.E);
                return;
            }
            androidx.appcompat.widget.SearchView.o oVar2 = new androidx.appcompat.widget.SearchView.o(this.F, this.E, this.f806u);
            this.D = oVar2;
            setTouchDelegate(oVar2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i5, int i6) {
        int i7;
        if (J()) {
            super.onMeasure(i5, i6);
            return;
        }
        int mode = android.view.View.MeasureSpec.getMode(i5);
        int size = android.view.View.MeasureSpec.getSize(i5);
        if (mode == Integer.MIN_VALUE) {
            int i8 = this.f790e0;
            size = i8 > 0 ? java.lang.Math.min(i8, size) : java.lang.Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.f790e0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i7 = this.f790e0) > 0) {
            size = java.lang.Math.min(i7, size);
        }
        int mode2 = android.view.View.MeasureSpec.getMode(i6);
        int size2 = android.view.View.MeasureSpec.getSize(i6);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = java.lang.Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(size, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY), android.view.View.MeasureSpec.makeMeasureSpec(size2, com.alibaba.fastjson.util.AntiCollisionHashMap.MAXIMUM_CAPACITY));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof androidx.appcompat.widget.SearchView.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.appcompat.widget.SearchView.SavedState savedState = (androidx.appcompat.widget.SearchView.SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        i0(savedState.f813a);
        requestLayout();
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.appcompat.widget.SearchView.SavedState savedState = new androidx.appcompat.widget.SearchView.SavedState(super.onSaveInstanceState());
        savedState.f813a = J();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z4) {
        super.onWindowFocusChanged(z4);
        Z();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i5, android.graphics.Rect rect) {
        if (this.f789d0 || !isFocusable()) {
            return false;
        }
        if (J()) {
            return super.requestFocus(i5, rect);
        }
        boolean zRequestFocus = this.f806u.requestFocus(i5, rect);
        if (zRequestFocus) {
            i0(false);
        }
        return zRequestFocus;
    }

    public void setAppSearchData(android.os.Bundle bundle) {
        this.f797l0 = bundle;
    }

    public void setIconified(boolean z4) {
        if (z4) {
            P();
        } else {
            T();
        }
    }

    public void setIconifiedByDefault(boolean z4) {
        if (this.U == z4) {
            return;
        }
        this.U = z4;
        i0(z4);
        e0();
    }

    public void setImeOptions(int i5) {
        this.f806u.setImeOptions(i5);
    }

    public void setInputType(int i5) {
        this.f806u.setInputType(i5);
    }

    public void setMaxWidth(int i5) {
        this.f790e0 = i5;
        requestLayout();
    }

    public void setOnCloseListener(androidx.appcompat.widget.SearchView.l lVar) {
        this.Q = lVar;
    }

    public void setOnQueryTextFocusChangeListener(android.view.View.OnFocusChangeListener onFocusChangeListener) {
        this.R = onFocusChangeListener;
    }

    public void setOnQueryTextListener(androidx.appcompat.widget.SearchView.m mVar) {
        this.P = mVar;
    }

    public void setOnSearchClickListener(android.view.View.OnClickListener onClickListener) {
        this.T = onClickListener;
    }

    public void setOnSuggestionListener(androidx.appcompat.widget.SearchView.n nVar) {
        this.S = nVar;
    }

    public void setQueryHint(java.lang.CharSequence charSequence) {
        this.f787b0 = charSequence;
        e0();
    }

    public void setQueryRefinementEnabled(boolean z4) {
        this.f788c0 = z4;
        y.a aVar = this.W;
        if (aVar instanceof androidx.appcompat.widget.x) {
            ((androidx.appcompat.widget.x) aVar).x(z4 ? 2 : 1);
        }
    }

    public void setSearchableInfo(android.app.SearchableInfo searchableInfo) {
        this.f796k0 = searchableInfo;
        if (searchableInfo != null) {
            f0();
            e0();
        }
        boolean zI = I();
        this.f791f0 = zI;
        if (zI) {
            this.f806u.setPrivateImeOptions("nm");
        }
        i0(J());
    }

    public void setSubmitButtonEnabled(boolean z4) {
        this.f786a0 = z4;
        i0(J());
    }

    public void setSuggestionsAdapter(y.a aVar) {
        this.W = aVar;
        this.f806u.setAdapter(aVar);
    }

    public void z() {
        if (this.C.getWidth() > 1) {
            android.content.res.Resources resources = getContext().getResources();
            int paddingLeft = this.f809w.getPaddingLeft();
            android.graphics.Rect rect = new android.graphics.Rect();
            boolean zB = androidx.appcompat.widget.h0.b(this);
            int dimensionPixelSize = this.U ? resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_dropdownitem_text_padding_left) : 0;
            this.f806u.getDropDownBackground().getPadding(rect);
            this.f806u.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f806u.setDropDownWidth((((this.C.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    public SearchView(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.searchViewStyle);
    }

    public SearchView(android.content.Context context, android.util.AttributeSet attributeSet, int i5) {
        super(context, attributeSet, i5);
        this.E = new android.graphics.Rect();
        this.F = new android.graphics.Rect();
        this.G = new int[2];
        this.H = new int[2];
        this.f798m0 = new androidx.appcompat.widget.SearchView.b();
        this.f799n0 = new androidx.appcompat.widget.SearchView.c();
        this.f800o0 = new java.util.WeakHashMap<>();
        androidx.appcompat.widget.SearchView.f fVar = new androidx.appcompat.widget.SearchView.f();
        this.f801p0 = fVar;
        this.f802q0 = new androidx.appcompat.widget.SearchView.g();
        androidx.appcompat.widget.SearchView.h hVar = new androidx.appcompat.widget.SearchView.h();
        this.f803r0 = hVar;
        androidx.appcompat.widget.SearchView.i iVar = new androidx.appcompat.widget.SearchView.i();
        this.f804s0 = iVar;
        androidx.appcompat.widget.SearchView.j jVar = new androidx.appcompat.widget.SearchView.j();
        this.f805t0 = jVar;
        this.f807u0 = new androidx.appcompat.widget.SearchView.a();
        androidx.appcompat.widget.d0 d0VarT = androidx.appcompat.widget.d0.t(context, attributeSet, androidx.appcompat.R.styleable.SearchView, i5, 0);
        android.view.LayoutInflater.from(context).inflate(d0VarT.m(androidx.appcompat.R.styleable.SearchView_layout, androidx.appcompat.R.layout.abc_search_view), (android.view.ViewGroup) this, true);
        androidx.appcompat.widget.SearchView.SearchAutoComplete searchAutoComplete = (androidx.appcompat.widget.SearchView.SearchAutoComplete) findViewById(androidx.appcompat.R.id.search_src_text);
        this.f806u = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f808v = findViewById(androidx.appcompat.R.id.search_edit_frame);
        android.view.View viewFindViewById = findViewById(androidx.appcompat.R.id.search_plate);
        this.f809w = viewFindViewById;
        android.view.View viewFindViewById2 = findViewById(androidx.appcompat.R.id.submit_area);
        this.f810x = viewFindViewById2;
        android.widget.ImageView imageView = (android.widget.ImageView) findViewById(androidx.appcompat.R.id.search_button);
        this.f811y = imageView;
        android.widget.ImageView imageView2 = (android.widget.ImageView) findViewById(androidx.appcompat.R.id.search_go_btn);
        this.f812z = imageView2;
        android.widget.ImageView imageView3 = (android.widget.ImageView) findViewById(androidx.appcompat.R.id.search_close_btn);
        this.A = imageView3;
        android.widget.ImageView imageView4 = (android.widget.ImageView) findViewById(androidx.appcompat.R.id.search_voice_btn);
        this.B = imageView4;
        android.widget.ImageView imageView5 = (android.widget.ImageView) findViewById(androidx.appcompat.R.id.search_mag_icon);
        this.I = imageView5;
        w.q.R(viewFindViewById, d0VarT.f(androidx.appcompat.R.styleable.SearchView_queryBackground));
        w.q.R(viewFindViewById2, d0VarT.f(androidx.appcompat.R.styleable.SearchView_submitBackground));
        int i6 = androidx.appcompat.R.styleable.SearchView_searchIcon;
        imageView.setImageDrawable(d0VarT.f(i6));
        imageView2.setImageDrawable(d0VarT.f(androidx.appcompat.R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(d0VarT.f(androidx.appcompat.R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(d0VarT.f(androidx.appcompat.R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(d0VarT.f(i6));
        this.J = d0VarT.f(androidx.appcompat.R.styleable.SearchView_searchHintIcon);
        androidx.appcompat.widget.f0.a(imageView, getResources().getString(androidx.appcompat.R.string.abc_searchview_description_search));
        this.K = d0VarT.m(androidx.appcompat.R.styleable.SearchView_suggestionRowLayout, androidx.appcompat.R.layout.abc_search_dropdown_item_icons_2line);
        this.L = d0VarT.m(androidx.appcompat.R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(this.f807u0);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(this.f802q0);
        searchAutoComplete.setOnFocusChangeListener(new androidx.appcompat.widget.SearchView.d());
        setIconifiedByDefault(d0VarT.a(androidx.appcompat.R.styleable.SearchView_iconifiedByDefault, true));
        int iE = d0VarT.e(androidx.appcompat.R.styleable.SearchView_android_maxWidth, -1);
        if (iE != -1) {
            setMaxWidth(iE);
        }
        this.O = d0VarT.o(androidx.appcompat.R.styleable.SearchView_defaultQueryHint);
        this.f787b0 = d0VarT.o(androidx.appcompat.R.styleable.SearchView_queryHint);
        int iJ = d0VarT.j(androidx.appcompat.R.styleable.SearchView_android_imeOptions, -1);
        if (iJ != -1) {
            setImeOptions(iJ);
        }
        int iJ2 = d0VarT.j(androidx.appcompat.R.styleable.SearchView_android_inputType, -1);
        if (iJ2 != -1) {
            setInputType(iJ2);
        }
        setFocusable(d0VarT.a(androidx.appcompat.R.styleable.SearchView_android_focusable, true));
        d0VarT.u();
        android.content.Intent intent = new android.content.Intent("android.speech.action.WEB_SEARCH");
        this.M = intent;
        intent.addFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        android.content.Intent intent2 = new android.content.Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.N = intent2;
        intent2.addFlags(com.alibaba.fastjson.asm.Label.FORWARD_REFERENCE_TYPE_SHORT);
        android.view.View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.C = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new androidx.appcompat.widget.SearchView.e());
        }
        i0(this.U);
        e0();
    }
}
