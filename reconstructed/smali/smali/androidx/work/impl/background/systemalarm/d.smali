.class public Landroidx/work/impl/background/systemalarm/d;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Lr0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/d$c;,
        Landroidx/work/impl/background/systemalarm/d$b;,
        Landroidx/work/impl/background/systemalarm/d$d;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc1/b;

.field public final c:La1/a0;

.field public final d:Lr0/u;

.field public final e:Lr0/p0;

.field public final f:Landroidx/work/impl/background/systemalarm/a;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/content/Intent;

.field public i:Landroidx/work/impl/background/systemalarm/d$c;

.field public o:Lr0/b0;

.field public final p:Lr0/n0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmDispatcher"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/d;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Landroidx/work/impl/background/systemalarm/d;-><init>(Landroid/content/Context;Lr0/u;Lr0/p0;Lr0/n0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lr0/u;Lr0/p0;Lr0/n0;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    .line 4
    new-instance v1, Lr0/b0;

    invoke-direct {v1}, Lr0/b0;-><init>()V

    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->o:Lr0/b0;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lr0/p0;->o(Landroid/content/Context;)Lr0/p0;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/d;->e:Lr0/p0;

    .line 6
    new-instance p1, Landroidx/work/impl/background/systemalarm/a;

    .line 7
    invoke-virtual {p3}, Lr0/p0;->m()Landroidx/work/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/a;->a()Lq0/b;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->o:Lr0/b0;

    invoke-direct {p1, v0, v1, v2}, Landroidx/work/impl/background/systemalarm/a;-><init>(Landroid/content/Context;Lq0/b;Lr0/b0;)V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->f:Landroidx/work/impl/background/systemalarm/a;

    .line 8
    new-instance p1, La1/a0;

    invoke-virtual {p3}, Lr0/p0;->m()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/a;->k()Lq0/v;

    move-result-object v0

    invoke-direct {p1, v0}, La1/a0;-><init>(Lq0/v;)V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->c:La1/a0;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p3}, Lr0/p0;->q()Lr0/u;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/d;->d:Lr0/u;

    .line 10
    invoke-virtual {p3}, Lr0/p0;->w()Lc1/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->b:Lc1/b;

    if-eqz p4, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    new-instance p4, Lr0/o0;

    invoke-direct {p4, p2, p1}, Lr0/o0;-><init>(Lr0/u;Lc1/b;)V

    :goto_2
    iput-object p4, p0, Landroidx/work/impl/background/systemalarm/d;->p:Lr0/n0;

    .line 12
    invoke-virtual {p2, p0}, Lr0/u;->e(Lr0/f;)V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->h:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;I)Z
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/d;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    const-string p2, "Unknown command. Ignoring"

    invoke-virtual {p1, v1, p2}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 7
    invoke-virtual {p0, v0}, Landroidx/work/impl/background/systemalarm/d;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const-string v0, "KEY_START_ID"

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    monitor-enter p2

    .line 10
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    move v3, v1

    .line 11
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_3

    .line 12
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/d;->l()V

    .line 13
    :cond_3
    monitor-exit p2

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lz0/m;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->b:Lc1/b;

    invoke-interface {v0}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/background/systemalarm/d$b;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    .line 2
    invoke-static {v2, p1, p2}, Landroidx/work/impl/background/systemalarm/a;->d(Landroid/content/Context;Lz0/m;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/background/systemalarm/d$b;-><init>(Landroidx/work/impl/background/systemalarm/d;Landroid/content/Intent;I)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/d;->q:Ljava/lang/String;

    const-string v2, "Checking if commands are complete."

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    .line 3
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->h:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/d;->h:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->h:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->h:Landroid/content/Intent;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dequeue-d command is not the first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/d;->b:Lc1/b;

    invoke-interface {v2}, Lc1/b;->c()Lc1/a;

    move-result-object v2

    .line 10
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->f:Landroidx/work/impl/background/systemalarm/a;

    invoke-virtual {v3}, Landroidx/work/impl/background/systemalarm/a;->n()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    .line 11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v2}, Lc1/a;->k0()Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    const-string v3, "No more commands & intents."

    invoke-virtual {v2, v1, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroidx/work/impl/background/systemalarm/d$c;

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v1}, Landroidx/work/impl/background/systemalarm/d$c;->b()V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/d;->l()V

    .line 18
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Lr0/u;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->d:Lr0/u;

    return-object v0
.end method

.method public f()Lc1/b;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->b:Lc1/b;

    return-object v0
.end method

.method public g()Lr0/p0;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->e:Lr0/p0;

    return-object v0
.end method

.method public h()La1/a0;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->c:La1/a0;

    return-object v0
.end method

.method public i()Lr0/n0;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->p:Lr0/n0;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 4
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 5
    monitor-exit v0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 6
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public k()V
    .locals 3

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/d;->q:Ljava/lang/String;

    const-string v2, "Destroying SystemAlarmDispatcher"

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->d:Lr0/u;

    invoke-virtual {v0, p0}, Lr0/u;->p(Lr0/f;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroidx/work/impl/background/systemalarm/d$c;

    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/d;->b()V

    .line 2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->a:Landroid/content/Context;

    const-string v1, "ProcessCommand"

    .line 3
    invoke-static {v0, v1}, La1/u;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/d;->e:Lr0/p0;

    invoke-virtual {v1}, Lr0/p0;->w()Lc1/b;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/background/systemalarm/d$a;

    invoke-direct {v2, p0}, Landroidx/work/impl/background/systemalarm/d$a;-><init>(Landroidx/work/impl/background/systemalarm/d;)V

    invoke-interface {v1, v2}, Lc1/b;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7
    throw v1
.end method

.method public m(Landroidx/work/impl/background/systemalarm/d$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroidx/work/impl/background/systemalarm/d$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/background/systemalarm/d;->q:Ljava/lang/String;

    const-string v1, "A completion listener for SystemAlarmDispatcher already exists."

    invoke-virtual {p1, v0, v1}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/d;->i:Landroidx/work/impl/background/systemalarm/d$c;

    return-void
.end method
