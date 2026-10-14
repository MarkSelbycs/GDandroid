package p1;

/* JADX INFO: compiled from: LocalDateTimeUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class g {
    /* JADX WARN: Type inference failed for: r8v3, types: [java.time.LocalDateTime] */
    public static java.time.LocalDateTime a(java.time.temporal.TemporalAccessor temporalAccessor) {
        if (temporalAccessor == null) {
            return null;
        }
        if (temporalAccessor instanceof java.time.LocalDate) {
            return ((java.time.LocalDate) temporalAccessor).atStartOfDay();
        }
        if (temporalAccessor instanceof java.time.Instant) {
            return java.time.LocalDateTime.ofInstant((java.time.Instant) temporalAccessor, java.time.ZoneId.systemDefault());
        }
        return temporalAccessor instanceof java.time.ZonedDateTime ? ((java.time.ZonedDateTime) temporalAccessor).toLocalDateTime() : java.time.LocalDateTime.of(p1.h.c(temporalAccessor, java.time.temporal.ChronoField.YEAR), p1.h.c(temporalAccessor, java.time.temporal.ChronoField.MONTH_OF_YEAR), p1.h.c(temporalAccessor, java.time.temporal.ChronoField.DAY_OF_MONTH), p1.h.c(temporalAccessor, java.time.temporal.ChronoField.HOUR_OF_DAY), p1.h.c(temporalAccessor, java.time.temporal.ChronoField.MINUTE_OF_HOUR), p1.h.c(temporalAccessor, java.time.temporal.ChronoField.SECOND_OF_MINUTE), p1.h.c(temporalAccessor, java.time.temporal.ChronoField.NANO_OF_SECOND));
    }
}
