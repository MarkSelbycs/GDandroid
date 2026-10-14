.class Lcom/cndatacom/campus/PortalMananger$28;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->X0(Lcom/alibaba/fastjson/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$28;->b:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$28;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$28;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$28;->a:Ljava/lang/String;

    new-instance v3, Lcom/cndatacom/campus/PortalMananger$28$1;

    invoke-direct {v3, p0}, Lcom/cndatacom/campus/PortalMananger$28$1;-><init>(Lcom/cndatacom/campus/PortalMananger$28;)V

    invoke-static {v1, v2, v3}, Lcom/cndatacom/dialog/Dialog;->getUpdateDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/cndatacom/dialog/Dialog$UpdateDialogEvent;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->p(Lcom/cndatacom/campus/PortalMananger;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$28;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->o(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
