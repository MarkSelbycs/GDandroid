.class Lcom/cndatacom/campus/PortalMananger$14;
.super Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;
.source "PortalMananger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->R0(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;I)V
    .locals 1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$14;->c:Lcom/cndatacom/campus/PortalMananger;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;-><init>(Lcom/cndatacom/campus/PortalMananger;ILcom/cndatacom/campus/PortalMananger$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$14;->c:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Q(Lcom/cndatacom/campus/PortalMananger;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;->getRequestCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cndatacom/campus/uni/UniJSCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$14;->c:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->P(Lcom/cndatacom/campus/PortalMananger;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/PermissionUtil;->hasCameraPermission(Landroid/content/Context;)Z

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Z)V

    .line 4
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$14;->c:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Q(Lcom/cndatacom/campus/PortalMananger;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;->getRequestCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$14;->c:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->R(Lcom/cndatacom/campus/PortalMananger;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalMananger$PermissionRunnable;->getRequestCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
