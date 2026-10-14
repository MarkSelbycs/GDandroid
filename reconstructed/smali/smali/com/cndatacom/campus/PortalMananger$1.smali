.class Lcom/cndatacom/campus/PortalMananger$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;


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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$1;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$1;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$1;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$1;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/core/content/FileProvider;->f(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "application/vnd.android.package-archive"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$1;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public retry(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$1;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->D(Lcom/cndatacom/campus/PortalMananger;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cndatacom/campus/PortalMananger$1$1;-><init>(Lcom/cndatacom/campus/PortalMananger$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
