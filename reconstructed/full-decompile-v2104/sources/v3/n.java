package v3;

/* JADX INFO: compiled from: ConflatedBufferedChannel.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n<E> extends v3.b<E> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f6609r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final v3.a f6610s;

    public n(int i5, v3.a aVar, l3.l<? super E, a3.o> lVar) {
        super(i5, lVar);
        this.f6609r = i5;
        this.f6610s = aVar;
        if (!(aVar != v3.a.SUSPEND)) {
            throw new java.lang.IllegalArgumentException(("This implementation does not support suspension for senders, use " + m3.r.b(v3.b.class).a() + " instead").toString());
        }
        if (i5 >= 1) {
            return;
        }
        throw new java.lang.IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i5 + " was specified").toString());
    }

    public static /* synthetic */ <E> java.lang.Object J0(v3.n<E> nVar, E e5, d3.d<? super a3.o> dVar) throws java.lang.Throwable {
        y3.q0 q0VarD;
        java.lang.Object objM0 = nVar.M0(e5, true);
        if (!(objM0 instanceof v3.h.a)) {
            return a3.o.f122a;
        }
        v3.h.e(objM0);
        l3.l<E, a3.o> lVar = nVar.f6558b;
        if (lVar == null || (q0VarD = y3.z.d(lVar, e5, null, 2, null)) == null) {
            throw nVar.P();
        }
        a3.a.a(q0VarD, nVar.P());
        throw q0VarD;
    }

    public final java.lang.Object K0(E e5, boolean z4) {
        l3.l<E, a3.o> lVar;
        y3.q0 q0VarD;
        java.lang.Object objI = super.i(e5);
        if (v3.h.i(objI) || v3.h.h(objI)) {
            return objI;
        }
        if (!z4 || (lVar = this.f6558b) == null || (q0VarD = y3.z.d(lVar, e5, null, 2, null)) == null) {
            return v3.h.f6603b.c(a3.o.f122a);
        }
        throw q0VarD;
    }

    public final java.lang.Object L0(E e5) {
        v3.i iVar;
        java.lang.Object obj = v3.c.f6582d;
        v3.i iVar2 = (v3.i) v3.b.f6552h.get(this);
        while (true) {
            long andIncrement = v3.b.f6548d.getAndIncrement(this);
            long j5 = andIncrement & 1152921504606846975L;
            boolean Z = Z(andIncrement);
            int i5 = v3.c.f6580b;
            long j6 = j5 / ((long) i5);
            int i6 = (int) (j5 % ((long) i5));
            if (iVar2.f6893c != j6) {
                v3.i iVarK = K(j6, iVar2);
                if (iVarK != null) {
                    iVar = iVarK;
                } else if (Z) {
                    return v3.h.f6603b.a(P());
                }
            } else {
                iVar = iVar2;
            }
            int iE0 = E0(iVar, i6, e5, j5, obj, Z);
            if (iE0 == 0) {
                iVar.b();
                return v3.h.f6603b.c(a3.o.f122a);
            }
            if (iE0 == 1) {
                return v3.h.f6603b.c(a3.o.f122a);
            }
            if (iE0 == 2) {
                if (Z) {
                    iVar.p();
                    return v3.h.f6603b.a(P());
                }
                t3.c2 c2Var = obj instanceof t3.c2 ? (t3.c2) obj : null;
                if (c2Var != null) {
                    o0(c2Var, iVar, i6);
                }
                G((iVar.f6893c * ((long) i5)) + ((long) i6));
                return v3.h.f6603b.c(a3.o.f122a);
            }
            if (iE0 == 3) {
                throw new java.lang.IllegalStateException("unexpected".toString());
            }
            if (iE0 == 4) {
                if (j5 < O()) {
                    iVar.b();
                }
                return v3.h.f6603b.a(P());
            }
            if (iE0 == 5) {
                iVar.b();
            }
            iVar2 = iVar;
        }
    }

    public final java.lang.Object M0(E e5, boolean z4) {
        return this.f6610s == v3.a.DROP_LATEST ? K0(e5, z4) : L0(e5);
    }

    @Override // v3.b
    public boolean a0() {
        return this.f6610s == v3.a.DROP_OLDEST;
    }

    @Override // v3.b, v3.t
    public java.lang.Object i(E e5) {
        return M0(e5, false);
    }

    @Override // v3.b, v3.t
    public java.lang.Object o(E e5, d3.d<? super a3.o> dVar) {
        return J0(this, e5, dVar);
    }
}
