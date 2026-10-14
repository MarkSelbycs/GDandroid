package o1;

/* JADX INFO: compiled from: ReferenceConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class j0 extends n1.a<java.lang.ref.Reference> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<? extends java.lang.ref.Reference> f5299a;

    public j0(java.lang.Class<? extends java.lang.ref.Reference> cls) {
        this.f5299a = cls;
    }

    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.lang.ref.Reference<?> c(java.lang.Object obj) {
        java.lang.reflect.Type typeN = e2.d0.n(this.f5299a);
        java.lang.Object objC = !e2.d0.r(typeN) ? n1.g.y().c(typeN, obj) : null;
        if (objC != null) {
            obj = objC;
        }
        java.lang.Class<? extends java.lang.ref.Reference> cls = this.f5299a;
        if (cls == java.lang.ref.WeakReference.class) {
            return new java.lang.ref.WeakReference(obj);
        }
        if (cls == java.lang.ref.SoftReference.class) {
            return new java.lang.ref.SoftReference(obj);
        }
        throw new java.lang.UnsupportedOperationException(b2.c.i("Unsupport Reference type: {}", this.f5299a.getName()));
    }
}
