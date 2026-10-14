.class Lcom/cndatacom/campus/PortalMananger$4$2;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$4;->handlePreConnectedMsg(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger$4;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$4;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$4$2;->b:Lcom/cndatacom/campus/PortalMananger$4;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$4$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$4$2;->b:Lcom/cndatacom/campus/PortalMananger$4;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$4;->a:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$4$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->H(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;)V

    return-void
.end method
