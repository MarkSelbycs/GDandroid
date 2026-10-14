.class Lcom/cndatacom/campus/PortalMananger$44;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/campus/permission/v2/entity/PermissionInfoV2$DialogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->Q0(Z)V
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

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$44;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public event()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$44;->a:Lcom/cndatacom/campus/PortalMananger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->s0(Lcom/cndatacom/campus/PortalMananger;Z)V

    return-void
.end method
