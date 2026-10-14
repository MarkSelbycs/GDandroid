package o1;

/* JADX INFO: compiled from: AtomicReferenceConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e extends n1.a<java.util.concurrent.atomic.AtomicReference> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.util.concurrent.atomic.AtomicReference<?> c(java.lang.Object obj) {
        java.lang.reflect.Type typeN = e2.d0.n(java.util.concurrent.atomic.AtomicReference.class);
        java.lang.Object objC = !e2.d0.r(typeN) ? n1.g.y().c(typeN, obj) : null;
        if (objC != null) {
            obj = objC;
        }
        return new java.util.concurrent.atomic.AtomicReference<>(obj);
    }
}
