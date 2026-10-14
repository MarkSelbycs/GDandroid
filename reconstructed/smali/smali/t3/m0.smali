.class public final Lt3/m0;
.super Ly3/d0;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ly3/d0<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _decision:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lt3/m0;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lt3/m0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method public J0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lt3/m0;->N0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ly3/d0;->d:Ld3/d;

    invoke-static {v0}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object v0

    iget-object v1, p0, Ly3/d0;->d:Ld3/d;

    invoke-static {p1, v1}, Lt3/y;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Ly3/k;->c(Ld3/d;Ljava/lang/Object;Ll3/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final N0()Z
    .locals 5

    sget-object v0, Lt3/m0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return v2

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v1, Lt3/m0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x2

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method public v(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt3/m0;->J0(Ljava/lang/Object;)V

    return-void
.end method
