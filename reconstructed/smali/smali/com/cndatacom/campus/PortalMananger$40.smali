.class Lcom/cndatacom/campus/PortalMananger$40;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->M1(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$40;->b:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$40;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$40;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->d0(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$40;->b:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$40;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-static {v0, v1}, Lcom/cndatacom/campus/PortalMananger;->v0(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$40;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->Q(Lcom/cndatacom/campus/PortalMananger;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$40;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->w0(Lcom/cndatacom/campus/PortalMananger;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
