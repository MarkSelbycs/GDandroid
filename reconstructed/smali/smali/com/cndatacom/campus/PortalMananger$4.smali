.class Lcom/cndatacom/campus/PortalMananger$4;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/sdk/portal/interfaces/PortalEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/campus/PortalMananger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConnectFailMsg->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/16 v1, 0x33

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 3
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$4$5;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$4$5;-><init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleConnectedMsg(ZLcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->E(Lcom/cndatacom/campus/PortalMananger;Z)Z

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConnectedMsg->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/16 v3, 0x33

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, p2}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 4
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p2}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object p2

    .line 5
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->hasCache()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->clearCache()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 8
    :cond_0
    iget-object v3, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v3}, Lcom/cndatacom/campus/PortalMananger;->F(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v3

    if-eq v3, v4, :cond_1

    move v1, v0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0, v4}, Lcom/cndatacom/campus/PortalMananger;->G(Lcom/cndatacom/campus/PortalMananger;I)I

    .line 10
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->F(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setLoginState(I)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 11
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/cndatacom/campus/PortalMananger$4$4;

    invoke-direct {v2, p0, p2, p1, v1}, Lcom/cndatacom/campus/PortalMananger$4$4;-><init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;ZZ)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleConnectingMsg->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/16 v2, 0x33

    invoke-static {v1, v2, v0, p1}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    return-void
.end method

.method public handleDisConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDisConnectingMsg->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/16 v2, 0x33

    const/16 v3, 0xb

    invoke-static {v1, v2, v3, p1}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 4
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$4$6;

    invoke-direct {v1, p0, v0}, Lcom/cndatacom/campus/PortalMananger$4$6;-><init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleDisconnectedMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->G(Lcom/cndatacom/campus/PortalMananger;I)I

    .line 2
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->F(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setLoginState(I)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1, v0}, Lcom/cndatacom/campus/PortalMananger;->M(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDisconnectedMsg->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/16 v2, 0x33

    const/16 v3, 0xc

    invoke-static {v1, v2, v3, p1}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 8
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$4$7;

    invoke-direct {v1, p0, v0}, Lcom/cndatacom/campus/PortalMananger$4$7;-><init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handleNetworkInfoMsg(Lcom/cndatacom/sdk/portal/entity/NetInfo;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v2, v1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNetworkInfoMsg->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1, v3, v3, v0}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/cndatacom/campus/PortalMananger$4$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/cndatacom/campus/PortalMananger$4$1;-><init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handlePreConnectFailMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->E(Lcom/cndatacom/campus/PortalMananger;Z)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePreConnectFailMsg->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/16 v1, 0x33

    const/16 v2, 0x20

    invoke-static {v0, v1, v2, p1}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 4
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$4$3;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$4$3;-><init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handlePreConnectedMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->E(Lcom/cndatacom/campus/PortalMananger;Z)Z

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/cndatacom/campus/PortalMananger;->G(Lcom/cndatacom/campus/PortalMananger;I)I

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    .line 5
    iget-object v4, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v4}, Lcom/cndatacom/campus/PortalMananger;->F(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setLoginState(I)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    new-array v2, v3, [Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePreConnectedMsg->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/16 v2, 0x33

    const/16 v3, 0x1f

    invoke-static {v1, v2, v3, p1}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    .line 8
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$4$2;

    invoke-direct {v1, p0, v0}, Lcom/cndatacom/campus/PortalMananger$4$2;-><init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public handlePreConnectingMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePreConnectingMsg->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    const/16 v1, 0x33

    const/16 v2, 0x21

    invoke-static {v0, v1, v2, p1}, Lcom/cndatacom/campus/PortalMananger;->B(Lcom/cndatacom/campus/PortalMananger;IILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    return-void
.end method
