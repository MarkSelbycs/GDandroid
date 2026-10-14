.class public Lcom/cndatacom/zexcheck/v3/util/CRC16Util;
.super Ljava/lang/Object;
.source "CRC16Util.java"


# static fields
.field private static final CRC16_POLY:I = 0x8005


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcCrc16([B)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    move v4, v0

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    and-int/lit8 v5, v3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    ushr-int/lit8 v3, v3, 0x1

    const v5, 0xa001

    xor-int/2addr v3, v5

    goto :goto_2

    :cond_1
    ushr-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method
