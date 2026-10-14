.class public final Lx0/i;
.super Lx0/g;
.source "NetworkStateTracker.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lv0/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Landroid/net/ConnectivityManager;

.field public final g:Lx0/i$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc1/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lx0/g;-><init>(Landroid/content/Context;Lc1/b;)V

    .line 2
    invoke-virtual {p0}, Lx0/g;->d()Landroid/content/Context;

    move-result-object p1

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p1, p2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lx0/i;->f:Landroid/net/ConnectivityManager;

    .line 3
    new-instance p1, Lx0/i$a;

    invoke-direct {p1, p0}, Lx0/i$a;-><init>(Lx0/i;)V

    iput-object p1, p0, Lx0/i;->g:Lx0/i$a;

    return-void
.end method

.method public static final synthetic j(Lx0/i;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lx0/i;->f:Landroid/net/ConnectivityManager;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx0/i;->k()Lv0/c;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    const-string v0, "Received exception while registering network callback"

    .line 1
    :try_start_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    invoke-static {}, Lx0/j;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Registering network callback"

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lx0/i;->f:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lx0/i;->g:Lx0/i$a;

    invoke-static {v1, v2}, La1/k;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    invoke-static {}, Lx0/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    invoke-static {}, Lx0/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 4

    const-string v0, "Received exception while unregistering network callback"

    .line 1
    :try_start_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    invoke-static {}, Lx0/j;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unregistering network callback"

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lx0/i;->f:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lx0/i;->g:Lx0/i$a;

    invoke-static {v1, v2}, La1/i;->c(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    invoke-static {}, Lx0/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    invoke-static {}, Lx0/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public k()Lv0/c;
    .locals 1

    iget-object v0, p0, Lx0/i;->f:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lx0/j;->c(Landroid/net/ConnectivityManager;)Lv0/c;

    move-result-object v0

    return-object v0
.end method
