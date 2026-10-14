.class Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$1;
.super Landroid/os/Handler;
.source "PermissionCheckerV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$1;->a:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2$1;->a:Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;

    invoke-static {v0, p1}, Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;->a(Lcom/cndatacom/campus/permission/v2/PermissionCheckerV2;Landroid/os/Message;)V

    return-void
.end method
