package y2;

/* JADX INFO: compiled from: JsonWriter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class c implements java.io.Closeable, java.io.Flushable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final java.lang.String[] f6873o = new java.lang.String[com.alibaba.fastjson.asm.Opcodes.IOR];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final java.lang.String[] f6874p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.io.Writer f6875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f6876b = new int[32];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6877c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.lang.String f6878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.String f6879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f6880f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f6881g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.lang.String f6882h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f6883i;

    static {
        for (int i5 = 0; i5 <= 31; i5++) {
            f6873o[i5] = java.lang.String.format("\\u%04x", java.lang.Integer.valueOf(i5));
        }
        java.lang.String[] strArr = f6873o;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        java.lang.String[] strArr2 = (java.lang.String[]) strArr.clone();
        f6874p = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public c(java.io.Writer writer) {
        z(6);
        this.f6879e = ":";
        this.f6883i = true;
        java.util.Objects.requireNonNull(writer, "out == null");
        this.f6875a = writer;
    }

    public final void C(int i5) {
        this.f6876b[this.f6877c - 1] = i5;
    }

    public final void H(boolean z4) {
        this.f6881g = z4;
    }

    public final void I(java.lang.String str) {
        if (str.length() == 0) {
            this.f6878d = null;
            this.f6879e = ":";
        } else {
            this.f6878d = str;
            this.f6879e = ": ";
        }
    }

    public final void K(boolean z4) {
        this.f6880f = z4;
    }

    public final void M(boolean z4) {
        this.f6883i = z4;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0034  */
    public final void P(java.lang.String str) throws java.io.IOException {
        java.lang.String str2;
        java.lang.String[] strArr = this.f6881g ? f6874p : f6873o;
        this.f6875a.write("\"");
        int length = str.length();
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            char cCharAt = str.charAt(i6);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i5 < i6) {
                        this.f6875a.write(str, i5, i6 - i5);
                    }
                    this.f6875a.write(str2);
                    i5 = i6 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i5 < i6) {
                    this.f6875a.write(str, i5, i6 - i5);
                }
                this.f6875a.write(str2);
                i5 = i6 + 1;
            }
        }
        if (i5 < length) {
            this.f6875a.write(str, i5, length - i5);
        }
        this.f6875a.write("\"");
    }

    public y2.c R(long j5) throws java.io.IOException {
        Z();
        e();
        this.f6875a.write(java.lang.Long.toString(j5));
        return this;
    }

    public y2.c V(java.lang.Number number) throws java.io.IOException {
        if (number == null) {
            return u();
        }
        Z();
        java.lang.String string = number.toString();
        if (this.f6880f || !(string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            e();
            this.f6875a.append((java.lang.CharSequence) string);
            return this;
        }
        throw new java.lang.IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public y2.c X(java.lang.String str) throws java.io.IOException {
        if (str == null) {
            return u();
        }
        Z();
        e();
        P(str);
        return this;
    }

    public y2.c Y(boolean z4) throws java.io.IOException {
        Z();
        e();
        this.f6875a.write(z4 ? "true" : "false");
        return this;
    }

    public final void Z() throws java.io.IOException {
        if (this.f6882h != null) {
            c();
            P(this.f6882h);
            this.f6882h = null;
        }
    }

    public final void c() throws java.io.IOException {
        int iY = y();
        if (iY == 5) {
            this.f6875a.write(44);
        } else if (iY != 3) {
            throw new java.lang.IllegalStateException("Nesting problem.");
        }
        s();
        C(4);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f6875a.close();
        int i5 = this.f6877c;
        if (i5 > 1 || (i5 == 1 && this.f6876b[i5 - 1] != 7)) {
            throw new java.io.IOException("Incomplete document");
        }
        this.f6877c = 0;
    }

    public final void e() throws java.io.IOException {
        int iY = y();
        if (iY == 1) {
            C(2);
            s();
            return;
        }
        if (iY == 2) {
            this.f6875a.append(',');
            s();
        } else {
            if (iY == 4) {
                this.f6875a.append((java.lang.CharSequence) this.f6879e);
                C(5);
                return;
            }
            if (iY != 6) {
                if (iY != 7) {
                    throw new java.lang.IllegalStateException("Nesting problem.");
                }
                if (!this.f6880f) {
                    throw new java.lang.IllegalStateException("JSON must have only one top-level value.");
                }
            }
            C(7);
        }
    }

    public y2.c f() throws java.io.IOException {
        Z();
        return x(1, "[");
    }

    public void flush() throws java.io.IOException {
        if (this.f6877c == 0) {
            throw new java.lang.IllegalStateException("JsonWriter is closed.");
        }
        this.f6875a.flush();
    }

    public y2.c h() throws java.io.IOException {
        Z();
        return x(3, "{");
    }

    public final y2.c i(int i5, int i6, java.lang.String str) throws java.io.IOException {
        int iY = y();
        if (iY != i6 && iY != i5) {
            throw new java.lang.IllegalStateException("Nesting problem.");
        }
        if (this.f6882h != null) {
            throw new java.lang.IllegalStateException("Dangling name: " + this.f6882h);
        }
        this.f6877c--;
        if (iY == i6) {
            s();
        }
        this.f6875a.write(str);
        return this;
    }

    public y2.c j() throws java.io.IOException {
        return i(1, 2, "]");
    }

    public y2.c l() throws java.io.IOException {
        return i(3, 5, "}");
    }

    public final boolean n() {
        return this.f6883i;
    }

    public final boolean o() {
        return this.f6881g;
    }

    public boolean q() {
        return this.f6880f;
    }

    public y2.c r(java.lang.String str) throws java.io.IOException {
        java.util.Objects.requireNonNull(str, "name == null");
        if (this.f6882h != null) {
            throw new java.lang.IllegalStateException();
        }
        if (this.f6877c == 0) {
            throw new java.lang.IllegalStateException("JsonWriter is closed.");
        }
        this.f6882h = str;
        return this;
    }

    public final void s() throws java.io.IOException {
        if (this.f6878d == null) {
            return;
        }
        this.f6875a.write("\n");
        int i5 = this.f6877c;
        for (int i6 = 1; i6 < i5; i6++) {
            this.f6875a.write(this.f6878d);
        }
    }

    public y2.c u() throws java.io.IOException {
        if (this.f6882h != null) {
            if (!this.f6883i) {
                this.f6882h = null;
                return this;
            }
            Z();
        }
        e();
        this.f6875a.write("null");
        return this;
    }

    public final y2.c x(int i5, java.lang.String str) throws java.io.IOException {
        e();
        z(i5);
        this.f6875a.write(str);
        return this;
    }

    public final int y() {
        int i5 = this.f6877c;
        if (i5 != 0) {
            return this.f6876b[i5 - 1];
        }
        throw new java.lang.IllegalStateException("JsonWriter is closed.");
    }

    public final void z(int i5) {
        int i6 = this.f6877c;
        int[] iArr = this.f6876b;
        if (i6 == iArr.length) {
            int[] iArr2 = new int[i6 * 2];
            java.lang.System.arraycopy(iArr, 0, iArr2, 0, i6);
            this.f6876b = iArr2;
        }
        int[] iArr3 = this.f6876b;
        int i7 = this.f6877c;
        this.f6877c = i7 + 1;
        iArr3[i7] = i5;
    }
}
