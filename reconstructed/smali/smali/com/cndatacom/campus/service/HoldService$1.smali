.class Lcom/cndatacom/campus/service/HoldService$1;
.super Ljava/lang/Object;
.source "HoldService.java"

# interfaces
.implements Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/service/HoldService;->onHandleIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/service/HoldService;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/service/HoldService;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/service/HoldService$1;->a:Lcom/cndatacom/campus/service/HoldService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->newInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/cndatacom/campus/service/HoldService$1$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/cndatacom/campus/service/HoldService$1$1;-><init>(Lcom/cndatacom/campus/service/HoldService$1;Landroid/content/Intent;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
