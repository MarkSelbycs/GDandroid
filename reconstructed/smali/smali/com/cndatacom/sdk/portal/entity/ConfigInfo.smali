.class public Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/sdk/portal/entity/ConfigInfo$STATE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/sdk/portal/entity/ConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAMOD_FILENAME:Ljava/lang/String; = "damod"

.field private static final FILENAME:Ljava/lang/String; = "data"

.field public static final KEEP_INTERVAL_DEF:I = 0x12c

.field public static final STATE_INTERVAL_DEF:I = 0xa

.field private static final lock:Ljava/lang/Object;

.field private static mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

.field private static final modLock:Ljava/lang/Object;


# instance fields
.field private final IP_TYPE_KEY:Ljava/lang/String;

.field private final KEEP_RETRY_DEF:I

.field private transient cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configObject:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->lock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->modLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->KEEP_RETRY_DEF:I

    const-string v0, "IS_IPV4"

    .line 3
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->IP_TYPE_KEY:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    const-class v0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    .line 8
    iput v1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->KEEP_RETRY_DEF:I

    const-string v1, "IS_IPV4"

    .line 9
    iput-object v1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->IP_TYPE_KEY:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 14
    iget-object v1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->saveFile()V

    return-void
.end method

.method public static synthetic access$100(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->saveDaModFile([B)V

    return-void
.end method

.method private handleExpire(J)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    new-instance v0, Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExpire->expire="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->load()Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "expire"

    invoke-virtual {v0, p2, p1}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->putConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->save()Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;

    return-object p0
.end method

.method public static load()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 8

    .line 1
    sget-object v0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_CONFIG:Ljava/lang/String;

    const-string v4, "data"

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
    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->decrypt([B)[B

    move-result-object v4

    array-length v2, v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 9
    sget-object v2, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
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

    const-string v5, "ConfigInfo load->"

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
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;-><init>()V

    return-object v0

    .line 14
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 2

    .line 1
    const-class v0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->load()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v1

    sput-object v1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->mConfigInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private saveDaModFile([B)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_CONFIG:Ljava/lang/String;

    const-string v2, "damod"

    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/util/FileUtil;->writeFile([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ConfigInfo.setDaMod Exception: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private saveFile()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    sget-object v1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_CONFIG:Ljava/lang/String;

    const-string v4, "data"

    invoke-static {v2, v3, v4}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/CryptoUtil;->encryp([B)[B

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

.method private toInt(Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method private toLong(Ljava/lang/String;J)J
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p2
.end method


# virtual methods
.method public clearAll()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_2
    return-object p0
.end method

.method public clearCache()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-object p0
.end method

.method public clearConfig()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-object p0
.end method

.method public clearPrivateConfig()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public freeDaMod()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 2

    .line 1
    invoke-static {}, Lcom/cndatacom/campus/netcore/DaMod;->getInstance()Lcom/cndatacom/campus/netcore/DaMod;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->modLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/cndatacom/campus/netcore/DaMod;->Free()V

    .line 4
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getClientId()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clientId"

    const-string v2, ""

    .line 2
    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/cndatacom/sdk/portal/util/PreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-object v2
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getDaMod()Lcom/cndatacom/campus/netcore/DaMod;
    .locals 6

    .line 1
    invoke-static {}, Lcom/cndatacom/campus/netcore/DaMod;->getInstance()Lcom/cndatacom/campus/netcore/DaMod;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/cndatacom/campus/netcore/DaMod;->isOk()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->modLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/cndatacom/campus/netcore/DaMod;->isOk()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_CONFIG:Ljava/lang/String;

    const-string v4, "damod"

    invoke-static {v2, v3, v4}, Lcom/cndatacom/sdk/portal/util/ResourceUtil;->getContextFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/FileUtil;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0, v2}, Lcom/cndatacom/campus/netcore/DaMod;->setData([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    :try_start_2
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ConfigInfo.getDaMod Exception: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    .line 10
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getExpire()Ljava/util/Date;
    .locals 4

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->load()Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;

    move-result-object v0

    const-string v1, "expire"

    const-string v2, "0"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExpire->expire="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->toLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public getFuncfg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FUN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p3
.end method

.method public getFuncfgUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "enable"

    const-string v1, "0"

    .line 4
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getIpType()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "url"

    .line 7
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "ipv6Url"

    .line 8
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object p2
.end method

.method public getIpType()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "IS_IPV4"

    const-string v1, "0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getKeepInterval()J
    .locals 4

    const-string v0, "keep-interval"

    const-string v1, "300"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getLoginState()I
    .locals 2

    const-string v0, "portal-state"

    const-string v1, "0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;
    .locals 2

    const-string v0, "netInfo"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->parse(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getOnlineTime()J
    .locals 7

    const-string v0, "OnlineTime"

    const-string v1, "0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 3
    invoke-direct {p0, v0, v3, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->toLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :cond_0
    sub-long/2addr v1, v5

    .line 5
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getSchoolId()Ljava/lang/String;
    .locals 2

    const-string v0, "schoolID"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchoolId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "schoolID"

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStateInterval()J
    .locals 5

    const-string v0, "state-interval"

    const-string v1, "10"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state interval->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-wide v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 4

    const-string v0, "ticket"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTicket->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserAgent(Z)Ljava/lang/String;
    .locals 6

    const-string v0, "os.arch"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "64"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "32"

    const-string v3, "%"

    const-string v4, "android11_%"

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "android%_vpn"

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v5, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CCTP"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/cndatacom/sdk/portal/work/KeepUserAgentWorker;->getCurUserAgentData(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->isVpn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    const-string v0, "DialAccount"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWlanIpName()Ljava/lang/String;
    .locals 2

    const-string v0, "wlanipname"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWlanacip()Ljava/lang/String;
    .locals 2

    const-string v0, "wlanacip"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWlanuserip()Ljava/lang/String;
    .locals 2

    const-string v0, "wlanuserip"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCache()Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOnline()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getExpire()Ljava/util/Date;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOnline->ticket="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",expire="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    return v2
.end method

.method public isOpenSSID()Z
    .locals 2

    const-string v0, "isOpenSSID"

    const-string v1, "0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVpn()Z
    .locals 3

    const-string v0, "Vpn"

    const-string v1, "enable"

    const-string v2, "0"

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getFuncfgAtt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public putCacheConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public putConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public removeCacheConfig(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->cacheConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public removeConfig(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public removePrivateConfig(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public resetOnlineTime()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnlineTime"

    invoke-virtual {p0, v1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object p0
.end method

.method public save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$2;

    invoke-direct {v1, p0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$2;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public setConfigObject(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public setDaMod([B)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 2

    .line 1
    invoke-static {}, Lcom/cndatacom/campus/netcore/DaMod;->getInstance()Lcom/cndatacom/campus/netcore/DaMod;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/cndatacom/campus/netcore/DaMod;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->modLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/cndatacom/campus/netcore/DaMod;->Free()V

    .line 5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/cndatacom/campus/netcore/DaMod;->setData([B)V

    .line 7
    invoke-virtual {v0}, Lcom/cndatacom/campus/netcore/DaMod;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$3;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$3;-><init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-object p0
.end method

.method public setExpire(Ljava/lang/String;J)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->toLong(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->handleExpire(J)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    return-object p1
.end method

.method public setIpType(Ljava/lang/Boolean;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "0"

    goto :goto_0

    :cond_0
    const-string p1, "1"

    :goto_0
    const-string v0, "IS_IPV4"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object p0
.end method

.method public setKeepExpire(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 5

    const-string v0, "keep-interval"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-wide/16 v0, 0x12c

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-string p1, "keep-retry"

    const-string v2, "3"

    .line 3
    invoke-virtual {p0, p1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->toInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keep interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",retry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->handleExpire(J)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object p1

    return-object p1
.end method

.method public setLoginState(I)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "portal-state"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object p0
.end method

.method public setNetInfo(Lcom/cndatacom/sdk/portal/entity/NetInfo;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "netInfo"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object p0
.end method

.method public setOpenSSID(Z)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "isOpenSSID"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    const-string v0, "DialPassword"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object p0
.end method

.method public setTicket(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    const-string v0, "ticket"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
    .locals 1

    const-string v0, "DialAccount"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->putPrivateConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->privateConfigObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
