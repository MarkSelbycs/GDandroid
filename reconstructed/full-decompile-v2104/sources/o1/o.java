package o1;

/* JADX INFO: compiled from: DurationConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o extends n1.a<java.time.Duration> {
    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.time.Duration c(java.lang.Object obj) {
        if (obj instanceof java.time.temporal.TemporalAmount) {
            return java.time.Duration.from((java.time.temporal.TemporalAmount) obj);
        }
        return obj instanceof java.lang.Long ? java.time.Duration.ofMillis(((java.lang.Long) obj).longValue()) : java.time.Duration.parse(e(obj));
    }
}
