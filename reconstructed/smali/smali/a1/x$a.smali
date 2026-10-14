.class public La1/x$a;
.super Ljava/lang/Object;
.source "WorkForegroundRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb1/c;

.field public final synthetic b:La1/x;


# direct methods
.method public constructor <init>(La1/x;Lb1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La1/x$a;->b:La1/x;

    iput-object p2, p0, La1/x$a;->a:Lb1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, La1/x$a;->b:La1/x;

    iget-object v0, v0, La1/x;->a:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, La1/x$a;->a:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/h;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, La1/x;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating notification for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La1/x$a;->b:La1/x;

    iget-object v4, v4, La1/x;->c:Lz0/u;

    iget-object v4, v4, Lz0/u;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, La1/x$a;->b:La1/x;

    iget-object v2, v1, La1/x;->a:Lb1/c;

    iget-object v3, v1, La1/x;->e:Lq0/i;

    iget-object v4, v1, La1/x;->b:Landroid/content/Context;

    iget-object v1, v1, La1/x;->d:Landroidx/work/c;

    .line 5
    invoke-virtual {v1}, Landroidx/work/c;->getId()Ljava/util/UUID;

    move-result-object v1

    .line 6
    invoke-interface {v3, v4, v1, v0}, Lq0/i;->a(Landroid/content/Context;Ljava/util/UUID;Lq0/h;)Lr2/a;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v0}, Lb1/c;->r(Lr2/a;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Worker was marked important ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/x$a;->b:La1/x;

    iget-object v1, v1, La1/x;->c:Lz0/u;

    iget-object v1, v1, Lz0/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") but did not provide ForegroundInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, La1/x$a;->b:La1/x;

    iget-object v1, v1, La1/x;->a:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
