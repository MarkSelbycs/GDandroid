.class public final Ly3/u;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/u$a;,
        Ly3/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Ly3/u$a;

.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final h:Ly3/h0;


# instance fields
.field private volatile _next:Ljava/lang/Object;

.field private volatile _state:J

.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Ly3/u;

    new-instance v1, Ly3/u$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ly3/u$a;-><init>(Lm3/g;)V

    sput-object v1, Ly3/u;->e:Ly3/u$a;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_next"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Ly3/u;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "_state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    new-instance v0, Ly3/h0;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly3/u;->h:Ly3/h0;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ly3/u;->a:I

    .line 3
    iput-boolean p2, p0, Ly3/u;->b:Z

    add-int/lit8 p2, p1, -0x1

    .line 4
    iput p2, p0, Ly3/u;->c:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 5
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x3fffffff    # 1.9999999f

    if-gt p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Check failed."

    if-eqz v2, :cond_3

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    sget-object v0, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/high16 v1, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v1, v3

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1

    .line 1
    sget-object p1, Ly3/u;->e:Ly3/u$a;

    invoke-virtual {p1, v3, v4}, Ly3/u$a;->a(J)I

    move-result p1

    return p1

    .line 2
    :cond_1
    sget-object v1, Ly3/u;->e:Ly3/u$a;

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v3

    const/4 v9, 0x0

    shr-long/2addr v5, v9

    long-to-int v2, v5

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v5, v3

    const/16 v10, 0x1e

    shr-long/2addr v5, v10

    long-to-int v10, v5

    .line 3
    iget v11, p0, Ly3/u;->c:I

    add-int/lit8 v5, v10, 0x2

    and-int/2addr v5, v11

    and-int v6, v2, v11

    const/4 v12, 0x1

    if-ne v5, v6, :cond_2

    return v12

    .line 4
    :cond_2
    iget-boolean v5, p0, Ly3/u;->b:Z

    const v6, 0x3fffffff    # 1.9999999f

    if-nez v5, :cond_4

    iget-object v5, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v13, v10, v11

    invoke-virtual {v5, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 5
    iget v1, p0, Ly3/u;->a:I

    const/16 v3, 0x400

    if-lt v1, v3, :cond_3

    sub-int/2addr v10, v2

    and-int v2, v10, v6

    shr-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_0

    :cond_3
    return v12

    :cond_4
    add-int/lit8 v2, v10, 0x1

    and-int/2addr v2, v6

    .line 6
    sget-object v5, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v3, v4, v2}, Ly3/u$a;->c(JI)J

    move-result-wide v12

    move-object v1, v5

    move-object v2, p0

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int v1, v10, v11

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v0, p0

    .line 8
    :cond_5
    sget-object v1, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/high16 v3, 0x1000000000000000L

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-eqz v1, :cond_6

    .line 9
    invoke-virtual {v0}, Ly3/u;->i()Ly3/u;

    move-result-object v0

    invoke-virtual {v0, v10, p1}, Ly3/u;->e(ILjava/lang/Object;)Ly3/u;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_6
    return v9
.end method

