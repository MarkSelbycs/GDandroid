package o1;

/* JADX INFO: compiled from: PeriodConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g0 extends n1.a<java.time.Period> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.time.Period c(java.lang.Object obj) {
        if (obj instanceof java.time.temporal.TemporalAmount) {
            return java.time.Period.from((java.time.temporal.TemporalAmount) obj);
        }
        return obj instanceof java.lang.Integer ? java.time.Period.ofDays(((java.lang.Integer) obj).intValue()) : java.time.Period.parse(e(obj));
    }
}
