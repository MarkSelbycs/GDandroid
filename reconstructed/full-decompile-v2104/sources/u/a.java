package u;

/* JADX INFO: compiled from: PrecomputedTextCompat.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class a implements android.text.Spannable {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.lang.Object f6271d = new java.lang.Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.text.Spannable f6272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u.a.C0084a f6273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final android.text.PrecomputedText f6274c;

    /* JADX INFO: renamed from: u.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PrecomputedTextCompat.java */
    public static final class C0084a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final android.text.TextPaint f6275a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final android.text.TextDirectionHeuristic f6276b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f6277c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f6278d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final android.text.PrecomputedText.Params f6279e;

        public C0084a(android.text.PrecomputedText.Params params) {
            this.f6275a = params.getTextPaint();
            this.f6276b = params.getTextDirection();
            this.f6277c = params.getBreakStrategy();
            this.f6278d = params.getHyphenationFrequency();
            this.f6279e = android.os.Build.VERSION.SDK_INT < 29 ? null : params;
        }

        public boolean a(u.a.C0084a c0084a) {
            if (this.f6277c != c0084a.b() || this.f6278d != c0084a.c() || this.f6275a.getTextSize() != c0084a.e().getTextSize() || this.f6275a.getTextScaleX() != c0084a.e().getTextScaleX() || this.f6275a.getTextSkewX() != c0084a.e().getTextSkewX() || this.f6275a.getLetterSpacing() != c0084a.e().getLetterSpacing() || !android.text.TextUtils.equals(this.f6275a.getFontFeatureSettings(), c0084a.e().getFontFeatureSettings()) || this.f6275a.getFlags() != c0084a.e().getFlags() || !this.f6275a.getTextLocales().equals(c0084a.e().getTextLocales())) {
                return false;
            }
            if (this.f6275a.getTypeface() == null) {
                return c0084a.e().getTypeface() == null;
            }
            return this.f6275a.getTypeface().equals(c0084a.e().getTypeface());
        }

        public int b() {
            return this.f6277c;
        }

        public int c() {
            return this.f6278d;
        }

        public android.text.TextDirectionHeuristic d() {
            return this.f6276b;
        }

        public android.text.TextPaint e() {
            return this.f6275a;
        }

        public boolean equals(java.lang.Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof u.a.C0084a)) {
                return false;
            }
            u.a.C0084a c0084a = (u.a.C0084a) obj;
            return a(c0084a) && this.f6276b == c0084a.d();
        }

        public int hashCode() {
            return v.d.b(java.lang.Float.valueOf(this.f6275a.getTextSize()), java.lang.Float.valueOf(this.f6275a.getTextScaleX()), java.lang.Float.valueOf(this.f6275a.getTextSkewX()), java.lang.Float.valueOf(this.f6275a.getLetterSpacing()), java.lang.Integer.valueOf(this.f6275a.getFlags()), this.f6275a.getTextLocales(), this.f6275a.getTypeface(), java.lang.Boolean.valueOf(this.f6275a.isElegantTextHeight()), this.f6276b, java.lang.Integer.valueOf(this.f6277c), java.lang.Integer.valueOf(this.f6278d));
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sb = new java.lang.StringBuilder("{");
            sb.append("textSize=" + this.f6275a.getTextSize());
            sb.append(", textScaleX=" + this.f6275a.getTextScaleX());
            sb.append(", textSkewX=" + this.f6275a.getTextSkewX());
            sb.append(", letterSpacing=" + this.f6275a.getLetterSpacing());
            sb.append(", elegantTextHeight=" + this.f6275a.isElegantTextHeight());
            sb.append(", textLocale=" + this.f6275a.getTextLocales());
            sb.append(", typeface=" + this.f6275a.getTypeface());
            sb.append(", variationSettings=" + this.f6275a.getFontVariationSettings());
            sb.append(", textDir=" + this.f6276b);
            sb.append(", breakStrategy=" + this.f6277c);
            sb.append(", hyphenationFrequency=" + this.f6278d);
            sb.append("}");
            return sb.toString();
        }
    }

    public u.a.C0084a a() {
        return this.f6273b;
    }

    public android.text.PrecomputedText b() {
        android.text.Spannable spannable = this.f6272a;
        if (spannable instanceof android.text.PrecomputedText) {
            return (android.text.PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i5) {
        return this.f6272a.charAt(i5);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(java.lang.Object obj) {
        return this.f6272a.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(java.lang.Object obj) {
        return this.f6272a.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(java.lang.Object obj) {
        return this.f6272a.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i5, int i6, java.lang.Class<T> cls) {
        return android.os.Build.VERSION.SDK_INT >= 29 ? (T[]) this.f6274c.getSpans(i5, i6, cls) : (T[]) this.f6272a.getSpans(i5, i6, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f6272a.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i5, int i6, java.lang.Class cls) {
        return this.f6272a.nextSpanTransition(i5, i6, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(java.lang.Object obj) {
        if (obj instanceof android.text.style.MetricAffectingSpan) {
            throw new java.lang.IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            this.f6274c.removeSpan(obj);
        } else {
            this.f6272a.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    public void setSpan(java.lang.Object obj, int i5, int i6, int i7) {
        if (obj instanceof android.text.style.MetricAffectingSpan) {
            throw new java.lang.IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            this.f6274c.setSpan(obj, i5, i6, i7);
        } else {
            this.f6272a.setSpan(obj, i5, i6, i7);
        }
    }

    @Override // java.lang.CharSequence
    public java.lang.CharSequence subSequence(int i5, int i6) {
        return this.f6272a.subSequence(i5, i6);
    }

    @Override // java.lang.CharSequence
    public java.lang.String toString() {
        return this.f6272a.toString();
    }
}
