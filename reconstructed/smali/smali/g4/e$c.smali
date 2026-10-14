.class public final Lg4/e$c;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lokio/Buffer;

.field public final b:Lokio/Buffer;

.field public final c:J

.field public d:Z

.field public e:Z

.field public final synthetic f:Lg4/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    return-void
.end method

.method public constructor <init>(Lg4/e;J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lg4/e$c;->f:Lg4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lg4/e$c;->a:Lokio/Buffer;

    .line 4
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lg4/e$c;->b:Lokio/Buffer;

    .line 5
    iput-wide p2, p0, Lg4/e$c;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Lg4/e;JLg4/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lg4/e$c;-><init>(Lg4/e;J)V

    return-void
.end method

.method public static synthetic c(Lg4/e$c;)Z
    .locals 0

    iget-boolean p0, p0, Lg4/e$c;->e:Z

    return p0
.end method

.method public static synthetic e(Lg4/e$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lg4/e$c;->e:Z

    return p1
.end method

.method public static synthetic f(Lg4/e$c;)Z
    .locals 0

    iget-boolean p0, p0, Lg4/e$c;->d:Z

    return p0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lg4/e$c;->d:Z

    .line 3
    iget-object v1, p0, Lg4/e$c;->b:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->clear()V

    .line 4
    iget-object v1, p0, Lg4/e$c;->f:Lg4/e;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v0}, Lg4/e;->a(Lg4/e;)V

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg4/e$c;->d:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v0}, Lg4/e;->g(Lg4/e;)Lg4/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lg4/p;

    iget-object v1, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v1}, Lg4/e;->g(Lg4/e;)Lg4/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lg4/p;-><init>(Lg4/a;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lokio/BufferedSource;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_6

    .line 1
    iget-object v2, p0, Lg4/e$c;->f:Lg4/e;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-boolean v3, p0, Lg4/e$c;->e:Z

    .line 3
    iget-object v4, p0, Lg4/e$c;->b:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v4, p2

    iget-wide v6, p0, Lg4/e$c;->c:J

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v6

    .line 4
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    .line 6
    iget-object p1, p0, Lg4/e$c;->f:Lg4/e;

    sget-object p2, Lg4/a;->p:Lg4/a;

    invoke-virtual {p1, p2}, Lg4/e;->n(Lg4/a;)V

    return-void

    :cond_1
    if-eqz v3, :cond_2

    .line 7
    invoke-interface {p1, p2, p3}, Lokio/BufferedSource;->skip(J)V

    return-void

    .line 8
    :cond_2
    iget-object v2, p0, Lg4/e$c;->a:Lokio/Buffer;

    invoke-interface {p1, v2, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v7, -0x1

    cmp-long v4, v2, v7

    if-eqz v4, :cond_5

    sub-long/2addr p2, v2

    .line 9
    iget-object v2, p0, Lg4/e$c;->f:Lg4/e;

    monitor-enter v2

    .line 10
    :try_start_1
    iget-object v3, p0, Lg4/e$c;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    .line 11
    :goto_2
    iget-object v0, p0, Lg4/e$c;->b:Lokio/Buffer;

    iget-object v1, p0, Lg4/e$c;->a:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    if-eqz v5, :cond_4

    .line 12
    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 14
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 15
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_6
    return-void
.end method

.method public final j()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v0}, Lg4/e;->f(Lg4/e;)Lg4/e$d;

    move-result-object v0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lg4/e$c;->b:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg4/e$c;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lg4/e$c;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v0}, Lg4/e;->g(Lg4/e;)Lg4/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v0}, Lg4/e;->h(Lg4/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v0}, Lg4/e;->f(Lg4/e;)Lg4/e$d;

    move-result-object v0

    invoke-virtual {v0}, Lg4/e$d;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v1}, Lg4/e;->f(Lg4/e;)Lg4/e$d;

    move-result-object v1

    invoke-virtual {v1}, Lg4/e$d;->a()V

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    .line 1
    iget-object v2, p0, Lg4/e$c;->f:Lg4/e;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lg4/e$c;->j()V

    .line 3
    invoke-virtual {p0}, Lg4/e$c;->h()V

    .line 4
    iget-object v3, p0, Lg4/e$c;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-nez v3, :cond_0

    const-wide/16 p1, -0x1

    monitor-exit v2

    return-wide p1

    .line 5
    :cond_0
    iget-object v3, p0, Lg4/e$c;->b:Lokio/Buffer;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 6
    iget-object p3, p0, Lg4/e$c;->f:Lg4/e;

    iget-wide v3, p3, Lg4/e;->a:J

    add-long/2addr v3, p1

    iput-wide v3, p3, Lg4/e;->a:J

    .line 7
    invoke-static {p3}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object p3

    iget-object p3, p3, Lg4/d;->t:Lg4/n;

    const/high16 v5, 0x10000

    invoke-virtual {p3, v5}, Lg4/n;->e(I)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v6, p3

    cmp-long p3, v3, v6

    if-ltz p3, :cond_1

    .line 8
    iget-object p3, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {p3}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object p3

    iget-object v3, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v3}, Lg4/e;->e(Lg4/e;)I

    move-result v3

    iget-object v4, p0, Lg4/e$c;->f:Lg4/e;

    iget-wide v6, v4, Lg4/e;->a:J

    invoke-virtual {p3, v3, v6, v7}, Lg4/d;->D0(IJ)V

    .line 9
    iget-object p3, p0, Lg4/e$c;->f:Lg4/e;

    iput-wide v0, p3, Lg4/e;->a:J

    .line 10
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    iget-object p3, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {p3}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object p3

    monitor-enter p3

    .line 12
    :try_start_1
    iget-object v2, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v2}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object v2

    iget-wide v3, v2, Lg4/d;->r:J

    add-long/2addr v3, p1

    iput-wide v3, v2, Lg4/d;->r:J

    .line 13
    iget-object v2, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v2}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object v2

    iget-wide v2, v2, Lg4/d;->r:J

    iget-object v4, p0, Lg4/e$c;->f:Lg4/e;

    .line 14
    invoke-static {v4}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object v4

    iget-object v4, v4, Lg4/d;->t:Lg4/n;

    invoke-virtual {v4, v5}, Lg4/n;->e(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 15
    iget-object v2, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v2}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v4}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object v4

    iget-wide v4, v4, Lg4/d;->r:J

    invoke-virtual {v2, v3, v4, v5}, Lg4/d;->D0(IJ)V

    .line 16
    iget-object v2, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v2}, Lg4/e;->d(Lg4/e;)Lg4/d;

    move-result-object v2

    iput-wide v0, v2, Lg4/d;->r:J

    .line 17
    :cond_2
    monitor-exit p3

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lg4/e$c;->f:Lg4/e;

    invoke-static {v0}, Lg4/e;->f(Lg4/e;)Lg4/e$d;

    move-result-object v0

    return-object v0
.end method
