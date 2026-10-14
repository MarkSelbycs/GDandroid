.class public Lp1/g;
.super Ljava/lang/Object;
.source "LocalDateTimeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ljava/time/LocalDate;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/time/LocalDate;

    invoke-virtual {p0}, Ljava/time/LocalDate;->atStartOfDay()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    instance-of v0, p0, Ljava/time/Instant;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Ljava/time/Instant;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 5
    :cond_2
    instance-of v0, p0, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_3

    .line 6
    check-cast p0, Ljava/time/ZonedDateTime;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    sget-object v0, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 8
    invoke-static {p0, v0}, Lp1/h;->c(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v1

    sget-object v0, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 9
    invoke-static {p0, v0}, Lp1/h;->c(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v2

    sget-object v0, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 10
    invoke-static {p0, v0}, Lp1/h;->c(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v3

    sget-object v0, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 11
    invoke-static {p0, v0}, Lp1/h;->c(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v4

    sget-object v0, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 12
    invoke-static {p0, v0}, Lp1/h;->c(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v5

    sget-object v0, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 13
    invoke-static {p0, v0}, Lp1/h;->c(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v6

    sget-object v0, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 14
    invoke-static {p0, v0}, Lp1/h;->c(Ljava/time/temporal/TemporalAccessor;Ljava/time/temporal/TemporalField;)I

    move-result v7

    .line 15
    invoke-static/range {v1 .. v7}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method
