package b2;

/* JADX INFO: compiled from: StrBuilder.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e implements java.lang.CharSequence, java.lang.Appendable, java.io.Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public char[] f2934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2935b;

    public e() {
        this(16);
    }

    public b2.e D() {
        this.f2935b = 0;
        return this;
    }

    public java.lang.String F(int i5, int i6) {
        return new java.lang.String(this.f2934a, i5, i6 - i5);
    }

    public java.lang.String H(boolean z4) {
        int i5 = this.f2935b;
        if (i5 <= 0) {
            return "";
        }
        java.lang.String str = new java.lang.String(this.f2934a, 0, i5);
        if (z4) {
            D();
        }
        return str;
    }

    @Override // java.lang.Appendable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public b2.e append(char c5) {
        return q(this.f2935b, c5);
    }

    @Override // java.lang.Appendable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b2.e append(java.lang.CharSequence charSequence) {
        return u(this.f2935b, charSequence);
    }

    @Override // java.lang.CharSequence
    public char charAt(int i5) {
        if (i5 < 0) {
            i5 += this.f2935b;
        }
        if (i5 < 0 || i5 > this.f2935b) {
            throw new java.lang.StringIndexOutOfBoundsException(i5);
        }
        return this.f2934a[i5];
    }

    @Override // java.lang.Appendable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public b2.e append(java.lang.CharSequence charSequence, int i5, int i6) {
        return x(this.f2935b, charSequence, i5, i6);
    }

    public final void f(int i5) {
        if (i5 - this.f2934a.length > 0) {
            h(i5);
        }
    }

    public final void h(int i5) {
        char[] cArr = this.f2934a;
        int length = (cArr.length << 1) + 2;
        if (length - i5 >= 0) {
            i5 = length;
        }
        if (i5 < 0) {
            throw new java.lang.OutOfMemoryError("Capacity is too long and max than Integer.MAX");
        }
        this.f2934a = java.util.Arrays.copyOf(cArr, i5);
    }

    public b2.e j(int i5, int i6, char[] cArr, int i7) {
        int i8 = 0;
        if (i5 < 0) {
            i5 = 0;
        }
        if (i6 < 0 || i6 > (i8 = this.f2935b)) {
            i6 = i8;
        }
        if (i5 > i6) {
            throw new java.lang.StringIndexOutOfBoundsException("srcBegin > srcEnd");
        }
        java.lang.System.arraycopy(this.f2934a, i5, cArr, i7, i6 - i5);
        return this;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f2935b;
    }

    public b2.e q(int i5, char c5) {
        if (i5 < 0) {
            i5 += this.f2935b;
        }
        if (i5 < 0) {
            throw new java.lang.StringIndexOutOfBoundsException(i5);
        }
        y(i5, 1);
        this.f2934a[i5] = c5;
        this.f2935b = java.lang.Math.max(this.f2935b, i5) + 1;
        return this;
    }

    @Override // java.lang.CharSequence
    public java.lang.CharSequence subSequence(int i5, int i6) {
        return F(i5, i6);
    }

    @Override // java.lang.CharSequence
    public java.lang.String toString() {
        return H(false);
    }

    public b2.e u(int i5, java.lang.CharSequence charSequence) {
        if (i5 < 0) {
            i5 += this.f2935b;
        }
        if (i5 < 0) {
            throw new java.lang.StringIndexOutOfBoundsException(i5);
        }
        if (charSequence == null) {
            charSequence = "";
        }
        int length = charSequence.length();
        y(i5, charSequence.length());
        int i6 = 0;
        if (charSequence instanceof java.lang.String) {
            ((java.lang.String) charSequence).getChars(0, length, this.f2934a, i5);
        } else if (charSequence instanceof java.lang.StringBuilder) {
            ((java.lang.StringBuilder) charSequence).getChars(0, length, this.f2934a, i5);
        } else if (charSequence instanceof java.lang.StringBuffer) {
            ((java.lang.StringBuffer) charSequence).getChars(0, length, this.f2934a, i5);
        } else if (charSequence instanceof b2.e) {
            ((b2.e) charSequence).j(0, length, this.f2934a, i5);
        } else {
            int i7 = this.f2935b;
            while (i6 < length) {
                this.f2934a[i7] = charSequence.charAt(i6);
                i6++;
                i7++;
            }
        }
        this.f2935b = java.lang.Math.max(this.f2935b, i5) + length;
        return this;
    }

    public b2.e x(int i5, java.lang.CharSequence charSequence, int i6, int i7) {
        if (charSequence == null) {
            charSequence = "null";
        }
        int length = charSequence.length();
        if (i6 > length) {
            return this;
        }
        if (i6 < 0) {
            i6 = 0;
        }
        if (i7 > length) {
            i7 = length;
        }
        if (i6 >= i7) {
            return this;
        }
        if (i5 < 0) {
            i5 += this.f2935b;
        }
        if (i5 < 0) {
            throw new java.lang.StringIndexOutOfBoundsException(i5);
        }
        int i8 = i7 - i6;
        y(i5, i8);
        int i9 = this.f2935b;
        while (i6 < i7) {
            this.f2934a[i9] = charSequence.charAt(i6);
            i6++;
            i9++;
        }
        this.f2935b = java.lang.Math.max(this.f2935b, i5) + i8;
        return this;
    }

    public final void y(int i5, int i6) {
        f(java.lang.Math.max(this.f2935b, i5) + i6);
        int i7 = this.f2935b;
        if (i5 < i7) {
            char[] cArr = this.f2934a;
            java.lang.System.arraycopy(cArr, i5, cArr, i6 + i5, i7 - i5);
        } else if (i5 > i7) {
            java.util.Arrays.fill(this.f2934a, i7, i5, ' ');
        }
    }

    public e(int i5) {
        this.f2934a = new char[i5];
    }
}
