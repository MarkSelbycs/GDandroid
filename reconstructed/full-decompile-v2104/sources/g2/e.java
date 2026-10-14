package g2;

/* JADX INFO: compiled from: TemporalAccessorSerializer.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e implements g2.b<java.time.temporal.TemporalAccessor> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<? extends java.time.temporal.TemporalAccessor> f4341a;

    public e(java.lang.Class<? extends java.time.temporal.TemporalAccessor> cls) {
        this.f4341a = cls;
    }

    @Override // g2.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(f2.l lVar, java.time.temporal.TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof java.time.LocalDate) {
            java.time.LocalDate localDate = (java.time.LocalDate) temporalAccessor;
            lVar.P("year", java.lang.Integer.valueOf(localDate.getYear()));
            lVar.P("month", java.lang.Integer.valueOf(localDate.getMonthValue()));
            lVar.P("day", java.lang.Integer.valueOf(localDate.getDayOfMonth()));
            return;
        }
        if (!(temporalAccessor instanceof java.time.LocalDateTime)) {
            if (!(temporalAccessor instanceof java.time.LocalTime)) {
                throw new f2.h("Unsupported type to JSON: {}", temporalAccessor.getClass().getName());
            }
            java.time.LocalTime localTime = (java.time.LocalTime) temporalAccessor;
            lVar.P("hour", java.lang.Integer.valueOf(localTime.getHour()));
            lVar.P("minute", java.lang.Integer.valueOf(localTime.getMinute()));
            lVar.P("second", java.lang.Integer.valueOf(localTime.getSecond()));
            lVar.P("nano", java.lang.Integer.valueOf(localTime.getNano()));
            return;
        }
        java.time.LocalDateTime localDateTime = (java.time.LocalDateTime) temporalAccessor;
        lVar.P("year", java.lang.Integer.valueOf(localDateTime.getYear()));
        lVar.P("month", java.lang.Integer.valueOf(localDateTime.getMonthValue()));
        lVar.P("day", java.lang.Integer.valueOf(localDateTime.getDayOfMonth()));
        lVar.P("hour", java.lang.Integer.valueOf(localDateTime.getHour()));
        lVar.P("minute", java.lang.Integer.valueOf(localDateTime.getMinute()));
        lVar.P("second", java.lang.Integer.valueOf(localDateTime.getSecond()));
        lVar.P("nano", java.lang.Integer.valueOf(localDateTime.getNano()));
    }
}
