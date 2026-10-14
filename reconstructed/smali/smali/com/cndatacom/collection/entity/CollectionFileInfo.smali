.class public Lcom/cndatacom/collection/entity/CollectionFileInfo;
.super Ljava/lang/Object;
.source "CollectionFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/collection/entity/CollectionFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static CRYPT_KEY:Ljavax/crypto/SecretKey; = null

.field private static final CRYPT_KEY_SEED:[B

.field private static final FILENAME:Ljava/lang/String; = "collection"


# instance fields
.field private collectionInfos:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/cndatacom/collection/entity/CollectionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->CRYPT_KEY_SEED:[B

    .line 2
    new-instance v0, Lcom/cndatacom/collection/entity/CollectionFileInfo$2;

    invoke-direct {v0}, Lcom/cndatacom/collection/entity/CollectionFileInfo$2;-><init>()V

    sput-object v0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0x5ct
        0x2ft
        0x6ft
        0x11t
        0x73t
        0x6et
        0x54t
        0x0t
        0x1dt
        0x71t
        0x28t
        0x4bt
        0x74t
        0x4t
        0x63t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->collectionInfos:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->collectionInfos:Ljava/util/Vector;

    if-eqz p1, :cond_0

    .line 5
    sget-object v1, Lcom/cndatacom/collection/entity/CollectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/collection/entity/CollectionFileInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->saveFile()V

    return-void
.end method

.method private static decrypt([B)[B
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    const-string v1, "AES"

    .line 1
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->getCryptKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "decrypt exception: "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    new-array p0, v2, [B

    return-object p0
.end method

.method private encryp([B)[B
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "AES"

    .line 1
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->getCryptKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "encryp exception: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    new-array p1, v3, [B

    return-object p1
.end method

.method private static getCryptKey()Ljavax/crypto/SecretKey;
    .locals 5

    .line 1
    sget-object v0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->CRYPT_KEY:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "MD5"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    sget-object v1, Lcom/cndatacom/collection/entity/CollectionFileInfo;->CRYPT_KEY_SEED:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v1, Lcom/cndatacom/collection/entity/CollectionFileInfo;->CRYPT_KEY:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "getCryptKey exception: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    .line 7
    :cond_0
    :goto_0
    sget-object v0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->CRYPT_KEY:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public static load()Lcom/cndatacom/collection/entity/CollectionFileInfo;
    .locals 6

    const-string v0, "collection"

    .line 1
    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_MODULE:Ljava/lang/String;

    const-string v4, "collection"

    invoke-static {v2, v3, v4}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/FileUtil;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    array-length v3, v2

    if-lez v3, :cond_0

    .line 6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 7
    invoke-static {v2}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->decrypt([B)[B

    move-result-object v4

    array-length v2, v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    sget-object v2, Lcom/cndatacom/collection/entity/CollectionFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cndatacom/collection/entity/CollectionFileInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CollectionFileInfo load->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    .line 12
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    new-instance v0, Lcom/cndatacom/collection/entity/CollectionFileInfo;

    invoke-direct {v0}, Lcom/cndatacom/collection/entity/CollectionFileInfo;-><init>()V

    return-object v0

    .line 14
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private saveFile()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const-string v1, "collection"

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_MODULE:Ljava/lang/String;

    const-string v4, "collection"

    invoke-static {v2, v3, v4}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->encryp([B)[B

    move-result-object v0

    invoke-static {v0, v2}, Lcom/cndatacom/sdk/portal/util/FileUtil;->writeFile([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->collectionInfos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionInfos()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/cndatacom/collection/entity/CollectionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->collectionInfos:Ljava/util/Vector;

    return-object v0
.end method

.method public save()Lcom/cndatacom/collection/entity/CollectionFileInfo;
    .locals 2

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/cndatacom/collection/entity/CollectionFileInfo$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/collection/entity/CollectionFileInfo$1;-><init>(Lcom/cndatacom/collection/entity/CollectionFileInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionFileInfo;->collectionInfos:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
