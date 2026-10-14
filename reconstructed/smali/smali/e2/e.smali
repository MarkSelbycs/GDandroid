.class public Le2/e;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# static fields
.field public static final a:Ljava/nio/ByteOrder;

.field public static final b:Ljava/nio/ByteOrder;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Le2/e;->a:Ljava/nio/ByteOrder;

    const-string v1, "sun.cpu.endian"

    .line 2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "little"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    sput-object v0, Le2/e;->b:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/nio/ByteOrder;)D
    .locals 0

    invoke-static {p0, p1}, Le2/e;->f([BLjava/nio/ByteOrder;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static b([BLjava/nio/ByteOrder;)F
    .locals 0

    invoke-static {p0, p1}, Le2/e;->d([BLjava/nio/ByteOrder;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static c([BILjava/nio/ByteOrder;)I
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, p2, :cond_0

    .line 2
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p2

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x3

    .line 3
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    aget-byte p0, p0, p1

    goto :goto_0
.end method

.method public static d([BLjava/nio/ByteOrder;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Le2/e;->c([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0
.end method

.method public static e([BILjava/nio/ByteOrder;)J
    .locals 6

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    if-ne v0, p2, :cond_0

    const/4 p2, 0x7

    :goto_0
    if-ltz p2, :cond_1

    shl-long/2addr v2, v1

    add-int v0, p2, p1

    .line 2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr v2, v4

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_1
    if-ge p2, v1, :cond_1

    shl-long/2addr v2, v1

    add-int v0, p2, p1

    .line 3
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    or-long/2addr v2, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-wide v2
.end method

.method public static f([BLjava/nio/ByteOrder;)J
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Le2/e;->e([BILjava/nio/ByteOrder;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static g([BLjava/lang/Class;Ljava/nio/ByteOrder;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">([B",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/nio/ByteOrder;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Byte;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    aget-byte p0, p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_1

    .line 3
    :cond_0
    const-class v0, Ljava/lang/Short;

    if-ne v0, p1, :cond_1

    .line 4
    invoke-static {p0, p2}, Le2/e;->i([BLjava/nio/ByteOrder;)S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_1

    .line 5
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne v0, p1, :cond_2

    .line 6
    invoke-static {p0, p2}, Le2/e;->d([BLjava/nio/ByteOrder;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_1

    .line 7
    :cond_2
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v0, p1, :cond_3

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p0, p2}, Le2/e;->d([BLjava/nio/ByteOrder;)I

    move-result p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    :goto_0
    move-object p0, p1

    goto/16 :goto_1

    .line 9
    :cond_3
    const-class v0, Ljava/lang/Long;

    if-ne v0, p1, :cond_4

    .line 10
    invoke-static {p0, p2}, Le2/e;->f([BLjava/nio/ByteOrder;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_1

    .line 11
    :cond_4
    const-class v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v0, p1, :cond_5

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p0, p2}, Le2/e;->f([BLjava/nio/ByteOrder;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto :goto_0

    .line 13
    :cond_5
    const-class v0, Ljava/util/concurrent/atomic/LongAdder;

    if-ne v0, p1, :cond_6

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/LongAdder;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/LongAdder;-><init>()V

    .line 15
    invoke-static {p0, p2}, Le2/e;->f([BLjava/nio/ByteOrder;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/LongAdder;->add(J)V

    goto :goto_0

    .line 16
    :cond_6
    const-class v0, Ljava/lang/Float;

    if-ne v0, p1, :cond_7

    .line 17
    invoke-static {p0, p2}, Le2/e;->b([BLjava/nio/ByteOrder;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    .line 18
    :cond_7
    const-class v0, Ljava/lang/Double;

    if-ne v0, p1, :cond_8

    .line 19
    invoke-static {p0, p2}, Le2/e;->a([BLjava/nio/ByteOrder;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_1

    .line 20
    :cond_8
    const-class v0, Ljava/util/concurrent/atomic/DoubleAdder;

    if-ne v0, p1, :cond_9

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/DoubleAdder;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/DoubleAdder;-><init>()V

    .line 22
    invoke-static {p0, p2}, Le2/e;->a([BLjava/nio/ByteOrder;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/DoubleAdder;->add(D)V

    goto :goto_0

    .line 23
    :cond_9
    const-class v0, Ljava/math/BigDecimal;

    if-ne v0, p1, :cond_a

    .line 24
    invoke-static {p0, p2}, Le2/e;->a([BLjava/nio/ByteOrder;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Le2/o;->k(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_1

    .line 25
    :cond_a
    const-class v0, Ljava/math/BigInteger;

    if-ne v0, p1, :cond_b

    .line 26
    invoke-static {p0, p2}, Le2/e;->f([BLjava/nio/ByteOrder;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_1

    .line 27
    :cond_b
    const-class v0, Ljava/lang/Number;

    if-ne v0, p1, :cond_c

    .line 28
    invoke-static {p0, p2}, Le2/e;->a([BLjava/nio/ByteOrder;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_1
    return-object p0

    .line 29
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported Number type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h([BILjava/nio/ByteOrder;)S
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, p2, :cond_0

    .line 2
    aget-byte p2, p0, p1

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    .line 3
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    aget-byte p0, p0, p1

    goto :goto_0
.end method

.method public static i([BLjava/nio/ByteOrder;)S
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Le2/e;->h([BILjava/nio/ByteOrder;)S

    move-result p0

    return p0
.end method

.method public static j(DLjava/nio/ByteOrder;)[B
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Le2/e;->m(JLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static k(FLjava/nio/ByteOrder;)[B
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    invoke-static {p0, p1}, Le2/e;->l(ILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static l(ILjava/nio/ByteOrder;)[B
    .locals 6

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-ne v0, p1, :cond_0

    new-array p1, v5, [B

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v1

    return-object p1

    :cond_0
    new-array p1, v5, [B

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, p1, v1

    return-object p1
.end method

.method public static m(JLjava/nio/ByteOrder;)[B
    .locals 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 1
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const-wide/16 v3, 0xff

    if-ne v2, p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_1

    and-long v5, p0, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 2
    aput-byte v2, v1, p2

    shr-long/2addr p0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    :goto_1
    if-ltz p2, :cond_1

    and-long v5, p0, v3

    long-to-int v2, v5

    int-to-byte v2, v2

    .line 3
    aput-byte v2, v1, p2

    shr-long/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static n(Ljava/lang/Number;)[B
    .locals 1

    sget-object v0, Le2/e;->a:Ljava/nio/ByteOrder;

    invoke-static {p0, v0}, Le2/e;->o(Ljava/lang/Number;Ljava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/Number;Ljava/nio/ByteOrder;)[B
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    aput-byte p0, p1, v0

    return-object p1

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Le2/e;->j(DLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Le2/e;->m(JLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0, p1}, Le2/e;->l(ILjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0, p1}, Le2/e;->p(SLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 12
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0, p1}, Le2/e;->k(FLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0

    .line 13
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1, p1}, Le2/e;->j(DLjava/nio/ByteOrder;)[B

    move-result-object p0

    return-object p0
.end method

.method public static p(SLjava/nio/ByteOrder;)[B
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    and-int/lit16 p1, p0, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p0, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v2

    :goto_0
    return-object v0
.end method
