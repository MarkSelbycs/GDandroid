.class public Lv3/n;
.super Lv3/b;
.source "ConflatedBufferedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final r:I

.field public final s:Lv3/a;


# direct methods
.method public constructor <init>(ILv3/a;Ll3/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lv3/a;",
            "Ll3/l<",
            "-TE;",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lv3/b;-><init>(ILl3/l;)V

    .line 2
    iput p1, p0, Lv3/n;->r:I

    .line 3
    iput-object p2, p0, Lv3/n;->s:Lv3/a;

    .line 4
    sget-object p3, Lv3/a;->a:Lv3/a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_3

    if-lt p1, v1, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffered channel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This implementation does not support suspension for senders, use "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lv3/b;

    invoke-static {p2}, Lm3/r;->b(Ljava/lang/Class;)Lq3/b;

    move-result-object p2

    invoke-interface {p2}, Lq3/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic J0(Lv3/n;Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lv3/n<",
            "TE;>;TE;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Lv3/n;->M0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    .line 2
    instance-of v0, p2, Lv3/h$a;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lv3/h;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 3
    iget-object p2, p0, Lv3/b;->b:Ll3/l;

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Ly3/z;->d(Ll3/l;Ljava/lang/Object;Ly3/q0;ILjava/lang/Object;)Ly3/q0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, La3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 5
    throw p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 7
    :cond_1
    sget-object p0, La3/o;->a:La3/o;

    return-object p0
.end method


# virtual methods
.method public final K0(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lv3/b;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lv3/h;->i(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lv3/h;->h(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lv3/b;->b:Ll3/l;

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Ly3/z;->d(Ll3/l;Ljava/lang/Object;Ly3/q0;ILjava/lang/Object;)Ly3/q0;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    throw p1

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lv3/h;->b:Lv3/h$b;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final L0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    sget-object v9, Lv3/c;->d:Ly3/h0;

    .line 2
    invoke-static {}, Lv3/b;->k()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    .line 4
    :cond_0
    :goto_0
    invoke-static {}, Lv3/b;->p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v10, v1, v3

    .line 6
    invoke-static {v8, v1, v2}, Lv3/b;->q(Lv3/b;J)Z

    move-result v12

    .line 7
    sget v13, Lv3/c;->b:I

    int-to-long v1, v13

    div-long v1, v10, v1

    int-to-long v3, v13

    .line 8
    rem-long v3, v10, v3

    long-to-int v14, v3

    .line 9
    iget-wide v3, v0, Ly3/e0;->c:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2

    .line 10
    invoke-static {v8, v1, v2, v0}, Lv3/b;->c(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v12, :cond_0

    .line 11
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual/range {p0 .. p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v15, v1

    goto :goto_1

    :cond_2
    move-object v15, v0

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object v6, v9

    move v7, v12

    .line 12
    invoke-static/range {v0 .. v7}, Lv3/b;->x(Lv3/b;Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v15}, Ly3/e;->b()V

    :goto_2
    move-object v0, v15

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lv3/b;->O()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_5

    invoke-virtual {v15}, Ly3/e;->b()V

    .line 15
    :cond_5
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual/range {p0 .. p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v12, :cond_8

    .line 18
    invoke-virtual {v15}, Ly3/e0;->p()V

    .line 19
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual/range {p0 .. p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 20
    :cond_8
    instance-of v0, v9, Lt3/c2;

    if-eqz v0, :cond_9

    check-cast v9, Lt3/c2;

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_a

    invoke-static {v8, v9, v15, v14}, Lv3/b;->u(Lv3/b;Lt3/c2;Lv3/i;I)V

    .line 21
    :cond_a
    iget-wide v0, v15, Ly3/e0;->c:J

    int-to-long v2, v13

    mul-long/2addr v0, v2

    int-to-long v2, v14

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Lv3/b;->G(J)V

    .line 22
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    sget-object v1, La3/o;->a:La3/o;

    invoke-virtual {v0, v1}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 23
    :cond_b
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    sget-object v1, La3/o;->a:La3/o;

    invoke-virtual {v0, v1}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 24
    :cond_c
    invoke-virtual {v15}, Ly3/e;->b()V

    .line 25
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    sget-object v1, La3/o;->a:La3/o;

    invoke-virtual {v0, v1}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final M0(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/n;->s:Lv3/a;

    sget-object v1, Lv3/a;->c:Lv3/a;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lv3/n;->K0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lv3/n;->L0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a0()Z
    .locals 2

    iget-object v0, p0, Lv3/n;->s:Lv3/a;

    sget-object v1, Lv3/a;->b:Lv3/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv3/n;->M0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lv3/n;->J0(Lv3/n;Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
