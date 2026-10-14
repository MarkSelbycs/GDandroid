.class Lcom/cndatacom/campus/PortalMananger$26$1$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$26$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger$26$1;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$26$1;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$26$1$1;->a:Lcom/cndatacom/campus/PortalMananger$26$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$26$1$1;->a:Lcom/cndatacom/campus/PortalMananger$26$1;

    iget-object p1, p1, Lcom/cndatacom/campus/PortalMananger$26$1;->a:Lcom/cndatacom/campus/PortalMananger$26;

    iget-object p1, p1, Lcom/cndatacom/campus/PortalMananger$26;->c:Lcom/cndatacom/sdk/portal/entity/ADInfo;

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->getHref()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$26$1$1;->a:Lcom/cndatacom/campus/PortalMananger$26$1;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26$1;->a:Lcom/cndatacom/campus/PortalMananger$26;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26;->c:Lcom/cndatacom/sdk/portal/entity/ADInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ADInfo;->getAdid()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/cndatacom/sdk/portal/manager/ThreadPoolManager;->getInstance()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/cndatacom/campus/PortalMananger$26$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/cndatacom/campus/PortalMananger$26$1$1$1;-><init>(Lcom/cndatacom/campus/PortalMananger$26$1$1;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$26$1$1;->a:Lcom/cndatacom/campus/PortalMananger$26$1;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26$1;->a:Lcom/cndatacom/campus/PortalMananger$26;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26;->d:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cndatacom/sdk/portal/util/IntentUtil;->inBrowserOpen(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
