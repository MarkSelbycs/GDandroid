package m4;

/* JADX INFO: compiled from: ResponseEvent.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends java.util.EventObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public r4.b f5205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k4.k f5206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public k4.k f5207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public java.lang.Object f5208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public java.lang.Exception f5209e;

    public e(java.lang.Object obj, r4.b bVar, k4.k kVar, k4.k kVar2, java.lang.Object obj2) {
        super(obj);
        c(bVar);
        e(kVar);
        f(kVar2);
        h(obj2);
    }

    public k4.k b() {
        return this.f5207c;
    }

    public final void c(r4.b bVar) {
        this.f5205a = bVar;
    }

    public final void e(k4.k kVar) {
        this.f5206b = kVar;
    }

    public final void f(k4.k kVar) {
        this.f5207c = kVar;
    }

    public final void h(java.lang.Object obj) {
        this.f5208d = obj;
    }

    public e(java.lang.Object obj, r4.b bVar, k4.k kVar, k4.k kVar2, java.lang.Object obj2, java.lang.Exception exc) {
        this(obj, bVar, kVar, kVar2, obj2);
        this.f5209e = exc;
    }
}
