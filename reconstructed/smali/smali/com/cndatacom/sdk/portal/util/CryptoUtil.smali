.class public Lcom/cndatacom/sdk/portal/util/CryptoUtil;
.super Ljava/lang/Object;
.source "CryptoUtil.java"


# static fields
.field private static final HEX_TAG:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->HEX_TAG:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 3
    sget-object v4, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->HEX_TAG:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 4
    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->handleAesGcm(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static des3DecodeCBC([B[B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string v4, "AES"

    invoke-direct {v1, p0, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 3
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    const/4 p1, 0x2

    .line 4
    invoke-virtual {v0, p1, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static des3DecodeECB(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    const/4 v1, 0x4

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xaa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    const/16 v3, 0x15

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xde

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xde

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x45

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x24

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0x8a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x6b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xfb

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v2, 0x8

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0x93

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aget-byte v4, v0, v2

    xor-int/lit8 v4, v4, 0x34

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xb4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xd5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xe5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0xb

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0x85

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aget-byte v4, v0, v2

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x44

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v2, 0x3

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xf3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0xa

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xf4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    aget-byte v2, v0, v3

    xor-int/lit8 v2, v2, 0x7e

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/16 v2, 0x12

    aget-byte v3, v0, v2

    xor-int/lit16 v3, v3, 0xb7

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xe

    aget-byte v3, v0, v2

    xor-int/lit8 v3, v3, 0x6b

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 2
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 3
    invoke-static {v0, p0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3DecodeECB([B[B)[B

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x45t
        0x71t
        0x27t
        -0x7ft
        -0x39t
        0x0t
        0x43t
        0xat
        -0x3ft
        -0x79t
        -0x34t
        -0x2et
        -0x3t
        -0x55t
        0x18t
        0x78t
        0x47t
        -0x36t
        -0x5t
        0x3ft
        -0x6et
        0x36t
        0x9t
        -0x69t
    .end array-data
.end method

.method public static des3DecodeECB([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string p0, "desede"

    .line 6
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 7
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "desede/ECB/PKCS5Padding"

    .line 8
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 10
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static des3EncodeCBC([B[B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string v4, "AES"

    invoke-direct {v1, p0, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 3
    new-instance p0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p0, p1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static des3EncodeECB([B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    const/4 v1, 0x4

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xaa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    const/16 v3, 0x15

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xde

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xde

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x45

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x24

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0x8a

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x6b

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0xfb

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v2, 0x8

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0x93

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aget-byte v4, v0, v2

    xor-int/lit8 v4, v4, 0x34

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0xc

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xb4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0x17

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xd5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0xd

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xe5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0xb

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0x85

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0x10

    aget-byte v4, v0, v2

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x44

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v2, 0x3

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xf3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    const/16 v2, 0xa

    aget-byte v4, v0, v2

    xor-int/lit16 v4, v4, 0xf4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    aget-byte v2, v0, v3

    xor-int/lit8 v2, v2, 0x7e

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/16 v2, 0x12

    aget-byte v3, v0, v2

    xor-int/lit16 v3, v3, 0xb7

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/16 v2, 0xe

    aget-byte v3, v0, v2

    xor-int/lit8 v3, v3, 0x6b

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 2
    invoke-static {v0, p0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->des3EncodeECB([B[B)[B

    move-result-object p0

    .line 3
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 1
        -0x45t
        0x71t
        0x27t
        -0x7ft
        -0x39t
        0x0t
        0x43t
        0xat
        -0x3ft
        -0x79t
        -0x34t
        -0x2et
        -0x3t
        -0x55t
        0x18t
        0x78t
        0x47t
        -0x36t
        -0x5t
        0x3ft
        -0x6et
        0x36t
        0x9t
        -0x69t
    .end array-data
.end method

.method public static des3EncodeECB([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, p0}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const-string p0, "desede"

    .line 5
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "desede/ECB/PKCS5Padding"

    .line 7
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 9
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryp([B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->handleAesGcm(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptByPublicKey([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    .line 1
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    const-string v2, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKzDO99FYDlQKslgsplrIun+QvV6mO1uXO6p3j6T13nEf4/hAJXEhEQSUZssuhu6yCca4BU+R7pV7P7FQmEs2XUCAwEAAQ=="

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 4
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 6
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 7
    invoke-static {v1, v2, p0, v0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->rsaSplitCodec(Ljavax/crypto/Cipher;I[BI)[B

    move-result-object p0

    return-object p0
.end method

.method private static getCryptKey()Ljavax/crypto/SecretKey;
    .locals 4

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTextMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 4
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    if-ge v0, v1, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static handleAesGcm(I[B)[B
    .locals 5

    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->getCryptKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 3
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 4
    invoke-virtual {v0, p0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 5
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array p0, v1, [B

    return-object p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    move v2, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    .line 5
    rem-int/lit8 v4, v1, 0x2

    const/16 v5, 0x41

    if-nez v4, :cond_3

    if-lt v3, v5, :cond_2

    and-int/lit16 v3, v3, 0xdf

    add-int/lit8 v3, v3, -0x37

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x30

    :goto_1
    int-to-byte v3, v3

    .line 6
    aput-byte v3, v0, v2

    goto :goto_3

    .line 7
    :cond_3
    aget-byte v4, v0, v2

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 8
    aget-byte v4, v0, v2

    if-lt v3, v5, :cond_4

    and-int/lit16 v3, v3, 0xdf

    add-int/lit8 v3, v3, -0x37

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, -0x30

    :goto_2
    int-to-byte v3, v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static rsaSplitCodec(Ljavax/crypto/Cipher;I[BI)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    div-int/lit8 p3, p3, 0x8

    goto :goto_0

    .line 2
    :cond_0
    div-int/lit8 p3, p3, 0x8

    add-int/lit8 p3, p3, -0xb

    .line 3
    :goto_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 4
    :goto_1
    array-length v3, p2

    if-le v3, v1, :cond_2

    .line 5
    array-length v3, p2

    sub-int/2addr v3, v1

    if-le v3, p3, :cond_1

    .line 6
    invoke-virtual {p0, p2, v1, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    goto :goto_2

    .line 7
    :cond_1
    array-length v3, p2

    sub-int/2addr v3, v1

    invoke-virtual {p0, p2, v1, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 8
    :goto_2
    array-length v3, v1

    invoke-virtual {p1, v1, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v2, p3

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 10
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method
