package v2;

/* JADX INFO: compiled from: JsonTreeWriter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class f extends y2.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final java.io.Writer f6466t = new v2.f.a();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final s2.o f6467u = new s2.o("closed");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final java.util.List<s2.i> f6468q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public java.lang.String f6469r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public s2.i f6470s;

    /* JADX INFO: compiled from: JsonTreeWriter.java */
    public static class a extends java.io.Writer {
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            throw new java.lang.AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws java.io.IOException {
            throw new java.lang.AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i5, int i6) {
            throw new java.lang.AssertionError();
        }
    }

    public f() {
        super(f6466t);
        this.f6468q = new java.util.ArrayList();
        this.f6470s = s2.k.f6067a;
    }

    @Override // y2.c
    public y2.c R(long j5) throws java.io.IOException {
        h0(new s2.o((java.lang.Number) java.lang.Long.valueOf(j5)));
        return this;
    }

    @Override // y2.c
    public y2.c V(java.lang.Number number) throws java.io.IOException {
        if (number == null) {
            return u();
        }
        if (!q()) {
            double dDoubleValue = number.doubleValue();
            if (java.lang.Double.isNaN(dDoubleValue) || java.lang.Double.isInfinite(dDoubleValue)) {
                throw new java.lang.IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        h0(new s2.o(number));
        return this;
    }

    @Override // y2.c
    public y2.c X(java.lang.String str) throws java.io.IOException {
        if (str == null) {
            return u();
        }
        h0(new s2.o(str));
        return this;
    }

    @Override // y2.c
    public y2.c Y(boolean z4) throws java.io.IOException {
        h0(new s2.o(java.lang.Boolean.valueOf(z4)));
        return this;
    }

    public s2.i b0() {
        if (this.f6468q.isEmpty()) {
            return this.f6470s;
        }
        throw new java.lang.IllegalStateException("Expected one JSON element but was " + this.f6468q);
    }

    public final s2.i c0() {
        java.util.List<s2.i> list = this.f6468q;
        return list.get(list.size() - 1);
    }

    @Override // y2.c, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        if (!this.f6468q.isEmpty()) {
            throw new java.io.IOException("Incomplete document");
        }
        this.f6468q.add(f6467u);
    }

    @Override // y2.c
    public y2.c f() throws java.io.IOException {
        s2.g gVar = new s2.g();
        h0(gVar);
        this.f6468q.add(gVar);
        return this;
    }

    @Override // y2.c, java.io.Flushable
    public void flush() throws java.io.IOException {
    }

    @Override // y2.c
    public y2.c h() throws java.io.IOException {
        s2.l lVar = new s2.l();
        h0(lVar);
        this.f6468q.add(lVar);
        return this;
    }

    public final void h0(s2.i iVar) {
        if (this.f6469r != null) {
            if (!iVar.g() || n()) {
                ((s2.l) c0()).j(this.f6469r, iVar);
            }
            this.f6469r = null;
            return;
        }
        if (this.f6468q.isEmpty()) {
            this.f6470s = iVar;
            return;
        }
        s2.i iVarC0 = c0();
        if (!(iVarC0 instanceof s2.g)) {
            throw new java.lang.IllegalStateException();
        }
        ((s2.g) iVarC0).k(iVar);
    }

    @Override // y2.c
    public y2.c j() throws java.io.IOException {
        if (this.f6468q.isEmpty() || this.f6469r != null) {
            throw new java.lang.IllegalStateException();
        }
        if (!(c0() instanceof s2.g)) {
            throw new java.lang.IllegalStateException();
        }
        java.util.List<s2.i> list = this.f6468q;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // y2.c
    public y2.c l() throws java.io.IOException {
        if (this.f6468q.isEmpty() || this.f6469r != null) {
            throw new java.lang.IllegalStateException();
        }
        if (!(c0() instanceof s2.l)) {
            throw new java.lang.IllegalStateException();
        }
        java.util.List<s2.i> list = this.f6468q;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // y2.c
    public y2.c r(java.lang.String str) throws java.io.IOException {
        if (this.f6468q.isEmpty() || this.f6469r != null) {
            throw new java.lang.IllegalStateException();
        }
        if (!(c0() instanceof s2.l)) {
            throw new java.lang.IllegalStateException();
        }
        this.f6469r = str;
        return this;
    }

    @Override // y2.c
    public y2.c u() throws java.io.IOException {
        h0(s2.k.f6067a);
        return this;
    }
}
