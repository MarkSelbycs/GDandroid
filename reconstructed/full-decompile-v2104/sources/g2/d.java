package g2;

/* JADX INFO: compiled from: JSONWriter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends java.io.Writer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f4336b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.io.Writer f4337c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f2.f f4338d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4340f;

    public d(java.io.Writer writer, int i5, int i6, f2.f fVar) {
        this.f4337c = writer;
        this.f4335a = i5;
        this.f4336b = i6;
        this.f4338d = fVar;
    }

    public static java.lang.String h(java.lang.Object obj, java.lang.String str) {
        long timeInMillis;
        if (b2.c.s(str)) {
            java.lang.String strA = obj instanceof java.time.temporal.TemporalAccessor ? p1.h.a((java.time.temporal.TemporalAccessor) obj, str) : p1.f.j(n1.c.g(obj), str);
            return ("#sss".equals(str) || "#SSS".equals(str)) ? strA : f2.p.l(strA);
        }
        if (obj instanceof java.time.temporal.TemporalAccessor) {
            timeInMillis = p1.h.d((java.time.temporal.TemporalAccessor) obj);
        } else if (obj instanceof java.util.Date) {
            timeInMillis = ((java.util.Date) obj).getTime();
        } else {
            if (!(obj instanceof java.util.Calendar)) {
                throw new java.lang.UnsupportedOperationException("Unsupported Date type: " + obj.getClass());
            }
            timeInMillis = ((java.util.Calendar) obj).getTimeInMillis();
        }
        return java.lang.String.valueOf(timeInMillis);
    }

    public static g2.d i(java.io.Writer writer, int i5, int i6, f2.f fVar) {
        return new g2.d(writer, i5, i6, fVar);
    }

    public final g2.d C(java.lang.Object obj, v1.i<y1.d<java.lang.Object, java.lang.Object>> iVar) {
        if (this.f4340f) {
            if (this.f4339e) {
                u(',');
            }
            q().y(this.f4335a + this.f4336b);
        } else {
            u(':').y(1);
        }
        this.f4339e = true;
        return s(obj, iVar);
    }

    public g2.d c() {
        u('[');
        this.f4340f = true;
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f4337c.close();
    }

    public g2.d e() {
        u('{');
        return this;
    }

    public g2.d f() {
        q().y(this.f4336b);
        u(this.f4340f ? ']' : '}');
        flush();
        this.f4340f = false;
        this.f4339e = true;
        return this;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        try {
            this.f4337c.flush();
        } catch (java.io.IOException e5) {
            throw new t1.c(e5);
        }
    }

    public final void j(java.lang.Boolean bool) {
        x(bool.toString());
    }

    public g2.d l(y1.d<java.lang.Object, java.lang.Object> dVar, v1.i<y1.d<java.lang.Object, java.lang.Object>> iVar) {
        if (f2.p.c(dVar.e()) && this.f4338d.q()) {
            return this;
        }
        if (iVar != null && !iVar.accept(dVar)) {
            return this;
        }
        if (!this.f4340f) {
            o(e2.b0.j0(dVar.b()));
        }
        return C(dVar.e(), iVar);
    }

    public final void n(f2.n nVar) {
        try {
            java.lang.String jSONString = nVar.toJSONString();
            if (jSONString != null) {
                x(jSONString);
            } else {
                z(nVar.toString());
            }
        } catch (java.lang.Exception e5) {
            throw new f2.h(e5);
        }
    }

    public g2.d o(java.lang.String str) {
        if (this.f4339e) {
            u(',');
        }
        q().y(this.f4335a + this.f4336b);
        return x(f2.p.l(str));
    }

    public final g2.d q() {
        if (this.f4335a > 0) {
            u('\n');
        }
        return this;
    }

    public final void r(java.lang.Number number) {
        f2.f fVar = this.f4338d;
        x(e2.o.o(number, fVar == null || fVar.u()));
    }

    public final g2.d s(java.lang.Object obj, v1.i<y1.d<java.lang.Object, java.lang.Object>> iVar) {
        int i5 = this.f4335a;
        int i6 = this.f4336b + i5;
        if (obj == null || (obj instanceof f2.j)) {
            x(f2.j.f4206a.toString());
        } else if (obj instanceof f2.b) {
            if (obj instanceof f2.l) {
                ((f2.l) obj).U(this.f4337c, i5, i6, iVar);
            } else if (obj instanceof f2.e) {
                ((f2.e) obj).H(this.f4337c, i5, i6, iVar);
            }
        } else if ((obj instanceof java.util.Map) || (obj instanceof java.util.Map.Entry)) {
            new f2.l(obj).r(this.f4337c, this.f4335a, i6);
        } else if ((obj instanceof java.lang.Iterable) || (obj instanceof java.util.Iterator) || e2.c.s(obj)) {
            new f2.e(obj).r(this.f4337c, this.f4335a, i6);
        } else if (obj instanceof java.lang.Number) {
            r((java.lang.Number) obj);
        } else if ((obj instanceof java.util.Date) || (obj instanceof java.util.Calendar) || (obj instanceof java.time.temporal.TemporalAccessor)) {
            if (obj instanceof java.time.MonthDay) {
                z(obj.toString());
                return this;
            }
            f2.f fVar = this.f4338d;
            x(h(obj, fVar == null ? null : fVar.c()));
        } else if (obj instanceof java.lang.Boolean) {
            j((java.lang.Boolean) obj);
        } else if (obj instanceof f2.n) {
            n((f2.n) obj);
        } else {
            z(obj.toString());
        }
        return this;
    }

    public final g2.d u(char c5) {
        try {
            this.f4337c.write(c5);
            return this;
        } catch (java.io.IOException e5) {
            throw new t1.c(e5);
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i5, int i6) throws java.io.IOException {
        this.f4337c.write(cArr, i5, i6);
    }

    public final g2.d x(java.lang.String str) {
        try {
            this.f4337c.append((java.lang.CharSequence) str);
            return this;
        } catch (java.io.IOException e5) {
            throw new t1.c(e5);
        }
    }

    public final void y(int i5) {
        if (this.f4335a > 0) {
            for (int i6 = 0; i6 < i5; i6++) {
                u(' ');
            }
        }
    }

    public final void z(java.lang.String str) {
        try {
            f2.p.j(str, this.f4337c);
        } catch (java.io.IOException e5) {
            throw new t1.c(e5);
        }
    }
}
