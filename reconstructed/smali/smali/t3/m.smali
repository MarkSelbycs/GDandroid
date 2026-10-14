.class public final Lt3/m;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ld3/d;)Lt3/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld3/d<",
            "-TT;>;)",
            "Lt3/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ly3/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lt3/k;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lt3/k;-><init>(Ld3/d;I)V

    return-object v0

    .line 3
    :cond_0
    move-object v0, p0

    check-cast v0, Ly3/j;

    invoke-virtual {v0}, Ly3/j;->j()Lt3/k;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lt3/k;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    .line 4
    :cond_3
    :goto_1
    new-instance v0, Lt3/k;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lt3/k;-><init>(Ld3/d;I)V

    return-object v0
.end method