.method public final b(J)Ly3/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ly3/u<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly3/u;

    iget v1, p0, Ly3/u;->a:I

    mul-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Ly3/u;->b:Z

    invoke-direct {v0, v1, v2}, Ly3/u;-><init>(IZ)V

    const-wide/32 v1, 0x3fffffff

    and-long/2addr v1, p1

    const/4 v3, 0x0

    shr-long/2addr v1, v3

    long-to-int v1, v1

    const-wide v2, 0xfffffffc0000000L

    and-long/2addr v2, p1

    const/16 v4, 0x1e

    shr-long/2addr v2, v4

    long-to-int v2, v2

    .line 2
    :goto_0
    iget v3, p0, Ly3/u;->c:I

    and-int v4, v1, v3

    and-int v5, v2, v3

    if-eq v4, v5, :cond_1

    .line 3
    iget-object v4, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int/2addr v3, v1

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ly3/u$b;

    invoke-direct {v3, v1}, Ly3/u$b;-><init>(I)V

    .line 4
    :cond_0
    iget-object v4, v0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v5, v0, Ly3/u;->c:I

    and-int/2addr v5, v1

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    sget-object v2, Ly3/u;->e:Ly3/u$a;

    const-wide/high16 v3, 0x1000000000000000L

    invoke-virtual {v2, p1, p2, v3, v4}, Ly3/u$a;->d(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    return-object v0
.end method

.method public final c(J)Ly3/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ly3/u<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Ly3/u;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/u;

    if-eqz v1, :cond_0

    return-object v1

    .line 1
    :cond_0
    sget-object v1, Ly3/u;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Ly3/u;->b(J)Ly3/u;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final d()Z
    .locals 10

    sget-object v6, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v0, 0x2000000000000000L

    and-long v4, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    const/4 v9, 0x1

    if-eqz v4, :cond_1

    return v9

    :cond_1
    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    or-long v4, v2, v0

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v9
.end method

.method public final e(ILjava/lang/Object;)Ly3/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Ly3/u<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Ly3/u;->c:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ly3/u$b;

    if-eqz v1, :cond_0

    check-cast v0, Ly3/u$b;

    iget v0, v0, Ly3/u$b;->a:I

    if-ne v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Ly3/u;->c:I

    and-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f()I
    .locals 5

    sget-object v0, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const-wide v3, 0xfffffffc0000000L

    and-long/2addr v0, v3

    const/16 v3, 0x1e

    shr-long/2addr v0, v3

    long-to-int v0, v0

    sub-int/2addr v0, v2

    const v1, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 7

    sget-object v0, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    and-long/2addr v2, v0

    const/4 v4, 0x0

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v0, v5

    const/16 v3, 0x1e

    shr-long/2addr v0, v3

    long-to-int v0, v0

    if-ne v2, v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public final h()J
    .locals 9

    sget-object v6, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/high16 v0, 0x1000000000000000L

    and-long v4, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1

    return-wide v2

    :cond_1
    or-long v7, v2, v0

    move-object v0, v6

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v7
.end method

.method public final i()Ly3/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly3/u<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ly3/u;->h()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ly3/u;->c(J)Ly3/u;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/Object;
    .locals 11

    sget-object v0, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/high16 v1, 0x1000000000000000L

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    .line 1
    sget-object v0, Ly3/u;->h:Ly3/h0;

    return-object v0

    .line 2
    :cond_1
    sget-object v1, Ly3/u;->e:Ly3/u$a;

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v3

    const/4 v2, 0x0

    shr-long/2addr v5, v2

    long-to-int v7, v5

    const-wide v5, 0xfffffffc0000000L

    and-long/2addr v5, v3

    const/16 v2, 0x1e

    shr-long/2addr v5, v2

    long-to-int v2, v5

    .line 3
    iget v5, p0, Ly3/u;->c:I

    and-int/2addr v2, v5

    and-int v6, v7, v5

    const/4 v8, 0x0

    if-ne v2, v6, :cond_2

    return-object v8

    .line 4
    :cond_2
    iget-object v2, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    and-int/2addr v5, v7

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    .line 5
    iget-boolean v1, p0, Ly3/u;->b:Z

    if-eqz v1, :cond_0

    return-object v8

    .line 6
    :cond_3
    instance-of v2, v9, Ly3/u$b;

    if-eqz v2, :cond_4

    return-object v8

    :cond_4
    add-int/lit8 v2, v7, 0x1

    const v5, 0x3fffffff    # 1.9999999f

    and-int v10, v2, v5

    .line 7
    sget-object v2, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v3, v4, v10}, Ly3/u$a;->b(JI)J

    move-result-wide v5

    move-object v1, v2

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    iget-object v0, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Ly3/u;->c:I

    and-int/2addr v1, v7

    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v9

    .line 9
    :cond_5
    iget-boolean v1, p0, Ly3/u;->b:Z

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 10
    :cond_6
    invoke-virtual {v0, v7, v10}, Ly3/u;->k(II)Ly3/u;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v9
.end method

.method public final k(II)Ly3/u;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ly3/u<",
            "TE;>;"
        }
    .end annotation

    sget-object p1, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 1
    sget-object v0, Ly3/u;->e:Ly3/u$a;

    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v2

    const/4 v1, 0x0

    shr-long/2addr v4, v1

    long-to-int v6, v4

    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v4, v2

    const-wide/16 v7, 0x0

    cmp-long v1, v4, v7

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ly3/u;->i()Ly3/u;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    sget-object v1, Ly3/u;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v2, v3, p2}, Ly3/u$a;->b(JI)J

    move-result-wide v4

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Ly3/u;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget p2, p0, Ly3/u;->c:I

    and-int/2addr p2, v6

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-object v0
.end method
