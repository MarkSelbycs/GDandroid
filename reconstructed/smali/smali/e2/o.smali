.class public Le2/o;
.super Ljava/lang/Object;
.source "NumberUtil.java"


# static fields
.field public static final a:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Le2/o;->a:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static b(CCZ)Z
    .locals 0

    invoke-static {p0, p1, p2}, Le2/f;->a(CCZ)Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public static d(Ljava/lang/CharSequence;)Z
    .locals 16

    .line 1
    invoke-static/range {p0 .. p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3
    array-length v2, v0

    .line 4
    aget-char v3, v0, v1

    const/16 v4, 0x2b

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-eq v3, v5, :cond_2

    aget-char v3, v0, v1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v6

    :goto_1
    add-int/lit8 v7, v3, 0x1

    const/16 v8, 0x46

    const/16 v9, 0x66

    const/16 v10, 0x39

    const/16 v11, 0x30

    if-le v2, v7, :cond_a

    .line 5
    aget-char v12, v0, v3

    if-ne v12, v11, :cond_a

    aget-char v12, v0, v7

    const/16 v13, 0x78

    if-eq v12, v13, :cond_3

    aget-char v7, v0, v7

    const/16 v12, 0x58

    if-ne v7, v12, :cond_a

    :cond_3
    add-int/lit8 v3, v3, 0x2

    if-ne v3, v2, :cond_4

    return v1

    .line 6
    :cond_4
    :goto_2
    array-length v2, v0

    if-ge v3, v2, :cond_9

    .line 7
    aget-char v2, v0, v3

    if-lt v2, v11, :cond_5

    aget-char v2, v0, v3

    if-le v2, v10, :cond_7

    :cond_5
    aget-char v2, v0, v3

    const/16 v4, 0x61

    if-lt v2, v4, :cond_6

    aget-char v2, v0, v3

    if-le v2, v9, :cond_7

    :cond_6
    aget-char v2, v0, v3

    const/16 v4, 0x41

    if-lt v2, v4, :cond_8

    aget-char v2, v0, v3

    if-le v2, v8, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    return v1

    :cond_9
    return v6

    :cond_a
    add-int/lit8 v2, v2, -0x1

    move v7, v1

    move v12, v7

    move v13, v12

    move v14, v13

    :goto_4
    const/16 v15, 0x45

    const/16 v5, 0x65

    const/16 v4, 0x2e

    if-lt v3, v2, :cond_18

    add-int/lit8 v8, v2, 0x1

    if-ge v3, v8, :cond_b

    if-eqz v7, :cond_b

    if-nez v12, :cond_b

    const/16 v8, 0x46

    goto :goto_8

    .line 8
    :cond_b
    array-length v2, v0

    if-ge v3, v2, :cond_16

    .line 9
    aget-char v2, v0, v3

    if-lt v2, v11, :cond_c

    aget-char v2, v0, v3

    if-gt v2, v10, :cond_c

    return v6

    .line 10
    :cond_c
    aget-char v2, v0, v3

    if-eq v2, v5, :cond_15

    aget-char v2, v0, v3

    if-ne v2, v15, :cond_d

    goto :goto_7

    .line 11
    :cond_d
    aget-char v2, v0, v3

    if-ne v2, v4, :cond_10

    if-nez v14, :cond_f

    if-eqz v13, :cond_e

    goto :goto_5

    :cond_e
    return v12

    :cond_f
    :goto_5
    return v1

    :cond_10
    if-nez v7, :cond_12

    .line 12
    aget-char v2, v0, v3

    const/16 v4, 0x64

    if-eq v2, v4, :cond_11

    aget-char v2, v0, v3

    const/16 v4, 0x44

    if-eq v2, v4, :cond_11

    aget-char v2, v0, v3

    if-eq v2, v9, :cond_11

    aget-char v2, v0, v3

    const/16 v8, 0x46

    if-ne v2, v8, :cond_12

    :cond_11
    return v12

    .line 13
    :cond_12
    aget-char v2, v0, v3

    const/16 v4, 0x6c

    if-eq v2, v4, :cond_14

    aget-char v0, v0, v3

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_13

    goto :goto_6

    :cond_13
    return v1

    :cond_14
    :goto_6
    if-eqz v12, :cond_15

    if-nez v13, :cond_15

    move v1, v6

    :cond_15
    :goto_7
    return v1

    :cond_16
    if-nez v7, :cond_17

    if-eqz v12, :cond_17

    move v1, v6

    :cond_17
    return v1

    .line 14
    :cond_18
    :goto_8
    aget-char v6, v0, v3

    if-lt v6, v11, :cond_19

    aget-char v6, v0, v3

    if-gt v6, v10, :cond_19

    move v7, v1

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const/4 v12, 0x1

    goto :goto_c

    .line 15
    :cond_19
    aget-char v6, v0, v3

    if-ne v6, v4, :cond_1c

    if-nez v14, :cond_1b

    if-eqz v13, :cond_1a

    goto :goto_9

    :cond_1a
    const/16 v5, 0x2b

    const/16 v6, 0x2d

    const/4 v14, 0x1

    goto :goto_c

    :cond_1b
    :goto_9
    return v1

    .line 16
    :cond_1c
    aget-char v4, v0, v3

    if-eq v4, v5, :cond_21

    aget-char v4, v0, v3

    if-ne v4, v15, :cond_1d

    goto :goto_b

    .line 17
    :cond_1d
    aget-char v4, v0, v3

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_1f

    aget-char v4, v0, v3

    const/16 v6, 0x2d

    if-ne v4, v6, :cond_1e

    goto :goto_a

    :cond_1e
    return v1

    :cond_1f
    const/16 v6, 0x2d

    :goto_a
    if-nez v7, :cond_20

    return v1

    :cond_20
    move v7, v1

    move v12, v7

    goto :goto_c

    :cond_21
    :goto_b
    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eqz v13, :cond_22

    return v1

    :cond_22
    if-nez v12, :cond_23

    return v1

    :cond_23
    const/4 v7, 0x1

    const/4 v13, 0x1

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move v5, v6

    const/4 v6, 0x1

    goto/16 :goto_4
.end method

.method public static e(Ljava/lang/Number;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p0, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 3
    :cond_2
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 4
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Float;->isNaN()Z

    move-result p0

    if-nez p0, :cond_3

    move v0, v2

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public static f(Ljava/lang/String;)D
    .locals 2

    .line 1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 3
    :catch_0
    invoke-static {p0}, Le2/o;->j(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static g(Ljava/lang/String;)F
    .locals 1

    .line 1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    invoke-static {p0}, Le2/o;->j(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "E"

    .line 2
    invoke-static {p0, v0}, Lb2/c;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0x"

    .line 3
    invoke-static {p0, v0}, Lb2/c;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 5
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    invoke-static {p0}, Le2/o;->j(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Unsupported int format: [{}]"

    invoke-static {p0, v2}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v0, "0x"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 5
    :catch_0
    invoke-static {p0}, Le2/o;->j(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-string v0, "0x"

    .line 1
    invoke-static {p0, v0}, Lb2/c;->K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/text/DecimalFormat;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, v0

    check-cast v1, Ljava/text/DecimalFormat;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 6
    :cond_1
    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    throw v0
.end method

.method public static k(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    .line 4
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v0

    .line 6
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v0

    .line 8
    :cond_3
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    .line 9
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 10
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le2/o;->l(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2

    .line 1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Le2/o;->j(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    .line 6
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 7
    :catch_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1

    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static n(Ljava/lang/Number;)D
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static o(Ljava/lang/Number;Z)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Number is null !"

    .line 1
    invoke-static {p0, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Le2/o;->p(Ljava/math/BigDecimal;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Le2/o;->e(Ljava/lang/Number;)Z

    move-result v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "Number is non-finite!"

    invoke-static {v1, v3, v2}, Lv1/e;->e(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_2

    const/16 p1, 0x2e

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_2

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_2

    const/16 p1, 0x45

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_2

    :goto_0
    const-string p1, "0"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p1, "."

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static p(Ljava/math/BigDecimal;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BigDecimal is null !"

    .line 1
    invoke-static {p0, v1, v0}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
