.class public abstract Lp4/a;
.super Ljava/lang/Object;
.source "AuthGeneric.java"

# interfaces
.implements Lp4/i;


# static fields
.field public static final e:Ln4/a;

.field public static f:I

.field public static g:I


# instance fields
.field public a:I

.field public b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lp4/a;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/a;->e:Ln4/a;

    const/16 v0, 0x40

    .line 2
    sput v0, Lp4/a;->f:I

    const/16 v0, 0xc

    .line 3
    sput v0, Lp4/a;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lp4/a;->f:I

    iput v0, p0, Lp4/a;->a:I

    .line 3
    sget v0, Lp4/a;->g:I

    iput v0, p0, Lp4/a;->b:I

    .line 4
    iput-object p1, p0, Lp4/a;->d:Ljava/lang/String;

    .line 5
    iput p2, p0, Lp4/a;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lp4/a;-><init>(Ljava/lang/String;I)V

    .line 7
    iput p3, p0, Lp4/a;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lp4/a;-><init>(Ljava/lang/String;II)V

    .line 9
    iput p4, p0, Lp4/a;->a:I

    return-void
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, Lp4/a;->b:I

    return v0
.end method

.method public G(Lr4/k;[B)[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Lp4/a;->b()Ljava/security/MessageDigest;

    move-result-object v0

    const/high16 v1, 0x100000

    .line 2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lr4/k;->a0()[B

    move-result-object p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_1

    move v6, v3

    .line 4
    :goto_1
    iget v7, p0, Lp4/a;->a:I

    if-ge v6, v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    .line 5
    array-length v8, p1

    rem-int/2addr v5, v8

    aget-byte v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_1

    :cond_0
    add-int/2addr v4, v7

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 8
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 9
    sget-object v1, Lp4/a;->e:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lp4/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "First digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lr4/k;

    invoke-direct {v3, p1}, Lr4/k;-><init>([B)V

    invoke-virtual {v3}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 11
    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 12
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 13
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 15
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 16
    invoke-interface {v1}, Ln4/a;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lp4/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "localized key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lr4/k;

    invoke-direct {v0, p1}, Lr4/k;-><init>([B)V

    .line 18
    invoke-virtual {v0}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-interface {v1, p2}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_3
    return-object p1
.end method

.method public N([B[BIILp4/j;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lp4/a;->b()Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    iget v1, p0, Lp4/a;->a:I

    new-array v2, v1, [B

    .line 3
    new-array v1, v1, [B

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    iget v5, p0, Lp4/a;->b:I

    if-ge v4, v5, :cond_0

    .line 5
    invoke-virtual {p5, v4, v3}, Lp4/j;->d(IB)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length v4, p1

    iget v5, p0, Lp4/a;->a:I

    if-le v4, v5, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    :cond_1
    move v4, v3

    .line 8
    :goto_1
    array-length v5, p1

    const/16 v6, 0x5c

    const/16 v7, 0x36

    if-ge v4, v5, :cond_2

    .line 9
    aget-byte v5, p1, v4

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 10
    aget-byte v5, p1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_2
    array-length p1, p1

    :goto_2
    iget v4, p0, Lp4/a;->a:I

    if-ge p1, v4, :cond_3

    .line 12
    aput-byte v7, v2, p1

    .line 13
    aput-byte v6, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 15
    invoke-virtual {v0, p2, p3, p4}, Ljava/security/MessageDigest;->update([BII)V

    .line 16
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 17
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 18
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 20
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 21
    :goto_3
    iget p2, p0, Lp4/a;->b:I

    if-ge v3, p2, :cond_4

    .line 22
    aget-byte p2, p1, v3

    invoke-virtual {p5, v3, p2}, Lp4/j;->d(IB)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public O([BII)[B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp4/a;->b()Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/security/MessageDigest;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lp4/a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lp4/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported in this VM."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lp4/a;->c:I

    return v0
.end method

.method public m([B[BIILp4/j;)Z
    .locals 6

    .line 1
    new-instance v0, Lp4/j;

    iget v1, p0, Lp4/a;->b:I

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lp4/j;-><init>([BII)V

    .line 2
    invoke-virtual {p5}, Lp4/j;->c()[B

    move-result-object v1

    invoke-virtual {p5}, Lp4/j;->b()I

    move-result v2

    .line 3
    invoke-virtual {v0}, Lp4/j;->c()[B

    move-result-object v4

    iget v5, p0, Lp4/a;->b:I

    .line 4
    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-virtual/range {p0 .. p5}, Lp4/a;->N([B[BIILp4/j;)Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    .line 6
    :cond_0
    iget p1, p0, Lp4/a;->b:I

    invoke-virtual {p5, v0, p1}, Lp4/j;->a(Lp4/j;I)Z

    move-result p1

    return p1
.end method
