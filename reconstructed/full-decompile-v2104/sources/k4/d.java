package k4;

/* JADX INFO: compiled from: CommandResponderEvent.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class d extends java.util.EventObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f4872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public o4.i f4875d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public o4.n f4876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public k4.k f4877f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4878g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f4879h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4880i;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public r4.b f4881o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public transient k4.s f4882p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public k4.t f4883q;

    public d(k4.g gVar, k4.s sVar, r4.b bVar, int i5, int i6, byte[] bArr, int i7, o4.i iVar, k4.k kVar, int i8, o4.n nVar) {
        super(gVar);
        P(sVar);
        q(i5);
        H(i6);
        I(bArr);
        F(i7);
        x(iVar);
        u(kVar);
        j(i8);
        M(nVar);
        y(bVar);
    }

    public void D(boolean z4) {
        this.f4880i = z4;
    }

    public void F(int i5) {
        this.f4873b = i5;
    }

    public void H(int i5) {
        this.f4872a = i5;
    }

    public void I(byte[] bArr) {
        this.f4879h = bArr;
    }

    public void M(o4.n nVar) {
        this.f4876e = nVar;
    }

    public void P(k4.s sVar) {
        this.f4882p = sVar;
    }

    public k4.k b() {
        return this.f4877f;
    }

    public o4.i c() {
        return this.f4875d;
    }

    public r4.b e() {
        return this.f4881o;
    }

    public k4.s f() {
        return this.f4882p;
    }

    public boolean h() {
        return this.f4880i;
    }

    public void j(int i5) {
        this.f4874c = i5;
    }

    public int o() {
        return this.f4873b;
    }

    public void q(int i5) {
        this.f4878g = i5;
    }

    public int r0() {
        return this.f4872a;
    }

    @Override // java.util.EventObject
    public java.lang.String toString() {
        return "CommandResponderEvent[securityModel=" + this.f4872a + ", securityLevel=" + this.f4873b + ", maxSizeResponsePDU=" + this.f4874c + ", pduHandle=" + this.f4875d + ", stateReference=" + this.f4876e + ", pdu=" + this.f4877f + ", messageProcessingModel=" + this.f4878g + ", securityName=" + new r4.k(this.f4879h) + ", processed=" + this.f4880i + ", peerAddress=" + this.f4881o + ", transportMapping=" + this.f4882p + ", tmStateReference=" + this.f4883q + ']';
    }

    public void u(k4.k kVar) {
        this.f4877f = kVar;
    }

    public void x(o4.i iVar) {
        this.f4875d = iVar;
    }

    public void y(r4.b bVar) {
        this.f4881o = bVar;
    }
}
