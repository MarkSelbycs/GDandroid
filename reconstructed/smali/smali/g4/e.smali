.class public final Lg4/e;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg4/e$d;,
        Lg4/e$b;,
        Lg4/e$c;
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public final c:I

.field public final d:Lg4/d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg4/f;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg4/f;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lg4/e$c;

.field public final h:Lg4/e$b;

.field public final i:Lg4/e$d;

.field public final j:Lg4/e$d;

.field public k:Lg4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>(ILg4/d;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lg4/d;",
            "ZZ",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lg4/e;->a:J

    .line 3
    new-instance v0, Lg4/e$d;

    invoke-direct {v0, p0}, Lg4/e$d;-><init>(Lg4/e;)V

    iput-object v0, p0, Lg4/e;->i:Lg4/e$d;

    .line 4
    new-instance v0, Lg4/e$d;

    invoke-direct {v0, p0}, Lg4/e$d;-><init>(Lg4/e;)V

    iput-object v0, p0, Lg4/e;->j:Lg4/e$d;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lg4/e;->k:Lg4/a;

    const-string v1, "connection == null"

    .line 6
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "requestHeaders == null"

    .line 7
    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput p1, p0, Lg4/e;->c:I

    .line 9
    iput-object p2, p0, Lg4/e;->d:Lg4/d;

    .line 10
    iget-object p1, p2, Lg4/d;->u:Lg4/n;

    const/high16 v1, 0x10000

    .line 11
    invoke-virtual {p1, v1}, Lg4/n;->e(I)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lg4/e;->b:J

    .line 12
    new-instance p1, Lg4/e$c;

    iget-object p2, p2, Lg4/d;->t:Lg4/n;

    .line 13
    invoke-virtual {p2, v1}, Lg4/n;->e(I)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2, v0}, Lg4/e$c;-><init>(Lg4/e;JLg4/e$a;)V

    iput-object p1, p0, Lg4/e;->g:Lg4/e$c;

    .line 14
    new-instance p2, Lg4/e$b;

    invoke-direct {p2, p0}, Lg4/e$b;-><init>(Lg4/e;)V

    iput-object p2, p0, Lg4/e;->h:Lg4/e$b;

    .line 15
    invoke-static {p1, p4}, Lg4/e$c;->e(Lg4/e$c;Z)Z

    .line 16
    invoke-static {p2, p3}, Lg4/e$b;->e(Lg4/e$b;Z)Z

    .line 17
    iput-object p5, p0, Lg4/e;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lg4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lg4/e;->j()V

    return-void
.end method

.method public static synthetic b(Lg4/e;)Lg4/e$d;
    .locals 0

    iget-object p0, p0, Lg4/e;->j:Lg4/e$d;

    return-object p0
.end method

