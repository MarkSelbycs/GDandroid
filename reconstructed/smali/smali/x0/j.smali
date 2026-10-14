.class public final Lx0/j;
.super Ljava/lang/Object;
.source "NetworkStateTracker.kt"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "NetworkStateTracker"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"NetworkStateTracker\")"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lx0/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lc1/b;)Lx0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc1/b;",
            ")",
            "Lx0/g<",
            "Lv0/c;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx0/i;

    invoke-direct {v0, p0, p1}, Lx0/i;-><init>(Landroid/content/Context;Lc1/b;)V

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lx0/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static final c(Landroid/net/ConnectivityManager;)Lv0/c;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    invoke-static {p0}, Lx0/j;->d(Landroid/net/ConnectivityManager;)Z

    move-result v4

    .line 4
    invoke-static {p0}, Lr/a;->a(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 6
    :goto_1
    new-instance v0, Lv0/c;

    invoke-direct {v0, v3, v4, p0, v1}, Lv0/c;-><init>(ZZZZ)V

    return-object v0
.end method

.method public static final d(Landroid/net/ConnectivityManager;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, La1/j;->a(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v1

    .line 2
    invoke-static {p0, v1}, La1/i;->a(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v1, 0x10

    .line 3
    invoke-static {p0, v1}, La1/i;->b(Landroid/net/NetworkCapabilities;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Lx0/j;->a:Ljava/lang/String;

    const-string v3, "Unable to validate active network"

    invoke-virtual {v1, v2, v3, p0}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method
