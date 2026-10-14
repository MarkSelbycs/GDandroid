.class public final Landroidx/room/q0;
.super Ljava/lang/Object;
.source "TransactionExecutor.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Runnable;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/q0;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/room/q0;->b:Ljava/util/ArrayDeque;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/q0;->d:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;Landroidx/room/q0;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/q0;->b(Ljava/lang/Runnable;Landroidx/room/q0;)V

    return-void
.end method

.method public static final b(Ljava/lang/Runnable;Landroidx/room/q0;)V
    .locals 1

    const-string v0, "$command"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p1}, Landroidx/room/q0;->c()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/room/q0;->c()V

    throw p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/q0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/room/q0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, p0, Landroidx/room/q0;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/room/q0;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    sget-object v1, La3/o;->a:La3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "command"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/q0;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/room/q0;->b:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/room/p0;

    invoke-direct {v2, p1, p0}, Landroidx/room/p0;-><init>(Ljava/lang/Runnable;Landroidx/room/q0;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Landroidx/room/q0;->c:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/room/q0;->c()V

    .line 5
    :cond_0
    sget-object p1, La3/o;->a:La3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
