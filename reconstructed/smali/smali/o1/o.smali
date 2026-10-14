.class public Lo1/o;
.super Ln1/a;
.source "DurationConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/time/Duration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/o;->h(Ljava/lang/Object;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)Ljava/time/Duration;
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/time/temporal/TemporalAmount;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/time/temporal/TemporalAmount;

    invoke-static {p1}, Ljava/time/Duration;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Duration;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p1

    return-object p1
.end method
