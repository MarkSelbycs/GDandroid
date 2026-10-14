.class public abstract Lp4/p;
.super Lp4/r;
.source "PrivAES.java"


# static fields
.field public static final h:Ln4/a;


# instance fields
.field public g:Lp4/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lp4/p;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/p;->h:Ln4/a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lp4/r;-><init>()V

    const/16 v0, 0x10

    .line 2
    iput v0, p0, Lp4/r;->e:I

    const-string v1, "AES/CFB/NoPadding"

    .line 3
    iput-object v1, p0, Lp4/r;->a:Ljava/lang/String;

    const-string v1, "AES"

    .line 4
    iput-object v1, p0, Lp4/r;->b:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only 128, 192 and 256 bit AES is allowed. Requested ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iput p1, p0, Lp4/r;->c:I

    .line 7
    invoke-static {}, Lp4/u;->a()Lp4/u;

    move-result-object p1

    iput-object p1, p0, Lp4/p;->g:Lp4/u;

    .line 8
    new-instance p1, Lp4/k;

    invoke-direct {p1}, Lp4/k;-><init>()V

    iput-object p1, p0, Lp4/r;->d:Lp4/k;

    return-void
.end method

.method public static h([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Lr4/k;

    invoke-direct {v0, p0}, Lr4/k;-><init>([B)V

    invoke-virtual {v0}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public E()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public L([BLr4/k;[BLp4/i;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp4/p;->S()I

    move-result p2

    new-array p3, p2, [B

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v0, p2, :cond_2

    .line 4
    invoke-interface {p4, p3, v1, v0}, Lp4/i;->O([BII)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sub-int v2, p2, v0

    .line 5
    invoke-interface {p4}, Lp4/i;->k()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 6
    invoke-interface {p4}, Lp4/i;->k()I

    move-result v2

    .line 7
    :cond_1
    invoke-static {p1, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public S()I
    .locals 1

    iget v0, p0, Lp4/r;->c:I

    return v0
.end method

.method public d([BII[BJJLp4/l;)[B
    .locals 13

    move-object v6, p0

    move-object/from16 v4, p4

    move-object/from16 v0, p9

    const/16 v1, 0x10

    new-array v5, v1, [B

    .line 1
    array-length v2, v4

    iget v3, v6, Lp4/r;->c:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    const/16 v3, 0x18

    shr-long v7, p5, v3

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    const/4 v2, 0x1

    shr-long v7, p5, v1

    and-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    const/4 v2, 0x2

    const/16 v7, 0x8

    shr-long v11, p5, v7

    and-long/2addr v11, v9

    long-to-int v8, v11

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    const/4 v2, 0x3

    and-long v11, p5, v9

    long-to-int v8, v11

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    const/4 v2, 0x4

    shr-long v11, p7, v3

    and-long/2addr v11, v9

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    const/4 v2, 0x5

    shr-long v11, p7, v1

    and-long/2addr v11, v9

    long-to-int v1, v11

    int-to-byte v1, v1

    aput-byte v1, v5, v2

    const/4 v1, 0x6

    shr-long v2, p7, v7

    and-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    const/4 v1, 0x7

    and-long v2, p7, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    .line 2
    iget-object v1, v0, Lp4/l;->a:[B

    iget v0, v0, Lp4/l;->b:I

    invoke-static {v1, v0, v5, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    sget-object v0, Lp4/p;->h:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVect is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lp4/p;->h([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 5
    invoke-virtual/range {v0 .. v5}, Lp4/r;->c([BII[B[B)[B

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Needed key length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lp4/r;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g([BII[BJJLp4/l;)[B
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v2, p9

    const/16 v3, 0x10

    new-array v4, v3, [B

    .line 1
    iget-object v5, v1, Lp4/p;->g:Lp4/u;

    invoke-virtual {v5}, Lp4/u;->b()J

    move-result-wide v5

    .line 2
    array-length v7, v0

    iget v8, v1, Lp4/r;->c:I

    if-ne v7, v8, :cond_5

    .line 3
    iget-object v7, v2, Lp4/l;->a:[B

    const/16 v8, 0x8

    if-eqz v7, :cond_0

    iget v7, v2, Lp4/l;->c:I

    if-ge v7, v8, :cond_1

    :cond_0
    new-array v7, v8, [B

    .line 4
    iput-object v7, v2, Lp4/l;->a:[B

    .line 5
    :cond_1
    iput v8, v2, Lp4/l;->c:I

    const/4 v7, 0x0

    .line 6
    iput v7, v2, Lp4/l;->b:I

    const/16 v9, 0x18

    shr-long v10, p5, v9

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v7

    shr-long v10, p5, v3

    and-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    const/4 v11, 0x1

    aput-byte v10, v4, v11

    const/4 v10, 0x2

    shr-long v14, p5, v8

    and-long/2addr v14, v12

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v10

    const/4 v10, 0x3

    and-long v14, p5, v12

    long-to-int v14, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v10

    const/4 v10, 0x4

    shr-long v14, p7, v9

    and-long/2addr v14, v12

    long-to-int v9, v14

    int-to-byte v9, v9

    aput-byte v9, v4, v10

    const/4 v9, 0x5

    shr-long v14, p7, v3

    and-long/2addr v14, v12

    long-to-int v3, v14

    int-to-byte v3, v3

    aput-byte v3, v4, v9

    const/4 v3, 0x6

    shr-long v9, p7, v8

    and-long/2addr v9, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    const/4 v3, 0x7

    and-long v9, p7, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    const/16 v3, 0x38

    move v9, v8

    :goto_0
    if-ltz v3, :cond_2

    shr-long v14, v5, v3

    and-long/2addr v14, v12

    long-to-int v10, v14

    int-to-byte v10, v10

    .line 7
    aput-byte v10, v4, v9

    add-int/lit8 v3, v3, -0x8

    add-int/2addr v9, v11

    goto :goto_0

    .line 8
    :cond_2
    iget-object v3, v2, Lp4/l;->a:[B

    invoke-static {v4, v8, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    sget-object v3, Lp4/p;->h:Ln4/a;

    invoke-interface {v3}, Ln4/a;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initVect is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lp4/p;->h([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_3
    const/4 v5, 0x0

    .line 11
    :try_start_0
    invoke-virtual {v1, v0, v4}, Lp4/r;->f([B[B)Ljavax/crypto/Cipher;

    move-result-object v4

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 12
    invoke-virtual {v4, v6, v7, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 13
    iget-object v7, v1, Lp4/r;->d:Lp4/k;

    invoke-virtual {v7, v4}, Lp4/k;->a(Ljavax/crypto/Cipher;)V

    .line 14
    invoke-interface {v3}, Ln4/a;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aes encrypt: Data to encrypt "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lp4/p;->h([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aes encrypt: used key "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lp4/p;->h([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aes encrypt: created privacy_params "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lp4/l;->a:[B

    .line 18
    invoke-static {v2}, Lp4/p;->h([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-interface {v3, v0}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aes encrypt: encrypted Data  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {v5}, Lp4/p;->h([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {v3, v0}, Ln4/a;->f(Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 23
    sget-object v2, Lp4/p;->h:Ln4/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypt Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ln4/a;->c(Ljava/io/Serializable;)V

    :cond_4
    :goto_1
    return-object v5

    .line 24
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Needed key length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lp4/r;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public w()I
    .locals 1

    invoke-virtual {p0}, Lp4/p;->S()I

    move-result v0

    return v0
.end method
