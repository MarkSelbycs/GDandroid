.class public final Ly3/o;
.super Lt3/b0;
.source "LimitedDispatcher.kt"

# interfaces
.implements Lt3/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/o$a;
    }
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final c:Lt3/b0;

.field public final d:I

.field public final synthetic e:Lt3/l0;

.field public final f:Ly3/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly3/t<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Ly3/o;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Ly3/o;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lt3/b0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt3/b0;-><init>()V

    .line 2
    iput-object p1, p0, Ly3/o;->c:Lt3/b0;

    .line 3
    iput p2, p0, Ly3/o;->d:I

    .line 4
    instance-of p2, p1, Lt3/l0;

    if-eqz p2, :cond_0

    check-cast p1, Lt3/l0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lt3/k0;->a()Lt3/l0;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Ly3/o;->e:Lt3/l0;

    .line 5
    new-instance p1, Ly3/t;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ly3/t;-><init>(Z)V

    iput-object p1, p0, Ly3/o;->f:Ly3/t;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly3/o;->g:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic r(Ly3/o;)Lt3/b0;
    .locals 0

    iget-object p0, p0, Ly3/o;->c:Lt3/b0;

    return-object p0
.end method

.method public static final synthetic s(Ly3/o;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Ly3/o;->z()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final C()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ly3/o;->g:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ly3/o;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Ly3/o;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 5
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public i(Ld3/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ly3/o;->f:Ly3/t;

    invoke-virtual {p1, p2}, Ly3/t;->a(Ljava/lang/Object;)Z

    .line 2
    sget-object p1, Ly3/o;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Ly3/o;->d:I

    if-ge p1, p2, :cond_1

    .line 3
    invoke-virtual {p0}, Ly3/o;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Ly3/o;->z()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ly3/o$a;

    invoke-direct {p2, p0, p1}, Ly3/o$a;-><init>(Ly3/o;Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Ly3/o;->c:Lt3/b0;

    invoke-virtual {p1, p0, p2}, Lt3/b0;->i(Ld3/g;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public l(Ld3/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ly3/o;->f:Ly3/t;

    invoke-virtual {p1, p2}, Ly3/t;->a(Ljava/lang/Object;)Z

    .line 2
    sget-object p1, Ly3/o;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Ly3/o;->d:I

    if-ge p1, p2, :cond_1

    .line 3
    invoke-virtual {p0}, Ly3/o;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Ly3/o;->z()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Ly3/o$a;

    invoke-direct {p2, p0, p1}, Ly3/o$a;-><init>(Ly3/o;Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Ly3/o;->c:Lt3/b0;

    invoke-virtual {p1, p0, p2}, Lt3/b0;->l(Ld3/g;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final z()Ljava/lang/Runnable;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Ly3/o;->f:Ly3/t;

    invoke-virtual {v0}, Ly3/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ly3/o;->g:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    sget-object v1, Ly3/o;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 5
    iget-object v2, p0, Ly3/o;->f:Ly3/t;

    invoke-virtual {v2}, Ly3/t;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method
