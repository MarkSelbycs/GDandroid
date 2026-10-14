package androidx.appcompat.widget;

/* JADX INFO: compiled from: AppCompatDrawableManager.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static androidx.appcompat.widget.f f953h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.WeakHashMap<android.content.Context, j.h<android.content.res.ColorStateList>> f961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j.a<java.lang.String, androidx.appcompat.widget.f.b> f962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public j.h<java.lang.String> f963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final java.util.WeakHashMap<android.content.Context, j.d<java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState>>> f964d = new java.util.WeakHashMap<>(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public android.util.TypedValue f965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f966f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final android.graphics.PorterDuff.Mode f952g = android.graphics.PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final androidx.appcompat.widget.f.a f954i = new androidx.appcompat.widget.f.a(6);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int[] f955j = {androidx.appcompat.R.drawable.abc_textfield_search_default_mtrl_alpha, androidx.appcompat.R.drawable.abc_textfield_default_mtrl_alpha, androidx.appcompat.R.drawable.abc_ab_share_pack_mtrl_alpha};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f956k = {androidx.appcompat.R.drawable.abc_ic_commit_search_api_mtrl_alpha, androidx.appcompat.R.drawable.abc_seekbar_tick_mark_material, androidx.appcompat.R.drawable.abc_ic_menu_share_mtrl_alpha, androidx.appcompat.R.drawable.abc_ic_menu_copy_mtrl_am_alpha, androidx.appcompat.R.drawable.abc_ic_menu_cut_mtrl_alpha, androidx.appcompat.R.drawable.abc_ic_menu_selectall_mtrl_alpha, androidx.appcompat.R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int[] f957l = {androidx.appcompat.R.drawable.abc_textfield_activated_mtrl_alpha, androidx.appcompat.R.drawable.abc_textfield_search_activated_mtrl_alpha, androidx.appcompat.R.drawable.abc_cab_background_top_mtrl_alpha, androidx.appcompat.R.drawable.abc_text_cursor_material, androidx.appcompat.R.drawable.abc_text_select_handle_left_mtrl_dark, androidx.appcompat.R.drawable.abc_text_select_handle_middle_mtrl_dark, androidx.appcompat.R.drawable.abc_text_select_handle_right_mtrl_dark, androidx.appcompat.R.drawable.abc_text_select_handle_left_mtrl_light, androidx.appcompat.R.drawable.abc_text_select_handle_middle_mtrl_light, androidx.appcompat.R.drawable.abc_text_select_handle_right_mtrl_light};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int[] f958m = {androidx.appcompat.R.drawable.abc_popup_background_mtrl_mult, androidx.appcompat.R.drawable.abc_cab_background_internal_bg, androidx.appcompat.R.drawable.abc_menu_hardkey_panel_mtrl_mult};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f959n = {androidx.appcompat.R.drawable.abc_tab_indicator_material, androidx.appcompat.R.drawable.abc_textfield_search_material};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int[] f960o = {androidx.appcompat.R.drawable.abc_btn_check_material, androidx.appcompat.R.drawable.abc_btn_radio_material};

    /* JADX INFO: compiled from: AppCompatDrawableManager.java */
    public static class a extends j.e<java.lang.Integer, android.graphics.PorterDuffColorFilter> {
        public a(int i5) {
            super(i5);
        }

        public static int h(int i5, android.graphics.PorterDuff.Mode mode) {
            return ((i5 + 31) * 31) + mode.hashCode();
        }

        public android.graphics.PorterDuffColorFilter i(int i5, android.graphics.PorterDuff.Mode mode) {
            return c(java.lang.Integer.valueOf(h(i5, mode)));
        }

        public android.graphics.PorterDuffColorFilter j(int i5, android.graphics.PorterDuff.Mode mode, android.graphics.PorterDuffColorFilter porterDuffColorFilter) {
            return d(java.lang.Integer.valueOf(h(i5, mode)), porterDuffColorFilter);
        }
    }

    /* JADX INFO: compiled from: AppCompatDrawableManager.java */
    public interface b {
        android.graphics.drawable.Drawable a(android.content.Context context, org.xmlpull.v1.XmlPullParser xmlPullParser, android.util.AttributeSet attributeSet, android.content.res.Resources.Theme theme);
    }

    public static void B(android.graphics.drawable.Drawable drawable, androidx.appcompat.widget.b0 b0Var, int[] iArr) {
        if (androidx.appcompat.widget.o.a(drawable) && drawable.mutate() != drawable) {
            android.util.Log.d("AppCompatDrawableManag", "Mutated drawable is not the same instance as the input.");
            return;
        }
        boolean z4 = b0Var.f913d;
        if (z4 || b0Var.f912c) {
            drawable.setColorFilter(l(z4 ? b0Var.f910a : null, b0Var.f912c ? b0Var.f911b : f952g, iArr));
        } else {
            drawable.clearColorFilter();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0044  */
    /* JADX WARN: Code duplicated, block: B:23:0x004a  */
    /* JADX WARN: Code duplicated, block: B:26:0x005b  */
    /* JADX WARN: Code duplicated, block: B:28:0x005f A[RETURN] */
    public static boolean C(android.content.Context context, int i5, android.graphics.drawable.Drawable drawable) {
        int iRound;
        boolean z4;
        android.graphics.PorterDuff.Mode mode = f952g;
        boolean zC = c(f955j, i5);
        int i6 = android.R.attr.colorBackground;
        if (zC) {
            i6 = androidx.appcompat.R.attr.colorControlNormal;
        } else if (c(f957l, i5)) {
            i6 = androidx.appcompat.R.attr.colorControlActivated;
        } else {
            if (!c(f958m, i5)) {
                if (i5 == androidx.appcompat.R.drawable.abc_list_divider_mtrl_alpha) {
                    i6 = android.R.attr.colorForeground;
                    iRound = java.lang.Math.round(40.8f);
                    z4 = true;
                } else if (i5 != androidx.appcompat.R.drawable.abc_dialog_material_background) {
                    iRound = -1;
                    z4 = false;
                    i6 = 0;
                }
                if (z4) {
                    return false;
                }
                if (androidx.appcompat.widget.o.a(drawable)) {
                    drawable = drawable.mutate();
                }
                drawable.setColorFilter(q(androidx.appcompat.widget.y.b(context, i6), mode));
                if (iRound != -1) {
                    drawable.setAlpha(iRound);
                }
                return true;
            }
            mode = android.graphics.PorterDuff.Mode.MULTIPLY;
        }
        iRound = -1;
        z4 = true;
        if (z4) {
            return false;
        }
        if (androidx.appcompat.widget.o.a(drawable)) {
            drawable = drawable.mutate();
        }
        drawable.setColorFilter(q(androidx.appcompat.widget.y.b(context, i6), mode));
        if (iRound != -1) {
            drawable.setAlpha(iRound);
        }
        return true;
    }

    public static boolean c(int[] iArr, int i5) {
        for (int i6 : iArr) {
            if (i6 == i5) {
                return true;
            }
        }
        return false;
    }

    public static long g(android.util.TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    public static android.graphics.PorterDuffColorFilter l(android.content.res.ColorStateList colorStateList, android.graphics.PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return q(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized androidx.appcompat.widget.f m() {
        if (f953h == null) {
            androidx.appcompat.widget.f fVar = new androidx.appcompat.widget.f();
            f953h = fVar;
            u(fVar);
        }
        return f953h;
    }

    public static synchronized android.graphics.PorterDuffColorFilter q(int i5, android.graphics.PorterDuff.Mode mode) {
        android.graphics.PorterDuffColorFilter porterDuffColorFilterI;
        androidx.appcompat.widget.f.a aVar = f954i;
        porterDuffColorFilterI = aVar.i(i5, mode);
        if (porterDuffColorFilterI == null) {
            porterDuffColorFilterI = new android.graphics.PorterDuffColorFilter(i5, mode);
            aVar.j(i5, mode, porterDuffColorFilterI);
        }
        return porterDuffColorFilterI;
    }

    public static android.graphics.PorterDuff.Mode t(int i5) {
        if (i5 == androidx.appcompat.R.drawable.abc_switch_thumb_material) {
            return android.graphics.PorterDuff.Mode.MULTIPLY;
        }
        return null;
    }

    public static void u(androidx.appcompat.widget.f fVar) {
    }

    public static boolean v(android.graphics.drawable.Drawable drawable) {
        return (drawable instanceof l0.b) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    public static void z(android.graphics.drawable.Drawable drawable, int i5, android.graphics.PorterDuff.Mode mode) {
        if (androidx.appcompat.widget.o.a(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = f952g;
        }
        drawable.setColorFilter(q(i5, mode));
    }

    public final android.graphics.drawable.Drawable A(android.content.Context context, int i5, boolean z4, android.graphics.drawable.Drawable drawable) {
        android.content.res.ColorStateList colorStateListR = r(context, i5);
        if (colorStateListR != null) {
            if (androidx.appcompat.widget.o.a(drawable)) {
                drawable = drawable.mutate();
            }
            android.graphics.drawable.Drawable drawableK = p.a.k(drawable);
            p.a.h(drawableK, colorStateListR);
            android.graphics.PorterDuff.Mode modeT = t(i5);
            if (modeT == null) {
                return drawableK;
            }
            p.a.i(drawableK, modeT);
            return drawableK;
        }
        if (i5 == androidx.appcompat.R.drawable.abc_seekbar_track_material) {
            android.graphics.drawable.LayerDrawable layerDrawable = (android.graphics.drawable.LayerDrawable) drawable;
            android.graphics.drawable.Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
            int i6 = androidx.appcompat.R.attr.colorControlNormal;
            int iB = androidx.appcompat.widget.y.b(context, i6);
            android.graphics.PorterDuff.Mode mode = f952g;
            z(drawableFindDrawableByLayerId, iB, mode);
            z(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), androidx.appcompat.widget.y.b(context, i6), mode);
            z(layerDrawable.findDrawableByLayerId(android.R.id.progress), androidx.appcompat.widget.y.b(context, androidx.appcompat.R.attr.colorControlActivated), mode);
            return drawable;
        }
        if (i5 != androidx.appcompat.R.drawable.abc_ratingbar_material && i5 != androidx.appcompat.R.drawable.abc_ratingbar_indicator_material && i5 != androidx.appcompat.R.drawable.abc_ratingbar_small_material) {
            if (C(context, i5, drawable) || !z4) {
                return drawable;
            }
            return null;
        }
        android.graphics.drawable.LayerDrawable layerDrawable2 = (android.graphics.drawable.LayerDrawable) drawable;
        android.graphics.drawable.Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
        int iA = androidx.appcompat.widget.y.a(context, androidx.appcompat.R.attr.colorControlNormal);
        android.graphics.PorterDuff.Mode mode2 = f952g;
        z(drawableFindDrawableByLayerId2, iA, mode2);
        android.graphics.drawable.Drawable drawableFindDrawableByLayerId3 = layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress);
        int i7 = androidx.appcompat.R.attr.colorControlActivated;
        z(drawableFindDrawableByLayerId3, androidx.appcompat.widget.y.b(context, i7), mode2);
        z(layerDrawable2.findDrawableByLayerId(android.R.id.progress), androidx.appcompat.widget.y.b(context, i7), mode2);
        return drawable;
    }

    public final synchronized boolean a(android.content.Context context, long j5, android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        j.d<java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState>> dVar = this.f964d.get(context);
        if (dVar == null) {
            dVar = new j.d<>();
            this.f964d.put(context, dVar);
        }
        dVar.j(j5, new java.lang.ref.WeakReference<>(constantState));
        return true;
    }

    public final void b(android.content.Context context, int i5, android.content.res.ColorStateList colorStateList) {
        if (this.f961a == null) {
            this.f961a = new java.util.WeakHashMap<>();
        }
        j.h<android.content.res.ColorStateList> hVar = this.f961a.get(context);
        if (hVar == null) {
            hVar = new j.h<>();
            this.f961a.put(context, hVar);
        }
        hVar.a(i5, colorStateList);
    }

    public final void d(android.content.Context context) {
        if (this.f966f) {
            return;
        }
        this.f966f = true;
        android.graphics.drawable.Drawable drawableO = o(context, androidx.appcompat.R.drawable.abc_vector_test);
        if (drawableO == null || !v(drawableO)) {
            this.f966f = false;
            throw new java.lang.IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    public final android.content.res.ColorStateList e(android.content.Context context) {
        return f(context, 0);
    }

    public final android.content.res.ColorStateList f(android.content.Context context, int i5) {
        int iB = androidx.appcompat.widget.y.b(context, androidx.appcompat.R.attr.colorControlHighlight);
        return new android.content.res.ColorStateList(new int[][]{androidx.appcompat.widget.y.f1086b, androidx.appcompat.widget.y.f1089e, androidx.appcompat.widget.y.f1087c, androidx.appcompat.widget.y.f1093i}, new int[]{androidx.appcompat.widget.y.a(context, androidx.appcompat.R.attr.colorButtonNormal), o.a.b(iB, i5), o.a.b(iB, i5), i5});
    }

    public final android.content.res.ColorStateList h(android.content.Context context) {
        return f(context, androidx.appcompat.widget.y.b(context, androidx.appcompat.R.attr.colorAccent));
    }

    public final android.content.res.ColorStateList i(android.content.Context context) {
        return f(context, androidx.appcompat.widget.y.b(context, androidx.appcompat.R.attr.colorButtonNormal));
    }

    public final android.graphics.drawable.Drawable j(android.content.Context context, int i5) {
        if (this.f965e == null) {
            this.f965e = new android.util.TypedValue();
        }
        android.util.TypedValue typedValue = this.f965e;
        context.getResources().getValue(i5, typedValue, true);
        long jG = g(typedValue);
        android.graphics.drawable.Drawable drawableN = n(context, jG);
        if (drawableN != null) {
            return drawableN;
        }
        if (i5 == androidx.appcompat.R.drawable.abc_cab_background_top_material) {
            drawableN = new android.graphics.drawable.LayerDrawable(new android.graphics.drawable.Drawable[]{o(context, androidx.appcompat.R.drawable.abc_cab_background_internal_bg), o(context, androidx.appcompat.R.drawable.abc_cab_background_top_mtrl_alpha)});
        }
        if (drawableN != null) {
            drawableN.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, jG, drawableN);
        }
        return drawableN;
    }

    public final android.content.res.ColorStateList k(android.content.Context context) {
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        int i5 = androidx.appcompat.R.attr.colorSwitchThumbNormal;
        android.content.res.ColorStateList colorStateListD = androidx.appcompat.widget.y.d(context, i5);
        if (colorStateListD == null || !colorStateListD.isStateful()) {
            iArr[0] = androidx.appcompat.widget.y.f1086b;
            iArr2[0] = androidx.appcompat.widget.y.a(context, i5);
            iArr[1] = androidx.appcompat.widget.y.f1090f;
            iArr2[1] = androidx.appcompat.widget.y.b(context, androidx.appcompat.R.attr.colorControlActivated);
            iArr[2] = androidx.appcompat.widget.y.f1093i;
            iArr2[2] = androidx.appcompat.widget.y.b(context, i5);
        } else {
            iArr[0] = androidx.appcompat.widget.y.f1086b;
            iArr2[0] = colorStateListD.getColorForState(iArr[0], 0);
            iArr[1] = androidx.appcompat.widget.y.f1090f;
            iArr2[1] = androidx.appcompat.widget.y.b(context, androidx.appcompat.R.attr.colorControlActivated);
            iArr[2] = androidx.appcompat.widget.y.f1093i;
            iArr2[2] = colorStateListD.getDefaultColor();
        }
        return new android.content.res.ColorStateList(iArr, iArr2);
    }

    public final synchronized android.graphics.drawable.Drawable n(android.content.Context context, long j5) {
        j.d<java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState>> dVar = this.f964d.get(context);
        if (dVar == null) {
            return null;
        }
        java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState> weakReferenceF = dVar.f(j5);
        if (weakReferenceF != null) {
            android.graphics.drawable.Drawable.ConstantState constantState = weakReferenceF.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.d(j5);
        }
        return null;
    }

    public synchronized android.graphics.drawable.Drawable o(android.content.Context context, int i5) {
        return p(context, i5, false);
    }

    public synchronized android.graphics.drawable.Drawable p(android.content.Context context, int i5, boolean z4) {
        android.graphics.drawable.Drawable drawableW;
        d(context);
        drawableW = w(context, i5);
        if (drawableW == null) {
            drawableW = j(context, i5);
        }
        if (drawableW == null) {
            drawableW = androidx.core.content.a.b(context, i5);
        }
        if (drawableW != null) {
            drawableW = A(context, i5, z4, drawableW);
        }
        if (drawableW != null) {
            androidx.appcompat.widget.o.b(drawableW);
        }
        return drawableW;
    }

    public synchronized android.content.res.ColorStateList r(android.content.Context context, int i5) {
        android.content.res.ColorStateList colorStateListS;
        colorStateListS = s(context, i5);
        if (colorStateListS == null) {
            if (i5 == androidx.appcompat.R.drawable.abc_edit_text_material) {
                colorStateListS = b.a.a(context, androidx.appcompat.R.color.abc_tint_edittext);
            } else if (i5 == androidx.appcompat.R.drawable.abc_switch_track_mtrl_alpha) {
                colorStateListS = b.a.a(context, androidx.appcompat.R.color.abc_tint_switch_track);
            } else if (i5 == androidx.appcompat.R.drawable.abc_switch_thumb_material) {
                colorStateListS = k(context);
            } else if (i5 == androidx.appcompat.R.drawable.abc_btn_default_mtrl_shape) {
                colorStateListS = i(context);
            } else if (i5 == androidx.appcompat.R.drawable.abc_btn_borderless_material) {
                colorStateListS = e(context);
            } else if (i5 == androidx.appcompat.R.drawable.abc_btn_colored_material) {
                colorStateListS = h(context);
            } else if (i5 == androidx.appcompat.R.drawable.abc_spinner_mtrl_am_alpha || i5 == androidx.appcompat.R.drawable.abc_spinner_textfield_background_material) {
                colorStateListS = b.a.a(context, androidx.appcompat.R.color.abc_tint_spinner);
            } else if (c(f956k, i5)) {
                colorStateListS = androidx.appcompat.widget.y.d(context, androidx.appcompat.R.attr.colorControlNormal);
            } else if (c(f959n, i5)) {
                colorStateListS = b.a.a(context, androidx.appcompat.R.color.abc_tint_default);
            } else if (c(f960o, i5)) {
                colorStateListS = b.a.a(context, androidx.appcompat.R.color.abc_tint_btn_checkable);
            } else if (i5 == androidx.appcompat.R.drawable.abc_seekbar_thumb_material) {
                colorStateListS = b.a.a(context, androidx.appcompat.R.color.abc_tint_seek_thumb);
            }
            if (colorStateListS != null) {
                b(context, i5, colorStateListS);
            }
        }
        return colorStateListS;
    }

    public final android.content.res.ColorStateList s(android.content.Context context, int i5) {
        j.h<android.content.res.ColorStateList> hVar;
        java.util.WeakHashMap<android.content.Context, j.h<android.content.res.ColorStateList>> weakHashMap = this.f961a;
        if (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) {
            return null;
        }
        return hVar.g(i5);
    }

    public final android.graphics.drawable.Drawable w(android.content.Context context, int i5) {
        int next;
        j.a<java.lang.String, androidx.appcompat.widget.f.b> aVar = this.f962b;
        if (aVar == null || aVar.isEmpty()) {
            return null;
        }
        j.h<java.lang.String> hVar = this.f963c;
        if (hVar != null) {
            java.lang.String strG = hVar.g(i5);
            if ("appcompat_skip_skip".equals(strG) || (strG != null && this.f962b.get(strG) == null)) {
                return null;
            }
        } else {
            this.f963c = new j.h<>();
        }
        if (this.f965e == null) {
            this.f965e = new android.util.TypedValue();
        }
        android.util.TypedValue typedValue = this.f965e;
        android.content.res.Resources resources = context.getResources();
        resources.getValue(i5, typedValue, true);
        long jG = g(typedValue);
        android.graphics.drawable.Drawable drawableN = n(context, jG);
        if (drawableN != null) {
            return drawableN;
        }
        java.lang.CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                android.content.res.XmlResourceParser xml = resources.getXml(i5);
                android.util.AttributeSet attributeSetAsAttributeSet = android.util.Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new org.xmlpull.v1.XmlPullParserException("No start tag found");
                }
                java.lang.String name = xml.getName();
                this.f963c.a(i5, name);
                androidx.appcompat.widget.f.b bVar = this.f962b.get(name);
                if (bVar != null) {
                    drawableN = bVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableN != null) {
                    drawableN.setChangingConfigurations(typedValue.changingConfigurations);
                    a(context, jG, drawableN);
                }
            } catch (java.lang.Exception e5) {
                android.util.Log.e("AppCompatDrawableManag", "Exception while inflating drawable", e5);
            }
        }
        if (drawableN == null) {
            this.f963c.a(i5, "appcompat_skip_skip");
        }
        return drawableN;
    }

    public synchronized void x(android.content.Context context) {
        j.d<java.lang.ref.WeakReference<android.graphics.drawable.Drawable.ConstantState>> dVar = this.f964d.get(context);
        if (dVar != null) {
            dVar.a();
        }
    }

    public synchronized android.graphics.drawable.Drawable y(android.content.Context context, androidx.appcompat.widget.g0 g0Var, int i5) {
        android.graphics.drawable.Drawable drawableW = w(context, i5);
        if (drawableW == null) {
            drawableW = g0Var.c(i5);
        }
        if (drawableW == null) {
            return null;
        }
        return A(context, i5, false, drawableW);
    }
}
