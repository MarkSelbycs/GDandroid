.class public La1/x;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Lb1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Lz0/u;

.field public final d:Landroidx/work/c;

.field public final e:Lq0/i;

.field public final f:Lc1/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "WorkForegroundRunnable"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La1/x;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lz0/u;Landroidx/work/c;Lq0/i;Lc1/b;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    iput-object v0, p0, La1/x;->a:Lb1/c;

    .line 3
    iput-object p1, p0, La1/x;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, La1/x;->c:Lz0/u;

    .line 5
    iput-object p3, p0, La1/x;->d:Landroidx/work/c;

    .line 6
    iput-object p4, p0, La1/x;->e:Lq0/i;

    .line 7
    iput-object p5, p0, La1/x;->f:Lc1/b;

    return-void
.end method

.method public static synthetic a(La1/x;Lb1/c;)V
    .locals 0

    invoke-direct {p0, p1}, La1/x;->c(Lb1/c;)V

    return-void
.end method

.method private synthetic c(Lb1/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, La1/x;->a:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, La1/x;->d:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->getForegroundInfoAsync()Lr2/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb1/c;->r(Lr2/a;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lb1/a;->cancel(Z)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public b()Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La1/x;->a:Lb1/c;

    return-object v0
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeExperimentalUsageError"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La1/x;->c:Lz0/u;

    iget-boolean v0, v0, Lz0/u;->q:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lb1/c;->t()Lb1/c;

    move-result-object v0

    .line 3
    iget-object v1, p0, La1/x;->f:Lc1/b;

    invoke-interface {v1}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, La1/w;

    invoke-direct {v2, p0, v0}, La1/w;-><init>(La1/x;Lb1/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    new-instance v1, La1/x$a;

    invoke-direct {v1, p0, v0}, La1/x$a;-><init>(La1/x;Lb1/c;)V

    iget-object v2, p0, La1/x;->f:Lc1/b;

    .line 5
    invoke-interface {v2}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lb1/a;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, La1/x;->a:Lb1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb1/c;->p(Ljava/lang/Object;)Z

    return-void
.end method
