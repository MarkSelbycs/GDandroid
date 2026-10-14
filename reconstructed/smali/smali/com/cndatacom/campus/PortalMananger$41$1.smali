.class Lcom/cndatacom/campus/PortalMananger$41$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/dialog/Dialog$DialogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$41;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger$41;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$41;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$41$1;->a:Lcom/cndatacom/campus/PortalMananger$41;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public btnClick(I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$41$1;->a:Lcom/cndatacom/campus/PortalMananger$41;

    iget-object v1, v1, Lcom/cndatacom/campus/PortalMananger$41;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$41$1;->a:Lcom/cndatacom/campus/PortalMananger$41;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$41;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
