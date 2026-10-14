package androidx.appcompat.widget;

/* JADX INFO: compiled from: SuggestionsAdapter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class x extends y.c implements android.view.View.OnClickListener {
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final android.app.SearchManager f1070q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final androidx.appcompat.widget.SearchView f1071r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final android.app.SearchableInfo f1072s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final android.content.Context f1073t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable.ConstantState> f1074u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f1075v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f1076w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1077x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public android.content.res.ColorStateList f1078y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f1079z;

    /* JADX INFO: compiled from: SuggestionsAdapter.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.widget.TextView f1080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.widget.TextView f1081b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final android.widget.ImageView f1082c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final android.widget.ImageView f1083d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final android.widget.ImageView f1084e;

        public a(android.view.View view) {
            this.f1080a = (android.widget.TextView) view.findViewById(android.R.id.text1);
            this.f1081b = (android.widget.TextView) view.findViewById(android.R.id.text2);
            this.f1082c = (android.widget.ImageView) view.findViewById(android.R.id.icon1);
            this.f1083d = (android.widget.ImageView) view.findViewById(android.R.id.icon2);
            this.f1084e = (android.widget.ImageView) view.findViewById(androidx.appcompat.R.id.edit_query);
        }
    }

    public x(android.content.Context context, androidx.appcompat.widget.SearchView searchView, android.app.SearchableInfo searchableInfo, java.util.WeakHashMap<java.lang.String, android.graphics.drawable.Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1076w = false;
        this.f1077x = 1;
        this.f1079z = -1;
        this.A = -1;
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.E = -1;
        this.f1070q = (android.app.SearchManager) this.f6833d.getSystemService("search");
        this.f1071r = searchView;
        this.f1072s = searchableInfo;
        this.f1075v = searchView.getSuggestionCommitIconResId();
        this.f1073t = context;
        this.f1074u = weakHashMap;
    }

    public static java.lang.String o(android.database.Cursor cursor, java.lang.String str) {
        return w(cursor, cursor.getColumnIndex(str));
    }

    public static java.lang.String w(android.database.Cursor cursor, int i5) {
        if (i5 == -1) {
            return null;
        }
        try {
            return cursor.getString(i5);
        } catch (java.lang.Exception e5) {
            android.util.Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e5);
            return null;
        }
    }

    public final void A(java.lang.String str, android.graphics.drawable.Drawable drawable) {
        if (drawable != null) {
            this.f1074u.put(str, drawable.getConstantState());
        }
    }

    public final void B(android.database.Cursor cursor) {
        android.os.Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // y.a, y.b.a
    public java.lang.CharSequence a(android.database.Cursor cursor) {
        java.lang.String strO;
        java.lang.String strO2;
        if (cursor == null) {
            return null;
        }
        java.lang.String strO3 = o(cursor, "suggest_intent_query");
        if (strO3 != null) {
            return strO3;
        }
        if (this.f1072s.shouldRewriteQueryFromData() && (strO2 = o(cursor, "suggest_intent_data")) != null) {
            return strO2;
        }
        if (!this.f1072s.shouldRewriteQueryFromText() || (strO = o(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return strO;
    }

    @Override // y.a, y.b.a
    public void b(android.database.Cursor cursor) {
        if (this.f1076w) {
            android.util.Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.b(cursor);
            if (cursor != null) {
                this.f1079z = cursor.getColumnIndex("suggest_text_1");
                this.A = cursor.getColumnIndex("suggest_text_2");
                this.B = cursor.getColumnIndex("suggest_text_2_url");
                this.C = cursor.getColumnIndex("suggest_icon_1");
                this.D = cursor.getColumnIndex("suggest_icon_2");
                this.E = cursor.getColumnIndex("suggest_flags");
            }
        } catch (java.lang.Exception e5) {
            android.util.Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e5);
        }
    }

    @Override // y.b.a
    public android.database.Cursor d(java.lang.CharSequence charSequence) {
        java.lang.String string = charSequence == null ? "" : charSequence.toString();
        if (this.f1071r.getVisibility() == 0 && this.f1071r.getWindowVisibility() == 0) {
            try {
                android.database.Cursor cursorV = v(this.f1072s, string, 50);
                if (cursorV != null) {
                    cursorV.getCount();
                    return cursorV;
                }
            } catch (java.lang.RuntimeException e5) {
                android.util.Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e5);
            }
        }
        return null;
    }

    @Override // y.a
    public void e(android.view.View view, android.content.Context context, android.database.Cursor cursor) {
        androidx.appcompat.widget.x.a aVar = (androidx.appcompat.widget.x.a) view.getTag();
        int i5 = this.E;
        int i6 = i5 != -1 ? cursor.getInt(i5) : 0;
        if (aVar.f1080a != null) {
            z(aVar.f1080a, w(cursor, this.f1079z));
        }
        if (aVar.f1081b != null) {
            java.lang.String strW = w(cursor, this.B);
            java.lang.CharSequence charSequenceL = strW != null ? l(strW) : w(cursor, this.A);
            if (android.text.TextUtils.isEmpty(charSequenceL)) {
                android.widget.TextView textView = aVar.f1080a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f1080a.setMaxLines(2);
                }
            } else {
                android.widget.TextView textView2 = aVar.f1080a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f1080a.setMaxLines(1);
                }
            }
            z(aVar.f1081b, charSequenceL);
        }
        android.widget.ImageView imageView = aVar.f1082c;
        if (imageView != null) {
            y(imageView, t(cursor), 4);
        }
        android.widget.ImageView imageView2 = aVar.f1083d;
        if (imageView2 != null) {
            y(imageView2, u(cursor), 8);
        }
        int i7 = this.f1077x;
        if (i7 != 2 && (i7 != 1 || (i6 & 1) == 0)) {
            aVar.f1084e.setVisibility(8);
            return;
        }
        aVar.f1084e.setVisibility(0);
        aVar.f1084e.setTag(aVar.f1080a.getText());
        aVar.f1084e.setOnClickListener(this);
    }

    @Override // y.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public android.view.View getDropDownView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i5, view, viewGroup);
        } catch (java.lang.RuntimeException e5) {
            android.util.Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e5);
            android.view.View viewG = g(this.f6833d, this.f6832c, viewGroup);
            if (viewG != null) {
                ((androidx.appcompat.widget.x.a) viewG.getTag()).f1080a.setText(e5.toString());
            }
            return viewG;
        }
    }

    @Override // y.a, android.widget.Adapter
    public android.view.View getView(int i5, android.view.View view, android.view.ViewGroup viewGroup) {
        try {
            return super.getView(i5, view, viewGroup);
        } catch (java.lang.RuntimeException e5) {
            android.util.Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e5);
            android.view.View viewH = h(this.f6833d, this.f6832c, viewGroup);
            if (viewH != null) {
                ((androidx.appcompat.widget.x.a) viewH.getTag()).f1080a.setText(e5.toString());
            }
            return viewH;
        }
    }

    @Override // y.c, y.a
    public android.view.View h(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup viewGroup) {
        android.view.View viewH = super.h(context, cursor, viewGroup);
        viewH.setTag(new androidx.appcompat.widget.x.a(viewH));
        ((android.widget.ImageView) viewH.findViewById(androidx.appcompat.R.id.edit_query)).setImageResource(this.f1075v);
        return viewH;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    public final android.graphics.drawable.Drawable k(java.lang.String str) {
        android.graphics.drawable.Drawable.ConstantState constantState = this.f1074u.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    public final java.lang.CharSequence l(java.lang.CharSequence charSequence) {
        if (this.f1078y == null) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            this.f6833d.getTheme().resolveAttribute(androidx.appcompat.R.attr.textColorSearchUrl, typedValue, true);
            this.f1078y = this.f6833d.getResources().getColorStateList(typedValue.resourceId);
        }
        android.text.SpannableString spannableString = new android.text.SpannableString(charSequence);
        spannableString.setSpan(new android.text.style.TextAppearanceSpan(null, 0, 0, this.f1078y, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    public final android.graphics.drawable.Drawable m(android.content.ComponentName componentName) {
        android.content.pm.PackageManager packageManager = this.f6833d.getPackageManager();
        try {
            android.content.pm.ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, com.alibaba.fastjson.asm.Opcodes.IOR);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            android.graphics.drawable.Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            android.util.Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (android.content.pm.PackageManager.NameNotFoundException e5) {
            android.util.Log.w("SuggestionsAdapter", e5.toString());
            return null;
        }
    }

    public final android.graphics.drawable.Drawable n(android.content.ComponentName componentName) {
        java.lang.String strFlattenToShortString = componentName.flattenToShortString();
        if (!this.f1074u.containsKey(strFlattenToShortString)) {
            android.graphics.drawable.Drawable drawableM = m(componentName);
            this.f1074u.put(strFlattenToShortString, drawableM != null ? drawableM.getConstantState() : null);
            return drawableM;
        }
        android.graphics.drawable.Drawable.ConstantState constantState = this.f1074u.get(strFlattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.f1073t.getResources());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        B(c());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        B(c());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        java.lang.Object tag = view.getTag();
        if (tag instanceof java.lang.CharSequence) {
            this.f1071r.S((java.lang.CharSequence) tag);
        }
    }

    public final android.graphics.drawable.Drawable p(android.database.Cursor cursor) {
        android.graphics.drawable.Drawable drawableN = n(this.f1072s.getSearchActivity());
        return drawableN != null ? drawableN : this.f6833d.getPackageManager().getDefaultActivityIcon();
    }

    public final android.graphics.drawable.Drawable q(android.net.Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return r(uri);
                } catch (android.content.res.Resources.NotFoundException unused) {
                    throw new java.io.FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            java.io.InputStream inputStreamOpenInputStream = this.f1073t.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new java.io.FileNotFoundException("Failed to open " + uri);
            }
            try {
                android.graphics.drawable.Drawable drawableCreateFromStream = android.graphics.drawable.Drawable.createFromStream(inputStreamOpenInputStream, null);
                try {
                    inputStreamOpenInputStream.close();
                } catch (java.io.IOException e5) {
                    android.util.Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e5);
                }
                return drawableCreateFromStream;
            } catch (java.lang.Throwable th) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (java.io.IOException e6) {
                    android.util.Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e6);
                }
                throw th;
            }
        } catch (java.io.FileNotFoundException e7) {
            android.util.Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e7.getMessage());
            return null;
        }
        android.util.Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e7.getMessage());
        return null;
    }

    public android.graphics.drawable.Drawable r(android.net.Uri uri) throws java.io.FileNotFoundException {
        int identifier;
        java.lang.String authority = uri.getAuthority();
        if (android.text.TextUtils.isEmpty(authority)) {
            throw new java.io.FileNotFoundException("No authority: " + uri);
        }
        try {
            android.content.res.Resources resourcesForApplication = this.f6833d.getPackageManager().getResourcesForApplication(authority);
            java.util.List<java.lang.String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new java.io.FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = java.lang.Integer.parseInt(pathSegments.get(0));
                } catch (java.lang.NumberFormatException unused) {
                    throw new java.io.FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new java.io.FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new java.io.FileNotFoundException("No resource found for: " + uri);
        } catch (android.content.pm.PackageManager.NameNotFoundException unused2) {
            throw new java.io.FileNotFoundException("No package found for authority: " + uri);
        }
    }

    public final android.graphics.drawable.Drawable s(java.lang.String str) {
        if (str == null || str.isEmpty() || com.cndatacom.sdk.portal.entity.CdcErrCode.SUCCESS.equals(str)) {
            return null;
        }
        try {
            int i5 = java.lang.Integer.parseInt(str);
            java.lang.String str2 = "android.resource://" + this.f1073t.getPackageName() + "/" + i5;
            android.graphics.drawable.Drawable drawableK = k(str2);
            if (drawableK != null) {
                return drawableK;
            }
            android.graphics.drawable.Drawable drawableB = androidx.core.content.a.b(this.f1073t, i5);
            A(str2, drawableB);
            return drawableB;
        } catch (android.content.res.Resources.NotFoundException unused) {
            android.util.Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (java.lang.NumberFormatException unused2) {
            android.graphics.drawable.Drawable drawableK2 = k(str);
            if (drawableK2 != null) {
                return drawableK2;
            }
            android.graphics.drawable.Drawable drawableQ = q(android.net.Uri.parse(str));
            A(str, drawableQ);
            return drawableQ;
        }
    }

    public final android.graphics.drawable.Drawable t(android.database.Cursor cursor) {
        int i5 = this.C;
        if (i5 == -1) {
            return null;
        }
        android.graphics.drawable.Drawable drawableS = s(cursor.getString(i5));
        return drawableS != null ? drawableS : p(cursor);
    }

    public final android.graphics.drawable.Drawable u(android.database.Cursor cursor) {
        int i5 = this.D;
        if (i5 == -1) {
            return null;
        }
        return s(cursor.getString(i5));
    }

    public android.database.Cursor v(android.app.SearchableInfo searchableInfo, java.lang.String str, int i5) {
        java.lang.String suggestAuthority;
        java.lang.String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        android.net.Uri.Builder builderFragment = new android.net.Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        java.lang.String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        java.lang.String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new java.lang.String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        java.lang.String[] strArr2 = strArr;
        if (i5 > 0) {
            builderFragment.appendQueryParameter("limit", java.lang.String.valueOf(i5));
        }
        return this.f6833d.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    public void x(int i5) {
        this.f1077x = i5;
    }

    public final void y(android.widget.ImageView imageView, android.graphics.drawable.Drawable drawable, int i5) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i5);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    public final void z(android.widget.TextView textView, java.lang.CharSequence charSequence) {
        textView.setText(charSequence);
        if (android.text.TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }
}
