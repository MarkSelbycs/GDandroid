.class public abstract Lt3/v0;
.super Lt3/t0;
.source "EventLoop.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt3/t0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract r0()Ljava/lang/Thread;
.end method

.method public u0(JLt3/u0$a;)V
    .locals 1

    sget-object v0, Lt3/j0;->i:Lt3/j0;

    invoke-virtual {v0, p1, p2, p3}, Lt3/u0;->G0(JLt3/u0$a;)V

    return-void
.end method

.method public final v0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/v0;->r0()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 3
    invoke-static {}, Lt3/c;->a()Lt3/b;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
