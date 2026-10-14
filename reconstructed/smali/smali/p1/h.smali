.class public Lp1/h;
.super Lp1/i;
.source "TemporalAccessorUtil.java"


# direct methods
.method public static a(Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p0, Ljava/time/DayOfWeek;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/time/Month;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/time/chrono/Era;

    if-nez v1, :cond_4

    instance-of v1, p0, Ljava/time/MonthDay;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {p1}, Lq1/m;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {p0, p1}, Lq1/m;->e(Ljava/time/temporal/TemporalAccessor;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-static {p1}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {p1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 6
    :goto_0
    invoke-static {p0, v0}, Lp1/h;->b(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/time/Month;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 3
    sget-object p1, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 4
    :cond_2
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/time/temporal/UnsupportedTemporalTypeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 5
    instance-of v1, p0, Ljava/time/LocalDate;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/time/temporal/UnsupportedTemporalTypeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HourOfDay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    check-cast p0, Ljava/time/LocalDate;

    invoke-virtual {p0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    instance-of v1, p0, Ljava/time/LocalTime;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/time/temporal/UnsupportedTemporalTypeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YearOfEra"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    check-cast p0, Ljava/time/LocalTime;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    instance-of v1, p0, Ljava/time/Instant;

    if-eqz v1, :cond_5

    .line 10
    check-cast p0, Ljava/time/Instant;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_5
    throw v0
.end method

.method public static c(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static d(Ljava/time/temporal/TemporalAccessor;)J
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/time/Month;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/time/Month;

    invoke-virtual {p0}, Ljava/time/Month;->getValue()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/time/DayOfWeek;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/time/DayOfWeek;

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/time/chrono/Era;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/time/chrono/Era;

    invoke-interface {p0}, Ljava/time/chrono/Era;->getValue()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 7
    :cond_2
    invoke-static {p0}, Lp1/h;->e(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/time/Instant;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/time/Instant;

    goto/16 :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_2
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Ljava/time/ZonedDateTime;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_3
    instance-of v0, p0, Ljava/time/OffsetDateTime;

    if-eqz v0, :cond_4

    .line 8
    check-cast p0, Ljava/time/OffsetDateTime;

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_4
    instance-of v0, p0, Ljava/time/LocalDate;

    if-eqz v0, :cond_5

    .line 10
    check-cast p0, Ljava/time/LocalDate;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_5
    instance-of v0, p0, Ljava/time/LocalTime;

    if-eqz v0, :cond_6

    .line 12
    check-cast p0, Ljava/time/LocalTime;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalTime;->atDate(Ljava/time/LocalDate;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_6
    instance-of v0, p0, Ljava/time/OffsetTime;

    if-eqz v0, :cond_7

    .line 14
    check-cast p0, Ljava/time/OffsetTime;

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/OffsetTime;->atDate(Ljava/time/LocalDate;)Ljava/time/OffsetDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/OffsetDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_7
    invoke-static {p0}, Lp1/g;->a(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object p0

    invoke-static {p0}, Lp1/h;->e(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    :goto_0
    return-object p0
.end method
