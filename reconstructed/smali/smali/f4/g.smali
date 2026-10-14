.class public final Lf4/g;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final a:Lc4/a;

.field public b:Lc4/c0;

.field public final c:Lc4/j;

.field public final d:Lf4/f;

.field public e:I

.field public f:Lf4/c;

.field public g:Z

.field public h:Z

.field public i:Lh4/h;


# direct methods
.method public constructor <init>(Lc4/j;Lc4/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf4/g;->c:Lc4/j;

    .line 3
    iput-object p2, p0, Lf4/g;->a:Lc4/a;

    .line 4
    new-instance p1, Lf4/f;

    invoke-virtual {p0}, Lf4/g;->k()Lf4/d;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lf4/f;-><init>(Lc4/a;Lf4/d;)V

    iput-object p1, p0, Lf4/g;->d:Lf4/f;

    return-void
.end method


# virtual methods
.method public a(Lf4/c;)V
    .locals 1

    iget-object p1, p1, Lf4/c;->l:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized b()Lf4/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lf4/g;->f:Lf4/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(ZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf4/g;->c:Lc4/j;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    iput-object v1, p0, Lf4/g;->i:Lh4/h;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 3
    iput-boolean p3, p0, Lf4/g;->g:Z

    .line 4
    :cond_1
    iget-object p2, p0, Lf4/g;->f:Lf4/c;

    if-eqz p2, :cond_5

    if-eqz p1, :cond_2

    .line 5
    iput-boolean p3, p2, Lf4/c;->m:Z

    .line 6
    :cond_2
    iget-object p1, p0, Lf4/g;->i:Lh4/h;

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lf4/g;->g:Z

    if-nez p1, :cond_3

    iget-boolean p1, p2, Lf4/c;->m:Z

    if-eqz p1, :cond_5

    .line 7
    :cond_3
    invoke-virtual {p0, p2}, Lf4/g;->j(Lf4/c;)V

    .line 8
    iget-object p1, p0, Lf4/g;->f:Lf4/c;

    iget-object p1, p1, Lf4/c;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lf4/g;->f:Lf4/c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    iput-wide p2, p1, Lf4/c;->n:J

    .line 10
    sget-object p1, Ld4/a;->a:Ld4/a;

    iget-object p2, p0, Lf4/g;->c:Lc4/j;

    iget-object p3, p0, Lf4/g;->f:Lf4/c;

    invoke-virtual {p1, p2, p3}, Ld4/a;->d(Lc4/j;Lf4/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Lf4/g;->f:Lf4/c;

    goto :goto_1

    :cond_4
    move-object p1, v1

    .line 12
    :goto_1
    iput-object v1, p0, Lf4/g;->f:Lf4/c;

    move-object v1, p1

    .line 13
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {v1}, Lf4/c;->o()Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Ld4/c;->d(Ljava/net/Socket;)V

    :cond_6
    return-void

    .line 15
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(IIIZ)Lf4/c;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf4/g;->c:Lc4/j;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lf4/g;->g:Z

    if-nez v1, :cond_6

    .line 3
    iget-object v1, p0, Lf4/g;->i:Lh4/h;

    if-nez v1, :cond_5

    .line 4
    iget-boolean v1, p0, Lf4/g;->h:Z

    if-nez v1, :cond_4

    .line 5
    iget-object v1, p0, Lf4/g;->f:Lf4/c;

    if-eqz v1, :cond_0

    .line 6
    iget-boolean v2, v1, Lf4/c;->m:Z

    if-nez v2, :cond_0

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_0
    sget-object v1, Ld4/a;->a:Ld4/a;

    iget-object v2, p0, Lf4/g;->c:Lc4/j;

    iget-object v3, p0, Lf4/g;->a:Lc4/a;

    invoke-virtual {v1, v2, v3, p0}, Ld4/a;->e(Lc4/j;Lc4/a;Lf4/g;)Lf4/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iput-object v1, p0, Lf4/g;->f:Lf4/c;

    .line 10
    monitor-exit v0

    return-object v1

    .line 11
    :cond_1
    iget-object v1, p0, Lf4/g;->b:Lc4/c0;

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    .line 13
    iget-object v0, p0, Lf4/g;->d:Lf4/f;

    invoke-virtual {v0}, Lf4/f;->g()Lc4/c0;

    move-result-object v1

    .line 14
    iget-object v0, p0, Lf4/g;->c:Lc4/j;

    monitor-enter v0

    .line 15
    :try_start_1
    iput-object v1, p0, Lf4/g;->b:Lc4/c0;

    const/4 v2, 0x0

    .line 16
    iput v2, p0, Lf4/g;->e:I

    .line 17
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 18
    :cond_2
    :goto_0
    new-instance v0, Lf4/c;

    invoke-direct {v0, v1}, Lf4/c;-><init>(Lc4/c0;)V

    .line 19
    invoke-virtual {p0, v0}, Lf4/g;->a(Lf4/c;)V

    .line 20
    iget-object v1, p0, Lf4/g;->c:Lc4/j;

    monitor-enter v1

    .line 21
    :try_start_2
    sget-object v2, Ld4/a;->a:Ld4/a;

    iget-object v3, p0, Lf4/g;->c:Lc4/j;

    invoke-virtual {v2, v3, v0}, Ld4/a;->f(Lc4/j;Lf4/c;)V

    .line 22
    iput-object v0, p0, Lf4/g;->f:Lf4/c;

    .line 23
    iget-boolean v2, p0, Lf4/g;->h:Z

    if-nez v2, :cond_3

    .line 24
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    iget-object v1, p0, Lf4/g;->a:Lc4/a;

    invoke-virtual {v1}, Lc4/a;->b()Ljava/util/List;

    move-result-object v6

    move-object v2, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lf4/c;->f(IIILjava/util/List;Z)V

    .line 26
    invoke-virtual {p0}, Lf4/g;->k()Lf4/d;

    move-result-object p1

    invoke-virtual {v0}, Lf4/c;->a()Lc4/c0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lf4/d;->a(Lc4/c0;)V

    return-object v0

    .line 27
    :cond_3
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 28
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 29
    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "stream != null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "released"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public final e(IIIZZ)Lf4/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lf4/g;->d(IIIZ)Lf4/c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf4/g;->c:Lc4/j;

    monitor-enter v1

    .line 3
    :try_start_0
    iget v2, v0, Lf4/c;->h:I

    if-nez v2, :cond_0

    .line 4
    monitor-exit v1

    return-object v0

    .line 5
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0, p5}, Lf4/c;->m(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p0}, Lf4/g;->h()V

    goto :goto_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lf4/g;->b:Lc4/c0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf4/g;->d:Lf4/f;

    invoke-virtual {v0}, Lf4/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g(Lc4/v;Z)Lh4/h;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lc4/v;->f()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lc4/v;->F()I

    move-result v6

    .line 3
    invoke-virtual {p1}, Lc4/v;->M()I

    move-result v7

    .line 4
    invoke-virtual {p1}, Lc4/v;->G()Z

    move-result v4

    move-object v0, p0

    move v2, v6

    move v3, v7

    move v5, p2

    .line 5
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lf4/g;->e(IIIZZ)Lf4/c;

    move-result-object p2

    .line 6
    iget-object v0, p2, Lf4/c;->g:Lg4/d;

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lh4/d;

    iget-object p2, p2, Lf4/c;->g:Lg4/d;

    invoke-direct {v0, p1, p0, p2}, Lh4/d;-><init>(Lc4/v;Lf4/g;Lg4/d;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lf4/c;->o()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    iget-object v0, p2, Lf4/c;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v1, v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 10
    iget-object v0, p2, Lf4/c;->j:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    int-to-long v1, v7

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 11
    new-instance v0, Lh4/c;

    iget-object v1, p2, Lf4/c;->i:Lokio/BufferedSource;

    iget-object p2, p2, Lf4/c;->j:Lokio/BufferedSink;

    invoke-direct {v0, p1, p0, v1, p2}, Lh4/c;-><init>(Lc4/v;Lf4/g;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lf4/g;->c:Lc4/j;

    monitor-enter p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    iput-object v0, p0, Lf4/g;->i:Lh4/h;

    .line 14
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 15
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Lf4/e;

    invoke-direct {p2, p1}, Lf4/e;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lf4/g;->c(ZZZ)V

    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lf4/g;->c(ZZZ)V

    return-void
.end method

.method public final j(Lf4/c;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lf4/c;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p1, Lf4/c;->l:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 3
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 4
    iget-object p1, p1, Lf4/c;->l:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final k()Lf4/d;
    .locals 2

    sget-object v0, Ld4/a;->a:Ld4/a;

    iget-object v1, p0, Lf4/g;->c:Lc4/j;

    invoke-virtual {v0, v1}, Ld4/a;->g(Lc4/j;)Lf4/d;

    move-result-object v0

    return-object v0
.end method

.method public l()Lh4/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lf4/g;->c:Lc4/j;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf4/g;->i:Lh4/h;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m(Ljava/io/IOException;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf4/g;->c:Lc4/j;

    monitor-enter v0

    .line 2
    :try_start_0
    instance-of v1, p1, Lg4/p;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, Lg4/p;

    .line 4
    iget-object p1, p1, Lg4/p;->a:Lg4/a;

    sget-object v1, Lg4/a;->s:Lg4/a;

    if-ne p1, v1, :cond_0

    .line 5
    iget v5, p0, Lf4/g;->e:I

    add-int/2addr v5, v4

    iput v5, p0, Lf4/g;->e:I

    :cond_0
    if-ne p1, v1, :cond_1

    .line 6
    iget p1, p0, Lf4/g;->e:I

    if-le p1, v4, :cond_5

    .line 7
    :cond_1
    iput-object v2, p0, Lf4/g;->b:Lc4/c0;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lf4/g;->f:Lf4/c;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lf4/c;->n()Z

    move-result v1

    if-nez v1, :cond_5

    .line 9
    iget-object v1, p0, Lf4/g;->f:Lf4/c;

    iget v1, v1, Lf4/c;->h:I

    if-nez v1, :cond_4

    .line 10
    iget-object v1, p0, Lf4/g;->b:Lc4/c0;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 11
    iget-object v5, p0, Lf4/g;->d:Lf4/f;

    invoke-virtual {v5, v1, p1}, Lf4/f;->a(Lc4/c0;Ljava/io/IOException;)V

    .line 12
    :cond_3
    iput-object v2, p0, Lf4/g;->b:Lc4/c0;

    :cond_4
    :goto_0
    move p1, v4

    goto :goto_1

    :cond_5
    move p1, v3

    .line 13
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p0, p1, v3, v4}, Lf4/g;->c(ZZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(ZLh4/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf4/g;->c:Lc4/j;

    monitor-enter v0

    if-eqz p2, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lf4/g;->i:Lh4/h;

    if-ne p2, v1, :cond_1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object v1, p0, Lf4/g;->f:Lf4/c;

    iget v2, v1, Lf4/c;->h:I

    add-int/2addr v2, p2

    iput v2, v1, Lf4/c;->h:I

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lf4/g;->c(ZZZ)V

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf4/g;->i:Lh4/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf4/g;->a:Lc4/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
