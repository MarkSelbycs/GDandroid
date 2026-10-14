.class public Lo1/c0;
.super Ln1/a;
.source "NumberConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln1/a;-><init>()V

    .line 2
    const-class v0, Ljava/lang/Number;

    iput-object v0, p0, Lo1/c0;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ln1/a;-><init>()V

    if-nez p1, :cond_0

    .line 4
    const-class p1, Ljava/lang/Number;

    :cond_0
    iput-object p1, p0, Lo1/c0;->a:Ljava/lang/Class;

    return-void
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Number;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Double;

    const-class v1, Ljava/lang/Integer;

    const-class v2, Ljava/lang/Long;

    instance-of v3, p0, Ljava/lang/Enum;

    if-eqz v3, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lo1/c0;->h(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v3, p0, [B

    if-eqz v3, :cond_1

    .line 4
    check-cast p0, [B

    sget-object p2, Le2/e;->a:Ljava/nio/ByteOrder;

    invoke-static {p0, p1, p2}, Le2/e;->g([BLjava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    const-class v3, Ljava/lang/Byte;

    const/4 v4, 0x0

    if-ne v3, p1, :cond_5

    .line 6
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_2

    .line 7
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_3

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Le2/d;->d(Z)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 11
    :try_start_0
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    .line 12
    :catch_0
    invoke-static {p0}, Le2/o;->j(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    const-class v3, Ljava/lang/Short;

    if-ne v3, p1, :cond_9

    .line 14
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_6

    .line 15
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 16
    :cond_6
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 17
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Le2/d;->p(Z)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 18
    :cond_7
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 19
    :try_start_1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v4

    .line 20
    :catch_1
    invoke-static {p0}, Le2/o;->j(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_9
    if-ne v1, p1, :cond_10

    .line 21
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_a

    .line 22
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 23
    :cond_a
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_b

    .line 24
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Le2/d;->l(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 25
    :cond_b
    instance-of p1, p0, Ljava/util/Date;

    if-eqz p1, :cond_c

    .line 26
    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 27
    :cond_c
    instance-of p1, p0, Ljava/util/Calendar;

    if-eqz p1, :cond_d

    .line 28
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 29
    :cond_d
    instance-of p1, p0, Ljava/time/temporal/TemporalAccessor;

    if-eqz p1, :cond_e

    .line 30
    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    invoke-static {p0}, Lp1/f;->w(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 31
    :cond_e
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 32
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2

    :cond_f
    invoke-static {p0}, Le2/o;->h(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    return-object v4

    .line 33
    :cond_10
    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v3, p1, :cond_11

    .line 34
    invoke-static {p0, v1, p2}, Lo1/c0;->h(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 35
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object p1

    :cond_11
    if-ne v2, p1, :cond_18

    .line 36
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_12

    .line 37
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 38
    :cond_12
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_13

    .line 39
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Le2/d;->n(Z)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 40
    :cond_13
    instance-of p1, p0, Ljava/util/Date;

    if-eqz p1, :cond_14

    .line 41
    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 42
    :cond_14
    instance-of p1, p0, Ljava/util/Calendar;

    if-eqz p1, :cond_15

    .line 43
    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 44
    :cond_15
    instance-of p1, p0, Ljava/time/temporal/TemporalAccessor;

    if-eqz p1, :cond_16

    .line 45
    check-cast p0, Ljava/time/temporal/TemporalAccessor;

    invoke-static {p0}, Lp1/f;->w(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 46
    :cond_16
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_3

    :cond_17
    invoke-static {p0}, Le2/o;->i(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_3
    return-object v4

    .line 48
    :cond_18
    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v1, p1, :cond_19

    .line 49
    invoke-static {p0, v2, p2}, Lo1/c0;->h(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object p1

    .line 51
    :cond_19
    const-class v1, Ljava/util/concurrent/atomic/LongAdder;

    if-ne v1, p1, :cond_1a

    .line 52
    invoke-static {p0, v2, p2}, Lo1/c0;->h(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 53
    new-instance p1, Ljava/util/concurrent/atomic/LongAdder;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/LongAdder;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    return-object p1

    .line 55
    :cond_1a
    const-class v1, Ljava/lang/Float;

    if-ne v1, p1, :cond_1e

    .line 56
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1b

    .line 57
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 58
    :cond_1b
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_1c

    .line 59
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Le2/d;->j(Z)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 60
    :cond_1c
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 61
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_4

    :cond_1d
    invoke-static {p0}, Le2/o;->g(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :goto_4
    return-object v4

    :cond_1e
    if-ne v0, p1, :cond_22

    .line 62
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_1f

    .line 63
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Le2/o;->n(Ljava/lang/Number;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1f
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_20

    .line 65
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Le2/d;->h(Z)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 66
    :cond_20
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_5

    :cond_21
    invoke-static {p0}, Le2/o;->f(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :goto_5
    return-object v4

    .line 68
    :cond_22
    const-class v1, Ljava/util/concurrent/atomic/DoubleAdder;

    if-ne v1, p1, :cond_23

    .line 69
    invoke-static {p0, v0, p2}, Lo1/c0;->h(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 70
    new-instance p1, Ljava/util/concurrent/atomic/DoubleAdder;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/DoubleAdder;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/DoubleAdder;->add(D)V

    return-object p1

    .line 72
    :cond_23
    const-class v0, Ljava/math/BigDecimal;

    if-ne v0, p1, :cond_24

    .line 73
    invoke-static {p0, p2}, Lo1/c0;->q(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 74
    :cond_24
    const-class v0, Ljava/math/BigInteger;

    if-ne v0, p1, :cond_25

    .line 75
    invoke-static {p0, p2}, Lo1/c0;->u(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 76
    :cond_25
    const-class v0, Ljava/lang/Number;

    if-ne v0, p1, :cond_29

    .line 77
    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_26

    .line 78
    check-cast p0, Ljava/lang/Number;

    return-object p0

    .line 79
    :cond_26
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_27

    .line 80
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Le2/d;->l(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 81
    :cond_27
    invoke-interface {p2, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 82
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_6

    :cond_28
    invoke-static {p0}, Le2/o;->j(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    :goto_6
    return-object v4

    .line 83
    :cond_29
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Unsupport Number type: {}"

    invoke-static {p1, p2}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Number;

    invoke-static {p0}, Le2/o;->k(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_0
    return-object p0

    .line 5
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Le2/o;->l(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 4
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_0
    return-object p0

    .line 5
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Le2/o;->m(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/c0;->j(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb2/c;->W(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 4
    invoke-static {p1, v0}, Lb2/c;->S(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo1/c0;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lo1/c0;->a:Ljava/lang/Class;

    new-instance v1, Lo1/b0;

    invoke-direct {v1, p0}, Lo1/b0;-><init>(Lo1/c0;)V

    invoke-static {p1, v0, v1}, Lo1/c0;->h(Ljava/lang/Object;Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method
