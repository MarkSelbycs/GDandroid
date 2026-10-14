package o;

/* JADX INFO: compiled from: TypefaceCompatApi26Impl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends o.d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.lang.Class<?> f5276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final java.lang.reflect.Constructor<?> f5277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final java.lang.reflect.Method f5278i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final java.lang.reflect.Method f5279j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final java.lang.reflect.Method f5280k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final java.lang.reflect.Method f5281l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final java.lang.reflect.Method f5282m;

    public e() throws java.lang.NoSuchMethodException {
        java.lang.reflect.Method methodS;
        java.lang.reflect.Constructor<?> constructorU;
        java.lang.reflect.Method methodQ;
        java.lang.reflect.Method methodR;
        java.lang.reflect.Method methodV;
        java.lang.reflect.Method methodP;
        java.lang.Class<?> cls = null;
        try {
            java.lang.Class<?> clsT = t();
            constructorU = u(clsT);
            methodQ = q(clsT);
            methodR = r(clsT);
            methodV = v(clsT);
            methodP = p(clsT);
            methodS = s(clsT);
            cls = clsT;
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException e5) {
            android.util.Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e5.getClass().getName(), e5);
            methodS = null;
            constructorU = null;
            methodQ = null;
            methodR = null;
            methodV = null;
            methodP = null;
        }
        this.f5276g = cls;
        this.f5277h = constructorU;
        this.f5278i = methodQ;
        this.f5279j = methodR;
        this.f5280k = methodV;
        this.f5281l = methodP;
        this.f5282m = methodS;
    }

    private java.lang.Object j() {
        try {
            return this.f5277h.newInstance(new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException | java.lang.InstantiationException | java.lang.reflect.InvocationTargetException unused) {
            return null;
        }
    }

    @Override // o.d, o.h
    public android.graphics.Typeface a(android.content.Context context, n.a.c cVar, android.content.res.Resources resources, int i5) {
        if (!o()) {
            return super.a(context, cVar, resources, i5);
        }
        java.lang.Object objJ = j();
        if (objJ == null) {
            return null;
        }
        for (n.a.d dVar : cVar.a()) {
            if (!l(context, objJ, dVar.a(), dVar.c(), dVar.e(), dVar.f() ? 1 : 0, android.graphics.fonts.FontVariationAxis.fromFontVariationSettings(dVar.d()))) {
                k(objJ);
                return null;
            }
        }
        if (n(objJ)) {
            return h(objJ);
        }
        return null;
    }

    @Override // o.h
    public android.graphics.Typeface b(android.content.Context context, android.os.CancellationSignal cancellationSignal, t.g.b[] bVarArr, int i5) {
        android.graphics.Typeface typefaceH;
        if (bVarArr.length < 1) {
            return null;
        }
        if (!o()) {
            t.g.b bVarF = f(bVarArr, i5);
            try {
                android.os.ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(bVarF.d(), "r", cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    android.graphics.Typeface typefaceBuild = new android.graphics.Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(bVarF.e()).setItalic(bVarF.f()).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (java.lang.Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (java.lang.Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (java.io.IOException unused) {
                return null;
            }
        }
        java.util.Map<android.net.Uri, java.nio.ByteBuffer> mapF = o.i.f(context, bVarArr, cancellationSignal);
        java.lang.Object objJ = j();
        if (objJ == null) {
            return null;
        }
        boolean z4 = false;
        for (t.g.b bVar : bVarArr) {
            java.nio.ByteBuffer byteBuffer = mapF.get(bVar.d());
            if (byteBuffer != null) {
                if (!m(objJ, byteBuffer, bVar.c(), bVar.e(), bVar.f() ? 1 : 0)) {
                    k(objJ);
                    return null;
                }
                z4 = true;
            }
        }
        if (!z4) {
            k(objJ);
            return null;
        }
        if (n(objJ) && (typefaceH = h(objJ)) != null) {
            return android.graphics.Typeface.create(typefaceH, i5);
        }
        return null;
    }

    @Override // o.h
    public android.graphics.Typeface c(android.content.Context context, android.content.res.Resources resources, int i5, java.lang.String str, int i6) {
        if (!o()) {
            return super.c(context, resources, i5, str, i6);
        }
        java.lang.Object objJ = j();
        if (objJ == null) {
            return null;
        }
        if (!l(context, objJ, str, 0, -1, -1, null)) {
            k(objJ);
            return null;
        }
        if (n(objJ)) {
            return h(objJ);
        }
        return null;
    }

    public android.graphics.Typeface h(java.lang.Object obj) {
        throw null;
    }

    public final void k(java.lang.Object obj) {
        try {
            this.f5281l.invoke(obj, new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
        }
    }

    public final boolean l(android.content.Context context, java.lang.Object obj, java.lang.String str, int i5, int i6, int i7, android.graphics.fonts.FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((java.lang.Boolean) this.f5278i.invoke(obj, context.getAssets(), str, 0, java.lang.Boolean.FALSE, java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(i6), java.lang.Integer.valueOf(i7), fontVariationAxisArr)).booleanValue();
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean m(java.lang.Object obj, java.nio.ByteBuffer byteBuffer, int i5, int i6, int i7) {
        try {
            return ((java.lang.Boolean) this.f5279j.invoke(obj, byteBuffer, java.lang.Integer.valueOf(i5), null, java.lang.Integer.valueOf(i6), java.lang.Integer.valueOf(i7))).booleanValue();
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean n(java.lang.Object obj) {
        try {
            return ((java.lang.Boolean) this.f5280k.invoke(obj, new java.lang.Object[0])).booleanValue();
        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean o() {
        if (this.f5278i == null) {
            android.util.Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f5278i != null;
    }

    public java.lang.reflect.Method p(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException {
        return cls.getMethod("abortCreation", new java.lang.Class[0]);
    }

    public java.lang.reflect.Method q(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException {
        java.lang.Class<?> cls2 = java.lang.Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", android.content.res.AssetManager.class, java.lang.String.class, cls2, java.lang.Boolean.TYPE, cls2, cls2, cls2, android.graphics.fonts.FontVariationAxis[].class);
    }

    public java.lang.reflect.Method r(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException {
        java.lang.Class<?> cls2 = java.lang.Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", java.nio.ByteBuffer.class, cls2, android.graphics.fonts.FontVariationAxis[].class, cls2, cls2);
    }

    public java.lang.reflect.Method s(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException {
        throw null;
    }

    public java.lang.Class<?> t() throws java.lang.ClassNotFoundException {
        return java.lang.Class.forName("android.graphics.FontFamily");
    }

    public java.lang.reflect.Constructor<?> u(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException {
        return cls.getConstructor(new java.lang.Class[0]);
    }

    public java.lang.reflect.Method v(java.lang.Class<?> cls) throws java.lang.NoSuchMethodException {
        return cls.getMethod("freeze", new java.lang.Class[0]);
    }
}
