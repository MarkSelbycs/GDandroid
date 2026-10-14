package k4;

/* JADX INFO: compiled from: TransportStateReference.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public k4.s f4958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public r4.b f4959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public r4.k f4960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p4.v f4961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p4.v f4962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public java.lang.Object f4964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public k4.b f4965h;

    public t(k4.s sVar, r4.b bVar, r4.k kVar, p4.v vVar, p4.v vVar2, boolean z4, java.lang.Object obj) {
        this.f4958a = sVar;
        this.f4959b = bVar;
        this.f4960c = kVar;
        this.f4961d = vVar;
        this.f4962e = vVar2;
        this.f4963f = z4;
        this.f4964g = obj;
    }

    public java.lang.String toString() {
        return "TransportStateReference[transport=" + this.f4958a + ", address=" + this.f4959b + ", securityName=" + this.f4960c + ", requestedSecurityLevel=" + this.f4961d + ", transportSecurityLevel=" + this.f4962e + ", sameSecurity=" + this.f4963f + ", sessionID=" + this.f4964g + ", certifiedIdentity=" + this.f4965h + ']';
    }

    public t(k4.s sVar, r4.b bVar, r4.k kVar, p4.v vVar, p4.v vVar2, boolean z4, java.lang.Object obj, k4.b bVar2) {
        this(sVar, bVar, kVar, vVar, vVar2, z4, obj);
        this.f4965h = bVar2;
    }
}
