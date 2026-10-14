.class public La1/z$a;
.super Ljava/lang/Object;
.source "WorkProgressUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La1/z;->a(Landroid/content/Context;Ljava/util/UUID;Landroidx/work/b;)Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/UUID;

.field public final synthetic b:Landroidx/work/b;

.field public final synthetic c:Lb1/c;

.field public final synthetic d:La1/z;


# direct methods
.method public constructor <init>(La1/z;Ljava/util/UUID;Landroidx/work/b;Lb1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La1/z$a;->d:La1/z;

    iput-object p2, p0, La1/z$a;->a:Ljava/util/UUID;

    iput-object p3, p0, La1/z$a;->b:Landroidx/work/b;

    iput-object p4, p0, La1/z$a;->c:Lb1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, La1/z$a;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, La1/z;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating progress for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La1/z$a;->a:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La1/z$a;->b:Landroidx/work/b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, La1/z$a;->d:La1/z;

    iget-object v1, v1, La1/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->e()V

    .line 4
    :try_start_0
    iget-object v1, p0, La1/z$a;->d:La1/z;

    iget-object v1, v1, La1/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Lz0/u;->b:Lq0/y$c;

    .line 7
    sget-object v3, Lq0/y$c;->b:Lq0/y$c;

    if-ne v1, v3, :cond_0

    .line 8
    new-instance v1, Lz0/q;

    iget-object v2, p0, La1/z$a;->b:Landroidx/work/b;

    invoke-direct {v1, v0, v2}, Lz0/q;-><init>(Ljava/lang/String;Landroidx/work/b;)V

    .line 9
    iget-object v0, p0, La1/z$a;->d:La1/z;

    iget-object v0, v0, La1/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->I()Lz0/r;

    move-result-object v0

    invoke-interface {v0, v1}, Lz0/r;->c(Lz0/q;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring setProgressAsync(...). WorkSpec ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is not in a RUNNING state."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object v0, p0, La1/z$a;->c:Lb1/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb1/c;->p(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, La1/z$a;->d:La1/z;

    iget-object v0, v0, La1/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->B()V

    goto :goto_1

    :cond_1
    const-string v0, "Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result."

    .line 13
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, La1/z;->c:Ljava/lang/String;

    const-string v3, "Error updating Worker progress"

    invoke-virtual {v1, v2, v3, v0}, Lq0/n;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iget-object v1, p0, La1/z$a;->c:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :goto_1
    iget-object v0, p0, La1/z$a;->d:La1/z;

    iget-object v0, v0, La1/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, La1/z$a;->d:La1/z;

    iget-object v1, v1, La1/z;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/room/i0;->i()V

    .line 17
    throw v0
.end method
