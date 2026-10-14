.class Lcom/cndatacom/campus/PortalMananger$29;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/download/interfaces/IDownloadTaskEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->Y0(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAskWifi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasAskWifi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public taskDownloading(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cndatacom/download/entity/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/download/entity/DownloadTask;

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$29$2;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$29$2;-><init>(Lcom/cndatacom/campus/PortalMananger$29;Lcom/cndatacom/download/entity/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public taskError(Lcom/cndatacom/download/entity/DownloadTask;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p2}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p2}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p2}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/cndatacom/campus/PortalMananger$29$4;

    invoke-direct {v0, p0, p1}, Lcom/cndatacom/campus/PortalMananger$29$4;-><init>(Lcom/cndatacom/campus/PortalMananger$29;Lcom/cndatacom/download/entity/DownloadTask;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public taskFinish(Lcom/cndatacom/download/entity/DownloadTask;J)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p2}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p2}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p2}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lcom/cndatacom/campus/PortalMananger$29$3;

    invoke-direct {p3, p0, p1}, Lcom/cndatacom/campus/PortalMananger$29$3;-><init>(Lcom/cndatacom/campus/PortalMananger$29;Lcom/cndatacom/download/entity/DownloadTask;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public taskPauseOrCancel(Lcom/cndatacom/download/entity/DownloadTask;J)V
    .locals 0

    return-void
.end method

.method public taskWaiting(Lcom/cndatacom/download/entity/DownloadTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$29$1;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$29$1;-><init>(Lcom/cndatacom/campus/PortalMananger$29;Lcom/cndatacom/download/entity/DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
