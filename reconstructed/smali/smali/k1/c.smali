.class public Lk1/c;
.super Ljava/lang/Object;
.source "Base64Decoder.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le2/g;->b:Ljava/nio/charset/Charset;

    sput-object v0, Lk1/c;->a:Ljava/nio/charset/Charset;

    const/16 v0, 0x7b

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lk1/c;->b:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x2t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)[B
    .locals 1

    sget-object v0, Lk1/c;->a:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lb2/c;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lk1/c;->b([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[B
    .locals 2

    .line 1
    invoke-static {p0}, Le2/q;->c([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lk1/c;->c([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static c([BII)[B
    .locals 10

    .line 1
    invoke-static {p0}, Le2/q;->c([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ly1/b;

    invoke-direct {v0, p1}, Ly1/b;-><init>(I)V

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    mul-int/lit8 p2, p2, 0x3

    .line 3
    div-int/lit8 p2, p2, 0x4

    new-array v2, p2, [B

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ly1/b;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_4

    .line 5
    invoke-static {p0, v0, p1}, Lk1/c;->d([BLy1/b;I)B

    move-result v3

    .line 6
    invoke-static {p0, v0, p1}, Lk1/c;->d([BLy1/b;I)B

    move-result v4

    .line 7
    invoke-static {p0, v0, p1}, Lk1/c;->d([BLy1/b;I)B

    move-result v5

    .line 8
    invoke-static {p0, v0, p1}, Lk1/c;->d([BLy1/b;I)B

    move-result v6

    const/4 v7, -0x2

    if-eq v7, v4, :cond_2

    add-int/lit8 v8, v1, 0x1

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v9, v4, 0x4

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 9
    aput-byte v3, v2, v1

    move v1, v8

    :cond_2
    if-eq v7, v5, :cond_3

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v8, v5, 0x2

    or-int/2addr v4, v8

    int-to-byte v4, v4

    .line 10
    aput-byte v4, v2, v1

    move v1, v3

    :cond_3
    if-eq v7, v6, :cond_1

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v4, v5, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    .line 11
    aput-byte v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_4
    if-ne v1, p2, :cond_5

    return-object v2

    .line 12
    :cond_5
    new-array p0, v1, [B

    invoke-static {v2, p0, v1}, Le2/c;->k(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public static d([BLy1/b;I)B
    .locals 3

    .line 1
    :cond_0
    invoke-virtual {p1}, Ly1/b;->intValue()I

    move-result v0

    if-gt v0, p2, :cond_1

    .line 2
    invoke-virtual {p1}, Ly1/b;->intValue()I

    move-result v0

    aget-byte v0, p0, v0

    .line 3
    invoke-virtual {p1}, Ly1/b;->f()Ly1/b;

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 4
    sget-object v2, Lk1/c;->b:[B

    aget-byte v0, v2, v0

    if-le v0, v1, :cond_0

    return v0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method public static e(B)Z
    .locals 2

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v0, Lk1/c;->b:[B

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-byte p0, v0, p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
