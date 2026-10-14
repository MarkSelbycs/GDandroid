package v2;

/* JADX INFO: compiled from: JsonTreeReader.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e extends y2.a {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final java.io.Reader f6463w = new v2.e.a();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final java.lang.Object f6464x = new java.lang.Object();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final java.util.List<java.lang.Object> f6465v;

    /* JADX INFO: compiled from: JsonTreeReader.java */
    public static class a extends java.io.Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            throw new java.lang.AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i5, int i6) throws java.io.IOException {
            throw new java.lang.AssertionError();
        }
    }

    @Override // y2.a
    public long C() throws java.io.IOException {
        y2.b bVarV = V();
        y2.b bVar = y2.b.NUMBER;
        if (bVarV == bVar || bVarV == y2.b.STRING) {
            long jM = ((s2.o) v0()).m();
            w0();
            return jM;
        }
        throw new java.lang.IllegalStateException("Expected " + bVar + " but was " + bVarV);
    }

    @Override // y2.a
    public java.lang.String H() throws java.io.IOException {
        u0(y2.b.NAME);
        java.util.Map.Entry entry = (java.util.Map.Entry) ((java.util.Iterator) v0()).next();
        this.f6465v.add(entry.getValue());
        return (java.lang.String) entry.getKey();
    }

    @Override // y2.a
    public void K() throws java.io.IOException {
        u0(y2.b.NULL);
        w0();
    }

    @Override // y2.a
    public java.lang.String P() throws java.io.IOException {
        y2.b bVarV = V();
        y2.b bVar = y2.b.STRING;
        if (bVarV == bVar || bVarV == y2.b.NUMBER) {
            return ((s2.o) w0()).e();
        }
        throw new java.lang.IllegalStateException("Expected " + bVar + " but was " + bVarV);
    }

    @Override // y2.a
    public y2.b V() throws java.io.IOException {
        if (this.f6465v.isEmpty()) {
            return y2.b.END_DOCUMENT;
        }
        java.lang.Object objV0 = v0();
        if (objV0 instanceof java.util.Iterator) {
            java.util.List<java.lang.Object> list = this.f6465v;
            boolean z4 = list.get(list.size() - 2) instanceof s2.l;
            java.util.Iterator it = (java.util.Iterator) objV0;
            if (!it.hasNext()) {
                return z4 ? y2.b.END_OBJECT : y2.b.END_ARRAY;
            }
            if (z4) {
                return y2.b.NAME;
            }
            this.f6465v.add(it.next());
            return V();
        }
        if (objV0 instanceof s2.l) {
            return y2.b.BEGIN_OBJECT;
        }
        if (objV0 instanceof s2.g) {
            return y2.b.BEGIN_ARRAY;
        }
        if (!(objV0 instanceof s2.o)) {
            if (objV0 instanceof s2.k) {
                return y2.b.NULL;
            }
            if (objV0 == f6464x) {
                throw new java.lang.IllegalStateException("JsonReader is closed");
            }
            throw new java.lang.AssertionError();
        }
        s2.o oVar = (s2.o) objV0;
        if (oVar.s()) {
            return y2.b.STRING;
        }
        if (oVar.o()) {
            return y2.b.BOOLEAN;
        }
        if (oVar.q()) {
            return y2.b.NUMBER;
        }
        throw new java.lang.AssertionError();
    }

    @Override // y2.a
    public void c() throws java.io.IOException {
        u0(y2.b.BEGIN_ARRAY);
        this.f6465v.add(((s2.g) v0()).iterator());
    }

    @Override // y2.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        this.f6465v.clear();
        this.f6465v.add(f6464x);
    }

    @Override // y2.a
    public void e() throws java.io.IOException {
        u0(y2.b.BEGIN_OBJECT);
        this.f6465v.add(((s2.l) v0()).n().iterator());
    }

    @Override // y2.a
    public void j() throws java.io.IOException {
        u0(y2.b.END_ARRAY);
        w0();
        w0();
    }

    @Override // y2.a
    public void l() throws java.io.IOException {
        u0(y2.b.END_OBJECT);
        w0();
        w0();
    }

    @Override // y2.a
    public void m0() throws java.io.IOException {
        if (V() == y2.b.NAME) {
            H();
        } else {
            w0();
        }
    }

    @Override // y2.a
    public boolean r() throws java.io.IOException {
        y2.b bVarV = V();
        return (bVarV == y2.b.END_OBJECT || bVarV == y2.b.END_ARRAY) ? false : true;
    }

    @Override // y2.a
    public java.lang.String toString() {
        return v2.e.class.getSimpleName();
    }

    public final void u0(y2.b bVar) throws java.io.IOException {
        if (V() == bVar) {
            return;
        }
        throw new java.lang.IllegalStateException("Expected " + bVar + " but was " + V());
    }

    public final java.lang.Object v0() {
        java.util.List<java.lang.Object> list = this.f6465v;
        return list.get(list.size() - 1);
    }

    public final java.lang.Object w0() {
        java.util.List<java.lang.Object> list = this.f6465v;
        return list.remove(list.size() - 1);
    }

    @Override // y2.a
    public boolean x() throws java.io.IOException {
        u0(y2.b.BOOLEAN);
        return ((s2.o) w0()).j();
    }

    public void x0() throws java.io.IOException {
        u0(y2.b.NAME);
        java.util.Map.Entry entry = (java.util.Map.Entry) ((java.util.Iterator) v0()).next();
        this.f6465v.add(entry.getValue());
        this.f6465v.add(new s2.o((java.lang.String) entry.getKey()));
    }

    @Override // y2.a
    public double y() throws java.io.IOException {
        y2.b bVarV = V();
        y2.b bVar = y2.b.NUMBER;
        if (bVarV != bVar && bVarV != y2.b.STRING) {
            throw new java.lang.IllegalStateException("Expected " + bVar + " but was " + bVarV);
        }
        double dL = ((s2.o) v0()).l();
        if (s() || !(java.lang.Double.isNaN(dL) || java.lang.Double.isInfinite(dL))) {
            w0();
            return dL;
        }
        throw new java.lang.NumberFormatException("JSON forbids NaN and infinities: " + dL);
    }

    @Override // y2.a
    public int z() throws java.io.IOException {
        y2.b bVarV = V();
        y2.b bVar = y2.b.NUMBER;
        if (bVarV == bVar || bVarV == y2.b.STRING) {
            int iA = ((s2.o) v0()).a();
            w0();
            return iA;
        }
        throw new java.lang.IllegalStateException("Expected " + bVar + " but was " + bVarV);
    }
}
