package o1;

/* JADX INFO: compiled from: BooleanConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g extends n1.a<java.lang.Boolean> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.lang.Boolean c(java.lang.Object obj) {
        if (obj instanceof java.lang.Number) {
            return java.lang.Boolean.valueOf(0.0d != ((java.lang.Number) obj).doubleValue());
        }
        return java.lang.Boolean.valueOf(e2.d.b(e(obj)));
    }
}
