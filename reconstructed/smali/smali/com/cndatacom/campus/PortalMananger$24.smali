.class Lcom/cndatacom/campus/PortalMananger$24;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->F1(Lcom/cndatacom/campus/uni/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/cndatacom/sdk/portal/entity/ADInfo;

.field public final synthetic c:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic d:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ADInfo;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$24;->d:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$24;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/cndatacom/campus/PortalMananger$24;->b:Lcom/cndatacom/sdk/portal/entity/ADInfo;

    iput-object p4, p0, Lcom/cndatacom/campus/PortalMananger$24;->c:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$24;->d:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$24;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$24;->b:Lcom/cndatacom/sdk/portal/entity/ADInfo;

    iget-object v3, p0, Lcom/cndatacom/campus/PortalMananger$24;->c:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/cndatacom/campus/PortalMananger;->Y(Lcom/cndatacom/campus/PortalMananger;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ADInfo;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method
