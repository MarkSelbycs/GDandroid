package p4;

/* JADX INFO: compiled from: AuthSHA2.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends p4.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public r4.j f5575h;

    public g(java.lang.String str, r4.j jVar, int i5, int i6, int i7) {
        super(str, i5, i6, i7);
        this.f5575h = jVar;
    }

    @Override // p4.i
    public r4.j a() {
        return (r4.j) this.f5575h.clone();
    }
}
