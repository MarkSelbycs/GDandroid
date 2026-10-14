package k4;

/* JADX INFO: compiled from: MessageDispatcherImpl.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h implements k4.g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final n4.a f4884h = n4.b.d(k4.h.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public transient java.util.List<k4.c> f4888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public transient java.util.List<m4.d> f4889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public transient java.util.List<m4.b> f4890f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public java.util.List<o4.g> f4885a = new java.util.ArrayList(3);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.util.Map<java.lang.Class<? extends r4.b>, java.util.List<k4.s>> f4886b = new java.util.Hashtable(5);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4887c = new java.util.Random().nextInt(2147483645) + 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4891g = true;

    public static void j(k4.k kVar, r4.b bVar, k4.s sVar) {
        if (sVar == null || sVar.b()) {
            return;
        }
        f4884h.i("Sending confirmed PDU " + kVar + " to target " + bVar + " although transport mapping " + sVar + " is not listening for a response");
    }

    @Override // s4.c
    public void a(k4.s sVar, r4.b bVar, java.nio.ByteBuffer byteBuffer, k4.t tVar) {
        t(sVar, bVar, new l4.b(byteBuffer), tVar);
    }

    @Override // k4.g
    public void b(int i5, o4.i iVar) {
        o4.g gVarC = c(i5);
        if (gVarC != null) {
            gVarC.d(iVar);
            return;
        }
        throw new java.lang.IllegalArgumentException("Unsupported message processing model: " + i5);
    }

    @Override // k4.g
    public o4.g c(int i5) {
        try {
            return this.f4885a.get(i5);
        } catch (java.lang.IndexOutOfBoundsException unused) {
            return null;
        }
    }

    @Override // k4.g
    public synchronized void d(k4.c cVar) {
        if (this.f4888d == null) {
            this.f4888d = new java.util.Vector(2);
        }
        if (!this.f4888d.contains(cVar)) {
            this.f4888d.add(cVar);
        }
    }

    @Override // k4.g
    public synchronized void e(k4.s sVar) {
        java.util.List<k4.s> linkedList = this.f4886b.get(sVar.f());
        if (linkedList == null) {
            linkedList = new java.util.LinkedList<>();
            this.f4886b.put(sVar.f(), linkedList);
        }
        linkedList.add(sVar);
    }

    @Override // k4.g
    public synchronized void f(o4.g gVar) {
        while (this.f4885a.size() <= gVar.a()) {
            this.f4885a.add(null);
        }
        if (this.f4885a.get(gVar.a()) == null) {
            this.f4885a.set(gVar.a(), gVar);
        }
    }

    @Override // k4.g
    public o4.i g(k4.s sVar, k4.q qVar, k4.k kVar, boolean z4, o4.j<k4.k> jVar) throws k4.i {
        java.lang.String str;
        o4.i iVar;
        int iB0 = qVar.b0();
        r4.b bVarC0 = qVar.c0();
        int iR0 = qVar.r0();
        int iO = qVar.o();
        int i5 = 1702;
        try {
            try {
                byte[] bArrA0 = qVar.Z().a0();
                o4.g gVarC = c(iB0);
                try {
                    if (gVarC != null) {
                        try {
                            try {
                                if (!gVarC.e(iB0)) {
                                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                                    sb.append("SNMP version ");
                                    sb.append(iB0);
                                    sb.append(" is not supported by message processing model ");
                                    sb.append(iB0);
                                    throw new k4.i(sb.toString(), 1704);
                                }
                                k4.s sVarS = sVar == null ? s(bVarC0) : sVar;
                                if (sVarS == null) {
                                    throw new s4.e("Unsupported address class (transport mapping): " + bVarC0.getClass().getName(), bVarC0.getClass());
                                }
                                if (kVar.V()) {
                                    j(kVar, qVar.c0(), sVarS);
                                }
                                k(bVarC0, iB0, kVar);
                                r4.g gVarI = kVar.I();
                                o4.i iVarM = ((gVarI == null || gVarI.H() == 0) && kVar.M() != -94) ? m() : new o4.i(kVar.I().H());
                                if (kVar.M() != -92) {
                                    kVar.f0(new r4.g(iVarM.c()));
                                }
                                r4.f fVar = new r4.f();
                                k4.s sVar2 = sVarS;
                                try {
                                    k4.t tVar = new k4.t(sVarS, bVarC0, new r4.k(bArrA0), p4.v.b(iO), p4.v.undefined, false, null, qVar instanceof k4.b ? (k4.b) qVar : null);
                                    if (kVar.V()) {
                                        l(qVar, gVarC);
                                    }
                                    l4.c cVar = new l4.c();
                                    try {
                                        int iB = gVarC.b(bVarC0, sVar2.d(), iB0, iR0, bArrA0, iO, kVar, z4, iVarM, fVar, cVar, tVar);
                                        if (iB == 0) {
                                            if (jVar != null) {
                                                iVar = iVarM;
                                                jVar.a(iVar, kVar);
                                            } else {
                                                iVar = iVarM;
                                            }
                                            u(sVar2, bVarC0, cVar.c().array(), tVar);
                                            return iVar;
                                        }
                                        throw new k4.i("Message processing model " + gVarC.a() + " returned error: " + o4.m.b(iB), iB);
                                    } catch (java.io.IOException e5) {
                                        e = e5;
                                        if (f4884h.e()) {
                                            e.printStackTrace();
                                        }
                                        throw new k4.i(e.getMessage(), 1701, e);
                                    } catch (java.lang.IndexOutOfBoundsException e6) {
                                        e = e6;
                                        iB0 = iB0;
                                        str = "Unsupported message processing model: ";
                                        i5 = 1702;
                                        throw new k4.i(str + iB0, i5, e);
                                    } catch (k4.i e7) {
                                        e = e7;
                                        if (f4884h.e()) {
                                            e.printStackTrace();
                                        }
                                        throw e;
                                    }
                                } catch (java.lang.IndexOutOfBoundsException e8) {
                                    e = e8;
                                    iB0 = iB0;
                                    str = "Unsupported message processing model: ";
                                }
                            } catch (java.lang.IndexOutOfBoundsException e9) {
                                e = e9;
                            }
                        } catch (java.lang.IndexOutOfBoundsException e10) {
                            e = e10;
                        }
                        str = "Unsupported message processing model: ";
                        throw new k4.i(str + iB0, i5, e);
                    }
                    iB0 = iB0;
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                    str = "Unsupported message processing model: ";
                    try {
                        sb2.append(str);
                        sb2.append(iB0);
                        i5 = 1702;
                        try {
                            throw new k4.i(sb2.toString(), 1702);
                        } catch (java.lang.IndexOutOfBoundsException e11) {
                            e = e11;
                        }
                    } catch (java.lang.IndexOutOfBoundsException e12) {
                        e = e12;
                        i5 = 1702;
                    }
                } catch (java.lang.IndexOutOfBoundsException e13) {
                    e = e13;
                }
                i5 = 1702;
            } catch (java.lang.IndexOutOfBoundsException e14) {
                e = e14;
            }
        } catch (k4.i e15) {
            e = e15;
        } catch (java.io.IOException e16) {
            e = e16;
        }
        throw new k4.i(str + iB0, i5, e);
    }

    @Override // k4.g
    public int h(int i5, int i6, byte[] bArr, int i7, k4.k kVar, int i8, o4.n nVar, o4.o oVar) throws k4.i {
        try {
            o4.g gVarC = c(i5);
            if (gVarC == null) {
                throw new k4.i("Unsupported message processing model: " + i5, 1702);
            }
            k4.s sVarH = nVar.H();
            if (sVarH == null) {
                sVarH = s(nVar.c0());
            }
            if (sVarH == null) {
                throw new k4.i("Unsupported address class (transport mapping): " + nVar.c0().getClass().getName(), 1703);
            }
            l4.c cVar = new l4.c();
            int iC = gVarC.c(i5, sVarH.d(), i6, bArr, i7, kVar, i8, nVar, oVar, cVar);
            if (iC == 0) {
                u(sVarH, nVar.c0(), cVar.c().array(), nVar.F() instanceof p4.b0 ? ((p4.b0) nVar.F()).a() : null);
            }
            return iC;
        } catch (java.io.IOException e5) {
            throw new k4.i(e5.getMessage(), 1701, e5);
        } catch (java.lang.ArrayIndexOutOfBoundsException e6) {
            throw new k4.i("Unsupported message processing model: " + i5, 1702, e6);
        }
    }

    @Override // k4.g
    public java.util.Collection<k4.s> i() {
        java.util.ArrayList arrayList = new java.util.ArrayList(this.f4886b.size());
        synchronized (this.f4886b) {
            java.util.Iterator<java.util.List<k4.s>> it = this.f4886b.values().iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next());
            }
        }
        return arrayList;
    }

    public void k(r4.b bVar, int i5, k4.k kVar) throws k4.i {
        if (this.f4891g) {
            if ((i5 == 0 || k4.m.n()) && kVar.M() == -91) {
                if (i5 == 0) {
                    f4884h.i("Converting GETBULK PDU to GETNEXT for SNMPv1 target: " + bVar);
                } else {
                    f4884h.g("Converting GETBULK PDU to GETNEXT for target: " + bVar);
                }
                kVar.g0(-95);
                if (kVar instanceof k4.l) {
                    return;
                }
                kVar.d0(0);
                kVar.e0(0);
            }
        }
    }

    public void l(k4.q qVar, o4.g gVar) {
        if ((qVar instanceof k4.u) && (gVar instanceof o4.e)) {
            k4.u uVar = (k4.u) qVar;
            if (uVar.y() == null || uVar.y().length <= 0) {
                return;
            }
            ((o4.e) gVar).h(qVar.c0(), new r4.k(uVar.y()));
        }
    }

    public o4.i m() {
        return new o4.i(r());
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00f8  */
    public void n(k4.s sVar, o4.g gVar, r4.b bVar, l4.b bVar2, k4.t tVar) throws java.io.IOException {
        k4.j jVar = new k4.j();
        r4.g gVar2 = new r4.g();
        r4.g gVar3 = new r4.g();
        r4.k kVar = new r4.k();
        r4.g gVar4 = new r4.g();
        o4.i iVarM = m();
        r4.g gVar5 = new r4.g(sVar.d());
        o4.o oVar = new o4.o();
        o4.h hVar = new o4.h();
        o4.n nVar = new o4.n();
        nVar.h0(sVar);
        nVar.z(bVar);
        hVar.b(nVar);
        int iF = gVar.f(this, bVar, bVar2, tVar, gVar2, gVar3, kVar, gVar4, jVar, iVarM, gVar5, oVar, hVar);
        if (hVar.a() != null) {
            hVar.a().h0(sVar);
        }
        if (iF == 0) {
            k4.d dVar = new k4.d(this, sVar, bVar, gVar2.H(), gVar3.H(), kVar.a0(), gVar4.H(), iVarM, jVar.b(), gVar5.H(), hVar.a());
            m4.c cVar = k4.m.e() != k4.m.b.none ? new m4.c(this, o4.m.F0, bVar, java.lang.System.nanoTime()) : null;
            q(dVar);
            if (cVar != null) {
                cVar.f((java.lang.System.nanoTime() - cVar.c()) / 1000000);
                p(cVar);
                return;
            }
            return;
        }
        if (iF != -1414 && iF != -1412 && iF != -1402 && iF != 1603 && iF != 1403 && iF != 1404 && iF != 1407 && iF != 1408) {
            switch (iF) {
                case 1410:
                case 1411:
                case 1412:
                    o(new m4.a(this, bVar, sVar, iF, bVar2));
                    break;
            }
        } else {
            o(new m4.a(this, bVar, sVar, iF, bVar2));
        }
        n4.a aVar = f4884h;
        if (aVar.a()) {
            aVar.g("Message from " + bVar + " not dispatched, reason: statusInfo=" + oVar + ", status=" + iF);
        }
    }

    public void o(m4.a aVar) {
        java.util.List<m4.b> list = this.f4890f;
        if (list != null) {
            java.util.Iterator<m4.b> it = list.iterator();
            while (it.hasNext()) {
                it.next().f(aVar);
            }
        }
    }

    public void p(m4.c cVar) {
        java.util.List<m4.d> list = this.f4889e;
        if (list != null) {
            java.util.Iterator<m4.d> it = list.iterator();
            while (it.hasNext()) {
                it.next().b(cVar);
            }
        }
    }

    public void q(k4.d dVar) {
        java.util.List<k4.c> list = this.f4888d;
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

    public synchronized int r() {
        int i5;
        i5 = this.f4887c;
        this.f4887c = i5 + 1;
        if (i5 <= 0) {
            this.f4887c = 2;
            i5 = 1;
        }
        return i5;
    }

    public k4.s s(r4.b bVar) {
        java.lang.Class<?> superclass = bVar.getClass();
        do {
            java.util.List<k4.s> list = this.f4886b.get(superclass);
            if (list != null && list.size() > 0) {
                return list.get(0);
            }
            superclass = superclass.getSuperclass();
        } while (superclass != null);
        return null;
    }

    public void t(k4.s sVar, r4.b bVar, l4.b bVar2, k4.t tVar) {
        p(new m4.c(this, o4.m.f5401v));
        if (!bVar2.markSupported()) {
            f4884h.c("Message stream must support marks");
            throw new java.lang.IllegalArgumentException("Message stream must support marks");
        }
        try {
            bVar2.mark(16);
            l4.a.C0066a c0066a = new l4.a.C0066a();
            l4.a.d(bVar2, c0066a, false);
            if (c0066a.a() != 48) {
                f4884h.c("ASN.1 parse error (message is not a sequence)");
                p(new m4.c(this, o4.m.f5409z));
            }
            r4.g gVar = new r4.g();
            gVar.j(bVar2);
            o4.g gVarC = c(gVar.H());
            if (gVarC != null) {
                bVar2.reset();
                n(sVar, gVarC, bVar, bVar2, tVar);
                return;
            }
            f4884h.i("SNMP version " + gVar + " is not supported");
            p(new m4.c(this, o4.m.f5403w));
        } catch (java.io.IOException e5) {
            e5.printStackTrace();
            f4884h.i(e5);
            p(new m4.c(this, o4.m.f5397t));
        } catch (java.lang.Exception e6) {
            n4.a aVar = f4884h;
            aVar.c(e6);
            if (aVar.e()) {
                e6.printStackTrace();
            }
            if (k4.m.m()) {
                throw new java.lang.RuntimeException(e6);
            }
        } catch (java.lang.OutOfMemoryError e7) {
            f4884h.c(e7);
            if (k4.m.m()) {
                throw e7;
            }
        }
    }

    public void u(k4.s sVar, r4.b bVar, byte[] bArr, k4.t tVar) throws java.io.IOException {
        if (sVar != null) {
            if (bVar instanceof r4.f) {
                sVar.c(((r4.f) bVar).c0(), bArr, tVar);
                return;
            } else {
                sVar.c(bVar, bArr, tVar);
                return;
            }
        }
        java.lang.String str = "No transport mapping for address class: " + bVar.getClass().getName() + "=" + bVar;
        f4884h.c(str);
        throw new java.io.IOException(str);
    }
}
