package k4;

/* JADX INFO: compiled from: Snmp.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class p implements k4.c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final n4.a f4928k = n4.b.d(k4.p.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k4.g f4929a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final java.util.Map<o4.i, k4.p.a> f4930b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final java.util.Map<java.lang.Object, o4.i> f4931c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public t4.a f4932d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.util.List<k4.c> f4933e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public k4.r f4934f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public k4.p.b f4935g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public java.util.Map<r4.b, r4.k> f4936h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4937i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public o4.a f4938j;

    /* JADX INFO: compiled from: Snmp.java */
    public interface b {
        void a(o4.i iVar, k4.d dVar);
    }

    /* JADX INFO: compiled from: Snmp.java */
    public class c implements k4.p.b {
        public c() {
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0059  */
        @Override // k4.p.b
        public void a(o4.i iVar, k4.d dVar) {
            boolean zCancel;
            k4.k kVarB = dVar.b();
            k4.p.f4928k.f("Searching pending request with handle" + iVar);
            k4.p.a aVar = (k4.p.a) k4.p.this.f4930b.get(iVar);
            r4.v vVarB = b(dVar, kVarB, aVar);
            if (vVarB == null) {
                return;
            }
            r4.j jVarU = vVarB.u();
            boolean z4 = false;
            if (aVar.f4946h < aVar.f4947i) {
                int i5 = aVar.f4946h;
                if (i5 != 0) {
                    if (i5 == 1 && o4.m.f5383m.equals(jVarU)) {
                        z4 = true;
                    }
                } else if (o4.m.f5387o.equals(jVarU)) {
                    z4 = true;
                } else if (o4.m.f5383m.equals(jVarU)) {
                    k4.p.a.k(aVar);
                    z4 = true;
                }
            }
            if (z4) {
                k4.p.f4928k.f("Send new request after report.");
                k4.p.a.k(aVar);
                try {
                    aVar.f4939a = k4.p.this.B(aVar.f4943e, aVar.f4944f, dVar.f(), null);
                    return;
                } catch (java.io.IOException e5) {
                    k4.p.f4928k.c("Failed to send message to " + aVar.f4944f + ": " + e5.getMessage());
                    return;
                }
            }
            m4.f fVar = aVar.f4941c;
            k4.k kVar = aVar.f4943e;
            java.lang.Object obj = aVar.f4942d;
            synchronized (aVar) {
                zCancel = aVar.cancel();
            }
            k4.p.this.f4930b.remove(iVar);
            if (zCancel && fVar != null) {
                fVar.c(new m4.e(k4.p.this, dVar.e(), kVar, kVarB, obj));
                return;
            }
            if (k4.p.f4928k.a()) {
                k4.p.f4928k.g("Received late report from " + dVar.e() + " with request ID " + kVarB.I());
            }
        }

        public r4.v b(k4.d dVar, k4.k kVar, k4.p.a aVar) {
            if (aVar == null) {
                k4.p.f4928k.i("Unmatched report PDU received from " + dVar.e());
                return null;
            }
            if (kVar.h0() == 0) {
                k4.p.f4928k.c("Illegal report PDU received from " + dVar.e() + " missing report variable binding");
                return null;
            }
            r4.v vVarX = kVar.x(0);
            if (vVarX == null) {
                k4.p.f4928k.c("Received illegal REPORT PDU from " + dVar.e());
                return null;
            }
            if (dVar.r0() != aVar.f4944f.r0()) {
                k4.p.f4928k.i("RFC3412 §7.2.11.b: Received REPORT PDU with different security model than cached one: " + dVar);
                return null;
            }
            if (dVar.o() != 1 || k4.m.d() == k4.m.a.noAuthNoPrivIfNeeded || dVar.o() == aVar.f4944f.o() || o4.m.f5385n.equals(vVarX.u()) || o4.m.f5387o.equals(vVarX.u())) {
                return vVarX;
            }
            k4.p.f4928k.i("RFC3412 §7.2.11.b:Received REPORT PDU with security level noAuthNoPriv from '" + dVar + "'. Ignoring it, because report strategy is set to " + k4.m.d());
            return null;
        }
    }

    /* JADX INFO: compiled from: Snmp.java */
    public static class d implements m4.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public m4.e f4957a = null;

        @Override // m4.f
        public synchronized void c(m4.e eVar) {
            this.f4957a = eVar;
            notify();
        }

        public m4.e i() {
            return this.f4957a;
        }
    }

    public p() {
        this.f4930b = new java.util.Hashtable(50);
        this.f4931c = new java.util.Hashtable(50);
        this.f4934f = new k4.f();
        this.f4935g = new k4.p.c();
        this.f4936h = java.util.Collections.synchronizedMap(new java.util.HashMap());
        this.f4929a = new k4.h();
        if (k4.m.e() != k4.m.b.none) {
            this.f4938j = o4.a.b();
        }
    }

    public final m4.e A(k4.k kVar, k4.q qVar, k4.s sVar, int i5) throws java.io.IOException {
        k4.p.a aVarRemove;
        k4.p.a aVarRemove2;
        if (!kVar.V()) {
            B(kVar, qVar, sVar, null);
            return null;
        }
        if (this.f4932d == null) {
            q();
        }
        k4.p.d dVar = new k4.p.d();
        synchronized (dVar) {
            k4.p.a aVar = new k4.p.a(dVar, qVar, kVar, qVar, sVar);
            aVar.f4947i = i5;
            o4.i iVarB = B(aVar.f4943e, qVar, sVar, aVar);
            long jNanoTime = java.lang.System.nanoTime() + (this.f4934f.a(qVar.s(), qVar.n()) * 1000000);
            while (dVar.i() == null) {
                try {
                    try {
                        long jNanoTime2 = (jNanoTime - java.lang.System.nanoTime()) / 1000000;
                        if (jNanoTime2 <= 0) {
                            break;
                        }
                        dVar.wait(jNanoTime2);
                    } catch (java.lang.InterruptedException e5) {
                        f4928k.i(e5);
                        aVar.x();
                        aVar.cancel();
                        aVarRemove2 = this.f4930b.remove(iVarB);
                        if (aVarRemove2 != null) {
                            aVarRemove2.x();
                            aVarRemove2.cancel();
                        }
                        java.lang.Thread.currentThread().interrupt();
                        if (!aVar.f4948o && (aVarRemove2 = this.f4930b.remove(iVarB)) != null) {
                            aVarRemove2.x();
                        }
                    }
                } catch (java.lang.Throwable th) {
                    if (!aVar.f4948o && (aVarRemove = this.f4930b.remove(iVarB)) != null) {
                        aVarRemove.x();
                        aVarRemove.cancel();
                    }
                    throw th;
                }
            }
            aVarRemove2 = this.f4930b.remove(iVarB);
            n4.a aVar2 = f4928k;
            if (aVar2.e()) {
                aVar2.f("Removed pending request with handle: " + iVarB);
            }
            aVar.x();
            aVar.cancel();
            if (!aVar.f4948o && (aVarRemove2 = this.f4930b.remove(iVarB)) != null) {
                aVarRemove2.x();
                aVarRemove2.cancel();
            }
        }
        if (aVarRemove2 != null) {
            aVarRemove2.x();
            aVarRemove2.cancel();
        }
        if (dVar.i() == null) {
            dVar.f4957a = new m4.e(this, null, kVar, null, null);
        }
        return dVar.f4957a;
    }

    public o4.i B(k4.k kVar, k4.q qVar, k4.s sVar, o4.j<k4.k> jVar) throws java.io.IOException {
        if (sVar == null) {
            sVar = w(qVar);
        }
        return this.f4929a.g(sVar, qVar, kVar, true, jVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // k4.c
    public void d(k4.d dVar) {
        k4.p.a aVar;
        m4.f fVar;
        o4.i iVarC = dVar.c();
        if (k4.m.e() == k4.m.b.extended && (iVarC instanceof o4.k)) {
            o4.k kVar = (o4.k) iVarC;
            this.f4938j.a(new m4.c(this, o4.m.f5408y0, kVar.d()));
            this.f4938j.a(new m4.c(this, o4.m.C0, dVar.e(), kVar.d()));
        }
        k4.k kVarB = dVar.b();
        if (kVarB.M() == -88) {
            dVar.D(true);
            this.f4935g.a(iVarC, dVar);
            return;
        }
        if (kVarB.M() != -94) {
            n4.a aVar2 = f4928k;
            if (aVar2.e()) {
                aVar2.f("Fire process PDU event: " + dVar.toString());
            }
            r(dVar);
            return;
        }
        dVar.D(true);
        n4.a aVar3 = f4928k;
        if (aVar3.e()) {
            aVar3.f("Looking up pending request with handle " + iVarC);
        }
        synchronized (this.f4930b) {
            aVar = this.f4930b.get(iVarC);
            if (aVar != null) {
                aVar.w();
            }
        }
        if (aVar != null) {
            if (x(aVar, kVarB) || (fVar = aVar.f4941c) == null) {
                return;
            }
            fVar.c(new m4.e(this, dVar.e(), aVar.f4943e, kVarB, aVar.f4942d));
            return;
        }
        if (aVar3.d()) {
            aVar3.i("Received response that cannot be matched to any outstanding request, address=" + dVar.e() + ", requestID=" + kVarB.I());
        }
    }

    public void o(k4.s<? extends r4.b> sVar) {
        this.f4929a.e(sVar);
        sVar.e(this.f4929a);
    }

    public void p() throws java.io.IOException {
        java.util.ArrayList<k4.p.a> arrayList;
        java.util.Iterator<k4.s> it = this.f4929a.i().iterator();
        while (it.hasNext()) {
            it.next().close();
        }
        t4.a aVar = this.f4932d;
        this.f4932d = null;
        if (aVar != null) {
            aVar.cancel();
        }
        synchronized (this.f4930b) {
            arrayList = new java.util.ArrayList(this.f4930b.values());
        }
        for (k4.p.a aVar2 : arrayList) {
            aVar2.cancel();
            m4.e eVar = new m4.e(this, null, aVar2.f4943e, null, aVar2.f4942d, new java.lang.InterruptedException("Snmp session has been closed"));
            m4.f fVar = aVar2.f4941c;
            if (fVar != null) {
                fVar.c(eVar);
            }
        }
        this.f4930b.clear();
        this.f4931c.clear();
    }

    public final synchronized void q() {
        if (this.f4932d == null) {
            this.f4932d = k4.m.h().a();
        }
    }

    public void r(k4.d dVar) {
        java.util.List<k4.c> list = this.f4933e;
        if (list != null) {
            java.util.Iterator<k4.c> it = list.iterator();
            while (it.hasNext()) {
                it.next().d(dVar);
                if (dVar.h()) {
                    return;
                }
            }
        }
    }

    public o4.a s() {
        return this.f4938j;
    }

    public void t(k4.k kVar, k4.k kVar2, r4.b bVar) {
        r4.u uVarT = kVar.T(o4.m.f5393r);
        if ((uVarT instanceof r4.k) && (kVar2 instanceof k4.n)) {
            ((k4.n) kVar2).l0((r4.k) uVarT);
            n4.a aVar = f4928k;
            if (aVar.a()) {
                aVar.g("Discovered contextEngineID '" + uVarT + "' by RFC 5343 for " + bVar);
            }
        }
    }

    public final void u() {
        this.f4929a.d(this);
        this.f4929a.f(new o4.d());
        this.f4929a.f(new o4.c());
        this.f4929a.f(new o4.e());
        p4.z.h().c();
    }

    public final boolean v(k4.k kVar) {
        if (!(kVar instanceof k4.n)) {
            return false;
        }
        k4.n nVar = (k4.n) kVar;
        return nVar.j0() == null || nVar.j0().e0() == 0;
    }

    public k4.s w(k4.q qVar) {
        java.util.List<k4.s<? extends r4.b>> listI = qVar.i();
        if (listI == null) {
            return null;
        }
        for (k4.s<? extends r4.b> sVar : listI) {
            if (sVar.f().isInstance(qVar.c0())) {
                return sVar;
            }
        }
        return null;
    }

    public boolean x(k4.p.a aVar, k4.k kVar) {
        if (!aVar.y()) {
            return false;
        }
        aVar.f4949p = false;
        synchronized (this.f4930b) {
            this.f4930b.remove(aVar.f4939a);
            o4.i iVar = aVar.f4939a;
            aVar.f4939a = null;
            t(kVar, aVar.f4943e, aVar.f4944f.c0());
            try {
                B(aVar.f4943e, aVar.f4944f, aVar.f4945g, aVar);
            } catch (java.io.IOException e5) {
                f4928k.h("IOException while resending request after RFC 5343 context engine ID discovery: " + e5.getMessage(), e5);
            }
            n4.a aVar2 = f4928k;
            if (aVar2.e()) {
                aVar2.f("Releasing PDU handle " + iVar);
            }
        }
        return true;
    }

    public m4.e y(k4.k kVar, k4.q qVar) throws java.io.IOException {
        return z(kVar, qVar, null);
    }

    public m4.e z(k4.k kVar, k4.q qVar, k4.s sVar) throws java.io.IOException {
        return A(kVar, qVar, sVar, 2);
    }

    public p(k4.s<? extends r4.b> sVar) {
        this();
        u();
        if (sVar != null) {
            o(sVar);
        }
    }

    /* JADX INFO: compiled from: Snmp.java */
    public class a extends java.util.TimerTask implements o4.j<k4.k>, java.lang.Cloneable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public o4.i f4939a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4940b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public m4.f f4941c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public java.lang.Object f4942d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public k4.k f4943e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public k4.q f4944f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public k4.s f4945g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f4946h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f4947i;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public volatile boolean f4948o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public volatile boolean f4949p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public volatile boolean f4950q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public volatile boolean f4951r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public m4.c f4952s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public m4.c f4953t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public k4.k f4954u;

        public a(m4.f fVar, java.lang.Object obj, k4.k kVar, k4.q qVar, k4.s sVar) {
            this.f4946h = 0;
            this.f4947i = 2;
            this.f4948o = false;
            this.f4949p = false;
            this.f4950q = false;
            this.f4951r = false;
            this.f4942d = obj;
            this.f4941c = fVar;
            this.f4940b = qVar.s();
            this.f4943e = kVar;
            this.f4944f = qVar.K();
            this.f4945g = sVar;
            if (k4.m.e() != k4.m.b.none) {
                this.f4952s = new m4.c(this, o4.m.f5406x0, java.lang.System.nanoTime());
                if (k4.m.e() == k4.m.b.extended) {
                    this.f4953t = new m4.c(k4.p.this, o4.m.B0, qVar.c0(), java.lang.System.nanoTime());
                }
            }
            if (k4.p.this.v(kVar)) {
                r4.k kVar2 = (r4.k) k4.p.this.f4936h.get(qVar.c0());
                if (kVar2 != null) {
                    ((k4.n) kVar).l0(kVar2);
                } else {
                    if (k4.p.this.f4937i) {
                        return;
                    }
                    m();
                }
            }
        }

        public static /* synthetic */ int k(k4.p.a aVar) {
            int i5 = aVar.f4946h;
            aVar.f4946h = i5 + 1;
            return i5;
        }

        @Override // java.util.TimerTask
        public boolean cancel() {
            o4.a aVarS;
            this.f4951r = true;
            boolean zCancel = super.cancel();
            k4.q qVar = this.f4944f;
            if (this.f4952s != null && !t() && (aVarS = k4.p.this.s()) != null) {
                aVarS.a(new m4.c(k4.p.this, o4.m.f5402v0));
                if (k4.m.e() == k4.m.b.extended && qVar != null) {
                    aVarS.a(new m4.c(k4.p.this, o4.m.f5410z0, qVar.c0(), 1L));
                }
            }
            if (!this.f4950q) {
                this.f4939a = null;
                this.f4943e = null;
                this.f4944f = null;
                this.f4945g = null;
                this.f4941c = null;
                this.f4942d = null;
            }
            return zCancel;
        }

        public java.lang.Object clone() throws java.lang.CloneNotSupportedException {
            return super.clone();
        }

        public final void m() {
            p4.w wVarQ;
            o4.g gVarC = k4.p.this.f4929a.c(this.f4944f.b0());
            if (gVarC instanceof o4.e) {
                k4.q qVar = this.f4944f;
                if (!(qVar instanceof k4.o) || (wVarQ = ((o4.e) gVarC).q(((k4.o) qVar).r0())) == null || wVarQ.f()) {
                    return;
                }
                if (k4.p.f4928k.a()) {
                    k4.p.f4928k.g("Performing RFC 5343 contextEngineID discovery on " + this.f4944f);
                }
                k4.n nVar = new k4.n();
                nVar.l0(o4.e.f5334l);
                nVar.h(new r4.v(o4.m.f5393r));
                p(nVar);
            }
        }

        public void p(k4.k kVar) {
            this.f4954u = this.f4943e;
            this.f4943e = kVar;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public synchronized void run() {
            o4.a aVarS;
            o4.i iVar = this.f4939a;
            k4.k kVar = this.f4943e;
            k4.q qVar = this.f4944f;
            k4.s sVar = this.f4945g;
            m4.f fVar = this.f4941c;
            java.lang.Object obj = this.f4942d;
            if (iVar == null || kVar == null || qVar == null || fVar == null) {
                if (k4.p.f4928k.e()) {
                    k4.p.f4928k.f("PendingRequest canceled key=" + iVar + ", pdu=" + kVar + ", target=" + qVar + ", transport=" + sVar + ", listener=" + fVar);
                }
                return;
            }
            try {
                try {
                    synchronized (k4.p.this.f4930b) {
                        this.f4950q = (this.f4948o || this.f4940b <= 0 || this.f4949p) ? false : true;
                    }
                    if (this.f4950q) {
                        try {
                            k4.p.this.B(kVar, qVar, sVar, k4.p.this.new a(this));
                            this.f4950q = false;
                            if (this.f4952s != null && (aVarS = k4.p.this.s()) != null) {
                                aVarS.a(new m4.c(k4.p.this, o4.m.f5404w0));
                                if (k4.m.e() == k4.m.b.extended) {
                                    aVarS.a(new m4.c(k4.p.this, o4.m.A0, qVar.c0(), 1L));
                                }
                            }
                        } catch (java.io.IOException e5) {
                            m4.f fVar2 = this.f4941c;
                            this.f4948o = true;
                            k4.p.f4928k.c("Failed to send SNMP message to " + qVar + ": " + e5.getMessage());
                            k4.p.this.f4929a.b(qVar.b0(), iVar);
                            if (fVar2 != null) {
                                this.f4941c.c(new m4.e(k4.p.this, null, kVar, null, obj, e5));
                            }
                        }
                    } else if (this.f4948o) {
                        k4.p.this.f4930b.remove(iVar);
                    } else {
                        this.f4948o = true;
                        k4.p.this.f4930b.remove(iVar);
                        if (!this.f4951r) {
                            if (k4.p.f4928k.e()) {
                                k4.p.f4928k.f("Request timed out: " + iVar.c());
                            }
                            k4.p.this.f4929a.b(qVar.b0(), iVar);
                            fVar.c(new m4.e(k4.p.this, null, kVar, null, obj));
                        }
                    }
                } catch (java.lang.Error e6) {
                    k4.p.f4928k.b("Failed to process pending request " + iVar + " because " + e6.getMessage(), e6);
                    throw e6;
                }
            } catch (java.lang.RuntimeException e7) {
                k4.p.f4928k.h("Failed to process pending request " + iVar + " because " + e7.getMessage(), e7);
                throw e7;
            }
        }

        public boolean t() {
            return this.f4949p;
        }

        @Override // o4.j
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public synchronized void a(o4.i iVar, k4.k kVar) {
            if (this.f4939a == null) {
                this.f4939a = iVar;
                k4.q qVar = this.f4944f;
                if (qVar != null && !this.f4951r) {
                    k4.p.this.f4930b.put(iVar, this);
                    v(iVar);
                    if (k4.p.f4928k.e()) {
                        n4.a aVar = k4.p.f4928k;
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        sb.append("Running pending ");
                        sb.append(this.f4941c instanceof k4.p.d ? "sync" : "async");
                        sb.append(" request with handle ");
                        sb.append(iVar);
                        sb.append(" and retry count left ");
                        sb.append(this.f4940b);
                        aVar.f(sb.toString());
                    }
                    long jB = k4.p.this.f4934f.b(qVar.s() - this.f4940b, qVar.s(), qVar.n());
                    if (this.f4948o || this.f4949p || this.f4951r) {
                        k4.p.this.f4930b.remove(iVar);
                    } else {
                        try {
                            t4.a aVar2 = k4.p.this.f4932d;
                            if (aVar2 != null) {
                                aVar2.a(this, jB);
                            }
                        } catch (java.lang.IllegalStateException unused) {
                        }
                    }
                }
            }
        }

        public void v(o4.i iVar) {
        }

        public void w() {
            o4.a aVarS;
            this.f4949p = true;
            if (this.f4952s == null || (aVarS = k4.p.this.s()) == null) {
                return;
            }
            long jNanoTime = (java.lang.System.nanoTime() - this.f4952s.c()) / 1000000;
            this.f4952s.f(jNanoTime);
            aVarS.a(this.f4952s);
            m4.c cVar = this.f4953t;
            if (cVar != null) {
                cVar.f(jNanoTime);
                aVarS.a(this.f4953t);
            }
        }

        public boolean x() {
            boolean z4 = this.f4948o;
            this.f4948o = true;
            return z4;
        }

        public boolean y() {
            k4.k kVar = this.f4954u;
            if (kVar == null) {
                return false;
            }
            this.f4943e = kVar;
            this.f4954u = null;
            return true;
        }

        public a(k4.p.a aVar) {
            this.f4946h = 0;
            this.f4947i = 2;
            this.f4948o = false;
            this.f4949p = false;
            this.f4950q = false;
            this.f4951r = false;
            this.f4942d = aVar.f4942d;
            this.f4941c = aVar.f4941c;
            this.f4940b = aVar.f4940b - 1;
            this.f4943e = aVar.f4943e;
            this.f4944f = aVar.f4944f;
            this.f4946h = aVar.f4946h;
            this.f4949p = aVar.f4949p;
            this.f4945g = aVar.f4945g;
            this.f4954u = aVar.f4954u;
            this.f4952s = aVar.f4952s;
        }
    }
}
