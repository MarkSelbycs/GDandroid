.class Lcom/cndatacom/campus/PortalMananger$34;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PortalMananger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->H2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/net/ConnectivityManager;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Landroid/net/ConnectivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$34;->b:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$34;->a:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$34;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 3
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$34;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->k0(Lcom/cndatacom/campus/PortalMananger;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$34;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-virtual {p1}, Lcom/cndatacom/campus/PortalMananger;->onNetworkChange()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$34;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {p1}, Lcom/cndatacom/campus/PortalMananger;->k0(Lcom/cndatacom/campus/PortalMananger;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$34;->b:Lcom/cndatacom/campus/PortalMananger;

    invoke-virtual {p1}, Lcom/cndatacom/campus/PortalMananger;->onNetworkChange()V

    return-void
.end method