.method public static synthetic c(Lg4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lg4/e;->k()V

    return-void
.end method

.method public static synthetic d(Lg4/e;)Lg4/d;
    .locals 0

    iget-object p0, p0, Lg4/e;->d:Lg4/d;

    return-object p0
.end method

.method public static synthetic e(Lg4/e;)I
    .locals 0

    iget p0, p0, Lg4/e;->c:I

    return p0
.end method

.method public static synthetic f(Lg4/e;)Lg4/e$d;
    .locals 0

    iget-object p0, p0, Lg4/e;->i:Lg4/e$d;

    return-object p0
.end method

.method public static synthetic g(Lg4/e;)Lg4/a;
    .locals 0

    iget-object p0, p0, Lg4/e;->k:Lg4/a;

    return-object p0
.end method

.method public static synthetic h(Lg4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-virtual {p0}, Lg4/e;->z()V

    return-void
.end method


# virtual methods
.method public A()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lg4/e;->j:Lg4/e$d;

    return-object v0
.end method

.method public i(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lg4/e;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lg4/e;->b:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg4/e;->g:Lg4/e$c;

    invoke-static {v0}, Lg4/e$c;->c(Lg4/e$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg4/e;->g:Lg4/e$c;

    invoke-static {v0}, Lg4/e$c;->f(Lg4/e$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg4/e;->h:Lg4/e$b;

    invoke-static {v0}, Lg4/e$b;->c(Lg4/e$b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lg4/e;->h:Lg4/e$b;

    invoke-static {v0}, Lg4/e$b;->f(Lg4/e$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lg4/e;->t()Z

    move-result v1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lg4/a;->t:Lg4/a;

    invoke-virtual {p0, v0}, Lg4/e;->l(Lg4/a;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 6
    iget-object v0, p0, Lg4/e;->d:Lg4/d;

    iget v1, p0, Lg4/e;->c:I

    invoke-virtual {v0, v1}, Lg4/d;->u0(I)Lg4/e;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final k()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/e;->h:Lg4/e$b;

    invoke-static {v0}, Lg4/e$b;->f(Lg4/e$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lg4/e;->h:Lg4/e$b;

    invoke-static {v0}, Lg4/e$b;->c(Lg4/e$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lg4/e;->k:Lg4/a;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Lg4/p;

    iget-object v1, p0, Lg4/e;->k:Lg4/a;

    invoke-direct {v0, v1}, Lg4/p;-><init>(Lg4/a;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Lg4/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg4/e;->m(Lg4/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg4/e;->d:Lg4/d;

    iget v1, p0, Lg4/e;->c:I

    invoke-virtual {v0, v1, p1}, Lg4/d;->B0(ILg4/a;)V

    return-void
.end method

.method public final m(Lg4/a;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg4/e;->k:Lg4/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lg4/e;->g:Lg4/e$c;

    invoke-static {v0}, Lg4/e$c;->c(Lg4/e$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg4/e;->h:Lg4/e$b;

    invoke-static {v0}, Lg4/e$b;->c(Lg4/e$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iput-object p1, p0, Lg4/e;->k:Lg4/a;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lg4/e;->d:Lg4/d;

    iget v0, p0, Lg4/e;->c:I

    invoke-virtual {p1, v0}, Lg4/d;->u0(I)Lg4/e;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public n(Lg4/a;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lg4/e;->m(Lg4/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lg4/e;->d:Lg4/d;

    iget v1, p0, Lg4/e;->c:I

    invoke-virtual {v0, v1, p1}, Lg4/d;->C0(ILg4/a;)V

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lg4/e;->c:I

    return v0
.end method

.method public declared-synchronized p()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg4/e;->i:Lg4/e$d;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lg4/e;->f:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg4/e;->k:Lg4/a;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lg4/e;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    iget-object v0, p0, Lg4/e;->i:Lg4/e$d;

    invoke-virtual {v0}, Lg4/e$d;->a()V

    .line 5
    iget-object v0, p0, Lg4/e;->f:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :try_start_3
    new-instance v0, Lg4/p;

    iget-object v1, p0, Lg4/e;->k:Lg4/a;

    invoke-direct {v0, v1}, Lg4/p;-><init>(Lg4/a;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lg4/e;->i:Lg4/e$d;

    invoke-virtual {v1}, Lg4/e$d;->a()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q()Lokio/Sink;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg4/e;->f:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg4/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lg4/e;->h:Lg4/e$b;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public r()Lokio/Source;
    .locals 1

    iget-object v0, p0, Lg4/e;->g:Lg4/e$c;

    return-object v0
.end method

.method public s()Z
    .locals 4

    .line 1
    iget v0, p0, Lg4/e;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Lg4/e;->d:Lg4/d;

    iget-boolean v3, v3, Lg4/d;->b:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public declared-synchronized t()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg4/e;->k:Lg4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lg4/e;->g:Lg4/e$c;

    invoke-static {v0}, Lg4/e$c;->c(Lg4/e$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg4/e;->g:Lg4/e$c;

    invoke-static {v0}, Lg4/e$c;->f(Lg4/e$c;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lg4/e;->h:Lg4/e$b;

    .line 4
    invoke-static {v0}, Lg4/e$b;->c(Lg4/e$b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg4/e;->h:Lg4/e$b;

    invoke-static {v0}, Lg4/e$b;->f(Lg4/e$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lg4/e;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 5
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 6
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lg4/e;->i:Lg4/e$d;

    return-object v0
.end method

.method public v(Lokio/BufferedSource;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg4/e;->g:Lg4/e$c;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lg4/e$c;->i(Lokio/BufferedSource;J)V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg4/e;->g:Lg4/e$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lg4/e$c;->e(Lg4/e$c;Z)Z

    .line 3
    invoke-virtual {p0}, Lg4/e;->t()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lg4/e;->d:Lg4/d;

    iget v1, p0, Lg4/e;->c:I

    invoke-virtual {v0, v1}, Lg4/d;->u0(I)Lg4/e;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public x(Ljava/util/List;Lg4/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;",
            "Lg4/g;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v2, p0, Lg4/e;->f:Ljava/util/List;

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p2}, Lg4/g;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object v0, Lg4/a;->e:Lg4/a;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lg4/e;->f:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lg4/e;->t()Z

    move-result v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Lg4/g;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    sget-object v0, Lg4/a;->h:Lg4/a;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, p0, Lg4/e;->f:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iput-object p2, p0, Lg4/e;->f:Ljava/util/List;

    .line 14
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lg4/e;->n(Lg4/a;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 16
    iget-object p1, p0, Lg4/e;->d:Lg4/d;

    iget p2, p0, Lg4/e;->c:I

    invoke-virtual {p1, p2}, Lg4/d;->u0(I)Lg4/e;

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized y(Lg4/a;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg4/e;->k:Lg4/a;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lg4/e;->k:Lg4/a;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final z()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
