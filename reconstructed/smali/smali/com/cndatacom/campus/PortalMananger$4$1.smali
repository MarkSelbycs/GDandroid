.class Lcom/cndatacom/campus/PortalMananger$4$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$4;->handleNetworkInfoMsg(Lcom/cndatacom/sdk/portal/entity/NetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/cndatacom/sdk/portal/entity/NetInfo;

.field public final synthetic c:Lcom/cndatacom/campus/PortalMananger$4;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4$1;->c:Lcom/cndatacom/campus/PortalMananger$4;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$4$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/cndatacom/campus/PortalMananger$4$1;->b:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4$1;->c:Lcom/cndatacom/campus/PortalMananger$4;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$4$1;->b:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-static {v0, v1, v2}, Lcom/cndatacom/campus/PortalMananger;->C(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/NetInfo;)V

    return-void
.end method
