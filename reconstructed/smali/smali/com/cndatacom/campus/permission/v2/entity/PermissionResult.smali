.class public Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;
.super Ljava/lang/Object;
.source "PermissionResult.java"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->c:Z

    return-void
.end method


# virtual methods
.method public getPermissions()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->b:I

    return v0
.end method

.method public isHasPermission()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->c:Z

    return v0
.end method

.method public setHasPermission(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->c:Z

    return-void
.end method

.method public setPermissions([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->a:[Ljava/lang/String;

    return-void
.end method

.method public setRequestCode(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->b:I

    return-void
.end method
