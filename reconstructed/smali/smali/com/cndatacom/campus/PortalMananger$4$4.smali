.class Lcom/cndatacom/campus/PortalMananger$4$4;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$4;->handleConnectedMsg(ZLcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Lcom/cndatacom/campus/PortalMananger$4;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4$4;->d:Lcom/cndatacom/campus/PortalMananger$4;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$4$4;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/cndatacom/campus/PortalMananger$4$4;->b:Z

    iput-boolean p4, p0, Lcom/cndatacom/campus/PortalMananger$4$4;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4$4;->d:Lcom/cndatacom/campus/PortalMananger$4;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4$4;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/cndatacom/campus/PortalMananger$4$4;->b:Z

    iget-boolean v3, p0, Lcom/cndatacom/campus/PortalMananger$4$4;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/cndatacom/campus/PortalMananger;->J(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;ZZ)V

    return-void
.end method
