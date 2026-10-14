.class public Lp4/q;
.super Lp4/r;
.source "PrivDES.java"


# static fields
.field public static final h:Lr4/j;

.field public static final i:Ln4/a;


# instance fields
.field public g:Lp4/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lr4/j;

    const-string v1, "1.3.6.1.6.3.10.1.2.2"

    invoke-direct {v0, v1}, Lr4/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp4/q;->h:Lr4/j;

    .line 2
    const-class v0, Lp4/q;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/q;->i:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp4/r;-><init>()V

    const/16 v0, 0x8

    .line 2
    iput v0, p0, Lp4/r;->e:I

    const-string v1, "DES/CBC/NoPadding"

    .line 3
    iput-object v1, p0, Lp4/r;->a:Ljava/lang/String;

    const-string v1, "DES"

    .line 4
    iput-object v1, p0, Lp4/r;->b:Ljava/lang/String;

    .line 5
    iput v0, p0, Lp4/r;->c:I

    .line 6
    invoke-static {}, Lp4/u;->a()Lp4/u;

    move-result-object v0

    iput-object v0, p0, Lp4/q;->g:Lp4/u;

    .line 7
    new-instance v0, Lp4/k;

    invoke-direct {v0}, Lp4/k;-><init>()V

    iput-object v0, p0, Lp4/r;->d:Lp4/k;

    return-void
.end method


# virtual methods
.method public E()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public L([BLr4/k;[BLp4/i;)[B
    .locals 0

    return-object p1
.end method

.method public S()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public a()Lr4/j;
    .locals 1

    sget-object v0, Lp4/q;->h:Lr4/j;

    invoke-virtual {v0}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j;

    return-object v0
.end method

.method public d([BII[BJJLp4/l;)[B
    .locals 6

    .line 1
    rem-int/lit8 p5, p3, 0x8

    if-nez p5, :cond_2

    const/16 p5, 0x8

    if-lt p3, p5, :cond_2

    iget p6, p9, Lp4/l;->c:I

    if-ne p6, p5, :cond_2

    .line 2
    array-length p6, p4

    const/16 p7, 0x10

    if-lt p6, p7, :cond_1

    new-array v5, p5, [B

    const/4 p6, 0x0

    :goto_0
    if-ge p6, p5, :cond_0

    add-int/lit8 p7, p6, 0x8

    .line 3
    aget-byte p7, p4, p7

    iget-object p8, p9, Lp4/l;->a:[B

    aget-byte p8, p8, p6

    xor-int/2addr p7, p8

    int-to-byte p7, p7

    aput-byte p7, v5, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lp4/r;->c([BII[B[B)[B

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    sget-object p1, Lp4/q;->i:Ln4/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Wrong Key length: need at least 16 bytes, is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "decryptionKey has illegal length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (should be at least 16)."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Length ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") is not multiple of 8 or decrypt params has not length 8 ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p9, Lp4/l;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g([BII[BJJLp4/l;)[B
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p4

    move-object/from16 v2, p9

    .line 1
    iget-object v3, v1, Lp4/q;->g:Lp4/u;

    invoke-virtual {v3}, Lp4/u;->b()J

    move-result-wide v3

    long-to-int v3, v3

    .line 2
    array-length v4, v0

    const/16 v5, 0x10

    if-lt v4, v5, :cond_8

    .line 3
    iget-object v4, v2, Lp4/l;->a:[B

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    iget v4, v2, Lp4/l;->c:I

    if-ge v4, v5, :cond_1

    :cond_0
    new-array v4, v5, [B

    .line 4
    iput-object v4, v2, Lp4/l;->a:[B

    .line 5
    :cond_1
    iput v5, v2, Lp4/l;->c:I

    const/4 v4, 0x0

    .line 6
    iput v4, v2, Lp4/l;->b:I

    .line 7
    sget-object v6, Lp4/q;->i:Ln4/a;

    invoke-interface {v6}, Ln4/a;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "Preparing decrypt_params."

    .line 8
    invoke-interface {v6, v7}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_2
    move v6, v4

    :goto_0
    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    .line 9
    iget-object v7, v2, Lp4/l;->a:[B

    rsub-int/lit8 v8, v6, 0x3

    const-wide/16 v9, 0xff

    mul-int/lit8 v11, v6, 0x8

    shr-long v12, p5, v11

    and-long/2addr v9, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    rsub-int/lit8 v8, v6, 0x7

    shr-int v9, v3, v11

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    .line 10
    aput-byte v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-array v3, v5, [B

    .line 11
    sget-object v6, Lp4/q;->i:Ln4/a;

    invoke-interface {v6}, Ln4/a;->e()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Preparing iv for encryption."

    .line 12
    invoke-interface {v6, v7}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_4
    :goto_1
    if-ge v4, v5, :cond_5

    add-int/lit8 v6, v4, 0x8

    .line 13
    aget-byte v6, v0, v6

    iget-object v7, v2, Lp4/l;->a:[B

    aget-byte v7, v7, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0, v0, v3}, Lp4/r;->f([B[B)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 15
    invoke-virtual {p0, p1, v4, v5, v0}, Lp4/r;->e([BIILjavax/crypto/Cipher;)[B

    move-result-object v2

    .line 16
    iget-object v3, v1, Lp4/r;->d:Lp4/k;

    invoke-virtual {v3, v0}, Lp4/k;->a(Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    sget-object v3, Lp4/q;->i:Ln4/a;

    invoke-interface {v3, v0}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 18
    invoke-interface {v3}, Ln4/a;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_6
    :goto_2
    sget-object v0, Lp4/q;->i:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Encryption finished."

    .line 21
    invoke-interface {v0, v3}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_7
    return-object v2

    .line 22
    :cond_8
    sget-object v2, Lp4/q;->i:Ln4/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong Key length: need at least 16 bytes, is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encryptionKey has illegal length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (should be at least 16)."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public w()I
    .locals 1

    invoke-virtual {p0}, Lp4/q;->S()I

    move-result v0

    return v0
.end method
