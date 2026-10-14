.class public Lcom/msec/m;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    aget-byte v5, p0, v3

    const/16 v6, 0x28

    if-gt v6, v5, :cond_1

    const/16 v6, 0x7e

    if-gt v5, v6, :cond_1

    const/16 v6, 0x3a

    if-eq v5, v6, :cond_1

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    aput-byte v5, v0, v4

    move v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v4, 0x1

    and-int/lit16 v7, v5, 0xff

    shr-int/lit8 v7, v7, 0x6

    add-int/lit8 v7, v7, 0x23

    int-to-byte v7, v7

    aput-byte v7, v0, v4

    and-int/lit8 v4, v5, 0x3f

    int-to-byte v4, v4

    const/16 v5, 0xc

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v4, v4, 0x2e

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    :goto_1
    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v5, 0x26

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v4, v4, 0x35

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v4, v4, 0x3b

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    goto :goto_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    return-object p0
.end method
