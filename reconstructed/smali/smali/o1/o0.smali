.class public Lo1/o0;
.super Ln1/a;
.source "TemporalAccessorConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/time/temporal/TemporalAccessor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lo1/o0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ln1/a;-><init>()V

    .line 3
    iput-object p1, p0, Lo1/o0;->a:Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lo1/o0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final D(Ljava/time/ZonedDateTime;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 1
    const-class v0, Ljava/time/Instant;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lp1/f;->w(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Ljava/time/LocalDateTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v0, Ljava/time/LocalDate;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    const-class v0, Ljava/time/LocalTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    const-class v0, Ljava/time/OffsetDateTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    const-class v0, Ljava/time/OffsetTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toOffsetTime()Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/o0;->h(Ljava/lang/Object;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/time/temporal/TemporalAccessor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo1/o0;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Ljava/time/temporal/TemporalAccessor;
    .locals 14

    .line 1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/o0;->x(Ljava/lang/Long;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {p0, p1}, Lo1/o0;->y(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Ljava/util/Date;

    invoke-static {p1}, Lp1/f;->h(Ljava/util/Date;)Lp1/e;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lp1/e;->e()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lo1/o0;->q(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Ljava/util/Calendar;

    .line 10
    invoke-virtual {p1}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lo1/o0;->q(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 12
    check-cast p1, Ljava/util/Map;

    .line 13
    const-class v0, Ljava/time/LocalDate;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "day"

    const-string v2, "month"

    const-string v3, "year"

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v2, p1}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 15
    :cond_4
    const-class v0, Ljava/time/LocalDateTime;

    iget-object v4, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "minute"

    const-string v5, "hour"

    const-string v6, "second"

    if-eqz v0, :cond_5

    .line 16
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 17
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 18
    invoke-static/range {v7 .. v13}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p1

    return-object p1

    .line 19
    :cond_5
    const-class v0, Ljava/time/LocalTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "nano"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln1/c;->i(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 21
    :cond_6
    new-instance v0, Ln1/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lo1/o0;->a:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Unsupported type: [{}] from map: [{}]"

    invoke-direct {v0, p1, v1}, Ln1/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 22
    :cond_7
    invoke-virtual {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo1/o0;->j(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;
    .locals 3

    .line 1
    invoke-static {p1}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    const-class v0, Ljava/time/DayOfWeek;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Le2/b0;->j0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/time/DayOfWeek;->valueOf(Ljava/lang/String;)Ljava/time/DayOfWeek;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    const-class v0, Ljava/time/Month;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p1}, Le2/b0;->j0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/time/Month;->valueOf(Ljava/lang/String;)Ljava/time/Month;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    const-class v0, Ljava/time/chrono/Era;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p1}, Le2/b0;->j0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/time/chrono/IsoEra;->valueOf(Ljava/lang/String;)Ljava/time/chrono/IsoEra;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    const-class v0, Ljava/time/MonthDay;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-static {p1}, Ljava/time/MonthDay;->parse(Ljava/lang/CharSequence;)Ljava/time/MonthDay;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget-object v0, p0, Lo1/o0;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 11
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 12
    sget-object v1, Lo1/m0;->a:Lo1/m0;

    invoke-virtual {v0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Instant;

    .line 13
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatter;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {p1}, Lp1/f;->q(Ljava/lang/CharSequence;)Lp1/e;

    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lp1/e;

    invoke-virtual {p1}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lp1/e;->e()Ljava/time/ZoneId;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 17
    :goto_0
    invoke-virtual {p0, p1, v0}, Lo1/o0;->q(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method public final q(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;
    .locals 3

    .line 1
    const-class v0, Ljava/time/Instant;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lo1/n0;->a:Lo1/n0;

    invoke-static {p2, v0}, Le2/p;->d(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/time/ZoneId;

    const/4 v0, 0x0

    .line 3
    const-class v1, Ljava/time/LocalDateTime;

    iget-object v2, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    const-class v1, Ljava/time/LocalDate;

    iget-object v2, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    const-class v1, Ljava/time/LocalTime;

    iget-object v2, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    const-class v1, Ljava/time/ZonedDateTime;

    iget-object v2, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {p1, p2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_4
    const-class v1, Ljava/time/OffsetDateTime;

    iget-object v2, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-static {p1, p2}, Ljava/time/OffsetDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetDateTime;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_5
    const-class v1, Ljava/time/OffsetTime;

    iget-object v2, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-static {p1, p2}, Ljava/time/OffsetTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/OffsetTime;

    move-result-object v0

    :cond_6
    :goto_0
    return-object v0
.end method

.method public final u(Ljava/time/LocalDateTime;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 1
    const-class v0, Ljava/time/Instant;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lp1/f;->w(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Ljava/time/LocalDate;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v0, Ljava/time/LocalTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    const-class v0, Ljava/time/ZonedDateTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    const-class v0, Ljava/time/OffsetDateTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    const-class v0, Ljava/time/OffsetTime;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toOffsetDateTime()Ljava/time/OffsetDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/OffsetDateTime;->toOffsetTime()Ljava/time/OffsetTime;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final x(Ljava/lang/Long;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 1
    const-class v0, Ljava/time/DayOfWeek;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p1}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Ljava/time/Month;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v0, Ljava/time/chrono/Era;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toIntExact(J)I

    move-result p1

    invoke-static {p1}, Ljava/time/chrono/IsoEra;->of(I)Ljava/time/chrono/IsoEra;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    iget-object v0, p0, Lo1/o0;->b:Ljava/lang/String;

    const-string v1, "#sss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lo1/o0;->q(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p1

    return-object p1
.end method

.method public final y(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/TemporalAccessor;
    .locals 2

    .line 1
    const-class v0, Ljava/time/DayOfWeek;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/time/DayOfWeek;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/DayOfWeek;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    const-class v0, Ljava/time/Month;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Ljava/time/Month;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Month;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    const-class v0, Ljava/time/MonthDay;

    iget-object v1, p0, Lo1/o0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {p1}, Ljava/time/MonthDay;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    instance-of v0, p1, Ljava/time/LocalDateTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 8
    move-object v0, p1

    check-cast v0, Ljava/time/LocalDateTime;

    invoke-virtual {p0, v0}, Lo1/o0;->u(Ljava/time/LocalDateTime;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_4

    .line 10
    move-object v0, p1

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {p0, v0}, Lo1/o0;->D(Ljava/time/ZonedDateTime;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 11
    invoke-static {p1}, Lp1/f;->w(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lo1/o0;->q(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    :cond_5
    return-object v0
.end method
