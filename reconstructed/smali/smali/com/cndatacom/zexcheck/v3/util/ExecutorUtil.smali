.class public Lcom/cndatacom/zexcheck/v3/util/ExecutorUtil;
.super Ljava/lang/Object;
.source "ExecutorUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getFastExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
