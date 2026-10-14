package n;

/* JADX INFO: compiled from: ResourcesCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final java.lang.ThreadLocal<android.util.TypedValue> f5230a = new java.lang.ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final java.util.WeakHashMap<java.lang.Object, android.util.SparseArray<java.lang.Object>> f5231b = new java.util.WeakHashMap<>(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f5232c = new java.lang.Object();

    /* JADX INFO: compiled from: ResourcesCompat.java */
    public static abstract class a {
        public static android.os.Handler e(android.os.Handler handler) {
            return handler == null ? new android.os.Handler(android.os.Looper.getMainLooper()) : handler;
        }

        public final void c(final int i5, android.os.Handler handler) {
            e(handler).post(new java.lang.Runnable() { // from class: n.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5226a.f(i5);
                }
            });
        }

        public final void d(final android.graphics.Typeface typeface, android.os.Handler handler) {
            e(handler).post(new java.lang.Runnable() { // from class: n.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5228a.g(typeface);
                }
            });
        }

        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public abstract void f(int i5);

        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public abstract void g(android.graphics.Typeface typeface);
    }

    public static android.graphics.Typeface a(android.content.Context context, int i5, android.util.TypedValue typedValue, int i6, n.d.a aVar) throws android.content.res.Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i5, typedValue, i6, aVar, null, true, false);
    }

    public static android.graphics.Typeface b(android.content.Context context, int i5, android.util.TypedValue typedValue, int i6, n.d.a aVar, android.os.Handler handler, boolean z4, boolean z5) {
        android.content.res.Resources resources = context.getResources();
        resources.getValue(i5, typedValue, true);
        android.graphics.Typeface typefaceC = c(context, resources, typedValue, i5, i6, aVar, handler, z4, z5);
        if (typefaceC != null || aVar != null || z5) {
            return typefaceC;
        }
        throw new android.content.res.Resources.NotFoundException("Font resource ID #0x" + java.lang.Integer.toHexString(i5) + " could not be retrieved.");
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00b7  */
    public static android.graphics.Typeface c(android.content.Context context, android.content.res.Resources resources, android.util.TypedValue typedValue, int i5, int i6, n.d.a aVar, android.os.Handler handler, boolean z4, boolean z5) {
        java.lang.CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new android.content.res.Resources.NotFoundException("Resource \"" + resources.getResourceName(i5) + "\" (" + java.lang.Integer.toHexString(i5) + ") is not a Font: " + typedValue);
        }
        java.lang.String string = charSequence.toString();
        if (!string.startsWith("res/")) {
            if (aVar != null) {
                aVar.c(-3, handler);
            }
            return null;
        }
        android.graphics.Typeface typefaceE = o.c.e(resources, i5, string, typedValue.assetCookie, i6);
        if (typefaceE != null) {
            if (aVar != null) {
                aVar.d(typefaceE, handler);
            }
            return typefaceE;
        }
        if (z5) {
            return null;
        }
        try {
            if (!string.toLowerCase().endsWith(".xml")) {
                android.graphics.Typeface typefaceC = o.c.c(context, resources, i5, string, typedValue.assetCookie, i6);
                if (aVar != null) {
                    if (typefaceC != null) {
                        aVar.d(typefaceC, handler);
                    } else {
                        aVar.c(-3, handler);
                    }
                }
                return typefaceC;
            }
            n.a.b bVarB = n.a.b(resources.getXml(i5), resources);
            if (bVarB != null) {
                return o.c.b(context, bVarB, resources, i5, string, typedValue.assetCookie, i6, aVar, handler, z4);
            }
            android.util.Log.e("ResourcesCompat", "Failed to find font-family tag");
            if (aVar != null) {
                aVar.c(-3, handler);
            }
            return null;
        } catch (java.io.IOException e5) {
            android.util.Log.e("ResourcesCompat", "Failed to read xml resource " + string, e5);
            if (aVar != null) {
                aVar.c(-3, handler);
            }
            return null;
        } catch (org.xmlpull.v1.XmlPullParserException e6) {
            android.util.Log.e("ResourcesCompat", "Failed to parse xml resource " + string, e6);
            if (aVar != null) {
                aVar.c(-3, handler);
            }
            return null;
        }
    }
}
