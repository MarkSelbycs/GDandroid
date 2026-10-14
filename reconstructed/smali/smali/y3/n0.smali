.class public Ly3/n0;
.super Ljava/lang/Object;
.source "ThreadSafeHeap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ly3/o0;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _size:I

.field public a:[Ly3/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Ly3/n0;

    const-string v1, "_size"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Ly3/n0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ly3/o0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ly3/o0;->a(Ly3/n0;)V

    .line 2
    invoke-virtual {p0}, Ly3/n0;->f()[Ly3/o0;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ly3/n0;->j(I)V

    .line 4
    aput-object p1, v0, v1

    .line 5
    invoke-interface {p1, v1}, Ly3/o0;->b(I)V

    .line 6
    invoke-virtual {p0, v1}, Ly3/n0;->l(I)V

    return-void
.end method

.method public final b()Ly3/o0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ly3/n0;->a:[Ly3/o0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()I
    .locals 1

    sget-object v0, Ly3/n0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Ly3/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ly3/n0;->b()Ly3/o0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()[Ly3/o0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/n0;->a:[Ly3/o0;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Ly3/o0;

    .line 2
    iput-object v0, p0, Ly3/n0;->a:[Ly3/o0;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v1

    array-length v2, v0

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ly3/o0;

    iput-object v0, p0, Ly3/n0;->a:[Ly3/o0;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final g(Ly3/o0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ly3/o0;->e()Ly3/n0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ly3/o0;->f()I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Ly3/n0;->h(I)Ly3/o0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final h(I)Ly3/o0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/n0;->a:[Ly3/o0;

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ly3/n0;->j(I)V

    .line 3
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Ly3/n0;->m(II)V

    add-int/lit8 v1, p1, -0x1

    .line 5
    div-int/lit8 v1, v1, 0x2

    if-lez p1, :cond_0

    .line 6
    aget-object v3, v0, p1

    invoke-static {v3}, Lm3/k;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v0, v1

    invoke-static {v4}, Lm3/k;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 7
    invoke-virtual {p0, p1, v1}, Ly3/n0;->m(II)V

    .line 8
    invoke-virtual {p0, v1}, Ly3/n0;->l(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Ly3/n0;->k(I)V

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result p1

    aget-object p1, v0, p1

    invoke-static {p1}, Lm3/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 11
    invoke-interface {p1, v1}, Ly3/o0;->a(Ly3/n0;)V

    .line 12
    invoke-interface {p1, v2}, Ly3/o0;->b(I)V

    .line 13
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v2

    aput-object v1, v0, v2

    return-object p1
.end method

.method public final i()Ly3/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ly3/n0;->h(I)Ly3/o0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final j(I)V
    .locals 1

    sget-object v0, Ly3/n0;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    return-void
.end method

.method public final k(I)V
    .locals 5

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 1
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Ly3/n0;->a:[Ly3/o0;

    invoke-static {v1}, Lm3/k;->b(Ljava/lang/Object;)V

    add-int/lit8 v2, v0, 0x1

    .line 3
    invoke-virtual {p0}, Ly3/n0;->c()I

    move-result v3

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-static {v3}, Lm3/k;->b(Ljava/lang/Object;)V

    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v1, v0

    invoke-static {v4}, Lm3/k;->b(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    move v0, v2

    .line 4
    :cond_1
    aget-object v2, v1, p1

    invoke-static {v2}, Lm3/k;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v1, v1, v0

    invoke-static {v1}, Lm3/k;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0, p1, v0}, Ly3/n0;->m(II)V

    move p1, v0

    goto :goto_0
.end method

.method public final l(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Ly3/n0;->a:[Ly3/o0;

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    add-int/lit8 v1, p1, -0x1

    .line 2
    div-int/lit8 v1, v1, 0x2

    .line 3
    aget-object v2, v0, v1

    invoke-static {v2}, Lm3/k;->b(Ljava/lang/Object;)V

    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1, v1}, Ly3/n0;->m(II)V

    move p1, v1

    goto :goto_0
.end method

.method public final m(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly3/n0;->a:[Ly3/o0;

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 2
    aget-object v1, v0, p2

    invoke-static {v1}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 3
    aget-object v2, v0, p1

    invoke-static {v2}, Lm3/k;->b(Ljava/lang/Object;)V

    .line 4
    aput-object v1, v0, p1

    .line 5
    aput-object v2, v0, p2

    .line 6
    invoke-interface {v1, p1}, Ly3/o0;->b(I)V

    .line 7
    invoke-interface {v2, p2}, Ly3/o0;->b(I)V

    return-void
.end method
