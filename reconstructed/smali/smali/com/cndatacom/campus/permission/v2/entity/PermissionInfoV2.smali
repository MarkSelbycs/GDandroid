.class public Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;
.super Ljava/lang/Object;
.source "PermissionInfoV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:I

.field public c:Lorg/json/JSONObject;

.field public d:Lorg/json/JSONObject;

.field public e:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

.field public f:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAskDialogOptions()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCancelEvent()Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->f:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    return-object v0
.end method

.method public getConfirmEvent()Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->e:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    return-object v0
.end method

.method public getPermissions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->b:I

    return v0
.end method

.method public getTipDialogOptions()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public setAskDialogOptions(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public setCancelEvent(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->f:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    return-void
.end method

.method public setConfirmEvent(Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->e:Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;

    return-void
.end method

.method public setPermissions([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->a:[Ljava/lang/String;

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->b:I

    return-void
.end method

.method public setTipDialogOptions(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2;->c:Lorg/json/JSONObject;

    return-void
.end method
