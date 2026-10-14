.class public final Ly3/h;
.super Ljava/lang/Object;
.source "CoroutineExceptionHandlerImpl.common.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ld3/g;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Ly3/g;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt3/c0;

    .line 2
    :try_start_0
    invoke-interface {v1, p0, p1}, Lt3/c0;->u(Ld3/g;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {p1, v1}, Lt3/d0;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Ly3/g;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ly3/i;

    invoke-direct {v0, p0}, Ly3/i;-><init>(Ld3/g;)V

    invoke-static {p1, v0}, La3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :catchall_1
    invoke-static {p1}, Ly3/g;->b(Ljava/lang/Throwable;)V

    return-void
.end method
