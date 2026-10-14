.class public abstract Lp4/r;
.super Ljava/lang/Object;
.source "PrivacyGeneric.java"

# interfaces
.implements Lp4/s;


# static fields
.field public static final f:Ln4/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Lp4/k;

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lp4/r;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/r;->f:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c([BII[B[B)[B
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lp4/r;->d:Lp4/k;

    invoke-virtual {v1}, Lp4/k;->b()Ljavax/crypto/Cipher;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Lp4/r;->a:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 3
    :cond_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x0

    iget v4, p0, Lp4/r;->c:I

    iget-object v5, p0, Lp4/r;->b:Ljava/lang/String;

    invoke-direct {v2, p4, v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 4
    new-instance p4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p4, p5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p5, 0x2

    .line 5
    invoke-virtual {v1, p5, v2, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 6
    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 7
    iget-object p1, p0, Lp4/r;->d:Lp4/k;

    invoke-virtual {p1, v1}, Lp4/k;->a(Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lp4/r;->f:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 9
    invoke-interface {p2}, Ln4/a;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public e([BIILjavax/crypto/Cipher;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1
    rem-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p4, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lp4/r;->f:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Using padding."

    .line 4
    invoke-interface {v1, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 5
    :cond_1
    div-int/lit8 v1, p3, 0x8

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    new-array v4, v2, [B

    .line 6
    invoke-virtual {p4, p1, p2, p3, v1}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v8

    const/4 v5, 0x0

    rsub-int/lit8 v6, v0, 0x8

    move-object v3, p4

    move-object v7, v1

    .line 7
    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public f([B[B)Ljavax/crypto/Cipher;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/r;->d:Lp4/k;

    invoke-virtual {v0}, Lp4/k;->b()Ljavax/crypto/Cipher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp4/r;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    iget v3, p0, Lp4/r;->c:I

    iget-object v4, p0, Lp4/r;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 4
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object v0
.end method
