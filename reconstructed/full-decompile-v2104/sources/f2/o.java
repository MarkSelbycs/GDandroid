package f2;

/* JADX INFO: compiled from: JSONTokener.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f4211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f4213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f4214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public char f4215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final java.io.Reader f4217g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f2.f f4218h;

    public o(java.io.Reader reader, f2.f fVar) {
        this.f4217g = reader.markSupported() ? reader : new java.io.BufferedReader(reader);
        this.f4212b = false;
        this.f4216f = false;
        this.f4215e = (char) 0;
        this.f4213c = 0L;
        this.f4211a = 1L;
        this.f4214d = 1L;
        this.f4218h = fVar;
    }

    public void a() throws f2.h {
        if (!this.f4216f) {
            long j5 = this.f4213c;
            if (j5 > 0) {
                this.f4213c = j5 - 1;
                this.f4211a--;
                this.f4216f = true;
                this.f4212b = false;
                return;
            }
        }
        throw new f2.h("Stepping back two steps is not supported");
    }

    public boolean b() {
        return this.f4212b && !this.f4216f;
    }

    public char c() {
        return this.f4215e;
    }

    public boolean d() throws f2.h {
        e();
        if (b()) {
            return false;
        }
        a();
        return true;
    }

    public char e() throws f2.h {
        int i5 = 0;
        if (this.f4216f) {
            this.f4216f = false;
            i5 = this.f4215e;
        } else {
            try {
                int i6 = this.f4217g.read();
                if (i6 <= 0) {
                    this.f4212b = true;
                } else {
                    i5 = i6;
                }
            } catch (java.io.IOException e5) {
                throw new f2.h(e5);
            }
        }
        this.f4213c++;
        if (this.f4215e == '\r') {
            this.f4214d++;
            this.f4211a = i5 == 10 ? 0L : 1L;
        } else if (i5 == 10) {
            this.f4214d++;
            this.f4211a = 0L;
        } else {
            this.f4211a++;
        }
        char c5 = (char) i5;
        this.f4215e = c5;
        return c5;
    }

    public java.lang.String f(int i5) throws f2.h {
        if (i5 == 0) {
            return "";
        }
        char[] cArr = new char[i5];
        for (int i6 = 0; i6 < i5; i6++) {
            cArr[i6] = e();
            if (b()) {
                throw j("Substring bounds error");
            }
        }
        return new java.lang.String(cArr);
    }

    public char g() throws f2.h {
        char cE;
        do {
            cE = e();
            if (cE == 0) {
                break;
            }
        } while (cE <= ' ');
        return cE;
    }

    public java.lang.String h(char c5) throws f2.h {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (true) {
            char cE = e();
            if (cE == 0 || cE == '\n' || cE == '\r') {
                break;
            }
            if (cE == '\\') {
                char cE2 = e();
                if (cE2 == '\"' || cE2 == '\'' || cE2 == '/' || cE2 == '\\') {
                    sb.append(cE2);
                } else if (cE2 == 'b') {
                    sb.append('\b');
                } else if (cE2 == 'f') {
                    sb.append('\f');
                } else if (cE2 == 'n') {
                    sb.append('\n');
                } else if (cE2 == 'r') {
                    sb.append('\r');
                } else if (cE2 == 't') {
                    sb.append('\t');
                } else {
                    if (cE2 != 'u') {
                        throw j("Illegal escape.");
                    }
                    sb.append((char) java.lang.Integer.parseInt(f(4), 16));
                }
            } else {
                if (cE == c5) {
                    return sb.toString();
                }
                sb.append(cE);
            }
        }
        throw j("Unterminated string");
    }

    public java.lang.Object i() throws f2.h {
        char cG = g();
        if (cG == '\"' || cG == '\'') {
            return h(cG);
        }
        if (cG == '[') {
            a();
            try {
                return new f2.e(this, this.f4218h);
            } catch (java.lang.StackOverflowError e5) {
                throw new f2.h("JSONArray depth too large to process.", e5);
            }
        }
        if (cG == '{') {
            a();
            try {
                return new f2.l(this, this.f4218h);
            } catch (java.lang.StackOverflowError e6) {
                throw new f2.h("JSONObject depth too large to process.", e6);
            }
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (cG >= ' ' && ",:]}/\\\"[{;=#".indexOf(cG) < 0) {
            sb.append(cG);
            cG = e();
        }
        a();
        java.lang.String strTrim = sb.toString().trim();
        if (strTrim.length() != 0) {
            return f2.a.d(strTrim);
        }
        throw j("Missing value");
    }

    public f2.h j(java.lang.String str) {
        return new f2.h(str + this);
    }

    public java.lang.String toString() {
        return " at " + this.f4213c + " [character " + this.f4211a + " line " + this.f4214d + "]";
    }

    public o(java.io.InputStream inputStream, f2.f fVar) throws f2.h {
        this(t1.d.g(inputStream), fVar);
    }

    public o(java.lang.CharSequence charSequence, f2.f fVar) {
        this(new java.io.StringReader(b2.c.L(charSequence)), fVar);
    }
}
