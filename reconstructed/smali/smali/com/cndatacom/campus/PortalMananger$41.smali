.class Lcom/cndatacom/campus/PortalMananger$41;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->N1(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$41;->b:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$41;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "showCancel"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "title"

    .line 3
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$41;->a:Landroid/content/Context;

    const v3, 0x7f0b0034

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$41;->a:Landroid/content/Context;

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentAlign"

    const-string v2, "left"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "confirmText"

    .line 7
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$41;->a:Landroid/content/Context;

    const v3, 0x7f0b0040

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$41;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/cndatacom/campus/PortalMananger$41$1;

    invoke-direct {v3, p0}, Lcom/cndatacom/campus/PortalMananger$41$1;-><init>(Lcom/cndatacom/campus/PortalMananger$41;)V

    invoke-static {v2, v0, v3}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cndatacom/campus/PortalMananger;->y0(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 9
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$41;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->x0(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
