.class public Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;
.super Ljava/lang/Object;
.source "PermissionCheckerV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;
    }
.end annotation


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/app/Activity;

.field public c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:I

.field public g:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;

.field public h:Landroid/app/AlertDialog;

.field public i:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->e:I

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->f:I

    .line 6
    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->b:Landroid/app/Activity;

    .line 7
    new-instance p1, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$1;-><init>(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->a:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->f(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic b(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->h:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic c(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->k()V

    return-void
.end method

.method public static synthetic d(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g()V

    return-void
.end method


# virtual methods
.method public addPermission(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;)V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    invoke-interface {v0, v1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;->finish(Ljava/util/Vector;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;

    .line 5
    iget-object v1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getRequestCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getPermissions()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;->needRemind(I[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->k()V

    .line 8
    invoke-virtual {p0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g()V

    return-void

    .line 9
    :cond_2
    new-instance v1, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;

    invoke-direct {v1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;-><init>()V

    .line 10
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getPermissions()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->setPermissions([Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getRequestCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->setRequestCode(I)V

    .line 12
    iget-object v2, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->a:Landroid/os/Handler;

    const/4 v2, 0x1

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 14
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getAskDialogOptions()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getRequestCode()I

    move-result v2

    .line 17
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getPermissions()[Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-interface {v1, v2, v0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;->requestPermissions(I[Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final f(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->i()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->e()V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    invoke-interface {v0, v1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;->finish(Ljava/util/Vector;)V

    :cond_1
    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final h(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "title"

    const-string v2, ""

    .line 2
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gravity"

    const-string v3, "bottom"

    .line 3
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "titleBold"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "titleAlign"

    const-string v3, "center"

    .line 5
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "content"

    .line 6
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentAlign"

    const-string v3, "left"

    .line 7
    invoke-virtual {p2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "confirmText"

    .line 8
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cancelText"

    .line 9
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getConfirmEvent()Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    move-result-object p2

    .line 11
    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getCancelEvent()Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    move-result-object p1

    .line 12
    new-instance v1, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$2;-><init>(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;)V

    .line 13
    iget-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->b:Landroid/app/Activity;

    invoke-static {p1, v0, v1}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->i:Landroid/app/AlertDialog;

    .line 14
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;

    .line 2
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->j(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;)V

    .line 3
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getAskDialogOptions()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->h(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final j(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "showConfirm"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "showCancel"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "closeOnBack"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "backgroundTransparent"

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "gravity"

    const-string v3, "top"

    .line 6
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getTipDialogOptions()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "contentAlign"

    const-string v3, "content"

    const-string v4, "titleBold"

    const-string v5, "titleAlign"

    const-string v6, "title"

    const-string v7, "center"

    const-string v8, ""

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 10
    invoke-virtual {p1, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {p1, v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {p1, v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v7, v10

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    goto :goto_0

    :cond_0
    const-string p1, "left"

    move-object v9, v8

    .line 13
    :goto_0
    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {v0, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/cndatacom/dialog/Dialog;->alert(Landroid/app/Activity;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$DialogEvent;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->h:Landroid/app/AlertDialog;

    .line 19
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;

    .line 2
    iget-object v2, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getRequestCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getPermissions()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;->checkPermission(I[Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->getRequestCode()I

    move-result v0

    .line 5
    :goto_1
    iget-object v3, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;

    .line 7
    invoke-virtual {v3}, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->getRequestCode()I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 8
    invoke-virtual {v3, v2}, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->setHasPermission(Z)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public onRequestPermissionsResult()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    invoke-interface {v0, v1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;->finish(Ljava/util/Vector;)V

    :cond_3
    return-void

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->k()V

    .line 11
    invoke-virtual {p0}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setPermissionEvent(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->g:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
