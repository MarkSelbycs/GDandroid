.class Lcom/cndatacom/campus/PortalMananger$26$1$1$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$26$1$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger$26$1$1;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$26$1$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$26$1$1$1;->b:Lcom/cndatacom/campus/PortalMananger$26$1$1;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$26$1$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "handleSplashADClickModule->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$26$1$1$1;->b:Lcom/cndatacom/campus/PortalMananger$26$1$1;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26$1$1;->a:Lcom/cndatacom/campus/PortalMananger$26$1;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26$1;->a:Lcom/cndatacom/campus/PortalMananger$26;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26;->d:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$26$1$1$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->b0(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;)V

    return-void
.end method
