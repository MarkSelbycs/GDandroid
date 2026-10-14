.class public final Lx0/i$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkStateTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/i;-><init>(Landroid/content/Context;Lc1/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx0/i;


# direct methods
.method public constructor <init>(Lx0/i;)V
    .locals 0

    iput-object p1, p0, Lx0/i$a;->a:Lx0/i;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    const-string v0, "network"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "capabilities"

    invoke-static {p2, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    invoke-static {}, Lx0/j;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network capabilities changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lx0/i$a;->a:Lx0/i;

    invoke-static {p1}, Lx0/i;->j(Lx0/i;)Landroid/net/ConnectivityManager;

    move-result-object p2

    invoke-static {p2}, Lx0/j;->c(Landroid/net/ConnectivityManager;)Lv0/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Lx0/g;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    const-string v0, "network"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    invoke-static {}, Lx0/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network connection lost"

    invoke-virtual {p1, v0, v1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lx0/i$a;->a:Lx0/i;

    invoke-static {p1}, Lx0/i;->j(Lx0/i;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {v0}, Lx0/j;->c(Landroid/net/ConnectivityManager;)Lv0/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lx0/g;->g(Ljava/lang/Object;)V

    return-void
.end method
