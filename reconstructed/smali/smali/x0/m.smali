.class public final Lx0/m;
.super Ljava/lang/Object;
.source "Trackers.kt"


# instance fields
.field public final a:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lx0/c;

.field public final c:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lv0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc1/b;Lx0/g;Lx0/c;Lx0/g;Lx0/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc1/b;",
            "Lx0/g<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lx0/c;",
            "Lx0/g<",
            "Lv0/c;",
            ">;",
            "Lx0/g<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "taskExecutor"

    invoke-static {p2, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "batteryChargingTracker"

    invoke-static {p3, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "batteryNotLowTracker"

    invoke-static {p4, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkStateTracker"

    invoke-static {p5, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "storageNotLowTracker"

    invoke-static {p6, p1}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lx0/m;->a:Lx0/g;

    .line 3
    iput-object p4, p0, Lx0/m;->b:Lx0/c;

    .line 4
    iput-object p5, p0, Lx0/m;->c:Lx0/g;

    .line 5
    iput-object p6, p0, Lx0/m;->d:Lx0/g;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lc1/b;Lx0/g;Lx0/c;Lx0/g;Lx0/g;ILm3/g;)V
    .locals 7

    and-int/lit8 v0, p7, 0x4

    const-string v1, "context.applicationContext"

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lx0/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static/range {v3 .. v3}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3, p2}, Lx0/a;-><init>(Landroid/content/Context;Lc1/b;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Lx0/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static/range {v4 .. v4}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, p2}, Lx0/c;-><init>(Landroid/content/Context;Lc1/b;)V

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lx0/j;->a(Landroid/content/Context;Lc1/b;)Lx0/g;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Lx0/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static/range {v6 .. v6}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6, p2}, Lx0/k;-><init>(Landroid/content/Context;Lc1/b;)V

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p6

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lx0/m;-><init>(Landroid/content/Context;Lc1/b;Lx0/g;Lx0/c;Lx0/g;Lx0/g;)V

    return-void
.end method


# virtual methods
.method public final a()Lx0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx0/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx0/m;->a:Lx0/g;

    return-object v0
.end method

.method public final b()Lx0/c;
    .locals 1

    iget-object v0, p0, Lx0/m;->b:Lx0/c;

    return-object v0
.end method

.method public final c()Lx0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx0/g<",
            "Lv0/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx0/m;->c:Lx0/g;

    return-object v0
.end method

.method public final d()Lx0/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx0/g<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx0/m;->d:Lx0/g;

    return-object v0
.end method
