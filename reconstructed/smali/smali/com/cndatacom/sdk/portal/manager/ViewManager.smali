.class public Lcom/cndatacom/sdk/portal/manager/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# static fields
.field private static volatile instance:Lcom/cndatacom/sdk/portal/manager/ViewManager;


# instance fields
.field private activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/manager/ViewManager;->activityList:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/cndatacom/sdk/portal/manager/ViewManager;
    .locals 3

    .line 1
    const-class v0, Lcom/cndatacom/sdk/portal/manager/ViewManager;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/cndatacom/sdk/portal/manager/ViewManager;->instance:Lcom/cndatacom/sdk/portal/manager/ViewManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/cndatacom/sdk/portal/manager/ViewManager;

    invoke-direct {v1}, Lcom/cndatacom/sdk/portal/manager/ViewManager;-><init>()V

    sput-object v1, Lcom/cndatacom/sdk/portal/manager/ViewManager;->instance:Lcom/cndatacom/sdk/portal/manager/ViewManager;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lcom/cndatacom/sdk/portal/manager/ViewManager;->instance:Lcom/cndatacom/sdk/portal/manager/ViewManager;

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


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/ViewManager;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public exit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/ViewManager;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/ViewManager;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
