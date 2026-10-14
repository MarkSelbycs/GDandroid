.class public Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;
.super Ljava/lang/Object;
.source "MultiProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILENAME:Ljava/lang/String; = "mul_data"

.field private static final lock:Ljava/lang/Object;


# instance fields
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


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->lock:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo$2;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo$2;-><init>()V

    sput-object v0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_0

    .line 5
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->saveFile()V

    return-void
.end method

.method public static load()Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;
    .locals 7

    .line 1
    sget-object v0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_CONFIG:Ljava/lang/String;

    const-string v4, "mul_data"

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
    sget-object v2, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;
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

    const-string v5, "MultiProcessInfo load->"

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
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;-><init>()V

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
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    sget-object v1, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/cndatacom/sdk/portal/constant/ResourceConstants;->PATH_CONFIG:Ljava/lang/String;

    const-string v4, "mul_data"

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


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public putConfig(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

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

.method public save()Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo$1;-><init>(Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->configObject:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
