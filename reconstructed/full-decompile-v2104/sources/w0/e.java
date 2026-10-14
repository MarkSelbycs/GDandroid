package w0;

/* JADX INFO: compiled from: ContraintControllers.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class e extends w0.c<v0.c> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final w0.e.a f6703c = new w0.e.a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final java.lang.String f6704d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6705b;

    /* JADX INFO: compiled from: ContraintControllers.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(m3.g gVar) {
            this();
        }
    }

    static {
        java.lang.String strI = q0.n.i("NetworkMeteredCtrlr");
        m3.k.d(strI, "tagWithPrefix(\"NetworkMeteredCtrlr\")");
        f6704d = strI;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(x0.g<v0.c> gVar) {
        super(gVar);
        m3.k.e(gVar, "tracker");
        this.f6705b = 7;
    }

    @Override // w0.c
    public int b() {
        return this.f6705b;
    }

    @Override // w0.c
    public boolean c(z0.u uVar) {
        m3.k.e(uVar, "workSpec");
        return uVar.f7041j.d() == q0.o.METERED;
    }

    @Override // w0.c
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public boolean d(v0.c cVar) {
        m3.k.e(cVar, "value");
        return (cVar.a() && cVar.b()) ? false : true;
    }
}
