package o1;

/* JADX INFO: compiled from: AtomicBooleanConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b extends n1.a<java.util.concurrent.atomic.AtomicBoolean> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.util.concurrent.atomic.AtomicBoolean c(java.lang.Object obj) {
        return obj instanceof java.lang.Boolean ? new java.util.concurrent.atomic.AtomicBoolean(((java.lang.Boolean) obj).booleanValue()) : new java.util.concurrent.atomic.AtomicBoolean(e2.d.b(e(obj)));
    }
}
