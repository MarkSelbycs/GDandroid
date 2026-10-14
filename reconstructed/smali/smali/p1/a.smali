.class public Lp1/a;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/util/Calendar;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lp1/a;->b(JLjava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static b(JLjava/util/TimeZone;)Ljava/util/Calendar;
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    .line 2
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p2
.end method

.method public static c(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 2

    .line 1
    instance-of v0, p0, Lp1/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lp1/e;

    invoke-virtual {p0}, Lp1/e;->u()Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lp1/a;->a(J)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/CharSequence;ZLq1/c;)Ljava/util/Calendar;
    .locals 2

    .line 1
    invoke-interface {p2}, Lq1/b;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-interface {p2}, Lq1/b;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 4
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-interface {p2, p0, p1, v0}, Lq1/c;->h(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
