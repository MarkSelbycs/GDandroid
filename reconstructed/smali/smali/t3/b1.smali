.class public final Lt3/b1;
.super Ljava/lang/Object;
.source "Executors.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/concurrent/Executor;)Lt3/b0;
    .locals 1

    instance-of v0, p0, Lt3/p0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lt3/p0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lt3/p0;->a:Lt3/b0;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lt3/a1;

    invoke-direct {v0, p0}, Lt3/a1;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method
