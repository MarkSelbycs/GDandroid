.class Lcom/cndatacom/campus/PortalMananger$37;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$PermissionEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->P1()V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPermission(I[Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    .line 2
    invoke-static {v0, p2}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasLocationServicePermission(Landroid/content/Context;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public finish(Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;

    .line 3
    invoke-virtual {v2}, Lcom/cndatacom/campus/permission/v2/entity/PermissionResult;->getRequestCode()I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1, v0}, Lcom/cndatacom/campus/PortalMananger;->s0(Lcom/cndatacom/campus/PortalMananger;Z)V

    return-void
.end method

.method public needRemind(I[Ljava/lang/String;)Z
    .locals 2

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->r0(Lcom/cndatacom/campus/PortalMananger;)Z

    move-result v0

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->q0(Lcom/cndatacom/campus/PortalMananger;)Z

    move-result v0

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    move v0, p2

    :goto_1
    return v0
.end method

.method public requestPermissions(I[Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p2}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$37;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Z(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
