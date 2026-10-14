.class public final Lv3/b$a;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lv3/f;
.implements Lt3/c2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv3/f<",
        "TE;>;",
        "Lt3/c2;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lt3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt3/k<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv3/b$a;->c:Lv3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lv3/c;->m()Ly3/h0;

    move-result-object p1

    iput-object p1, p0, Lv3/b$a;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic b(Lv3/b$a;)V
    .locals 0

    invoke-virtual {p0}, Lv3/b$a;->h()V

    return-void
.end method

.method public static final synthetic c(Lv3/b$a;Lt3/k;)V
    .locals 0

    iput-object p1, p0, Lv3/b$a;->b:Lt3/k;

    return-void
.end method

.method public static final synthetic e(Lv3/b$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lv3/b$a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ld3/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v6, p0, Lv3/b$a;->c:Lv3/b;

    invoke-static {}, Lv3/b;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    .line 3
    :goto_0
    invoke-virtual {v6}, Lv3/b;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lv3/b$a;->g()Z

    move-result p1

    invoke-static {p1}, Lf3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 5
    :cond_0
    invoke-static {}, Lv3/b;->j()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    .line 7
    sget v1, Lv3/c;->b:I

    int-to-long v2, v1

    div-long v2, v10, v2

    int-to-long v4, v1

    .line 8
    rem-long v4, v10, v4

    long-to-int v9, v4

    .line 9
    iget-wide v4, v0, Ly3/e0;->c:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 10
    invoke-static {v6, v2, v3, v0}, Lv3/b;->b(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    move v2, v9

    move-wide v3, v10

    .line 11
    invoke-static/range {v0 .. v5}, Lv3/b;->w(Lv3/b;Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_6

    .line 13
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 14
    invoke-virtual {v6}, Lv3/b;->Q()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    invoke-virtual {v8}, Ly3/e;->b()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Lv3/c;->s()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move-object v7, p0

    move-object v12, p1

    .line 16
    invoke-virtual/range {v7 .. v12}, Lv3/b$a;->f(Lv3/i;IJLd3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    invoke-virtual {v8}, Ly3/e;->b()V

    .line 18
    iput-object v0, p0, Lv3/b$a;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 19
    invoke-static {p1}, Lf3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    return-object p1

    .line 20
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ly3/e0;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/e0<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lv3/b$a;->b:Lt3/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lt3/k;->d(Ly3/e0;I)V

    :cond_0
    return-void
.end method

.method public final f(Lv3/i;IJLd3/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;IJ",
            "Ld3/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v6, p0, Lv3/b$a;->c:Lv3/b;

    .line 2
    invoke-static {p5}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object v0

    invoke-static {v0}, Lt3/m;->a(Ld3/d;)Lt3/k;

    move-result-object v7

    .line 3
    :try_start_0
    invoke-static {p0, v7}, Lv3/b$a;->c(Lv3/b$a;Lt3/k;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p0

    .line 4
    invoke-static/range {v0 .. v5}, Lv3/b;->w(Lv3/b;Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6
    invoke-static {v6, p0, p1, p2}, Lv3/b;->t(Lv3/b;Lt3/c2;Lv3/i;I)V

    goto/16 :goto_2

    .line 7
    :cond_0
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, p2, :cond_a

    .line 8
    invoke-virtual {v6}, Lv3/b;->Q()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-gez p2, :cond_1

    invoke-virtual {p1}, Ly3/e;->b()V

    .line 9
    :cond_1
    invoke-static {}, Lv3/b;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/i;

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {v6}, Lv3/b;->X()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 12
    invoke-static {p0}, Lv3/b$a;->b(Lv3/b$a;)V

    goto/16 :goto_2

    .line 13
    :cond_3
    invoke-static {}, Lv3/b;->j()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    .line 14
    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    .line 15
    sget p4, Lv3/c;->b:I

    int-to-long v0, p4

    div-long v0, p2, v0

    int-to-long v2, p4

    .line 16
    rem-long v2, p2, v2

    long-to-int p4, v2

    .line 17
    iget-wide v2, p1, Ly3/e0;->c:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    .line 18
    invoke-static {v6, v0, v1, p1}, Lv3/b;->b(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :cond_5
    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-wide v3, p2

    move-object v5, p0

    .line 19
    invoke-static/range {v0 .. v5}, Lv3/b;->w(Lv3/b;Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 21
    invoke-static {v6, p0, p1, p4}, Lv3/b;->t(Lv3/b;Lt3/c2;Lv3/i;I)V

    goto :goto_2

    .line 22
    :cond_6
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p4

    if-ne v0, p4, :cond_7

    .line 23
    invoke-virtual {v6}, Lv3/b;->Q()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-gez p2, :cond_2

    invoke-virtual {p1}, Ly3/e;->b()V

    goto :goto_0

    .line 24
    :cond_7
    invoke-static {}, Lv3/c;->s()Ly3/h0;

    move-result-object p2

    if-eq v0, p2, :cond_9

    .line 25
    invoke-virtual {p1}, Ly3/e;->b()V

    .line 26
    invoke-static {p0, v0}, Lv3/b$a;->e(Lv3/b$a;Ljava/lang/Object;)V

    .line 27
    invoke-static {p0, v9}, Lv3/b$a;->c(Lv3/b$a;Lt3/k;)V

    .line 28
    invoke-static {v8}, Lf3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, Lv3/b;->b:Ll3/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Lt3/k;->b()Ld3/g;

    move-result-object p3

    invoke-static {p2, v0, p3}, Ly3/z;->a(Ll3/l;Ljava/lang/Object;Ld3/g;)Ll3/l;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-virtual {v7, p1, v9}, Lt3/k;->I(Ljava/lang/Object;Ll3/l;)V

    goto :goto_2

    .line 29
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_a
    invoke-virtual {p1}, Ly3/e;->b()V

    .line 32
    invoke-static {p0, v0}, Lv3/b$a;->e(Lv3/b$a;Ljava/lang/Object;)V

    .line 33
    invoke-static {p0, v9}, Lv3/b$a;->c(Lv3/b$a;Lt3/k;)V

    .line 34
    invoke-static {v8}, Lf3/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, Lv3/b;->b:Ll3/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Lt3/k;->b()Ld3/g;

    move-result-object p3

    invoke-static {p2, v0, p3}, Ly3/z;->a(Ll3/l;Ljava/lang/Object;Ld3/g;)Ll3/l;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 35
    :goto_2
    invoke-virtual {v7}, Lt3/k;->t()Ljava/lang/Object;

    move-result-object p1

    .line 36
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_b

    invoke-static {p5}, Lf3/h;->c(Ld3/d;)V

    :cond_b
    return-object p1

    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {v7}, Lt3/k;->G()V

    .line 38
    throw p1
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v0

    iput-object v0, p0, Lv3/b$a;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lv3/b$a;->c:Lv3/b;

    invoke-virtual {v0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    invoke-static {v0}, Ly3/g0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/b$a;->b:Lt3/k;

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lv3/b$a;->b:Lt3/k;

    .line 3
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v1

    iput-object v1, p0, Lv3/b$a;->a:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lv3/b$a;->c:Lv3/b;

    invoke-virtual {v1}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, La3/i;->a:La3/i$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, La3/i;->a:La3/i$a;

    invoke-static {v1}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ld3/d;->F(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/b$a;->b:Lt3/k;

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lv3/b$a;->b:Lt3/k;

    .line 3
    iput-object p1, p0, Lv3/b$a;->a:Ljava/lang/Object;

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lv3/b$a;->c:Lv3/b;

    iget-object v3, v3, Lv3/b;->b:Ll3/l;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lt3/k;->b()Ld3/g;

    move-result-object v1

    invoke-static {v3, p1, v1}, Ly3/z;->a(Ll3/l;Ljava/lang/Object;Ld3/g;)Ll3/l;

    move-result-object v1

    :cond_0
    invoke-static {v0, v2, v1}, Lv3/c;->u(Lt3/j;Ljava/lang/Object;Ll3/l;)Z

    move-result p1

    return p1
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv3/b$a;->b:Lt3/k;

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lv3/b$a;->b:Lt3/k;

    .line 3
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v1

    iput-object v1, p0, Lv3/b$a;->a:Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lv3/b$a;->c:Lv3/b;

    invoke-virtual {v1}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    sget-object v1, La3/i;->a:La3/i$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, La3/i;->a:La3/i$a;

    invoke-static {v1}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ld3/d;->F(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/b$a;->a:Ljava/lang/Object;

    .line 2
    invoke-static {}, Lv3/c;->m()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Lv3/c;->m()Ly3/h0;

    move-result-object v1

    iput-object v1, p0, Lv3/b$a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lv3/b$a;->c:Lv3/b;

    invoke-static {v0}, Lv3/b;->f(Lv3/b;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ly3/g0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`hasNext()` has not been invoked"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
