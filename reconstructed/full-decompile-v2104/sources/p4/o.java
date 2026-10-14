package p4;

/* JADX INFO: compiled from: PrivAES256.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o extends p4.p implements q4.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static r4.j f5609o = new r4.j(o4.m.f5375i);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public r4.j f5610i;

    public o() {
        super(32);
    }

    @Override // p4.s
    public r4.j a() {
        r4.j jVar = this.f5610i;
        return jVar == null ? j() : jVar;
    }

    @Override // q4.a
    public void b(r4.j jVar) {
        this.f5610i = new r4.j(jVar);
    }

    public r4.j j() {
        return (r4.j) f5609o.clone();
    }
}
