.class public final Lc4/j;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field public static final g:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Ljava/lang/Runnable;

.field public final d:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lf4/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lf4/d;

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    const-string v7, "OkHttp ConnectionPool"

    .line 2
    invoke-static {v7, v0}, Ld4/c;->y(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lc4/j;->g:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const-wide/16 v2, 0x5

    invoke-direct {p0, v1, v2, v3, v0}, Lc4/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc4/j$a;

    invoke-direct {v0, p0}, Lc4/j$a;-><init>(Lc4/j;)V

    iput-object v0, p0, Lc4/j;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc4/j;->d:Ljava/util/Deque;

    .line 5
    new-instance v0, Lf4/d;

    invoke-direct {v0}, Lf4/d;-><init>()V

    iput-object v0, p0, Lc4/j;->e:Lf4/d;

    .line 6
    iput p1, p0, Lc4/j;->a:I

    .line 7
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lc4/j;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keepAliveDuration <= 0: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(J)J
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc4/j;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    move v5, v1

    move v6, v5

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf4/c;

    .line 4
    invoke-virtual {p0, v7, p1, p2}, Lc4/j;->d(Lf4/c;J)I

    move-result v8

    if-lez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 5
    iget-wide v8, v7, Lf4/c;->n:J

    sub-long v8, p1, v8

    cmp-long v10, v8, v3

    if-lez v10, :cond_0

    move-object v2, v7

    move-wide v3, v8

    goto :goto_0

    .line 6
    :cond_2
    iget-wide p1, p0, Lc4/j;->b:J

    cmp-long v0, v3, p1

    if-gez v0, :cond_6

    iget v0, p0, Lc4/j;->a:I

    if-le v5, v0, :cond_3

    goto :goto_1

    :cond_3
    if-lez v5, :cond_4

    sub-long/2addr p1, v3

    .line 7
    monitor-exit p0

    return-wide p1

    :cond_4
    if-lez v6, :cond_5

    .line 8
    monitor-exit p0

    return-wide p1

    .line 9
    :cond_5
    iput-boolean v1, p0, Lc4/j;->f:Z

    const-wide/16 p1, -0x1

    .line 10
    monitor-exit p0

    return-wide p1

    .line 11
    :cond_6
    :goto_1
    iget-object p1, p0, Lc4/j;->d:Ljava/util/Deque;

    invoke-interface {p1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v2}, Lf4/c;->o()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Ld4/c;->d(Ljava/net/Socket;)V

    const-wide/16 p1, 0x0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Lf4/c;)Z
    .locals 1

    .line 1
    iget-boolean v0, p1, Lf4/c;->m:Z

    if-nez v0, :cond_1

    iget v0, p0, Lc4/j;->a:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lc4/j;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public c(Lc4/a;Lf4/g;)Lf4/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/j;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf4/c;

    .line 2
    iget-object v2, v1, Lf4/c;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v1, Lf4/c;->k:I

    if-ge v2, v3, :cond_0

    .line 3
    invoke-virtual {v1}, Lf4/c;->a()Lc4/c0;

    move-result-object v2

    iget-object v2, v2, Lc4/c0;->a:Lc4/a;

    invoke-virtual {p1, v2}, Lc4/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lf4/c;->m:Z

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Lf4/g;->a(Lf4/c;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Lf4/c;J)I
    .locals 7

    .line 1
    iget-object v0, p1, Lf4/c;->l:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/Reference;

    .line 4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object v3

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A connection to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lf4/c;->a()Lc4/c0;

    move-result-object v6

    invoke-virtual {v6}, Lc4/c0;->a()Lc4/a;

    move-result-object v6

    invoke-virtual {v6}, Lc4/a;->k()Lc4/r;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Li4/e;->k(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, p1, Lf4/c;->m:Z

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    iget-wide v2, p0, Lc4/j;->b:J

    sub-long/2addr p2, v2

    iput-wide p2, p1, Lf4/c;->n:J

    return v1

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public e(Lf4/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc4/j;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc4/j;->f:Z

    .line 3
    sget-object v0, Lc4/j;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lc4/j;->c:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc4/j;->d:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method
