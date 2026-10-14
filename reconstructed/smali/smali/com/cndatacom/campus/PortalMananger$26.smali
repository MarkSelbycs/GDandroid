.class Lcom/cndatacom/campus/PortalMananger$26;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/sdk/portal/util/ImageUtil$ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->D1(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ADInfo;Lcom/cndatacom/campus/uni/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/cndatacom/sdk/portal/entity/ADInfo;

.field public final synthetic d:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;Landroid/app/Activity;Lcom/cndatacom/sdk/portal/entity/ADInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$26;->d:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$26;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    iput-object p3, p0, Lcom/cndatacom/campus/PortalMananger$26;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/cndatacom/campus/PortalMananger$26;->c:Lcom/cndatacom/sdk/portal/entity/ADInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$26;->d:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$26;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->a0(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$26;->b:Landroid/app/Activity;

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$26$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/PortalMananger$26$1;-><init>(Lcom/cndatacom/campus/PortalMananger$26;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
