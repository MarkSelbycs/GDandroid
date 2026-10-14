.class public Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"


# static fields
.field private static mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static newInstance()Ljava/util/concurrent/ExecutorService;
    .locals 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
