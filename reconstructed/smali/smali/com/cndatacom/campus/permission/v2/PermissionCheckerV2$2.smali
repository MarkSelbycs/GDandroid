.class Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;
.super Ljava/lang/Object;
.source "PermissionCheckerV2.java"

# interfaces
.implements Lcom/cndatacom/dialog/Dialog$DialogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->h(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

.field public final synthetic b:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

.field public final synthetic c:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->c:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    iput-object p2, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->a:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    iput-object p3, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->b:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public btnClick(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->c:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-static {v0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->b(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->c:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-static {v0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->b(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->c:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-static {v0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->b(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->a:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;->event()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->c:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-static {p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;)V

    .line 6
    iget-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->c:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-static {p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 7
    iget-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;->b:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;->event()V

    :cond_4
    :goto_0
    return-void
.end method
