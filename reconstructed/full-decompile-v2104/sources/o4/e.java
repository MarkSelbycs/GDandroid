package o4;

/* JADX INFO: compiled from: MPv3.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e implements o4.g, o4.b {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final r4.k f5334l = r4.k.T("80:00:00:00:06");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f5335m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f5336n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final n4.a f5337o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p4.z f5338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p4.x f5339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public o4.e.b f5340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.util.Map<r4.b, r4.k> f5341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f5343f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5344g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public o4.a f5345h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public o4.e.c f5346i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public transient java.util.List<m4.h> f5347j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public t4.e f5348k;

    /* JADX INFO: compiled from: MPv3.java */
    public class a implements t4.e {
        public a() {
        }

        @Override // t4.e
        public k4.k a(o4.g gVar) {
            return new k4.n();
        }
    }

    /* JADX INFO: compiled from: MPv3.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public java.util.Map<o4.i, o4.n<?>> f5350a = new java.util.WeakHashMap(25);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public java.util.Map<o4.f, java.lang.ref.WeakReference<o4.i>> f5351b = new java.util.WeakHashMap(25);

        public synchronized int a(o4.n<?> nVar) {
            if (o4.e.f5337o.e()) {
                o4.e.f5337o.f("Adding cache entry: " + nVar);
            }
            o4.n<?> nVar2 = this.f5350a.get(nVar.u());
            if (nVar2 != null) {
                nVar2.X(nVar.u());
                if (nVar2.equals(nVar)) {
                    if (o4.e.f5337o.e()) {
                        o4.e.f5337o.f("Doubled message: " + nVar);
                    }
                    nVar2.X(null);
                    return -1404;
                }
                if (nVar2.e(nVar)) {
                    if (o4.e.f5337o.e()) {
                        o4.e.f5337o.f("Adding previous message IDs " + nVar2.j() + " to new entry " + nVar);
                    }
                    nVar.b(nVar2.j());
                } else if (o4.e.f5337o.e()) {
                    o4.e.f5337o.f("New entry does not match existing, although request ID is the same " + nVar + " != " + nVar2);
                }
                nVar2.X(null);
            }
            o4.i iVarU = nVar.u();
            nVar.X(null);
            this.f5350a.put(iVarU, nVar);
            java.lang.ref.WeakReference<o4.i> weakReference = new java.lang.ref.WeakReference<>(iVarU);
            this.f5351b.put(nVar.q(), weakReference);
            if (nVar.j() != null) {
                java.util.Iterator<o4.f> it = nVar.j().iterator();
                while (it.hasNext()) {
                    this.f5351b.put(it.next(), weakReference);
                }
            }
            return 0;
        }

        public synchronized boolean b(o4.i iVar) {
            o4.n<?> nVarRemove;
            nVarRemove = this.f5350a.remove(iVar);
            if (nVarRemove != null) {
                this.f5351b.remove(nVarRemove.q());
                if (nVarRemove.j() != null) {
                    java.util.Iterator<o4.f> it = nVarRemove.j().iterator();
                    while (it.hasNext()) {
                        this.f5351b.remove(it.next());
                    }
                }
                if (o4.e.f5337o.e()) {
                    o4.e.f5337o.f("Removed cache entry: " + nVarRemove);
                }
            }
            return nVarRemove != null;
        }

        public synchronized o4.n<?> c(o4.f fVar) {
            o4.i iVar;
            o4.n<?> nVar;
            java.lang.ref.WeakReference<o4.i> weakReference = this.f5351b.get(fVar);
            if (weakReference == null || (iVar = weakReference.get()) == null || (nVar = this.f5350a.get(iVar)) == null || !nVar.M(fVar)) {
                return null;
            }
            b(iVar);
            this.f5350a.remove(iVar);
            nVar.X(iVar);
            return nVar;
        }
    }

    /* JADX INFO: compiled from: MPv3.java */
    public interface c {
        java.util.Map<r4.b, r4.k> a(o4.b bVar);
    }

    /* JADX INFO: compiled from: MPv3.java */
    public static class d implements l4.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public r4.g f5352a = new r4.g(0);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public r4.g f5353b = new r4.g(Integer.MAX_VALUE);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public r4.k f5354c = new r4.k(new byte[1]);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public r4.g f5355d = new r4.g(0);

        public int a() {
            return this.f5352a.f() + this.f5353b.f() + this.f5354c.f() + this.f5355d.f();
        }

        public int d() {
            return this.f5354c.a0()[0] & 255;
        }

        @Override // l4.d
        public void e(java.io.OutputStream outputStream) throws java.io.IOException {
            l4.a.m(outputStream, 48, a());
            this.f5352a.e(outputStream);
            this.f5353b.e(outputStream);
            this.f5354c.e(outputStream);
            this.f5355d.e(outputStream);
        }

        @Override // l4.d
        public int f() {
            int iA = a();
            return iA + l4.a.u(iA) + 1;
        }

        public int g() {
            return this.f5352a.H();
        }

        public int h() {
            return this.f5353b.H();
        }

        public int i() {
            return this.f5355d.H();
        }

        @Override // l4.d
        public void j(l4.b bVar) throws java.io.IOException {
            l4.a.C0066a c0066a = new l4.a.C0066a();
            int iC = l4.a.c(bVar, c0066a);
            if (c0066a.a() != 48) {
                throw new java.io.IOException("Unexpected sequence header type: " + ((int) c0066a.a()));
            }
            long jE = bVar.e();
            this.f5352a.j(bVar);
            this.f5353b.j(bVar);
            if (this.f5353b.H() < 484) {
                throw new java.io.IOException("Invalid msgMaxSize: " + this.f5353b);
            }
            this.f5354c.j(bVar);
            if (this.f5354c.e0() != 1) {
                throw new java.io.IOException("Message flags length != 1: " + this.f5354c.e0());
            }
            this.f5355d.j(bVar);
            if (o4.e.f5337o.e()) {
                o4.e.f5337o.f("SNMPv3 header decoded: msgId=" + this.f5352a + ", msgMaxSize=" + this.f5353b + ", msgFlags=" + this.f5354c.h0() + ", secModel=" + this.f5355d);
            }
            l4.a.b(iC, (int) (bVar.e() - jE), this);
        }

        public void k(int i5) {
            this.f5354c.a0()[0] = (byte) i5;
        }

        public void l(int i5) {
            this.f5352a.I(i5);
        }

        public void m(int i5) {
            this.f5353b.I(i5);
        }

        public void n(int i5) {
            this.f5355d.I(i5);
        }
    }

    /* JADX INFO: renamed from: o4.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MPv3.java */
    public static class C0068e implements o4.e.c {
        public C0068e() {
        }

        public /* synthetic */ C0068e(o4.e.a aVar) {
            this();
        }

        @Override // o4.e.c
        public java.util.Map<r4.b, r4.k> a(o4.b bVar) {
            return java.util.Collections.synchronizedMap(new java.util.HashMap());
        }
    }

    static {
        int iF = new r4.k("\u0000").f() + (new r4.g(Integer.MAX_VALUE).f() * 3);
        f5335m = iF;
        f5336n = iF + l4.a.u(iF) + 1;
        f5337o = n4.b.d(o4.e.class);
    }

    public e() {
        this(j(), null);
    }

    public static byte[] j() {
        int iA = k4.m.a();
        byte[] bArr = {(byte) (((iA >> 24) & 255) | com.alibaba.fastjson.asm.Opcodes.IOR), (byte) ((iA >> 16) & 255), (byte) ((iA >> 8) & 255), (byte) (iA & 255), 2};
        r4.k kVar = new r4.k();
        try {
            byte[] address = java.net.InetAddress.getLocalHost().getAddress();
            if (address.length == 4) {
                bArr[4] = 1;
            }
            kVar.f0(address);
        } catch (java.net.UnknownHostException unused) {
            f5337o.f("Local host cannot be determined for creation of local engine ID");
            bArr[4] = 4;
            kVar.f0("SNMP4J".getBytes());
        }
        r4.k kVar2 = new r4.k(bArr);
        byte[] bArr2 = new byte[4];
        new java.util.Random(java.lang.System.nanoTime()).nextBytes(bArr2);
        kVar2.H(kVar);
        kVar2.I(bArr2);
        return kVar2.a0();
    }

    public static byte[] k(r4.k kVar) {
        int iA = k4.m.a();
        r4.k kVar2 = new r4.k(new byte[]{(byte) (((iA >> 24) & 255) | com.alibaba.fastjson.asm.Opcodes.IOR), (byte) ((iA >> 16) & 255), (byte) ((iA >> 8) & 255), (byte) (iA & 255), 4});
        kVar2.H(kVar);
        return kVar2.a0();
    }

    public static int r(int i5) {
        return ((i5 & 65535) << 16) | (new java.util.Random().nextInt(Integer.MAX_VALUE) & 65535);
    }

    @Override // o4.g
    public int a() {
        return 3;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x012f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0132 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x0135  */
    /* JADX WARN: Code duplicated, block: B:60:0x0137  */
    /* JADX WARN: Code duplicated, block: B:63:0x013e  */
    /* JADX WARN: Code duplicated, block: B:64:0x0143  */
    @Override // o4.g
    public int b(r4.b bVar, int i5, int i6, int i7, byte[] bArr, int i8, k4.k kVar, boolean z4, o4.i iVar, r4.b bVar2, l4.c cVar, k4.t tVar) throws java.io.IOException {
        byte[] bArrA0;
        int i9;
        byte[] bArr2;
        int i10;
        int iP;
        int iB;
        if (!(kVar instanceof k4.n)) {
            throw new java.lang.IllegalArgumentException("MPv3 only accepts ScopedPDU instances as pdu parameter");
        }
        k4.n nVar = (k4.n) kVar;
        p4.w wVarB = this.f5339b.b(new r4.g(i7));
        if (wVarB == null) {
            return -1402;
        }
        int i11 = 0;
        if (wVarB.c()) {
            r4.k kVar2 = this.f5341d.get(bVar);
            if (kVar2 != null) {
                bArrA0 = kVar2.a0();
                if (nVar.j0().e0() == 0) {
                    int iM = kVar.M();
                    if (iM == -90 || iM == -89) {
                        r4.k kVar3 = new r4.k(o());
                        n4.a aVar = f5337o;
                        if (aVar.e()) {
                            aVar.f("Context engine ID of scoped PDU is empty! Setting it to local engine ID: " + kVar3.h0());
                        }
                        nVar.l0(kVar3);
                    } else {
                        n4.a aVar2 = f5337o;
                        if (aVar2.e()) {
                            aVar2.f("Context engine ID of scoped PDU is empty! Setting it to authoritative engine ID: " + kVar2.h0());
                        }
                        nVar.l0(new r4.k(bArrA0));
                    }
                }
            } else {
                bArrA0 = new byte[0];
            }
        } else {
            bArrA0 = new byte[0];
        }
        if (kVar.V()) {
            if (bArrA0.length == 0) {
                if (wVarB.f()) {
                    nVar = (k4.n) nVar.clone();
                    nVar.u();
                    i9 = 1;
                } else if (nVar.j0() == null || nVar.j0().e0() == 0) {
                    f5337o.i("ScopedPDU with empty context engine ID");
                } else if (!f5334l.equals(nVar.j0()) && n(bVar) == null) {
                    h(bVar, nVar.j0());
                }
            }
            l4.c cVar2 = new l4.c(java.nio.ByteBuffer.allocate(nVar.f()));
            nVar.e(cVar2);
            o4.e.d dVar = new o4.e.d();
            if (i9 != 1) {
                if (i9 != 2) {
                    i11 = 1;
                } else if (i9 == 3) {
                    i11 = 3;
                }
            }
            if (nVar.V()) {
                i10 = i11 | 4;
                bArr2 = bArrA0;
            } else {
                bArr2 = this.f5343f;
                i10 = i11;
            }
            iP = p();
            dVar.k(i10);
            dVar.l(iP);
            dVar.m(i5);
            dVar.n(i7);
            java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(dVar.f());
            dVar.e(new l4.c(byteBufferAllocate));
            iB = wVarB.b(i6, byteBufferAllocate.array(), i5, i7, bArr2, bArr, i9, new l4.b(cVar2.e()), wVarB.e(), cVar, tVar);
            if (iB == 0 && z4) {
                this.f5340c.a(new o4.n<>(iP, i10, i5, iVar, bVar, null, bArr2, wVarB, bArr, i9, nVar.j0().a0(), nVar.k0().a0(), null, iB));
            }
            return iB;
        }
        if (nVar.j0().e0() == 0) {
            n4.a aVar3 = f5337o;
            if (aVar3.e()) {
                aVar3.f("Context engine ID of unconfirmed scoped PDU is empty! Setting it to local engine ID");
            }
            nVar.l0(new r4.k(this.f5343f));
        }
        i9 = i8;
        l4.c cVar3 = new l4.c(java.nio.ByteBuffer.allocate(nVar.f()));
        nVar.e(cVar3);
        o4.e.d dVar2 = new o4.e.d();
        if (i9 != 1) {
            if (i9 != 2) {
                i11 = 1;
            } else if (i9 == 3) {
                i11 = 3;
            }
        }
        if (nVar.V()) {
            i10 = i11 | 4;
            bArr2 = bArrA0;
        } else {
            bArr2 = this.f5343f;
            i10 = i11;
        }
        iP = p();
        dVar2.k(i10);
        dVar2.l(iP);
        dVar2.m(i5);
        dVar2.n(i7);
        java.nio.ByteBuffer byteBufferAllocate2 = java.nio.ByteBuffer.allocate(dVar2.f());
        dVar2.e(new l4.c(byteBufferAllocate2));
        iB = wVarB.b(i6, byteBufferAllocate2.array(), i5, i7, bArr2, bArr, i9, new l4.b(cVar3.e()), wVarB.e(), cVar, tVar);
        if (iB == 0) {
            this.f5340c.a(new o4.n<>(iP, i10, i5, iVar, bVar, null, bArr2, wVarB, bArr, i9, nVar.j0().a0(), nVar.k0().a0(), null, iB));
        }
        return iB;
    }

    @Override // o4.g
    public int c(int i5, int i6, int i7, byte[] bArr, int i8, k4.k kVar, int i9, o4.n nVar, o4.o oVar, l4.c cVar) throws java.io.IOException {
        l4.c cVar2;
        o4.n<?> nVarC = this.f5340c.c(nVar.q());
        if (nVarC == null) {
            return -1409;
        }
        int iF = kVar.f();
        int i10 = 0;
        if (iF > i9) {
            k4.n nVar2 = new k4.n((k4.n) kVar);
            nVar2.u();
            nVar2.f0(kVar.I());
            nVar2.a0(1);
            nVar2.X(0);
            cVar2 = new l4.c(java.nio.ByteBuffer.allocate(nVar2.f()));
            nVar2.e(cVar2);
        } else {
            cVar2 = new l4.c(java.nio.ByteBuffer.allocate(iF));
            kVar.e(cVar2);
        }
        o4.e.d dVar = new o4.e.d();
        if (i8 != 1) {
            if (i8 == 2) {
                i10 = 1;
            } else if (i8 == 3) {
                i10 = 3;
            }
        }
        dVar.k(i10);
        dVar.l(nVar.q().a());
        dVar.m(i6);
        dVar.n(i7);
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(dVar.f());
        dVar.e(new l4.c(byteBufferAllocate));
        int iM = kVar.M();
        r4.k kVar2 = (iM == -94 || iM == -92 || iM == -89 || iM == -88) ? new r4.k(this.f5343f) : new r4.k(nVarC.x());
        l4.b bVar = new l4.b(cVar2.e());
        p4.w wVarB = this.f5339b.b(new r4.g(i7));
        return wVarB.h(a(), byteBufferAllocate.array(), i6, i7, kVar2.a0(), bArr, i8, bVar, nVarC.F(), wVarB.e(), cVar);
    }

    @Override // o4.g
    public void d(o4.i iVar) {
        this.f5340c.b(iVar);
    }

    @Override // o4.g
    public boolean e(int i5) {
        return i5 == 3;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0398  */
    @Override // o4.g
    public int f(k4.g gVar, r4.b bVar, l4.b bVar2, k4.t tVar, r4.g gVar2, r4.g gVar3, r4.k kVar, r4.g gVar4, k4.j jVar, o4.i iVar, r4.g gVar5, o4.o oVar, o4.h hVar) {
        r4.k kVar2;
        int i5;
        o4.h hVar2;
        r4.k kVar3;
        try {
            o4.n<?> nVar = new o4.n<>();
            if (hVar.a() != null) {
                nVar.h0(hVar.a().H());
            }
            gVar2.I(3);
            bVar2.mark(16);
            l4.a.C0066a c0066a = new l4.a.C0066a();
            int iC = l4.a.c(bVar2, c0066a);
            if (c0066a.a() != 48) {
                return -1408;
            }
            long jE = bVar2.e();
            bVar2.reset();
            bVar2.mark(iC);
            if (bVar2.skip(jE) != jE) {
                return -1408;
            }
            r4.g gVar6 = new r4.g();
            gVar6.j(bVar2);
            if (gVar6.H() != 3) {
                throw new java.lang.RuntimeException("Internal error unexpected SNMP version read");
            }
            o4.e.d dVar = new o4.e.d();
            dVar.j(bVar2);
            gVar3.I(dVar.i());
            nVar.W(dVar.g());
            nVar.V(dVar.d());
            nVar.z(bVar);
            hVar.b(nVar);
            int iH = dVar.f5353b.H();
            int i6 = f5336n;
            gVar5.I(iH - i6);
            k4.n nVar2 = (k4.n) this.f5348k.a(this);
            jVar.c(nVar2);
            p4.w wVarB = this.f5339b.b(gVar3);
            if (wVarB == null) {
                f5337o.c("RFC3412 §7.2.4 - Unsupported security model: " + gVar3);
                m(new m4.c(this, o4.m.f5395s));
                return -1402;
            }
            int iD = dVar.d() & 3;
            if (iD == 0) {
                gVar4.I(1);
            } else if (iD == 1) {
                gVar4.I(2);
            } else {
                if (iD != 3) {
                    gVar4.I(1);
                    f5337o.f("RFC3412 §7.2.5 - Invalid message (illegal msgFlags)");
                    m(new m4.c(this, o4.m.f5397t));
                    return -1405;
                }
                gVar4.I(3);
            }
            oVar.j(gVar4);
            int iE = (int) bVar2.e();
            p4.y yVarE = wVarB.e();
            yVarE.j(bVar2);
            yVarE.b(iE);
            boolean z4 = (dVar.d() & 4) > 0;
            r4.k kVar4 = new r4.k();
            p4.a0 a0VarG = wVarB.g();
            bVar2.reset();
            l4.c cVar = new l4.c();
            int iD2 = wVarB.d(gVar6.H(), dVar.h() - i6, yVarE, wVarB, gVar4.H(), bVar2, tVar, kVar4, kVar, cVar, gVar5, a0VarG, oVar);
            bVar2.close();
            if (iD2 == 0) {
                try {
                    nVar2.j(new l4.b(cVar.e()));
                    iVar.e(nVar2.I().H());
                    if (kVar4.e0() <= 0 || !nVar2.W()) {
                        kVar2 = kVar4;
                    } else {
                        kVar2 = kVar4;
                        h(bVar, kVar2);
                    }
                    if ((nVar2.j0() == null || nVar2.j0().e0() == 0) && nVar2.M() != -94 && nVar2.M() != -88) {
                        m4.c cVar2 = new m4.c(this, o4.m.f5399u);
                        m(cVar2);
                        oVar.h(new r4.v(cVar2.e(), cVar2.b()));
                        iD2 = -1415;
                    }
                } catch (java.io.IOException e5) {
                    n4.a aVar = f5337o;
                    aVar.i("ASN.1 parse error: " + e5.getMessage());
                    if (aVar.e()) {
                        e5.printStackTrace();
                    }
                    m(new m4.c(this, o4.m.f5409z));
                    return -1408;
                }
            } else {
                kVar2 = kVar4;
            }
            int i7 = iD2;
            nVar.f0(kVar.a0());
            nVar.a0(kVar2.a0());
            nVar.d0(gVar4.H());
            nVar.e0(wVarB);
            nVar.g0(a0VarG);
            nVar.X(iVar);
            k4.n nVar3 = null;
            if (i7 != 0) {
                if (z4 && oVar.b() != null) {
                    try {
                        if (cVar.c() != null) {
                            nVar2.j(new l4.b(cVar.e()));
                            nVar3 = nVar2;
                        }
                    } catch (java.io.IOException e6) {
                        f5337o.i(e6);
                    }
                    k4.n nVar4 = nVar3;
                    this.f5340c.a(new o4.n<>(dVar.g(), dVar.d(), gVar5.H(), iVar, bVar, null, kVar2.a0(), wVarB, kVar.a0(), gVar4.H(), nVar4 == null ? new byte[0] : nVar4.j0().a0(), nVar4 == null ? new byte[0] : nVar4.k0().a0(), a0VarG, i7));
                    int iS = s(gVar, nVar4, oVar.c().H(), wVarB.a(), kVar, gVar5.H(), nVar, oVar.b());
                    if (iS != 0) {
                        f5337o.i("Sending report failed with error code: " + iS);
                    }
                }
                return i7;
            }
            nVar.P(nVar2.j0().a0());
            nVar.T(nVar2.k0().a0());
            nVar.U(gVar5.H());
            if (nVar2.M() == -94 || nVar2.M() == -88) {
                o4.n<?> nVarC = this.f5340c.c(o4.n.c(dVar.g()));
                if (nVarC == null) {
                    n4.a aVar2 = f5337o;
                    if (!aVar2.e()) {
                        return -1409;
                    }
                    aVar2.f("RFC3412 §7.2.10 - Received PDU (msgID=" + dVar.g() + ") is a response or internal class message, but cached information for the msgID could not be found");
                    return -1409;
                }
                n4.a aVar3 = f5337o;
                if (aVar3.e()) {
                    aVar3.f("RFC3412 §7.2.10 - Received PDU (msgID=" + dVar.g() + ") is a response or an internal class message. PduHandle.transactionID = " + nVarC.u().c());
                }
                iVar.b(nVarC.u());
                if (nVar2.M() == -88) {
                    oVar.e(nVar2.j0().a0());
                    oVar.f(nVar2.k0().a0());
                    oVar.j(gVar4);
                    if (nVarC.x().length != 0 && !kVar2.M(nVarC.x())) {
                        kVar3 = kVar;
                    } else if (wVarB.a() == nVarC.y().a()) {
                        kVar3 = kVar;
                        if (kVar3.M(nVarC.D()) || kVar.e0() == 0) {
                            if (!h(nVarC.c0(), kVar2) && aVar3.d()) {
                                aVar3.i("Engine ID '" + kVar2 + "' could not be added to engine ID cache for target address '" + nVarC.c0() + "' because engine ID matches local engine ID or cache size limit is reached");
                            }
                            hVar.b(null);
                            aVar3.f("MPv3 finished");
                            return 0;
                        }
                    } else {
                        kVar3 = kVar;
                    }
                    if (aVar3.e()) {
                        aVar3.f("RFC 3412 §7.2.11 - Received report message does not match sent message. Cache entry is: " + nVarC + ", received secName=" + kVar3 + ",secModel=" + wVarB + ",secEngineID=" + kVar2);
                    }
                    hVar.b(null);
                    return -1410;
                }
                i5 = 0;
                hVar2 = hVar;
                if (nVar2.M() == -94) {
                    if ((kVar2.M(nVarC.x()) || nVarC.x().length == 0) && wVarB.a() == nVarC.y().a() && kVar.M(nVarC.D()) && gVar4.H() == nVarC.o() && ((nVar2.j0().M(nVarC.f()) || nVarC.f().length == 0) && (nVar2.k0().M(nVarC.h()) || nVarC.h().length == 0))) {
                        hVar2.b(null);
                        aVar3.f("MPv3 finished");
                        return 0;
                    }
                    aVar3.f("RFC 3412 §7.2.12.b - Received response message does not match sent message");
                    hVar2.b(null);
                    return -1410;
                }
            } else {
                f5337o.f("RFC3412 §7.2.10 - Received PDU is NOT a response or internal class message -> unchanged PduHandle = " + iVar);
                i5 = 0;
                hVar2 = hVar;
            }
            switch (nVar2.M()) {
                case -96:
                case -95:
                case -93:
                case -91:
                case -90:
                    if (kVar2.e0() == 0) {
                        f5337o.f("Received confirmed message with 0 length security engine ID");
                    } else if (!kVar2.M(this.f5343f)) {
                        n4.a aVar4 = f5337o;
                        if (aVar4.e()) {
                            aVar4.f("RFC3412 §7.2.13.a - Security engine ID " + kVar2.h0() + " does not match local engine ID " + new r4.k(this.f5343f).h0());
                        }
                        hVar2.b(null);
                        return -1406;
                    }
                    if (this.f5340c.a(nVar) == -1404) {
                        hVar2.b(null);
                    }
                    return i5;
                case -94:
                default:
                    return -1400;
                case -92:
                case -89:
                    hVar2.b(null);
                    return i5;
            }
        } catch (java.io.IOException e7) {
            n4.a aVar5 = f5337o;
            aVar5.i("MPv3 parse error: " + e7.getMessage());
            if (aVar5.e()) {
                e7.printStackTrace();
            }
            return -1408;
        }
    }

    public boolean h(r4.b bVar, r4.k kVar) {
        if (!java.util.Arrays.equals(this.f5343f, kVar.a0())) {
            try {
                r4.k kVarI = i(bVar, kVar);
                if (this.f5347j != null && (kVarI == null || !kVarI.equals(kVar))) {
                    l(new m4.g(this, 1, kVar, bVar));
                }
                return true;
            } catch (java.lang.IllegalArgumentException unused) {
                l(new m4.g(this, 3, kVar, bVar));
            }
        }
        return false;
    }

    public r4.k i(r4.b bVar, r4.k kVar) {
        if (this.f5342e <= 0 || this.f5341d.size() < this.f5342e) {
            return this.f5341d.put(bVar, kVar);
        }
        if (this.f5341d.containsKey(bVar)) {
            return this.f5341d.put(bVar, kVar);
        }
        java.lang.String str = "MPv3: Failed to add engineID '" + kVar.h0() + "' for address '" + bVar + "' to local cache because its size limit of " + this.f5342e + "has been reached";
        f5337o.i(str);
        throw new java.lang.IllegalArgumentException(str);
    }

    public void l(m4.g gVar) {
        java.util.List<m4.h> list = this.f5347j;
        if (list != null) {
            java.util.Iterator<m4.h> it = list.iterator();
            while (it.hasNext()) {
                it.next().a(gVar);
            }
        }
    }

    public void m(m4.c cVar) {
        o4.a aVar = this.f5345h;
        if (aVar != null) {
            aVar.a(cVar);
        }
    }

    public r4.k n(r4.b bVar) {
        return this.f5341d.get(bVar);
    }

    public byte[] o() {
        byte[] bArr = this.f5343f;
        byte[] bArr2 = new byte[bArr.length];
        java.lang.System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public synchronized int p() {
        int i5;
        if (this.f5344g >= Integer.MAX_VALUE) {
            this.f5344g = 1;
        }
        i5 = this.f5344g;
        this.f5344g = i5 + 1;
        return i5;
    }

    public p4.w q(int i5) {
        return this.f5339b.b(new r4.g(i5));
    }

    public int s(k4.g gVar, k4.n nVar, int i5, int i6, r4.k kVar, int i7, o4.n<?> nVar2, r4.v vVar) {
        k4.n nVar3 = new k4.n();
        nVar3.g0(-88);
        if (nVar != null) {
            nVar3.l0(nVar.j0());
            nVar3.m0(nVar.k0());
            nVar3.f0(nVar.I());
        } else {
            nVar3.l0(new r4.k(o()));
        }
        nVar3.h(vVar);
        try {
            int iH = gVar.h(a(), i6, kVar.a0(), i5, nVar3, i7, nVar2, new o4.o());
            if (iH == 0) {
                return 0;
            }
            f5337o.i("Error while sending report: " + iH);
            return -1400;
        } catch (k4.i e5) {
            f5337o.c("Error while sending report: " + e5.getMessage());
            return -1400;
        }
    }

    public void t(int i5) {
        this.f5344g = i5;
    }

    public void u(byte[] bArr) {
        if (bArr == null || bArr.length < 5 || bArr.length > 32) {
            throw new java.lang.IllegalArgumentException("Illegal (local) engine ID");
        }
        this.f5343f = bArr;
    }

    public e(byte[] bArr, t4.e eVar) {
        this(bArr, eVar, p4.z.h(), p4.x.a(), o4.a.b());
    }

    public e(byte[] bArr, t4.e eVar, p4.z zVar, p4.x xVar, o4.a aVar) {
        this.f5342e = k4.m.b();
        this.f5344g = new java.util.Random().nextInt(Integer.MAX_VALUE);
        this.f5346i = new o4.e.C0068e(null);
        this.f5348k = new o4.e.a();
        if (eVar != null) {
            this.f5348k = eVar;
        }
        this.f5341d = this.f5346i.a(this);
        this.f5340c = new o4.e.b();
        java.util.Objects.requireNonNull(zVar);
        this.f5338a = zVar;
        java.util.Objects.requireNonNull(xVar);
        this.f5339b = xVar;
        java.util.Objects.requireNonNull(aVar);
        this.f5345h = aVar;
        u(bArr);
        p4.w wVarB = xVar.b(new r4.g(3));
        if (wVarB instanceof p4.c0) {
            t(r(((p4.c0) wVarB).n()));
        }
    }
}
