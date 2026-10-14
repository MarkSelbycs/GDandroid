package o1;

/* JADX INFO: compiled from: TemporalAccessorConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class o0 extends n1.a<java.time.temporal.TemporalAccessor> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final java.lang.Class<?> f5307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public java.lang.String f5308b;

    public o0(java.lang.Class<?> cls) {
        this(cls, null);
    }

    public final java.time.temporal.TemporalAccessor D(java.time.ZonedDateTime zonedDateTime) {
        if (java.time.Instant.class.equals(this.f5307a)) {
            return p1.f.w(zonedDateTime);
        }
        if (java.time.LocalDateTime.class.equals(this.f5307a)) {
            return zonedDateTime.toLocalDateTime();
        }
        if (java.time.LocalDate.class.equals(this.f5307a)) {
            return zonedDateTime.toLocalDate();
        }
        if (java.time.LocalTime.class.equals(this.f5307a)) {
            return zonedDateTime.toLocalTime();
        }
        if (java.time.OffsetDateTime.class.equals(this.f5307a)) {
            return zonedDateTime.toOffsetDateTime();
        }
        if (java.time.OffsetTime.class.equals(this.f5307a)) {
            return zonedDateTime.toOffsetDateTime().toOffsetTime();
        }
        return null;
    }

    @Override // n1.a
    public java.lang.Class<java.time.temporal.TemporalAccessor> f() {
        return this.f5307a;
    }

    @Override // n1.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public java.time.temporal.TemporalAccessor c(java.lang.Object obj) {
        if (obj instanceof java.lang.Number) {
            return x(java.lang.Long.valueOf(((java.lang.Number) obj).longValue()));
        }
        if (obj instanceof java.time.temporal.TemporalAccessor) {
            return y((java.time.temporal.TemporalAccessor) obj);
        }
        if (obj instanceof java.util.Date) {
            p1.e eVarH = p1.f.h((java.util.Date) obj);
            return q(eVarH.toInstant(), eVarH.e());
        }
        if (obj instanceof java.util.Calendar) {
            java.util.Calendar calendar = (java.util.Calendar) obj;
            return q(calendar.toInstant(), calendar.getTimeZone().toZoneId());
        }
        if (!(obj instanceof java.util.Map)) {
            return j(e(obj));
        }
        java.util.Map map = (java.util.Map) obj;
        if (java.time.LocalDate.class.equals(this.f5307a)) {
            return java.time.LocalDate.of(n1.c.i(map.get("year")).intValue(), n1.c.i(map.get("month")).intValue(), n1.c.i(map.get("day")).intValue());
        }
        if (java.time.LocalDateTime.class.equals(this.f5307a)) {
            return java.time.LocalDateTime.of(n1.c.i(map.get("year")).intValue(), n1.c.i(map.get("month")).intValue(), n1.c.i(map.get("day")).intValue(), n1.c.i(map.get("hour")).intValue(), n1.c.i(map.get("minute")).intValue(), n1.c.i(map.get("second")).intValue(), n1.c.i(map.get("second")).intValue());
        }
        if (java.time.LocalTime.class.equals(this.f5307a)) {
            return java.time.LocalTime.of(n1.c.i(map.get("hour")).intValue(), n1.c.i(map.get("minute")).intValue(), n1.c.i(map.get("second")).intValue(), n1.c.i(map.get("nano")).intValue());
        }
        throw new n1.d("Unsupported type: [{}] from map: [{}]", this.f5307a, map);
    }

    public final java.time.temporal.TemporalAccessor j(java.lang.CharSequence charSequence) {
        java.time.ZoneId zoneIdE;
        java.time.Instant instant;
        if (b2.c.q(charSequence)) {
            return null;
        }
        if (java.time.DayOfWeek.class.equals(this.f5307a)) {
            return java.time.DayOfWeek.valueOf(e2.b0.j0(charSequence));
        }
        if (java.time.Month.class.equals(this.f5307a)) {
            return java.time.Month.valueOf(e2.b0.j0(charSequence));
        }
        if (java.time.chrono.Era.class.equals(this.f5307a)) {
            return java.time.chrono.IsoEra.valueOf(e2.b0.j0(charSequence));
        }
        if (java.time.MonthDay.class.equals(this.f5307a)) {
            return java.time.MonthDay.parse(charSequence);
        }
        java.lang.String str = this.f5308b;
        if (str != null) {
            java.time.format.DateTimeFormatter dateTimeFormatterOfPattern = java.time.format.DateTimeFormatter.ofPattern(str);
            instant = (java.time.Instant) dateTimeFormatterOfPattern.parse(charSequence, new java.time.temporal.TemporalQuery() { // from class: o1.m0
                @Override // java.time.temporal.TemporalQuery
                public final java.lang.Object queryFrom(java.time.temporal.TemporalAccessor temporalAccessor) {
                    return java.time.Instant.from(temporalAccessor);
                }
            });
            zoneIdE = dateTimeFormatterOfPattern.getZone();
        } else {
            p1.e eVarQ = p1.f.q(charSequence);
            java.util.Objects.requireNonNull(eVarQ);
            java.time.Instant instant2 = eVarQ.toInstant();
            zoneIdE = eVarQ.e();
            instant = instant2;
        }
        return q(instant, zoneIdE);
    }

    public final java.time.temporal.TemporalAccessor q(java.time.Instant instant, java.time.ZoneId zoneId) {
        if (java.time.Instant.class.equals(this.f5307a)) {
            return instant;
        }
        java.time.ZoneId zoneId2 = (java.time.ZoneId) e2.p.d(zoneId, new java.util.function.Supplier() { // from class: o1.n0
            @Override // java.util.function.Supplier
            public final java.lang.Object get() {
                return java.time.ZoneId.systemDefault();
            }
        });
        if (java.time.LocalDateTime.class.equals(this.f5307a)) {
            return java.time.LocalDateTime.ofInstant(instant, zoneId2);
        }
        if (java.time.LocalDate.class.equals(this.f5307a)) {
            return instant.atZone(zoneId2).toLocalDate();
        }
        if (java.time.LocalTime.class.equals(this.f5307a)) {
            return instant.atZone(zoneId2).toLocalTime();
        }
        if (java.time.ZonedDateTime.class.equals(this.f5307a)) {
            return instant.atZone(zoneId2);
        }
        if (java.time.OffsetDateTime.class.equals(this.f5307a)) {
            return java.time.OffsetDateTime.ofInstant(instant, zoneId2);
        }
        if (java.time.OffsetTime.class.equals(this.f5307a)) {
            return java.time.OffsetTime.ofInstant(instant, zoneId2);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [java.time.ZonedDateTime] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.time.ZonedDateTime] */
    public final java.time.temporal.TemporalAccessor u(java.time.LocalDateTime localDateTime) {
        if (java.time.Instant.class.equals(this.f5307a)) {
            return p1.f.w(localDateTime);
        }
        if (java.time.LocalDate.class.equals(this.f5307a)) {
            return localDateTime.toLocalDate();
        }
        if (java.time.LocalTime.class.equals(this.f5307a)) {
            return localDateTime.toLocalTime();
        }
        if (java.time.ZonedDateTime.class.equals(this.f5307a)) {
            return localDateTime.atZone(java.time.ZoneId.systemDefault());
        }
        if (java.time.OffsetDateTime.class.equals(this.f5307a)) {
            return localDateTime.atZone(java.time.ZoneId.systemDefault()).toOffsetDateTime();
        }
        if (java.time.OffsetTime.class.equals(this.f5307a)) {
            return localDateTime.atZone(java.time.ZoneId.systemDefault()).toOffsetDateTime().toOffsetTime();
        }
        return null;
    }

    public final java.time.temporal.TemporalAccessor x(java.lang.Long l5) {
        if (java.time.DayOfWeek.class.equals(this.f5307a)) {
            return java.time.DayOfWeek.of(java.lang.Math.toIntExact(l5.longValue()));
        }
        if (java.time.Month.class.equals(this.f5307a)) {
            return java.time.Month.of(java.lang.Math.toIntExact(l5.longValue()));
        }
        if (java.time.chrono.Era.class.equals(this.f5307a)) {
            return java.time.chrono.IsoEra.of(java.lang.Math.toIntExact(l5.longValue()));
        }
        return q("#sss".equals(this.f5308b) ? java.time.Instant.ofEpochSecond(l5.longValue()) : java.time.Instant.ofEpochMilli(l5.longValue()), null);
    }

    public final java.time.temporal.TemporalAccessor y(java.time.temporal.TemporalAccessor temporalAccessor) {
        java.time.temporal.TemporalAccessor temporalAccessorD;
        if (java.time.DayOfWeek.class.equals(this.f5307a)) {
            return java.time.DayOfWeek.from(temporalAccessor);
        }
        if (java.time.Month.class.equals(this.f5307a)) {
            return java.time.Month.from(temporalAccessor);
        }
        if (java.time.MonthDay.class.equals(this.f5307a)) {
            return java.time.MonthDay.from(temporalAccessor);
        }
        if (temporalAccessor instanceof java.time.LocalDateTime) {
            temporalAccessorD = u((java.time.LocalDateTime) temporalAccessor);
        } else {
            temporalAccessorD = temporalAccessor instanceof java.time.ZonedDateTime ? D((java.time.ZonedDateTime) temporalAccessor) : null;
        }
        return temporalAccessorD == null ? q(p1.f.w(temporalAccessor), null) : temporalAccessorD;
    }

    public o0(java.lang.Class<?> cls, java.lang.String str) {
        this.f5307a = cls;
        this.f5308b = str;
    }
}
