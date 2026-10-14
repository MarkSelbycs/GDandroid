package p4;

/* JADX INFO: compiled from: PrivAES192.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class n extends p4.p implements q4.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static r4.j f5607o = new r4.j(o4.m.f5373h);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public r4.j f5608i;

    public n() {
        super(24);
    }

    @Override // p4.s
    public r4.j a() {
        r4.j jVar = this.f5608i;
        return jVar == null ? j() : jVar;
    }

    @Override // q4.a
    public void b(r4.j jVar) {
        this.f5608i = new r4.j(jVar);
    }

    public r4.j j() {
        return (r4.j) f5607o.clone();
    }
}
