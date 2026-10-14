.class Lcom/cndatacom/campus/PortalMananger$35;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->H2()V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$35;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$35;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$35$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger$35$1;-><init>(Lcom/cndatacom/campus/PortalMananger$35;Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
