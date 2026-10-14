package f4;

/* JADX INFO: compiled from: StreamAllocation.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c4.a f4271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public c4.c0 f4272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c4.j f4273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final f4.f f4274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f4.c f4276f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4277g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4278h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public h4.h f4279i;

    public g(c4.j jVar, c4.a aVar) {
        this.f4273c = jVar;
        this.f4271a = aVar;
        this.f4274d = new f4.f(aVar, k());
    }

    public void a(f4.c cVar) {
        cVar.f4256l.add(new java.lang.ref.WeakReference(this));
    }

    public synchronized f4.c b() {
        return this.f4276f;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0048  */
    public final void c(boolean z4, boolean z5, boolean z6) {
        f4.c cVar;
        f4.c cVar2;
        synchronized (this.f4273c) {
            cVar = null;
            if (z6) {
                try {
                    this.f4279i = null;
                } catch (java.lang.Throwable th) {
                    throw th;
                }
            }
            if (z5) {
                this.f4277g = true;
            }
            f4.c cVar3 = this.f4276f;
            if (cVar3 != null) {
                if (z4) {
                    cVar3.f4257m = true;
                }
                if (this.f4279i == null && (this.f4277g || cVar3.f4257m)) {
                    j(cVar3);
                    if (this.f4276f.f4256l.isEmpty()) {
                        this.f4276f.f4258n = java.lang.System.nanoTime();
                        if (d4.a.f3963a.d(this.f4273c, this.f4276f)) {
                            cVar2 = this.f4276f;
                        } else {
                            cVar2 = null;
                        }
                    } else {
                        cVar2 = null;
                    }
                    this.f4276f = null;
                    cVar = cVar2;
                }
            }
        }
        if (cVar != null) {
            d4.c.d(cVar.o());
        }
    }

    public final f4.c d(int i5, int i6, int i7, boolean z4) throws java.io.IOException {
        synchronized (this.f4273c) {
            if (this.f4277g) {
                throw new java.lang.IllegalStateException("released");
            }
            if (this.f4279i != null) {
                throw new java.lang.IllegalStateException("stream != null");
            }
            if (this.f4278h) {
                throw new java.io.IOException("Canceled");
            }
            f4.c cVar = this.f4276f;
            if (cVar != null && !cVar.f4257m) {
                return cVar;
            }
            f4.c cVarE = d4.a.f3963a.e(this.f4273c, this.f4271a, this);
            if (cVarE != null) {
                this.f4276f = cVarE;
                return cVarE;
            }
            c4.c0 c0VarG = this.f4272b;
            if (c0VarG == null) {
                c0VarG = this.f4274d.g();
                synchronized (this.f4273c) {
                    this.f4272b = c0VarG;
                    this.f4275e = 0;
                }
            }
            f4.c cVar2 = new f4.c(c0VarG);
            a(cVar2);
            synchronized (this.f4273c) {
                d4.a.f3963a.f(this.f4273c, cVar2);
                this.f4276f = cVar2;
                if (this.f4278h) {
                    throw new java.io.IOException("Canceled");
                }
            }
            cVar2.f(i5, i6, i7, this.f4271a.b(), z4);
            k().a(cVar2.a());
            return cVar2;
        }
    }

    public final f4.c e(int i5, int i6, int i7, boolean z4, boolean z5) throws java.io.IOException {
        while (true) {
            f4.c cVarD = d(i5, i6, i7, z4);
            synchronized (this.f4273c) {
                if (cVarD.f4252h == 0) {
                    return cVarD;
                }
                if (cVarD.m(z5)) {
                    return cVarD;
                }
                h();
            }
        }
    }

    public boolean f() {
        return this.f4272b != null || this.f4274d.c();
    }

    public h4.h g(c4.v vVar, boolean z4) {
        h4.h cVar;
        int iF = vVar.f();
        int iF2 = vVar.F();
        int iM = vVar.M();
        try {
            f4.c cVarE = e(iF, iF2, iM, vVar.G(), z4);
            if (cVarE.f4251g != null) {
                cVar = new h4.d(vVar, this, cVarE.f4251g);
            } else {
                cVarE.o().setSoTimeout(iF2);
                java.util.concurrent.TimeUnit timeUnit = java.util.concurrent.TimeUnit.MILLISECONDS;
                cVarE.f4253i.timeout().timeout(iF2, timeUnit);
                cVarE.f4254j.timeout().timeout(iM, timeUnit);
                cVar = new h4.c(vVar, this, cVarE.f4253i, cVarE.f4254j);
            }
            synchronized (this.f4273c) {
                this.f4279i = cVar;
            }
            return cVar;
        } catch (java.io.IOException e5) {
            throw new f4.e(e5);
        }
    }

    public void h() {
        c(true, false, false);
    }

    public void i() {
        c(false, true, false);
    }

    public final void j(f4.c cVar) {
        int size = cVar.f4256l.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (cVar.f4256l.get(i5).get() == this) {
                cVar.f4256l.remove(i5);
                return;
            }
        }
        throw new java.lang.IllegalStateException();
    }

    public final f4.d k() {
        return d4.a.f3963a.g(this.f4273c);
    }

    public h4.h l() {
        h4.h hVar;
        synchronized (this.f4273c) {
            hVar = this.f4279i;
        }
        return hVar;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x003f  */
    public void m(java.io.IOException iOException) {
        boolean z4;
        synchronized (this.f4273c) {
            if (iOException instanceof g4.p) {
                g4.a aVar = ((g4.p) iOException).f4536a;
                g4.a aVar2 = g4.a.REFUSED_STREAM;
                if (aVar == aVar2) {
                    this.f4275e++;
                }
                if (aVar != aVar2 || this.f4275e > 1) {
                    this.f4272b = null;
                    z4 = true;
                } else {
                    z4 = false;
                }
            } else {
                f4.c cVar = this.f4276f;
                if (cVar == null || cVar.n()) {
                    z4 = false;
                } else {
                    if (this.f4276f.f4252h == 0) {
                        c4.c0 c0Var = this.f4272b;
                        if (c0Var != null && iOException != null) {
                            this.f4274d.a(c0Var, iOException);
                        }
                        this.f4272b = null;
                    }
                    z4 = true;
                }
            }
        }
        c(z4, false, true);
    }

    public void n(boolean z4, h4.h hVar) {
        synchronized (this.f4273c) {
            if (hVar != null) {
                if (hVar == this.f4279i) {
                    if (!z4) {
                        this.f4276f.f4252h++;
                    }
                }
            }
            throw new java.lang.IllegalStateException("expected " + this.f4279i + " but was " + hVar);
        }
        c(z4, false, true);
    }

    public java.lang.String toString() {
        return this.f4271a.toString();
    }
}
