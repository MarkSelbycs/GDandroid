.class public abstract Lt3/u0$a;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lt3/r0;
.implements Ly3/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lt3/u0$a;",
        ">;",
        "Lt3/r0;",
        "Ly3/o0;"
    }
.end annotation


# instance fields
.field private volatile _heap:Ljava/lang/Object;

.field public a:J

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly3/n0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/n0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/u0$a;->_heap:Ljava/lang/Object;

    invoke-static {}, Lt3/x0;->b()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Lt3/u0$a;->_heap:Ljava/lang/Object;

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lt3/u0$a;->b:I

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt3/u0$a;

    invoke-virtual {p0, p1}, Lt3/u0$a;->h(Lt3/u0$a;)I

    move-result p1

    return p1
.end method

.method public final d()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lt3/u0$a;->_heap:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lt3/x0;->b()Ly3/h0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    instance-of v1, v0, Lt3/u0$b;

    if-eqz v1, :cond_1

    check-cast v0, Lt3/u0$b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ly3/n0;->g(Ly3/o0;)Z

    .line 5
    :cond_2
    invoke-static {}, Lt3/x0;->b()Ly3/h0;

    move-result-object v0

    iput-object v0, p0, Lt3/u0$a;->_heap:Ljava/lang/Object;

    .line 6
    sget-object v0, La3/o;->a:La3/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Ly3/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly3/n0<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lt3/u0$a;->_heap:Ljava/lang/Object;

    instance-of v1, v0, Ly3/n0;

    if-eqz v1, :cond_0

    check-cast v0, Ly3/n0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lt3/u0$a;->b:I

    return v0
.end method

.method public h(Lt3/u0$a;)I
    .locals 4

    iget-wide v0, p0, Lt3/u0$a;->a:J

    iget-wide v2, p1, Lt3/u0$a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final i(JLt3/u0$b;Lt3/u0;)I
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lt3/u0$a;->_heap:Ljava/lang/Object;

    invoke-static {}, Lt3/x0;->b()Ly3/h0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x2

    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    :try_start_2
    invoke-virtual {p3}, Ly3/n0;->b()Ly3/o0;

    move-result-object v0

    check-cast v0, Lt3/u0$a;

    .line 5
    invoke-static {p4}, Lt3/u0;->w0(Lt3/u0;)Z

    move-result p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_1

    const/4 p1, 0x1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return p1

    :cond_1
    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    .line 6
    :try_start_4
    iput-wide p1, p3, Lt3/u0$b;->c:J

    goto :goto_1

    .line 7
    :cond_2
    iget-wide v3, v0, Lt3/u0$a;->a:J

    sub-long v5, v3, p1

    cmp-long p4, v5, v1

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    move-wide p1, v3

    .line 8
    :goto_0
    iget-wide v3, p3, Lt3/u0$b;->c:J

    sub-long v3, p1, v3

    cmp-long p4, v3, v1

    if-lez p4, :cond_4

    iput-wide p1, p3, Lt3/u0$b;->c:J

    .line 9
    :cond_4
    :goto_1
    iget-wide p1, p0, Lt3/u0$a;->a:J

    iget-wide v3, p3, Lt3/u0$b;->c:J

    sub-long/2addr p1, v3

    cmp-long p1, p1, v1

    if-gez p1, :cond_5

    iput-wide v3, p0, Lt3/u0$a;->a:J

    .line 10
    :cond_5
    invoke-virtual {p3, p0}, Ly3/n0;->a(Ly3/o0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 p1, 0x0

    .line 12
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_6
    monitor-exit p3

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 14
    monitor-exit p0

    throw p1
.end method

.method public final j(J)Z
    .locals 2

    iget-wide v0, p0, Lt3/u0$a;->a:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delayed[nanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lt3/u0$a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
