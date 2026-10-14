.class public Landroidx/work/impl/background/systemalarm/a;
.super Ljava/lang/Object;
.source "CommandHandler.java"

# interfaces
.implements Lr0/f;


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz0/m;",
            "Landroidx/work/impl/background/systemalarm/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public final d:Lq0/b;

.field public final e:Lr0/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "CommandHandler"

    invoke-static {v0}, Lq0/n;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lq0/b;Lr0/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/a;->d:Lq0/b;

    .line 4
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/a;->e:Lr0/b0;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/a;->b:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_CONSTRAINTS_CHANGED"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lz0/m;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_DELAY_MET"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {v0, p1}, Landroidx/work/impl/background/systemalarm/a;->q(Landroid/content/Intent;Lz0/m;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lz0/m;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_EXECUTION_COMPLETED"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_NEEDS_RESCHEDULE"

    .line 3
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    invoke-static {v0, p1}, Landroidx/work/impl/background/systemalarm/a;->q(Landroid/content/Intent;Lz0/m;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lz0/m;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_SCHEDULE_WORK"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {v0, p1}, Landroidx/work/impl/background/systemalarm/a;->q(Landroid/content/Intent;Lz0/m;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Lz0/m;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_WORK"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {v0, p1}, Landroidx/work/impl/background/systemalarm/a;->q(Landroid/content/Intent;Lz0/m;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static varargs m(Landroid/os/Bundle;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static p(Landroid/content/Intent;)Lz0/m;
    .locals 4

    .line 1
    new-instance v0, Lz0/m;

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_GENERATION"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lz0/m;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static q(Landroid/content/Intent;Lz0/m;)Landroid/content/Intent;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    invoke-virtual {p1}, Lz0/m;->a()I

    move-result p1

    const-string v0, "KEY_WORKSPEC_GENERATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public c(Lz0/m;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/background/systemalarm/c;

    .line 3
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/a;->e:Lr0/b0;

    invoke-virtual {v2, p1}, Lr0/b0;->c(Lz0/m;)Lr0/a0;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p2}, Landroidx/work/impl/background/systemalarm/c;->g(Z)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final g(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling constraints changed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroidx/work/impl/background/systemalarm/b;

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/a;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/a;->d:Lq0/b;

    invoke-direct {p1, v0, v1, p2, p3}, Landroidx/work/impl/background/systemalarm/b;-><init>(Landroid/content/Context;Lq0/b;ILandroidx/work/impl/background/systemalarm/d;)V

    .line 3
    invoke-virtual {p1}, Landroidx/work/impl/background/systemalarm/b;->a()V

    return-void
.end method

.method public final h(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/a;->p(Landroid/content/Intent;)Lz0/m;

    move-result-object p1

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handing delay met for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroidx/work/impl/background/systemalarm/c;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/a;->a:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/a;->e:Lr0/b0;

    .line 6
    invoke-virtual {v3, p1}, Lr0/b0;->d(Lz0/m;)Lr0/a0;

    move-result-object v3

    invoke-direct {v1, v2, p2, p3, v3}, Landroidx/work/impl/background/systemalarm/c;-><init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/d;Lr0/a0;)V

    .line 7
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Landroidx/work/impl/background/systemalarm/c;->f()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSpec "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is is already being handled for ACTION_DELAY_MET"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final i(Landroid/content/Intent;I)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/a;->p(Landroid/content/Intent;)Lz0/m;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling onExecutionCompleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0, v1}, Landroidx/work/impl/background/systemalarm/a;->c(Lz0/m;Z)V

    return-void
.end method

.method public final j(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V
    .locals 4

    .line 1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling reschedule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/d;->g()Lr0/p0;

    move-result-object p1

    invoke-virtual {p1}, Lr0/p0;->y()V

    return-void
.end method

.method public final k(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/a;->p(Landroid/content/Intent;)Lz0/m;

    move-result-object p1

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling schedule work for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/d;->g()Lr0/p0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/room/i0;->e()V

    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->J()Lz0/v;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lz0/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lz0/v;->f(Ljava/lang/String;)Lz0/u;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Skipping scheduling "

    if-nez v2, :cond_0

    .line 8
    :try_start_1
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because it\'s no longer in the DB"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    return-void

    .line 10
    :cond_0
    :try_start_2
    iget-object v4, v2, Lz0/u;->b:Lq0/y$c;

    invoke-virtual {v4}, Lq0/y$c;->e()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "because it is finished."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    return-void

    .line 13
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lz0/u;->c()J

    move-result-wide v3

    .line 14
    invoke-virtual {v2}, Lz0/u;->k()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v5, "at "

    if-nez v2, :cond_2

    .line 15
    :try_start_4
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting up Alarms for "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/a;->a:Landroid/content/Context;

    invoke-static {p2, v0, p1, v3, v4}, Lt0/a;->c(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lz0/m;J)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opportunistically setting an alarm for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, p1, v3, v4}, Lt0/a;->c(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lz0/m;J)V

    .line 19
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/a;->a:Landroid/content/Context;

    invoke-static {p1}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 20
    invoke-virtual {p3}, Landroidx/work/impl/background/systemalarm/d;->f()Lc1/b;

    move-result-object v1

    invoke-interface {v1}, Lc1/b;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/background/systemalarm/d$b;

    invoke-direct {v2, p3, p1, p2}, Landroidx/work/impl/background/systemalarm/d$b;-><init>(Landroidx/work/impl/background/systemalarm/d;Landroid/content/Intent;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 21
    :goto_0
    invoke-virtual {v0}, Landroidx/room/i0;->B()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroidx/room/i0;->i()V

    .line 23
    throw p1
.end method

.method public final l(Landroid/content/Intent;Landroidx/work/impl/background/systemalarm/d;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "KEY_WORKSPEC_ID"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_WORKSPEC_GENERATION"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/a;->e:Lr0/b0;

    new-instance v3, Lz0/m;

    invoke-direct {v3, v0, p1}, Lz0/m;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lr0/b0;->c(Lz0/m;)Lr0/a0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/work/impl/background/systemalarm/a;->e:Lr0/b0;

    invoke-virtual {p1, v0}, Lr0/b0;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 9
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/a0;

    .line 10
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handing stopWork work for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroidx/work/impl/background/systemalarm/d;->i()Lr0/n0;

    move-result-object v2

    invoke-interface {v2, v1}, Lr0/n0;->b(Lr0/a0;)V

    .line 12
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/a;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {p2}, Landroidx/work/impl/background/systemalarm/d;->g()Lr0/p0;

    move-result-object v3

    invoke-virtual {v3}, Lr0/p0;->u()Landroidx/work/impl/WorkDatabase;

    move-result-object v3

    invoke-virtual {v1}, Lr0/a0;->a()Lz0/m;

    move-result-object v4

    .line 14
    invoke-static {v2, v3, v4}, Lt0/a;->a(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lz0/m;)V

    .line 15
    invoke-virtual {v1}, Lr0/a0;->a()Lz0/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroidx/work/impl/background/systemalarm/d;->c(Lz0/m;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public o(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/a;->g(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "ACTION_RESCHEDULE"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/a;->j(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_ID"

    .line 7
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/work/impl/background/systemalarm/a;->m(Landroid/os/Bundle;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid request for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , requires "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lq0/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/a;->k(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V

    goto :goto_0

    :cond_3
    const-string v1, "ACTION_DELAY_MET"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/background/systemalarm/a;->h(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/d;)V

    goto :goto_0

    :cond_4
    const-string v1, "ACTION_STOP_WORK"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0, p1, p3}, Landroidx/work/impl/background/systemalarm/a;->l(Landroid/content/Intent;Landroidx/work/impl/background/systemalarm/d;)V

    goto :goto_0

    :cond_5
    const-string p3, "ACTION_EXECUTION_COMPLETED"

    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 16
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/background/systemalarm/a;->i(Landroid/content/Intent;I)V

    goto :goto_0

    .line 17
    :cond_6
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object p2

    sget-object p3, Landroidx/work/impl/background/systemalarm/a;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lq0/n;->k(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
