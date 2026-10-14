.class public abstract Lt3/t0;
.super Lt3/b0;
.source "EventLoop.common.kt"


# instance fields
.field public c:J

.field public d:Z

.field public e:Lb3/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb3/g<",
            "Lt3/n0<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt3/b0;-><init>()V

    return-void
.end method

.method public static synthetic R(Lt3/t0;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lt3/t0;->K(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public C()J
    .locals 3

    .line 1
    iget-object v0, p0, Lt3/t0;->e:Lb3/g;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lb3/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public final K(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lt3/t0;->c:J

    invoke-virtual {p0, p1}, Lt3/t0;->s(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lt3/t0;->c:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lt3/t0;->d:Z

    :cond_0
    return-void
.end method

.method public final Y()Z
    .locals 5

    iget-wide v0, p0, Lt3/t0;->c:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lt3/t0;->s(Z)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final Z()Z
    .locals 1

    iget-object v0, p0, Lt3/t0;->e:Lb3/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb3/g;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final b0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lt3/t0;->e:Lb3/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lb3/g;->H()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/n0;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lt3/n0;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public c0()V
    .locals 0

    return-void
.end method

.method public final r(Z)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lt3/t0;->c:J

    invoke-virtual {p0, p1}, Lt3/t0;->s(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lt3/t0;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Lt3/t0;->d:Z

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lt3/t0;->c0()V

    :cond_1
    return-void
.end method

.method public final s(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public final z(Lt3/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/n0<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/t0;->e:Lb3/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb3/g;

    invoke-direct {v0}, Lb3/g;-><init>()V

    iput-object v0, p0, Lt3/t0;->e:Lb3/g;

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lb3/g;->f(Ljava/lang/Object;)V

    return-void
.end method
