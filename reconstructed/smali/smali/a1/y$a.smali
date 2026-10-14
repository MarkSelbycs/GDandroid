.class public La1/y$a;
.super Ljava/lang/Object;
.source "WorkForegroundUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/y;->a(Landroid/content/Context;Ljava/util/UUID;Lq0/h;)Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb1/c;

.field public final synthetic b:Ljava/util/UUID;

.field public final synthetic c:Lq0/h;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:La1/y;


# direct methods
.method public constructor <init>(La1/y;Lb1/c;Ljava/util/UUID;Lq0/h;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La1/y$a;->e:La1/y;

    iput-object p2, p0, La1/y$a;->a:Lb1/c;

    iput-object p3, p0, La1/y$a;->b:Ljava/util/UUID;

    iput-object p4, p0, La1/y$a;->c:Lq0/h;

    iput-object p5, p0, La1/y$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, La1/y$a;->a:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, La1/y$a;->b:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, La1/y$a;->e:La1/y;

    iget-object v1, v1, La1/y;->c:Lz0/v;

    invoke-interface {v1, v0}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Lz0/u;->b:Lq0/y$c;

    invoke-virtual {v2}, Lq0/y$c;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, La1/y$a;->e:La1/y;

    iget-object v2, v2, La1/y;->b:Ly0/a;

    iget-object v3, p0, La1/y$a;->c:Lq0/h;

    invoke-interface {v2, v0, v3}, Ly0/a;->a(Ljava/lang/String;Lq0/h;)V

    .line 6
    iget-object v0, p0, La1/y$a;->d:Landroid/content/Context;

    invoke-static {v1}, Lz0/x;->a(Lz0/u;)Lz0/m;

    move-result-object v1

    iget-object v2, p0, La1/y$a;->c:Lq0/h;

    invoke-static {v0, v1, v2}, Landroidx/work/impl/foreground/a;->e(Landroid/content/Context;Lz0/m;Lq0/h;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    iget-object v1, p0, La1/y$a;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const-string v0, "Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, La1/y$a;->a:Lb1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb1/c;->p(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, La1/y$a;->a:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
