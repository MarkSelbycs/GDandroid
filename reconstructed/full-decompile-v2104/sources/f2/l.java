package f2;

/* JADX INFO: compiled from: JSONObject.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l extends a2.j<java.lang.String, java.lang.Object> implements f2.b, f2.i<java.lang.String> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f2.f f4209b;

    public l() {
        this(16, false);
    }

    public static /* synthetic */ void I(g2.d dVar, v1.i iVar, java.lang.String str, java.lang.Object obj) {
        dVar.l(new y1.d<>(str, obj), iVar);
    }

    public f2.l D(java.lang.String str, java.lang.Object obj) throws f2.h {
        f2.a.e(obj);
        java.lang.Object objB = b(str);
        if (objB == null) {
            P(str, obj);
        } else if (objB instanceof f2.e) {
            ((f2.e) objB).D(obj);
        } else {
            P(str, f2.p.a(this.f4209b).D(objB).D(obj));
        }
        return this;
    }

    @Override // a2.j
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public f2.l clone() throws java.lang.CloneNotSupportedException {
        f2.l lVar = (f2.l) super.clone();
        lVar.f4209b = this.f4209b;
        return lVar;
    }

    @Override // s1.a
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public java.lang.Object e(java.lang.String str, java.lang.Object obj) {
        return getOrDefault(str, obj);
    }

    @Override // a2.j, java.util.Map
    @java.lang.Deprecated
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public f2.l put(java.lang.String str, java.lang.Object obj) throws f2.h {
        return P(str, obj);
    }

    public f2.l P(java.lang.String str, java.lang.Object obj) throws f2.h {
        return T(str, obj, null, false);
    }

    public f2.l T(java.lang.String str, java.lang.Object obj, v1.i<y1.d<java.lang.String, java.lang.Object>> iVar, boolean z4) throws f2.h {
        if (str == null) {
            return this;
        }
        if (iVar != null) {
            y1.d<java.lang.String, java.lang.Object> dVar = new y1.d<>(str, obj);
            if (!iVar.accept(dVar)) {
                return this;
            }
            str = dVar.b();
            obj = dVar.e();
        }
        boolean zQ = this.f4209b.q();
        if (e2.p.i(obj) && zQ) {
            remove(str);
        } else {
            if (z4 && containsKey(str)) {
                throw new f2.h("Duplicate key \"{}\"", str);
            }
            super.put(str, f2.p.n(f2.a.e(obj), this.f4209b));
        }
        return this;
    }

    public java.io.Writer U(java.io.Writer writer, int i5, int i6, final v1.i<y1.d<java.lang.Object, java.lang.Object>> iVar) throws f2.h {
        final g2.d dVarE = g2.d.i(writer, i5, i6, this.f4209b).e();
        forEach(new java.util.function.BiConsumer() { // from class: f2.k
            @Override // java.util.function.BiConsumer
            public final void accept(java.lang.Object obj, java.lang.Object obj2) {
                f2.l.I(dVarE, iVar, (java.lang.String) obj, obj2);
            }
        });
        dVarE.f();
        return writer;
    }

    @Override // f2.i
    public f2.f h() {
        return this.f4209b;
    }

    @Override // a2.j, java.util.Map
    public void putAll(java.util.Map<? extends java.lang.String, ?> map) {
        for (java.util.Map.Entry<? extends java.lang.String, ?> entry : map.entrySet()) {
            P(entry.getKey(), entry.getValue());
        }
    }

    @Override // f2.b
    public java.io.Writer r(java.io.Writer writer, int i5, int i6) throws f2.h {
        return U(writer, i5, i6, null);
    }

    @Override // a2.j
    public java.lang.String toString() {
        return Y(0);
    }

    public l(int i5, boolean z4) {
        this(i5, false, z4);
    }

    @java.lang.Deprecated
    public l(int i5, boolean z4, boolean z5) {
        this(i5, f2.f.b().y(z4));
    }

    public l(f2.f fVar) {
        this(16, fVar);
    }

    public l(int i5, f2.f fVar) {
        super(f2.a.a(i5, (f2.f) e2.p.c(fVar, f2.f.b())));
        this.f4209b = (f2.f) e2.p.c(fVar, f2.f.b());
    }

    public l(java.lang.Object obj) {
        this(obj, f2.a.b(obj));
    }

    public l(java.lang.Object obj, boolean z4) {
        this(obj, f2.f.b().D(z4));
    }

    public l(java.lang.Object obj, f2.f fVar) {
        this(obj, fVar, (v1.i<y1.d<java.lang.String, java.lang.Object>>) null);
    }

    public l(java.lang.Object obj, f2.f fVar, v1.i<y1.d<java.lang.String, java.lang.Object>> iVar) {
        this(16, fVar);
        f2.q.i(obj).b(this, iVar);
    }
}
