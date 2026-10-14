.class public final Lt3/w0;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lt3/t0;
    .locals 4

    new-instance v0, Lt3/e;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lt3/e;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
