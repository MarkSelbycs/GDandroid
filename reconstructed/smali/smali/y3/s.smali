.class public Ly3/s;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/s$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _next:Ljava/lang/Object;

.field private volatile _prev:Ljava/lang/Object;

.field private volatile _removedRef:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Ly3/s;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Ly3/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_removedRef"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ly3/s;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Ly3/s;->_next:Ljava/lang/Object;

    .line 3
    iput-object p0, p0, Ly3/s;->_prev:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Ly3/s;Ly3/s;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/s;->n(Ly3/s;)V

    return-void
.end method

.method public static final synthetic b()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Ly3/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public final k(Ly3/s;)Z
    .locals 1

    sget-object v0, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ly3/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ly3/s;->o()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    sget-object v0, Ly3/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v0, p0, p0, p1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, p0}, Ly3/s;->n(Ly3/s;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final l(Ly3/a0;)Ly3/s;
    .locals 8

    :goto_0
    sget-object v0, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/s;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    move-object v3, v1

    .line 2
    :goto_2
    sget-object v4, Ly3/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_2

    if-ne v0, v2, :cond_0

    return-object v2

    .line 4
    :cond_0
    sget-object v1, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v0, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    .line 5
    :cond_2
    invoke-virtual {p0}, Ly3/s;->s()Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v1

    :cond_3
    if-ne v5, p1, :cond_4

    return-object v2

    .line 6
    :cond_4
    instance-of v6, v5, Ly3/a0;

    if-eqz v6, :cond_5

    .line 7
    check-cast v5, Ly3/a0;

    invoke-virtual {v5, v2}, Ly3/a0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_5
    instance-of v6, v5, Ly3/b0;

    if-eqz v6, :cond_8

    if-eqz v3, :cond_7

    .line 9
    check-cast v5, Ly3/b0;

    iget-object v5, v5, Ly3/b0;->a:Ly3/s;

    invoke-static {v4, v3, v2, v5}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move-object v2, v3

    goto :goto_1

    .line 10
    :cond_7
    sget-object v4, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 11
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/s;

    goto :goto_2

    :cond_8
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 12
    invoke-static {v5, v3}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    check-cast v3, Ly3/s;

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_2
.end method

.method public final m(Ly3/s;)Ly3/s;
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p1}, Ly3/s;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly3/s;

    goto :goto_0
.end method

.method public final n(Ly3/s;)V
    .locals 3

    sget-object v0, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/s;

    .line 1
    invoke-virtual {p0}, Ly3/s;->o()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget-object v2, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v2, p1, v1, p0}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ly3/s;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ly3/s;->l(Ly3/a0;)Ly3/s;

    :cond_2
    return-void
.end method

.method public final o()Ljava/lang/Object;
    .locals 3

    sget-object v0, Ly3/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    instance-of v2, v1, Ly3/a0;

    if-nez v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    check-cast v1, Ly3/a0;

    invoke-virtual {v1, p0}, Ly3/a0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final p()Ly3/s;
    .locals 1

    invoke-virtual {p0}, Ly3/s;->o()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ly3/r;->b(Ljava/lang/Object;)Ly3/s;

    move-result-object v0

    return-object v0
.end method

.method public final r()Ly3/s;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly3/s;->l(Ly3/a0;)Ly3/s;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/s;

    invoke-virtual {p0, v0}, Ly3/s;->m(Ly3/s;)Ly3/s;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public s()Z
    .locals 1

    invoke-virtual {p0}, Ly3/s;->o()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ly3/b0;

    return v0
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, Ly3/s;->v()Ly3/s;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ly3/s$b;

    invoke-direct {v1, p0}, Ly3/s$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lt3/i0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ly3/s;
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Ly3/s;->o()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ly3/b0;

    if-eqz v1, :cond_1

    check-cast v0, Ly3/b0;

    iget-object v0, v0, Ly3/b0;->a:Ly3/s;

    return-object v0

    :cond_1
    if-ne v0, p0, :cond_2

    .line 3
    check-cast v0, Ly3/s;

    return-object v0

    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 4
    invoke-static {v0, v1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ly3/s;

    invoke-virtual {v1}, Ly3/s;->w()Ly3/b0;

    move-result-object v2

    .line 5
    sget-object v3, Ly3/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v0, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {v1, v0}, Ly3/s;->l(Ly3/a0;)Ly3/s;

    return-object v0
.end method

.method public final w()Ly3/b0;
    .locals 2

    sget-object v0, Ly3/s;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/b0;

    if-nez v1, :cond_0

    new-instance v1, Ly3/b0;

    invoke-direct {v1, p0}, Ly3/b0;-><init>(Ly3/s;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public final y(Ly3/s;Ly3/s;Ly3/s$a;)I
    .locals 1

    sget-object v0, Ly3/s;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Ly3/s;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object p2, p3, Ly3/s$a;->c:Ly3/s;

    .line 4
    invoke-static {v0, p0, p2, p3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-virtual {p3, p0}, Ly3/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    return p1
.end method
