.class public Lg2/e;
.super Ljava/lang/Object;
.source "TemporalAccessorSerializer.java"

# interfaces
.implements Lg2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg2/b<",
        "Ljava/time/temporal/TemporalAccessor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/time/temporal/TemporalAccessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/time/temporal/TemporalAccessor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg2/e;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lf2/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lf2/l;

    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    invoke-virtual {p0, p1, p2}, Lg2/e;->b(Lf2/l;Ljava/time/temporal/TemporalAccessor;)V

    return-void
.end method

.method public b(Lf2/l;Ljava/time/temporal/TemporalAccessor;)V
    .locals 8

    .line 1
    instance-of v0, p2, Ljava/time/LocalDate;

    const-string v1, "day"

    const-string v2, "month"

    const-string v3, "year"

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Ljava/time/LocalDate;

    .line 3
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 4
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 5
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto/16 :goto_0

    .line 6
    :cond_0
    instance-of v0, p2, Ljava/time/LocalDateTime;

    const-string v4, "nano"

    const-string v5, "second"

    const-string v6, "minute"

    const-string v7, "hour"

    if-eqz v0, :cond_1

    .line 7
    check-cast p2, Ljava/time/LocalDateTime;

    .line 8
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 9
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 10
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 11
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 12
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 13
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 14
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getNano()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto :goto_0

    .line 15
    :cond_1
    instance-of v0, p2, Ljava/time/LocalTime;

    if-eqz v0, :cond_2

    .line 16
    check-cast p2, Ljava/time/LocalTime;

    .line 17
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 18
    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 19
    invoke-virtual {p2}, Ljava/time/LocalTime;->getSecond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    .line 20
    invoke-virtual {p2}, Ljava/time/LocalTime;->getNano()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance p1, Lf2/h;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Unsupported type to JSON: {}"

    invoke-direct {p1, p2, v0}, Lf2/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
