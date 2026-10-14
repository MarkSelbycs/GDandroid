package p1;

/* JADX INFO: compiled from: TemporalAccessorUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class h extends p1.i {
    public static java.lang.String a(java.time.temporal.TemporalAccessor temporalAccessor, java.lang.String str) {
        if (temporalAccessor == null) {
            return null;
        }
        if ((temporalAccessor instanceof java.time.DayOfWeek) || (temporalAccessor instanceof java.time.Month) || (temporalAccessor instanceof java.time.chrono.Era) || (temporalAccessor instanceof java.time.MonthDay)) {
            return temporalAccessor.toString();
        }
        if (q1.m.g(str)) {
            return q1.m.e(temporalAccessor, str);
        }
        return b(temporalAccessor, b2.c.q(str) ? null : java.time.format.DateTimeFormatter.ofPattern(str));
    }

    public static java.lang.String b(java.time.temporal.TemporalAccessor temporalAccessor, java.time.format.DateTimeFormatter dateTimeFormatter) {
        if (temporalAccessor == null) {
            return null;
        }
        if (temporalAccessor instanceof java.time.Month) {
            return temporalAccessor.toString();
        }
        if (dateTimeFormatter == null) {
            dateTimeFormatter = java.time.format.DateTimeFormatter.ISO_LOCAL_DATE_TIME;
        }
        try {
            return dateTimeFormatter.format(temporalAccessor);
        } catch (java.time.temporal.UnsupportedTemporalTypeException e5) {
            if ((temporalAccessor instanceof java.time.LocalDate) && e5.getMessage().contains("HourOfDay")) {
                return dateTimeFormatter.format(((java.time.LocalDate) temporalAccessor).atStartOfDay());
            }
            if ((temporalAccessor instanceof java.time.LocalTime) && e5.getMessage().contains("YearOfEra")) {
                return dateTimeFormatter.format(((java.time.LocalTime) temporalAccessor).atDate(java.time.LocalDate.now()));
            }
            if (temporalAccessor instanceof java.time.Instant) {
                return dateTimeFormatter.format(((java.time.Instant) temporalAccessor).atZone(java.time.ZoneId.systemDefault()));
            }
            throw e5;
        }
    }

    public static int c(java.time.temporal.TemporalAccessor temporalAccessor, java.time.temporal.TemporalField temporalField) {
        return temporalAccessor.isSupported(temporalField) ? temporalAccessor.get(temporalField) : (int) temporalField.range().getMinimum();
    }

    public static long d(java.time.temporal.TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof java.time.Month) {
            return ((java.time.Month) temporalAccessor).getValue();
        }
        if (temporalAccessor instanceof java.time.DayOfWeek) {
            return ((java.time.DayOfWeek) temporalAccessor).getValue();
        }
        return temporalAccessor instanceof java.time.chrono.Era ? ((java.time.chrono.Era) temporalAccessor).getValue() : e(temporalAccessor).toEpochMilli();
    }

    /* JADX WARN: Type inference failed for: r1v18, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.time.ZonedDateTime] */
    public static java.time.Instant e(java.time.temporal.TemporalAccessor temporalAccessor) {
        if (temporalAccessor == null) {
            return null;
        }
        if (temporalAccessor instanceof java.time.Instant) {
            return (java.time.Instant) temporalAccessor;
        }
        if (temporalAccessor instanceof java.time.LocalDateTime) {
            return ((java.time.LocalDateTime) temporalAccessor).atZone(java.time.ZoneId.systemDefault()).toInstant();
        }
        if (temporalAccessor instanceof java.time.ZonedDateTime) {
            return ((java.time.ZonedDateTime) temporalAccessor).toInstant();
        }
        if (temporalAccessor instanceof java.time.OffsetDateTime) {
            return ((java.time.OffsetDateTime) temporalAccessor).toInstant();
        }
        if (temporalAccessor instanceof java.time.LocalDate) {
            return ((java.time.LocalDate) temporalAccessor).atStartOfDay(java.time.ZoneId.systemDefault()).toInstant();
        }
        if (temporalAccessor instanceof java.time.LocalTime) {
            return ((java.time.LocalTime) temporalAccessor).atDate(java.time.LocalDate.now()).atZone(java.time.ZoneId.systemDefault()).toInstant();
        }
        return temporalAccessor instanceof java.time.OffsetTime ? ((java.time.OffsetTime) temporalAccessor).atDate(java.time.LocalDate.now()).toInstant() : e(p1.g.a(temporalAccessor));
    }
}
