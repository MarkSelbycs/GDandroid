.class Lcom/cndatacom/campus/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/MainActivity;->n(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/MainActivity;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cndatacom/campus/MainActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/campus/MainActivity$1;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/cndatacom/campus/MainActivity$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/campus/MainActivity$1;->d()V

    return-void
.end method

.method private synthetic c()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-static {v0}, Lcom/cndatacom/campus/MainActivity;->s(Lcom/cndatacom/campus/MainActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-static {v1}, Lcom/cndatacom/campus/MainActivity;->t(Lcom/cndatacom/campus/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-static {v0}, Lcom/cndatacom/campus/MainActivity;->q(Lcom/cndatacom/campus/MainActivity;)Lcom/cndatacom/campus/PortalMananger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->onExitApplication(Z)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    new-instance v1, Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/MainActivity;->s(Lcom/cndatacom/campus/MainActivity;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/cndatacom/campus/PortalMananger;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    invoke-static {v0, v1}, Lcom/cndatacom/campus/MainActivity;->r(Lcom/cndatacom/campus/MainActivity;Lcom/cndatacom/campus/PortalMananger;)Lcom/cndatacom/campus/PortalMananger;

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    new-instance v1, Lcom/cndatacom/campus/a;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/a;-><init>(Lcom/cndatacom/campus/MainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    const/4 p1, 0x0

    const/16 p2, 0xe

    if-ne p3, p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-static {p2}, Lcom/cndatacom/campus/MainActivity;->p(Lcom/cndatacom/campus/MainActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xf

    invoke-static {p1, p2}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    if-ne p3, p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/cndatacom/campus/MainActivity$1;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-static {p2}, Lcom/cndatacom/campus/MainActivity;->p(Lcom/cndatacom/campus/MainActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/cndatacom/zexcheck/v3/util/ExecutorUtil;->getFastExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/cndatacom/campus/b;

    invoke-direct {p2, p0}, Lcom/cndatacom/campus/b;-><init>(Lcom/cndatacom/campus/MainActivity$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
