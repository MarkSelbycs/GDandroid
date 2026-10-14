.class public Lt3/k;
.super Lt3/n0;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lt3/j;
.implements Lf3/e;
.implements Lt3/c2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lt3/n0<",
        "TT;>;",
        "Lt3/j<",
        "TT;>;",
        "Lf3/e;",
        "Lt3/c2;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field public final d:Ld3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Ld3/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Object;

    const-class v1, Lt3/k;

    const-string v2, "_decisionAndIndex"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lt3/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Lt3/k;

    const-string v2, "_state"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v1, Lt3/k;

    const-string v2, "_parentHandle"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lt3/k;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ld3/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lt3/n0;-><init>(I)V

    .line 2
    iput-object p1, p0, Lt3/k;->d:Ld3/d;

    .line 3
    invoke-interface {p1}, Ld3/d;->b()Ld3/g;

    move-result-object p1

    iput-object p1, p0, Lt3/k;->e:Ld3/g;

    const p1, 0x1fffffff

    .line 4
    iput p1, p0, Lt3/k;->_decisionAndIndex:I

    .line 5
    sget-object p1, Lt3/d;->a:Lt3/d;

    iput-object p1, p0, Lt3/k;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic K(Lt3/k;Ljava/lang/Object;ILl3/l;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lt3/k;->J(Ljava/lang/Object;ILl3/l;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeImpl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Z
    .locals 2

    iget v0, p0, Lt3/n0;->c:I

    invoke-static {v0}, Lt3/o0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt3/k;->d:Ld3/d;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ly3/j;

    invoke-virtual {v0}, Ly3/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public D()Lf3/e;
    .locals 2

    iget-object v0, p0, Lt3/k;->d:Ld3/d;

    instance-of v1, v0, Lf3/e;

    if-eqz v1, :cond_0

    check-cast v0, Lf3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final E(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lt3/k;->n(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lt3/k;->m(Ljava/lang/Throwable;)Z

    .line 3
    invoke-virtual {p0}, Lt3/k;->p()V

    return-void
.end method

.method public F(Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1, p0}, Lt3/y;->c(Ljava/lang/Object;Lt3/j;)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lt3/n0;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lt3/k;->K(Lt3/k;Ljava/lang/Object;ILl3/l;ILjava/lang/Object;)V

    return-void
.end method

.method public final G()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt3/k;->d:Ld3/d;

    instance-of v1, v0, Ly3/j;

    if-eqz v1, :cond_0

    check-cast v0, Ly3/j;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ly3/j;->p(Lt3/j;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lt3/k;->o()V

    .line 3
    invoke-virtual {p0, v0}, Lt3/k;->m(Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final H()Z
    .locals 3

    .line 1
    sget-object v0, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lt3/t;

    if-eqz v2, :cond_0

    check-cast v1, Lt3/t;

    iget-object v1, v1, Lt3/t;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lt3/k;->o()V

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    sget-object v1, Lt3/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    .line 6
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 7
    sget-object v1, Lt3/d;->a:Lt3/d;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public I(Ljava/lang/Object;Ll3/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lt3/n0;->c:I

    invoke-virtual {p0, p1, v0, p2}, Lt3/k;->J(Ljava/lang/Object;ILl3/l;)V

    return-void
.end method

.method public final J(Ljava/lang/Object;ILl3/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    instance-of v2, v1, Lt3/u1;

    if-eqz v2, :cond_1

    .line 2
    move-object v4, v1

    check-cast v4, Lt3/u1;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lt3/k;->L(Lt3/u1;Ljava/lang/Object;ILl3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    sget-object v3, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lt3/k;->p()V

    .line 5
    invoke-virtual {p0, p2}, Lt3/k;->q(I)V

    return-void

    .line 6
    :cond_1
    instance-of p2, v1, Lt3/n;

    if-eqz p2, :cond_3

    .line 7
    check-cast v1, Lt3/n;

    invoke-virtual {v1}, Lt3/n;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 8
    iget-object p1, v1, Lt3/u;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p1}, Lt3/k;->k(Ll3/l;Ljava/lang/Throwable;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Lt3/k;->i(Ljava/lang/Object;)Ljava/lang/Void;

    new-instance p1, La3/c;

    invoke-direct {p1}, La3/c;-><init>()V

    throw p1
.end method

.method public final L(Lt3/u1;Ljava/lang/Object;ILl3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/u1;",
            "Ljava/lang/Object;",
            "I",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lt3/u;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p3}, Lt3/o0;->b(I)Z

    move-result p3

    if-nez p3, :cond_1

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    if-nez p4, :cond_2

    .line 3
    instance-of p3, p1, Lt3/h;

    if-nez p3, :cond_2

    if-eqz p5, :cond_4

    .line 4
    :cond_2
    new-instance p3, Lt3/t;

    instance-of v0, p1, Lt3/h;

    if-eqz v0, :cond_3

    check-cast p1, Lt3/h;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Lt3/t;-><init>(Ljava/lang/Object;Lt3/h;Ll3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILm3/g;)V

    move-object p2, p3

    :cond_4
    :goto_1
    return-object p2
.end method

.method public final M()Z
    .locals 6

    sget-object v0, Lt3/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    return v0

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
    sget-object v2, Lt3/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v4, 0x1fffffff

    and-int/2addr v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    add-int/2addr v5, v4

    invoke-virtual {v2, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3
.end method

.method public final N(Ljava/lang/Object;Ljava/lang/Object;Ll3/l;)Ly3/h0;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)",
            "Ly3/h0;"
        }
    .end annotation

    sget-object v0, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    instance-of v2, v1, Lt3/u1;

    if-eqz v2, :cond_1

    .line 2
    move-object v4, v1

    check-cast v4, Lt3/u1;

    iget v6, p0, Lt3/n0;->c:I

    move-object v3, p0

    move-object v5, p1

    move-object v7, p3

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Lt3/k;->L(Lt3/u1;Ljava/lang/Object;ILl3/l;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    sget-object v3, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lt3/k;->p()V

    .line 5
    sget-object p1, Lt3/l;->a:Ly3/h0;

    return-object p1

    .line 6
    :cond_1
    instance-of p1, v1, Lt3/t;

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 7
    check-cast v1, Lt3/t;

    iget-object p1, v1, Lt3/t;->d:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    .line 8
    sget-object p3, Lt3/l;->a:Ly3/h0;

    :cond_2
    return-object p3
.end method

.method public final O()Z
    .locals 5

    sget-object v0, Lt3/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v2, Lt3/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v3, 0x1fffffff

    and-int/2addr v3, v1

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v2, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public T(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lt3/n0;->c:I

    invoke-virtual {p0, p1}, Lt3/k;->q(I)V

    return-void
.end method

.method public U(Ljava/lang/Object;Ljava/lang/Object;Ll3/l;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lt3/k;->N(Ljava/lang/Object;Ljava/lang/Object;Ll3/l;)Ly3/h0;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1
    instance-of v2, v10, Lt3/u1;

    if-nez v2, :cond_4

    .line 2
    instance-of v2, v10, Lt3/u;

    if-eqz v2, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v2, v10, Lt3/t;

    if-eqz v2, :cond_3

    .line 4
    move-object v2, v10

    check-cast v2, Lt3/t;

    invoke-virtual {v2}, Lt3/t;->c()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0xf

    const/16 v18, 0x0

    move-object v11, v2

    move-object/from16 v16, p2

    .line 5
    invoke-static/range {v11 .. v18}, Lt3/t;->b(Lt3/t;Ljava/lang/Object;Lt3/h;Ll3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lt3/t;

    move-result-object v3

    .line 6
    sget-object v4, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v10, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v11, p2

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2, v0, v11}, Lt3/t;->d(Lt3/k;Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Must be called at most once"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object/from16 v11, p2

    .line 9
    sget-object v12, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v13, Lt3/t;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v9}, Lt3/t;-><init>(Ljava/lang/Object;Lt3/h;Ll3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILm3/g;)V

    invoke-static {v12, v0, v10, v13}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 10
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not completed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()Ld3/g;
    .locals 1

    iget-object v0, p0, Lt3/k;->e:Ld3/g;

    return-object v0
.end method

.method public final c()Ld3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lt3/k;->d:Ld3/d;

    return-object v0
.end method

.method public d(Ly3/e0;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/e0<",
            "*>;I)V"
        }
    .end annotation

    sget-object v0, Lt3/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    .line 1
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lt3/k;->y(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invokeOnCancellation should be called at most once"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lt3/n0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lt3/t;

    if-eqz v0, :cond_0

    check-cast p1, Lt3/t;

    iget-object p1, p1, Lt3/t;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/k;->u()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already resumed, but proposed with update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Lt3/h;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Lt3/i;->f(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lt3/k;->b()Ld3/g;

    move-result-object p2

    .line 3
    new-instance v0, Lt3/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lt3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lt3/d0;->a(Ld3/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final k(Ll3/l;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p0}, Lt3/k;->b()Ld3/g;

    move-result-object p2

    .line 3
    new-instance v0, Lt3/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in resume onCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lt3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p2, v0}, Lt3/d0;->a(Ld3/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final l(Ly3/e0;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/e0<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    sget-object v0, Lt3/k;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lt3/k;->b()Ld3/g;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Ly3/e0;->o(ILjava/lang/Throwable;Ld3/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p0}, Lt3/k;->b()Ld3/g;

    move-result-object p2

    .line 4
    new-instance v0, Lt3/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lt3/x;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p2, v0}, Lt3/d0;->a(Ld3/g;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The index for Segment.onCancellation(..) is broken"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ljava/lang/Throwable;)Z
    .locals 6

    sget-object v0, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    instance-of v2, v1, Lt3/u1;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 2
    :cond_1
    new-instance v2, Lt3/n;

    instance-of v4, v1, Lt3/h;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    instance-of v4, v1, Ly3/e0;

    if-eqz v4, :cond_3

    :cond_2
    move v3, v5

    :cond_3
    invoke-direct {v2, p0, p1, v3}, Lt3/n;-><init>(Ld3/d;Ljava/lang/Throwable;Z)V

    .line 3
    sget-object v3, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    move-object v0, v1

    check-cast v0, Lt3/u1;

    .line 5
    instance-of v2, v0, Lt3/h;

    if-eqz v2, :cond_4

    check-cast v1, Lt3/h;

    invoke-virtual {p0, v1, p1}, Lt3/k;->j(Lt3/h;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_4
    instance-of v0, v0, Ly3/e0;

    if-eqz v0, :cond_5

    check-cast v1, Ly3/e0;

    invoke-virtual {p0, v1, p1}, Lt3/k;->l(Ly3/e0;Ljava/lang/Throwable;)V

    .line 7
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lt3/k;->p()V

    .line 8
    iget p1, p0, Lt3/n0;->c:I

    invoke-virtual {p0, p1}, Lt3/k;->q(I)V

    return v5
.end method

.method public final n(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/k;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lt3/k;->d:Ld3/d;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {v0, v1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ly3/j;

    .line 3
    invoke-virtual {v0, p1}, Ly3/j;->n(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/k;->s()Lt3/r0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lt3/r0;->d()V

    sget-object v0, Lt3/k;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    sget-object v1, Lt3/t1;->a:Lt3/t1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lt3/k;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lt3/k;->o()V

    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt3/k;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lt3/o0;->a(Lt3/n0;I)V

    return-void
.end method

.method public r(Lt3/h1;)Ljava/lang/Throwable;
    .locals 0

    invoke-interface {p1}, Lt3/h1;->y()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final s()Lt3/r0;
    .locals 1

    sget-object v0, Lt3/k;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/r0;

    return-object v0
.end method

.method public final t()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lt3/k;->A()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lt3/k;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lt3/k;->s()Lt3/r0;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lt3/k;->x()Lt3/r0;

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lt3/k;->G()V

    .line 6
    :cond_1
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lt3/k;->G()V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lt3/k;->u()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lt3/u;

    if-nez v1, :cond_6

    .line 10
    iget v1, p0, Lt3/n0;->c:I

    invoke-static {v1}, Lt3/o0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p0}, Lt3/k;->b()Ld3/g;

    move-result-object v1

    sget-object v2, Lt3/h1;->m:Lt3/h1$b;

    invoke-interface {v1, v2}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v1

    check-cast v1, Lt3/h1;

    if-eqz v1, :cond_5

    .line 12
    invoke-interface {v1}, Lt3/h1;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {v1}, Lt3/h1;->y()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 14
    invoke-virtual {p0, v0, v1}, Lt3/k;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 15
    throw v1

    .line 16
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lt3/k;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 17
    :cond_6
    check-cast v0, Lt3/u;

    iget-object v0, v0, Lt3/u;->a:Ljava/lang/Throwable;

    .line 18
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lt3/k;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt3/k;->d:Ld3/d;

    invoke-static {v1}, Lt3/i0;->c(Ld3/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt3/k;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lt3/i0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/k;->u()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/u1;

    if-eqz v1, :cond_0

    const-string v0, "Active"

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, v0, Lt3/n;

    if-eqz v0, :cond_1

    const-string v0, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v0, "Completed"

    :goto_0
    return-object v0
.end method

.method public w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/k;->x()Lt3/r0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lt3/k;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lt3/r0;->d()V

    sget-object v0, Lt3/k;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    sget-object v1, Lt3/t1;->a:Lt3/t1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final x()Lt3/r0;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lt3/k;->b()Ld3/g;

    move-result-object v0

    sget-object v1, Lt3/h1;->m:Lt3/h1$b;

    invoke-interface {v0, v1}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lt3/h1;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    new-instance v4, Lt3/o;

    invoke-direct {v4, p0}, Lt3/o;-><init>(Lt3/k;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 3
    invoke-static/range {v1 .. v6}, Lt3/h1$a;->d(Lt3/h1;ZZLl3/l;ILjava/lang/Object;)Lt3/r0;

    move-result-object v1

    sget-object v2, Lt3/k;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 4
    invoke-static {v2, p0, v0, v1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v1
.end method

.method public final y(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2
    instance-of v3, v11, Lt3/d;

    if-eqz v3, :cond_1

    .line 3
    sget-object v3, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 4
    :cond_1
    instance-of v3, v11, Lt3/h;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    instance-of v3, v11, Ly3/e0;

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v0, v1, v11}, Lt3/k;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_3
    instance-of v3, v11, Lt3/u;

    if-eqz v3, :cond_9

    .line 6
    move-object v2, v11

    check-cast v2, Lt3/u;

    invoke-virtual {v2}, Lt3/u;->b()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v1, v11}, Lt3/k;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :cond_4
    instance-of v4, v11, Lt3/n;

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_6

    .line 8
    iget-object v4, v2, Lt3/u;->a:Ljava/lang/Throwable;

    .line 9
    :cond_6
    instance-of v2, v1, Lt3/h;

    if-eqz v2, :cond_7

    .line 10
    check-cast v1, Lt3/h;

    invoke-virtual {v0, v1, v4}, Lt3/k;->j(Lt3/h;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    .line 11
    invoke-static {v1, v2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ly3/e0;

    .line 12
    invoke-virtual {v0, v1, v4}, Lt3/k;->l(Ly3/e0;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void

    .line 13
    :cond_9
    instance-of v3, v11, Lt3/t;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v3, :cond_d

    .line 14
    move-object v12, v11

    check-cast v12, Lt3/t;

    iget-object v3, v12, Lt3/t;->b:Lt3/h;

    if-eqz v3, :cond_a

    invoke-virtual {v0, v1, v11}, Lt3/k;->B(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    :cond_a
    instance-of v3, v1, Ly3/e0;

    if-eqz v3, :cond_b

    return-void

    .line 16
    :cond_b
    invoke-static {v1, v4}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v14, v1

    check-cast v14, Lt3/h;

    .line 17
    invoke-virtual {v12}, Lt3/t;->c()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 18
    iget-object v1, v12, Lt3/t;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, v14, v1}, Lt3/k;->j(Lt3/h;Ljava/lang/Throwable;)V

    return-void

    :cond_c
    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1d

    const/16 v19, 0x0

    .line 19
    invoke-static/range {v12 .. v19}, Lt3/t;->b(Lt3/t;Ljava/lang/Object;Lt3/h;Ll3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/Object;)Lt3/t;

    move-result-object v3

    .line 20
    sget-object v4, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v4, v0, v11, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 21
    :cond_d
    instance-of v3, v1, Ly3/e0;

    if-eqz v3, :cond_e

    return-void

    .line 22
    :cond_e
    invoke-static {v1, v4}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Lt3/h;

    .line 23
    new-instance v12, Lt3/t;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v3, v12

    move-object v4, v11

    invoke-direct/range {v3 .. v10}, Lt3/t;-><init>(Ljava/lang/Object;Lt3/h;Ll3/l;Ljava/lang/Object;Ljava/lang/Throwable;ILm3/g;)V

    .line 24
    sget-object v3, Lt3/k;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v3, v0, v11, v12}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void
.end method

.method public z()Z
    .locals 1

    invoke-virtual {p0}, Lt3/k;->u()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lt3/u1;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
