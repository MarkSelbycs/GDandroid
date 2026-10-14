.class Lcom/cndatacom/campus/PortalMananger$26$1;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$26;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalMananger$26;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$26;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$26$1;->a:Lcom/cndatacom/campus/PortalMananger$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$26$1;->a:Lcom/cndatacom/campus/PortalMananger$26;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26;->d:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->c0(Lcom/cndatacom/campus/PortalMananger;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/PortalMananger$26$1$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/PortalMananger$26$1$1;-><init>(Lcom/cndatacom/campus/PortalMananger$26$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x1388

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$26$1;->a:Lcom/cndatacom/campus/PortalMananger$26;

    iget-object v1, v1, Lcom/cndatacom/campus/PortalMananger$26;->d:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->t(Lcom/cndatacom/campus/PortalMananger;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$26$1;->a:Lcom/cndatacom/campus/PortalMananger$26;

    iget-object v0, v0, Lcom/cndatacom/campus/PortalMananger$26;->d:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v0}, Lcom/cndatacom/campus/PortalMananger;->d0(Lcom/cndatacom/campus/PortalMananger;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
