.class public Lp1/e;
.super Ljava/util/Date;
.source "DateTime.java"


# static fields
.field public static e:Z


# instance fields
.field public a:Z

.field public b:Lp1/j;

.field public c:Ljava/util/TimeZone;

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Lp1/e;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lp1/e;-><init>(JLjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/TimeZone;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lp1/e;->a:Z

    .line 14
    sget-object p1, Lp1/j;->c:Lp1/j;

    iput-object p1, p0, Lp1/e;->b:Lp1/j;

    .line 15
    sget-object p1, Lp1/d;->a:Lp1/d;

    invoke-static {p3, p1}, Le2/p;->d(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TimeZone;

    iput-object p1, p0, Lp1/e;->c:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {p2}, Lq1/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p1, p2}, Lq1/m;->l(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p2}, Lp1/f;->m(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-static {p1, p2}, Lp1/e;->h(Ljava/lang/CharSequence;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object p1

    .line 19
    :goto_0
    invoke-direct {p0, p1}, Lp1/e;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lq1/c;)V
    .locals 2

    .line 20
    sget-object v0, Le2/c0;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le2/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lp1/e;-><init>(Ljava/lang/CharSequence;Lq1/c;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lq1/c;Z)V
    .locals 0

    .line 21
    invoke-static {p1, p2, p3}, Lp1/e;->f(Ljava/lang/CharSequence;Lq1/c;Z)Ljava/util/Calendar;

    move-result-object p1

    invoke-direct {p0, p1}, Lp1/e;-><init>(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Instant;)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lp1/e;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/time/temporal/TemporalAccessor;)V
    .locals 0

    .line 10
    invoke-static {p1}, Lp1/h;->e(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p1

    invoke-direct {p0, p1}, Lp1/e;-><init>(Ljava/time/Instant;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lp1/e;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    .line 8
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result p1

    invoke-static {p1}, Lp1/j;->e(I)Lp1/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp1/e;->j(Lp1/j;)Lp1/e;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 3
    instance-of v0, p1, Lp1/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp1/e;

    iget-object v0, v0, Lp1/e;->c:Ljava/util/TimeZone;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 5
    :goto_0
    invoke-direct {p0, p1, v0}, Lp1/e;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p1, v0}, Le2/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lp1/e;-><init>(JLjava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lp1/e;-><init>(JLjava/util/TimeZone;)V

    return-void
.end method

.method public static f(Ljava/lang/CharSequence;Lq1/c;Z)Ljava/util/Calendar;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Parser or DateFromat must be not null !"

    .line 1
    invoke-static {p1, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Date String must be not blank !"

    .line 2
    invoke-static {p0, v2, v1}, Lv1/e;->k(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3
    invoke-static {p0, p2, p1}, Lp1/a;->d(Ljava/lang/CharSequence;ZLq1/c;)Ljava/util/Calendar;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    sget-object p0, Lp1/j;->c:Lp1/j;

    invoke-virtual {p0}, Lp1/j;->b()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    return-object p2

    .line 5
    :cond_0
    new-instance p2, Lp1/b;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const/4 p0, 0x1

    invoke-interface {p1}, Lq1/b;->f()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "Parse [{}] with format [{}] error!"

    invoke-direct {p2, p0, v1}, Lp1/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public static h(Ljava/lang/CharSequence;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Date String must be not blank !"

    .line 1
    invoke-static {p0, v2, v1}, Lv1/e;->k(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    .line 3
    instance-of v2, p1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_0

    .line 4
    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    new-instance v2, Lp1/b;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x1

    aput-object p1, v3, p0

    const-string p0, "Parse [{}] with format [{}] error!"

    invoke-static {p0, v3}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lp1/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public D()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public F()Ljava/sql/Date;
    .locals 3

    new-instance v0, Ljava/sql/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0
.end method

.method public H(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public I(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 1
    invoke-static {v1, v0, p1}, Lp1/f;->n(Ljava/lang/String;Ljava/util/Locale;Ljava/util/TimeZone;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp1/e;->H(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lp1/c;->l:Lq1/e;

    invoke-virtual {p0, p1}, Lp1/e;->M(Lq1/d;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public M(Lq1/d;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p0}, Lq1/d;->e(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public P()Ljava/sql/Timestamp;
    .locals 3

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0
.end method

.method public b()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lp1/e;->c:Ljava/util/TimeZone;

    return-object v0
.end method

.method public e()Ljava/time/ZoneId;
    .locals 1

    iget-object v0, p0, Lp1/e;->c:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public j(Lp1/j;)Lp1/e;
    .locals 0

    iput-object p1, p0, Lp1/e;->b:Lp1/j;

    return-object p0
.end method

.method public setTime(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp1/e;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lp1/b;

    const-string p2, "This is not a mutable object !"

    invoke-direct {p1, p2}, Lp1/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lp1/e;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lp1/e;->c:Ljava/util/TimeZone;

    invoke-virtual {p0, v0}, Lp1/e;->I(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/Calendar;
    .locals 1

    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp1/e;->x(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lp1/e;->c:Ljava/util/TimeZone;

    invoke-virtual {p0, v0, p1}, Lp1/e;->y(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    sget-object p2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {p2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 3
    :goto_0
    iget-object p2, p0, Lp1/e;->b:Lp1/j;

    invoke-virtual {p2}, Lp1/j;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 4
    iget p2, p0, Lp1/e;->d:I

    if-lez p2, :cond_2

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 6
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1
.end method
