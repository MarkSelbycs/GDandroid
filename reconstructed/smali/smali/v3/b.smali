.class public Lv3/b;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"

# interfaces
.implements Lv3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/b$a;,
        Lv3/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv3/d<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _closeCause:Ljava/lang/Object;

.field public final a:I

.field public final b:Ll3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/l<",
            "TE;",
            "La3/o;",
            ">;"
        }
    .end annotation
.end field

.field private volatile bufferEnd:J

.field private volatile bufferEndSegment:Ljava/lang/Object;

.field public final c:Ll3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/q<",
            "Lb4/b<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ll3/l<",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile closeHandler:Ljava/lang/Object;

.field private volatile completedExpandBuffersAndPauseFlag:J

.field private volatile receiveSegment:Ljava/lang/Object;

.field private volatile receivers:J

.field private volatile sendSegment:Ljava/lang/Object;

.field private volatile sendersAndCloseStatus:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/Object;

    const-class v1, Lv3/b;

    const-string v2, "sendersAndCloseStatus"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v2, "receivers"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v2, "bufferEnd"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/b;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v2, "completedExpandBuffersAndPauseFlag"

    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v2, "sendSegment"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "receiveSegment"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "bufferEndSegment"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/b;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_closeCause"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lv3/b;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "closeHandler"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/b;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILl3/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ll3/l<",
            "-TE;",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lv3/b;->a:I

    .line 3
    iput-object p2, p0, Lv3/b;->b:Ll3/l;

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-static {p1}, Lv3/c;->t(I)J

    move-result-wide v0

    iput-wide v0, p0, Lv3/b;->bufferEnd:J

    .line 5
    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v0

    iput-wide v0, p0, Lv3/b;->completedExpandBuffersAndPauseFlag:J

    .line 6
    new-instance p1, Lv3/i;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lv3/i;-><init>(JLv3/i;Lv3/b;I)V

    .line 7
    iput-object p1, p0, Lv3/b;->sendSegment:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lv3/b;->receiveSegment:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lv3/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lv3/c;->n()Lv3/i;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>"

    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lv3/b;->bufferEndSegment:Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 10
    new-instance p1, Lv3/b$c;

    invoke-direct {p1, p0}, Lv3/b$c;-><init>(Lv3/b;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 11
    :goto_1
    iput-object p1, p0, Lv3/b;->c:Ll3/q;

    .line 12
    invoke-static {}, Lv3/c;->l()Ly3/h0;

    move-result-object p1

    iput-object p1, p0, Lv3/b;->_closeCause:Ljava/lang/Object;

    return-void

    .line 13
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid channel capacity: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", should be >=0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static synthetic T(Lv3/b;JILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lv3/b;->S(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incCompletedExpandBufferAttempts"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic b(Lv3/b;JLv3/i;)Lv3/i;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lv3/b;->J(JLv3/i;)Lv3/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lv3/b;JLv3/i;)Lv3/i;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lv3/b;->K(JLv3/i;)Lv3/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lv3/b;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p0}, Lv3/b;->N()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 2

    sget-object v0, Lv3/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic j()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 3

    sget-object v0, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method public static final synthetic k()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lv3/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method public static final synthetic p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method public static synthetic p0(Lv3/b;Ld3/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lv3/b<",
            "TE;>;",
            "Ld3/d<",
            "-",
            "Lv3/h<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lv3/b$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lv3/b$d;

    iget v1, v0, Lv3/b$d;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv3/b$d;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv3/b$d;

    invoke-direct {v0, p0, p1}, Lv3/b$d;-><init>(Lv3/b;Ld3/d;)V

    :goto_0
    move-object v6, v0

    iget-object p1, v6, Lv3/b$d;->d:Ljava/lang/Object;

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, v6, Lv3/b$d;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    check-cast p1, Lv3/h;

    invoke-virtual {p1}, Lv3/h;->k()Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    invoke-static {}, Lv3/b;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    .line 4
    :goto_1
    invoke-virtual {p0}, Lv3/b;->X()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    sget-object p1, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_3

    .line 6
    :cond_3
    invoke-static {}, Lv3/b;->j()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    .line 7
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v4

    .line 8
    sget v3, Lv3/c;->b:I

    int-to-long v7, v3

    div-long v7, v4, v7

    int-to-long v9, v3

    .line 9
    rem-long v9, v4, v9

    long-to-int v3, v9

    .line 10
    iget-wide v9, v1, Ly3/e0;->c:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_5

    .line 11
    invoke-static {p0, v7, v8, v1}, Lv3/b;->b(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move-object v13, v7

    goto :goto_2

    :cond_5
    move-object v13, v1

    :goto_2
    move-object v7, p0

    move-object v8, v13

    move v9, v3

    move-wide v10, v4

    move-object v12, p1

    .line 12
    invoke-static/range {v7 .. v12}, Lv3/b;->w(Lv3/b;Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object v7

    if-eq v1, v7, :cond_a

    .line 14
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object v7

    if-ne v1, v7, :cond_7

    .line 15
    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide v7

    cmp-long v1, v4, v7

    if-gez v1, :cond_6

    invoke-virtual {v13}, Ly3/e;->b()V

    :cond_6
    move-object v1, v13

    goto :goto_1

    .line 16
    :cond_7
    invoke-static {}, Lv3/c;->s()Ly3/h0;

    move-result-object p1

    if-ne v1, p1, :cond_8

    .line 17
    iput v2, v6, Lv3/b$d;->f:I

    move-object v1, p0

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Lv3/b;->q0(Lv3/i;IJLd3/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    return-object v0

    .line 18
    :cond_8
    invoke-virtual {v13}, Ly3/e;->b()V

    .line 19
    sget-object p0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p0, v1}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_9
    :goto_3
    return-object p0

    .line 20
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected"

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic q(Lv3/b;J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv3/b;->Z(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic r(Lv3/b;Lt3/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv3/b;->i0(Lt3/j;)V

    return-void
.end method

.method public static final synthetic s(Lv3/b;Ljava/lang/Object;Lt3/j;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lv3/b;->k0(Ljava/lang/Object;Lt3/j;)V

    return-void
.end method

.method public static final synthetic t(Lv3/b;Lt3/c2;Lv3/i;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lv3/b;->n0(Lt3/c2;Lv3/i;I)V

    return-void
.end method

.method public static final synthetic u(Lv3/b;Lt3/c2;Lv3/i;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lv3/b;->o0(Lt3/c2;Lv3/i;I)V

    return-void
.end method

.method public static final synthetic v(Lv3/b;Lv3/i;IJLd3/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lv3/b;->q0(Lv3/i;IJLd3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v0(Lv3/b;Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lv3/b<",
            "TE;>;TE;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lv3/b;->k()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    .line 3
    :cond_0
    :goto_0
    invoke-static {}, Lv3/b;->p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v3, v1

    .line 5
    invoke-static {p0, v1, v2}, Lv3/b;->q(Lv3/b;J)Z

    move-result v1

    .line 6
    sget v2, Lv3/c;->b:I

    int-to-long v5, v2

    div-long v5, v3, v5

    int-to-long v7, v2

    .line 7
    rem-long v7, v3, v7

    long-to-int v2, v7

    .line 8
    iget-wide v7, v0, Ly3/e0;->c:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_2

    .line 9
    invoke-static {p0, v5, v6, v0}, Lv3/b;->c(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0, p1, p2}, Lv3/b;->j0(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_1
    move-object v0, v5

    :cond_2
    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, v0

    move v7, v2

    move-object v8, p1

    move-wide v9, v3

    move v12, v1

    .line 11
    invoke-static/range {v5 .. v12}, Lv3/b;->x(Lv3/b;Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v6, 0x1

    if-eq v5, v6, :cond_9

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    const/4 v1, 0x3

    if-eq v5, v1, :cond_6

    const/4 v1, 0x4

    if-eq v5, v1, :cond_4

    const/4 v1, 0x5

    if-eq v5, v1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {v0}, Ly3/e;->b()V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-gez v1, :cond_5

    invoke-virtual {v0}, Ly3/e;->b()V

    .line 14
    :cond_5
    invoke-virtual {p0, p1, p2}, Lv3/b;->j0(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_6
    move-object v5, p0

    move-object v6, v0

    move v7, v2

    move-object v8, p1

    move-wide v9, v3

    move-object v11, p2

    .line 15
    invoke-virtual/range {v5 .. v11}, Lv3/b;->w0(Lv3/i;ILjava/lang/Object;JLd3/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    :cond_7
    if-eqz v1, :cond_9

    .line 16
    invoke-virtual {v0}, Ly3/e0;->p()V

    .line 17
    invoke-virtual {p0, p1, p2}, Lv3/b;->j0(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    return-object p0

    .line 18
    :cond_8
    invoke-virtual {v0}, Ly3/e;->b()V

    .line 19
    :cond_9
    sget-object p0, La3/o;->a:La3/o;

    return-object p0
.end method

.method public static final synthetic w(Lv3/b;Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lv3/b;->C0(Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic x(Lv3/b;Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lv3/b;->E0(Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Lv3/i;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;J)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Ly3/n;->b(Ljava/lang/Object;ILm3/g;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    const/4 v2, -0x1

    if-eqz p1, :cond_6

    .line 2
    sget v3, Lv3/c;->b:I

    sub-int/2addr v3, v1

    :goto_1
    if-ge v2, v3, :cond_5

    .line 3
    iget-wide v4, p1, Ly3/e0;->c:J

    sget v6, Lv3/c;->b:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-ltz v4, :cond_6

    .line 4
    :cond_0
    invoke-virtual {p1, v3}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5
    invoke-static {}, Lv3/c;->k()Ly3/h0;

    move-result-object v5

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v5, v4, Lv3/u;

    if-eqz v5, :cond_2

    .line 7
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8
    check-cast v4, Lv3/u;

    iget-object v4, v4, Lv3/u;->a:Lt3/c2;

    invoke-static {v0, v4}, Ly3/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v3, v1}, Lv3/i;->x(IZ)V

    goto :goto_3

    .line 10
    :cond_2
    instance-of v5, v4, Lt3/c2;

    if-eqz v5, :cond_4

    .line 11
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-static {v0, v4}, Ly3/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v3, v1}, Lv3/i;->x(IZ)V

    goto :goto_3

    .line 14
    :cond_3
    :goto_2
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {p1}, Ly3/e0;->p()V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1}, Ly3/e;->g()Ly3/e;

    move-result-object p1

    check-cast p1, Lv3/i;

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_8

    .line 17
    instance-of p1, v0, Ljava/util/ArrayList;

    if-nez p1, :cond_7

    check-cast v0, Lt3/c2;

    .line 18
    invoke-virtual {p0, v0}, Lv3/b;->s0(Lt3/c2;)V

    goto :goto_5

    :cond_7
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    .line 19
    invoke-static {v0, p1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_4
    if-ge v2, p1, :cond_8

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt3/c2;

    .line 22
    invoke-virtual {p0, p2}, Lv3/b;->s0(Lt3/c2;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method public final A0(Lv3/i;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/c2;

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    cmp-long v1, p3, v1

    if-ltz v1, :cond_1

    .line 4
    invoke-static {}, Lv3/c;->p()Ly3/h0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lv3/b;->z0(Ljava/lang/Object;Lv3/i;I)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 6
    sget-object p3, Lv3/c;->d:Ly3/h0;

    invoke-virtual {p1, p2, p3}, Lv3/i;->A(ILjava/lang/Object;)V

    const/4 p4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lv3/i;->A(ILjava/lang/Object;)V

    .line 8
    invoke-virtual {p1, p2, p4}, Lv3/i;->x(IZ)V

    :goto_0
    return p4

    .line 9
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lv3/b;->B0(Lv3/i;IJ)Z

    move-result p1

    return p1
.end method

.method public final B()Lv3/i;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/i<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lv3/b;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lv3/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    iget-wide v2, v1, Ly3/e0;->c:J

    move-object v4, v0

    check-cast v4, Lv3/i;

    iget-wide v4, v4, Ly3/e0;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move-object v0, v1

    :cond_0
    sget-object v1, Lv3/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    iget-wide v2, v1, Ly3/e0;->c:J

    move-object v4, v0

    check-cast v4, Lv3/i;

    iget-wide v4, v4, Ly3/e0;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v0, v1

    .line 4
    :cond_1
    check-cast v0, Ly3/e;

    invoke-static {v0}, Ly3/d;->b(Ly3/e;)Ly3/e;

    move-result-object v0

    check-cast v0, Lv3/i;

    return-object v0
.end method

.method public final B0(Lv3/i;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lt3/c2;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 3
    sget-object v1, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v1, p3, v4

    if-gez v1, :cond_1

    .line 4
    new-instance v1, Lv3/u;

    move-object v2, v0

    check-cast v2, Lt3/c2;

    invoke-direct {v1, v2}, Lv3/u;-><init>(Lt3/c2;)V

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 5
    :cond_1
    invoke-static {}, Lv3/c;->p()Ly3/h0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lv3/b;->z0(Ljava/lang/Object;Lv3/i;I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    sget-object p3, Lv3/c;->d:Ly3/h0;

    invoke-virtual {p1, p2, p3}, Lv3/i;->A(ILjava/lang/Object;)V

    move v2, v3

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lv3/i;->A(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p1, p2, v2}, Lv3/i;->x(IZ)V

    :goto_1
    return v2

    .line 10
    :cond_3
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    if-nez v0, :cond_5

    .line 11
    invoke-static {}, Lv3/c;->k()Ly3/h0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 12
    :cond_5
    sget-object v1, Lv3/c;->d:Ly3/h0;

    if-ne v0, v1, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-static {}, Lv3/c;->o()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_a

    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_7

    goto :goto_2

    .line 14
    :cond_7
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_8

    return v3

    .line 15
    :cond_8
    invoke-static {}, Lv3/c;->q()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected cell state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    return v3
.end method

.method public C(Ljava/lang/Throwable;Z)Z
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lv3/b;->d0()V

    :cond_0
    sget-object v0, Lv3/b;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-static {}, Lv3/c;->l()Ly3/h0;

    move-result-object v1

    invoke-static {v0, p0, v1, p1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lv3/b;->e0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lv3/b;->f0()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lv3/b;->F()V

    .line 5
    invoke-virtual {p0}, Lv3/b;->h0()V

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lv3/b;->U()V

    :cond_2
    return p1
.end method

.method public final C0(Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;IJ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    sget-object v1, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v1, p3, v1

    if-ltz v1, :cond_2

    if-nez p5, :cond_0

    .line 4
    invoke-static {}, Lv3/c;->s()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1, p2, v0, p5}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lv3/b;->H()V

    .line 7
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    sget-object v1, Lv3/c;->d:Ly3/h0;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lv3/b;->H()V

    .line 10
    invoke-virtual {p1, p2}, Lv3/i;->y(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lv3/b;->D0(Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final D(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lv3/b;->E(J)Lv3/i;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lv3/b;->r0(Lv3/i;)V

    return-void
.end method

.method public final D0(Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;IJ",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2
    invoke-static {}, Lv3/c;->k()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    sget-object v1, Lv3/c;->d:Ly3/h0;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lv3/b;->H()V

    .line 5
    invoke-virtual {p1, p2}, Lv3/i;->y(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-static {}, Lv3/c;->o()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 9
    invoke-virtual {p0}, Lv3/b;->H()V

    .line 10
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 11
    :cond_5
    invoke-static {}, Lv3/c;->p()Ly3/h0;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12
    invoke-static {}, Lv3/c;->q()Ly3/h0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    instance-of p3, v0, Lv3/u;

    if-eqz p3, :cond_6

    .line 14
    check-cast v0, Lv3/u;

    iget-object v0, v0, Lv3/u;->a:Lt3/c2;

    .line 15
    :cond_6
    invoke-virtual {p0, v0, p1, p2}, Lv3/b;->z0(Ljava/lang/Object;Lv3/i;I)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 16
    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lv3/i;->A(ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p0}, Lv3/b;->H()V

    .line 18
    invoke-virtual {p1, p2}, Lv3/i;->y(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_7
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lv3/i;->A(ILjava/lang/Object;)V

    const/4 p4, 0x0

    .line 20
    invoke-virtual {p1, p2, p4}, Lv3/i;->x(IZ)V

    if-eqz p3, :cond_8

    .line 21
    invoke-virtual {p0}, Lv3/b;->H()V

    .line 22
    :cond_8
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p1

    :goto_0
    return-object p1

    .line 23
    :cond_9
    :goto_1
    sget-object v1, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 24
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v1, p3, v1

    if-gez v1, :cond_a

    .line 25
    invoke-static {}, Lv3/c;->o()Ly3/h0;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lv3/b;->H()V

    .line 27
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p1

    return-object p1

    :cond_a
    if-nez p5, :cond_b

    .line 28
    invoke-static {}, Lv3/c;->s()Ly3/h0;

    move-result-object p1

    return-object p1

    .line 29
    :cond_b
    invoke-virtual {p1, p2, v0, p5}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lv3/b;->H()V

    .line 31
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object p1

    return-object p1
.end method

.method public final E(J)Lv3/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lv3/i<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv3/b;->B()Lv3/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lv3/b;->a0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lv3/b;->c0(Lv3/i;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v1, v2}, Lv3/b;->G(J)V

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lv3/b;->A(Lv3/i;J)V

    return-object v0
.end method

.method public final E0(Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;ITE;J",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Lv3/i;->B(ILjava/lang/Object;)V

    if-eqz p7, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p7}, Lv3/b;->F0(Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p0, p4, p5}, Lv3/b;->y(J)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lv3/c;->d:Ly3/h0;

    invoke-virtual {p1, p2, v2, v0}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_1
    if-nez p6, :cond_2

    const/4 p1, 0x3

    return p1

    .line 6
    :cond_2
    invoke-virtual {p1, p2, v2, p6}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x2

    return p1

    .line 7
    :cond_3
    instance-of v2, v0, Lt3/c2;

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {p1, p2}, Lv3/i;->s(I)V

    .line 9
    invoke-virtual {p0, v0, p3}, Lv3/b;->y0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 10
    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lv3/i;->A(ILjava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lv3/b;->l0()V

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lv3/i;->t(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object p4

    if-eq p3, p4, :cond_5

    .line 13
    invoke-virtual {p1, p2, v1}, Lv3/i;->x(IZ)V

    :cond_5
    const/4 p1, 0x5

    :goto_0
    return p1

    .line 14
    :cond_6
    invoke-virtual/range {p0 .. p7}, Lv3/b;->F0(Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method public final F()V
    .locals 0

    invoke-virtual {p0}, Lv3/b;->l()Z

    return-void
.end method

.method public final F0(Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;ITE;J",
            "Ljava/lang/Object;",
            "Z)I"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p0, p4, p5}, Lv3/b;->y(J)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-nez p7, :cond_1

    .line 3
    sget-object v0, Lv3/c;->d:Ly3/h0;

    invoke-virtual {p1, p2, v4, v0}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_1
    if-eqz p7, :cond_2

    .line 4
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object v0

    invoke-virtual {p1, p2, v4, v0}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, p2, v2}, Lv3/i;->x(IZ)V

    return v1

    :cond_2
    if-nez p6, :cond_3

    const/4 p1, 0x3

    return p1

    .line 6
    :cond_3
    invoke-virtual {p1, p2, v4, p6}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 7
    :cond_4
    invoke-static {}, Lv3/c;->k()Ly3/h0;

    move-result-object v4

    if-ne v0, v4, :cond_5

    .line 8
    sget-object v1, Lv3/c;->d:Ly3/h0;

    invoke-virtual {p1, p2, v0, v1}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 9
    :cond_5
    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object p4

    const/4 p5, 0x5

    if-ne v0, p4, :cond_6

    .line 10
    invoke-virtual {p1, p2}, Lv3/i;->s(I)V

    return p5

    .line 11
    :cond_6
    invoke-static {}, Lv3/c;->o()Ly3/h0;

    move-result-object p4

    if-ne v0, p4, :cond_7

    .line 12
    invoke-virtual {p1, p2}, Lv3/i;->s(I)V

    return p5

    .line 13
    :cond_7
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object p4

    if-ne v0, p4, :cond_8

    .line 14
    invoke-virtual {p1, p2}, Lv3/i;->s(I)V

    .line 15
    invoke-virtual {p0}, Lv3/b;->F()V

    return v1

    .line 16
    :cond_8
    invoke-virtual {p1, p2}, Lv3/i;->s(I)V

    .line 17
    instance-of p4, v0, Lv3/u;

    if-eqz p4, :cond_9

    check-cast v0, Lv3/u;

    iget-object v0, v0, Lv3/u;->a:Lt3/c2;

    .line 18
    :cond_9
    invoke-virtual {p0, v0, p3}, Lv3/b;->y0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 19
    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lv3/i;->A(ILjava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lv3/b;->l0()V

    goto :goto_0

    .line 21
    :cond_a
    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lv3/i;->t(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object p4

    if-eq p3, p4, :cond_b

    .line 22
    invoke-virtual {p1, p2, v3}, Lv3/i;->x(IZ)V

    :cond_b
    move v2, p5

    :goto_0
    return v2
.end method

.method public final G(J)V
    .locals 10

    .line 1
    sget-object v0, Lv3/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    .line 3
    :cond_0
    :goto_0
    sget-object v1, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    .line 5
    iget v2, p0, Lv3/b;->a:I

    int-to-long v2, v2

    add-long/2addr v2, v8

    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long v5, v8, v2

    move-object v2, p0

    move-wide v3, v8

    .line 6
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    sget v1, Lv3/c;->b:I

    int-to-long v2, v1

    div-long v2, v8, v2

    int-to-long v4, v1

    .line 8
    rem-long v4, v8, v4

    long-to-int v4, v4

    .line 9
    iget-wide v5, v0, Ly3/e0;->c:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p0, v2, v3, v0}, Lv3/b;->J(JLv3/i;)Lv3/i;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v5, v8

    .line 11
    invoke-virtual/range {v2 .. v7}, Lv3/b;->C0(Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 13
    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Ly3/e;->b()V

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0}, Ly3/e;->b()V

    .line 15
    iget-object v2, p0, Lv3/b;->b:Ll3/l;

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Ly3/z;->d(Ll3/l;Ljava/lang/Object;Ly3/q0;ILjava/lang/Object;)Ly3/q0;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    throw v1
.end method

.method public final G0(J)V
    .locals 7

    sget-object v0, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-ltz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v2, p0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final H()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Lv3/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lv3/b;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    .line 3
    :goto_0
    sget-object v1, Lv3/b;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 4
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v7

    .line 5
    sget v9, Lv3/c;->b:I

    int-to-long v1, v9

    div-long v2, v7, v1

    .line 6
    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide v4

    cmp-long v1, v4, v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    if-gtz v1, :cond_2

    .line 7
    iget-wide v4, v0, Ly3/e0;->c:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ly3/e;->e()Ly3/e;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0, v2, v3, v0}, Lv3/b;->g0(JLv3/i;)V

    .line 9
    :cond_1
    invoke-static {p0, v12, v13, v11, v10}, Lv3/b;->T(Lv3/b;JILjava/lang/Object;)V

    return-void

    .line 10
    :cond_2
    iget-wide v4, v0, Ly3/e0;->c:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    move-object v1, p0

    move-object v4, v0

    move-wide v5, v7

    .line 11
    invoke-virtual/range {v1 .. v6}, Lv3/b;->I(JLv3/i;J)Lv3/i;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v1

    :cond_4
    int-to-long v1, v9

    .line 12
    rem-long v1, v7, v1

    long-to-int v1, v1

    .line 13
    invoke-virtual {p0, v0, v1, v7, v8}, Lv3/b;->A0(Lv3/i;IJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-static {p0, v12, v13, v11, v10}, Lv3/b;->T(Lv3/b;JILjava/lang/Object;)V

    return-void

    .line 15
    :cond_5
    invoke-static {p0, v12, v13, v11, v10}, Lv3/b;->T(Lv3/b;JILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final H0(J)V
    .locals 7

    sget-object v0, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide v1, 0xfffffffffffffffL

    and-long/2addr v1, v3

    cmp-long v5, v1, p1

    if-ltz v5, :cond_1

    return-void

    :cond_1
    const/16 v5, 0x3c

    shr-long v5, v3, v5

    long-to-int v5, v5

    .line 1
    invoke-static {v1, v2, v5}, Lv3/c;->b(JI)J

    move-result-wide v5

    .line 2
    sget-object v1, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final I(JLv3/i;J)Lv3/i;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lv3/i<",
            "TE;>;J)",
            "Lv3/i<",
            "TE;>;"
        }
    .end annotation

    move-object v6, p0

    move-wide/from16 v0, p1

    sget-object v2, Lv3/b;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1
    invoke-static {}, Lv3/c;->y()Lq3/d;

    move-result-object v3

    check-cast v3, Ll3/p;

    move-object/from16 v4, p3

    .line 2
    :cond_0
    invoke-static {v4, v0, v1, v3}, Ly3/d;->c(Ly3/e0;JLl3/p;)Ljava/lang/Object;

    move-result-object v5

    .line 3
    invoke-static {v5}, Ly3/f0;->c(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_6

    invoke-static {v5}, Ly3/f0;->b(Ljava/lang/Object;)Ly3/e0;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly3/e0;

    .line 4
    iget-wide v10, v9, Ly3/e0;->c:J

    iget-wide v12, v7, Ly3/e0;->c:J

    cmp-long v10, v10, v12

    if-ltz v10, :cond_3

    :cond_2
    :goto_1
    move v7, v8

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {v7}, Ly3/e0;->q()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    .line 6
    :cond_4
    invoke-static {v2, p0, v9, v7}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 7
    invoke-virtual {v9}, Ly3/e0;->m()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v9}, Ly3/e;->k()V

    goto :goto_1

    :goto_2
    if-eqz v7, :cond_0

    goto :goto_3

    .line 8
    :cond_5
    invoke-virtual {v7}, Ly3/e0;->m()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ly3/e;->k()V

    goto :goto_0

    .line 9
    :cond_6
    :goto_3
    invoke-static {v5}, Ly3/f0;->c(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_7

    .line 10
    invoke-virtual {p0}, Lv3/b;->F()V

    .line 11
    invoke-virtual/range {p0 .. p3}, Lv3/b;->g0(JLv3/i;)V

    .line 12
    invoke-static {p0, v9, v10, v8, v7}, Lv3/b;->T(Lv3/b;JILjava/lang/Object;)V

    goto :goto_4

    .line 13
    :cond_7
    invoke-static {v5}, Ly3/f0;->b(Ljava/lang/Object;)Ly3/e0;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lv3/i;

    .line 14
    iget-wide v2, v11, Ly3/e0;->c:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_9

    .line 15
    sget-object v0, Lv3/b;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v4, 0x1

    add-long v4, p4, v4

    sget v12, Lv3/c;->b:I

    int-to-long v13, v12

    mul-long/2addr v13, v2

    move-object v1, p0

    move-wide v2, v4

    move-wide v4, v13

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    iget-wide v0, v11, Ly3/e0;->c:J

    int-to-long v2, v12

    mul-long/2addr v0, v2

    sub-long v0, v0, p4

    invoke-virtual {p0, v0, v1}, Lv3/b;->S(J)V

    goto :goto_4

    .line 17
    :cond_8
    invoke-static {p0, v9, v10, v8, v7}, Lv3/b;->T(Lv3/b;JILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    move-object v7, v11

    :goto_4
    return-object v7
.end method

.method public final I0(J)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lv3/b;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Lv3/c;->g()I

    move-result p1

    const/4 v0, 0x0

    move p2, v0

    :goto_0
    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    if-ge p2, p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v3

    sget-object v5, Lv3/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 5
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    sget-object v9, Lv3/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_3
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long p1, v5, v1

    const/4 v10, 0x1

    .line 8
    invoke-static {p1, p2, v10}, Lv3/c;->a(JZ)J

    move-result-wide v7

    move-object v3, v9

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide p1

    sget-object v9, Lv3/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long v3, v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    and-long/2addr v7, v5

    const-wide/16 v11, 0x0

    cmp-long v7, v7, v11

    if-eqz v7, :cond_5

    move v7, v10

    goto :goto_2

    :cond_5
    move v7, v0

    :goto_2
    cmp-long v8, p1, v3

    if-nez v8, :cond_7

    .line 11
    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v11

    cmp-long p1, p1, v11

    if-nez p1, :cond_7

    :cond_6
    invoke-virtual {v9, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long p1, v5, v1

    .line 12
    invoke-static {p1, p2, v0}, Lv3/c;->a(JZ)J

    move-result-wide v7

    move-object v3, v9

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_7
    if-nez v7, :cond_4

    .line 13
    invoke-static {v3, v4, v10}, Lv3/c;->a(JZ)J

    move-result-wide v7

    move-object v3, v9

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_1
.end method

.method public final J(JLv3/i;)Lv3/i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lv3/i<",
            "TE;>;)",
            "Lv3/i<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lv3/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1
    invoke-static {}, Lv3/c;->y()Lq3/d;

    move-result-object v1

    check-cast v1, Ll3/p;

    .line 2
    :cond_0
    invoke-static {p3, p1, p2, v1}, Ly3/d;->c(Ly3/e0;JLl3/p;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ly3/f0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Ly3/f0;->b(Ljava/lang/Object;)Ly3/e0;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/e0;

    .line 4
    iget-wide v5, v4, Ly3/e0;->c:J

    iget-wide v7, v3, Ly3/e0;->c:J

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-ltz v5, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v3}, Ly3/e0;->q()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v0, p0, v4, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7
    invoke-virtual {v4}, Ly3/e0;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ly3/e;->k()V

    :cond_4
    :goto_1
    if-eqz v6, :cond_0

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {v3}, Ly3/e0;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ly3/e;->k()V

    goto :goto_0

    .line 9
    :cond_6
    :goto_2
    invoke-static {v2}, Ly3/f0;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {p0}, Lv3/b;->F()V

    .line 11
    iget-wide p1, p3, Ly3/e0;->c:J

    sget v0, Lv3/c;->b:I

    int-to-long v2, v0

    mul-long/2addr p1, v2

    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_c

    invoke-virtual {p3}, Ly3/e;->b()V

    goto :goto_5

    .line 12
    :cond_7
    invoke-static {v2}, Ly3/f0;->b(Ljava/lang/Object;)Ly3/e0;

    move-result-object p3

    check-cast p3, Lv3/i;

    .line 13
    invoke-virtual {p0}, Lv3/b;->b0()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v2

    sget v0, Lv3/c;->b:I

    int-to-long v4, v0

    div-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gtz v0, :cond_a

    sget-object v0, Lv3/b;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_8
    :goto_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/e0;

    .line 14
    iget-wide v3, v2, Ly3/e0;->c:J

    iget-wide v5, p3, Ly3/e0;->c:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_a

    .line 15
    invoke-virtual {p3}, Ly3/e0;->q()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 16
    invoke-static {v0, p0, v2, p3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 17
    invoke-virtual {v2}, Ly3/e0;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Ly3/e;->k()V

    goto :goto_4

    .line 18
    :cond_9
    invoke-virtual {p3}, Ly3/e0;->m()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p3}, Ly3/e;->k()V

    goto :goto_3

    .line 19
    :cond_a
    :goto_4
    iget-wide v2, p3, Ly3/e0;->c:J

    cmp-long p1, v2, p1

    if-lez p1, :cond_b

    .line 20
    sget p1, Lv3/c;->b:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lv3/b;->G0(J)V

    .line 21
    iget-wide v2, p3, Ly3/e0;->c:J

    int-to-long p1, p1

    mul-long/2addr v2, p1

    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_c

    invoke-virtual {p3}, Ly3/e;->b()V

    goto :goto_5

    :cond_b
    move-object v1, p3

    :cond_c
    :goto_5
    return-object v1
.end method

.method public final K(JLv3/i;)Lv3/i;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lv3/i<",
            "TE;>;)",
            "Lv3/i<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lv3/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1
    invoke-static {}, Lv3/c;->y()Lq3/d;

    move-result-object v1

    check-cast v1, Ll3/p;

    .line 2
    :cond_0
    invoke-static {p3, p1, p2, v1}, Ly3/d;->c(Ly3/e0;JLl3/p;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ly3/f0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Ly3/f0;->b(Ljava/lang/Object;)Ly3/e0;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/e0;

    .line 4
    iget-wide v5, v4, Ly3/e0;->c:J

    iget-wide v7, v3, Ly3/e0;->c:J

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-ltz v5, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v3}, Ly3/e0;->q()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v0, p0, v4, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7
    invoke-virtual {v4}, Ly3/e0;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ly3/e;->k()V

    :cond_4
    :goto_1
    if-eqz v6, :cond_0

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {v3}, Ly3/e0;->m()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ly3/e;->k()V

    goto :goto_0

    .line 9
    :cond_6
    :goto_2
    invoke-static {v2}, Ly3/f0;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 10
    invoke-virtual {p0}, Lv3/b;->F()V

    .line 11
    iget-wide p1, p3, Ly3/e0;->c:J

    sget v0, Lv3/c;->b:I

    int-to-long v2, v0

    mul-long/2addr p1, v2

    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-gez p1, :cond_9

    invoke-virtual {p3}, Ly3/e;->b()V

    goto :goto_3

    .line 12
    :cond_7
    invoke-static {v2}, Ly3/f0;->b(Ljava/lang/Object;)Ly3/e0;

    move-result-object p3

    check-cast p3, Lv3/i;

    .line 13
    iget-wide v2, p3, Ly3/e0;->c:J

    cmp-long p1, v2, p1

    if-lez p1, :cond_8

    .line 14
    sget p1, Lv3/c;->b:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lv3/b;->H0(J)V

    .line 15
    iget-wide v2, p3, Ly3/e0;->c:J

    int-to-long p1, p1

    mul-long/2addr v2, p1

    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_9

    invoke-virtual {p3}, Ly3/e;->b()V

    goto :goto_3

    :cond_8
    move-object v1, p3

    :cond_9
    :goto_3
    return-object v1
.end method

.method public final L()J
    .locals 2

    sget-object v0, Lv3/b;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final M()Ljava/lang/Throwable;
    .locals 1

    sget-object v0, Lv3/b;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final N()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lv3/l;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lv3/l;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final O()J
    .locals 2

    sget-object v0, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final P()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lv3/m;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lv3/m;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final Q()J
    .locals 4

    sget-object v0, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide v2, 0xfffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final R()Z
    .locals 10

    .line 1
    :cond_0
    :goto_0
    sget-object v0, Lv3/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    .line 3
    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v4

    .line 4
    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide v2

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    return v3

    .line 5
    :cond_1
    sget v2, Lv3/c;->b:I

    int-to-long v6, v2

    div-long v6, v4, v6

    .line 6
    iget-wide v8, v1, Ly3/e0;->c:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_2

    .line 7
    invoke-virtual {p0, v6, v7, v1}, Lv3/b;->J(JLv3/i;)Lv3/i;

    move-result-object v1

    if-nez v1, :cond_2

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    iget-wide v0, v0, Ly3/e0;->c:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    return v3

    .line 9
    :cond_2
    invoke-virtual {v1}, Ly3/e;->b()V

    int-to-long v2, v2

    .line 10
    rem-long v2, v4, v2

    long-to-int v0, v2

    .line 11
    invoke-virtual {p0, v1, v0, v4, v5}, Lv3/b;->V(Lv3/i;IJ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    sget-object v2, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v0, 0x1

    add-long v6, v4, v0

    move-object v3, p0

    .line 12
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    goto :goto_0
.end method

.method public final S(J)V
    .locals 7

    sget-object v0, Lv3/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p1, v0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    const/4 p2, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    if-eqz p1, :cond_3

    .line 2
    :cond_1
    sget-object p1, Lv3/b;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v5

    and-long/2addr v5, v0

    cmp-long p1, v5, v2

    if-eqz p1, :cond_2

    move p1, p2

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    if-nez p1, :cond_1

    :cond_3
    return-void
.end method

.method public final U()V
    .locals 3

    .line 1
    sget-object v0, Lv3/b;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lv3/c;->d()Ly3/h0;

    move-result-object v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lv3/c;->e()Ly3/h0;

    move-result-object v2

    .line 4
    :goto_0
    invoke-static {v0, p0, v1, v2}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 5
    invoke-static {v1, v0}, Lm3/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll3/l;

    .line 6
    check-cast v1, Ll3/l;

    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final V(Lv3/i;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;IJ)Z"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {}, Lv3/c;->k()Ly3/h0;

    move-result-object v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lv3/c;->d:Ly3/h0;

    const/4 p2, 0x1

    if-ne v0, p1, :cond_2

    return p2

    .line 4
    :cond_2
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object p1

    if-ne v0, p1, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object p1

    if-ne v0, p1, :cond_4

    return v1

    .line 6
    :cond_4
    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object p1

    if-ne v0, p1, :cond_5

    return v1

    .line 7
    :cond_5
    invoke-static {}, Lv3/c;->o()Ly3/h0;

    move-result-object p1

    if-ne v0, p1, :cond_6

    return v1

    .line 8
    :cond_6
    invoke-static {}, Lv3/c;->p()Ly3/h0;

    move-result-object p1

    if-ne v0, p1, :cond_7

    return p2

    .line 9
    :cond_7
    invoke-static {}, Lv3/c;->q()Ly3/h0;

    move-result-object p1

    if-ne v0, p1, :cond_8

    return v1

    .line 10
    :cond_8
    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v2

    cmp-long p1, p3, v2

    if-nez p1, :cond_9

    move v1, p2

    :cond_9
    return v1

    .line 11
    :cond_a
    :goto_0
    invoke-static {}, Lv3/c;->o()Ly3/h0;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lv3/b;->H()V

    return v1
.end method

.method public final W(JZ)Z
    .locals 6

    const/16 v0, 0x3c

    shr-long v0, p1, v0

    long-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    const-wide v4, 0xfffffffffffffffL

    if-eq v0, v3, :cond_2

    const/4 p3, 0x3

    if-ne v0, p3, :cond_1

    and-long/2addr p1, v4

    .line 1
    invoke-virtual {p0, p1, p2}, Lv3/b;->D(J)V

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected close status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    and-long/2addr p1, v4

    .line 3
    invoke-virtual {p0, p1, p2}, Lv3/b;->E(J)Lv3/i;

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Lv3/b;->R()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public X()Z
    .locals 2

    sget-object v0, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lv3/b;->Y(J)Z

    move-result v0

    return v0
.end method

.method public final Y(J)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lv3/b;->W(JZ)Z

    move-result p1

    return p1
.end method

.method public final Z(J)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lv3/b;->W(JZ)Z

    move-result p1

    return p1
.end method

.method public a(Ld3/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "-",
            "Lv3/h<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lv3/b;->p0(Lv3/b;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b0()Z
    .locals 4

    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c0(Lv3/i;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;)J"
        }
    .end annotation

    .line 1
    :cond_0
    sget v0, Lv3/c;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const-wide/16 v1, -0x1

    const/4 v3, -0x1

    if-ge v3, v0, :cond_5

    .line 2
    iget-wide v3, p1, Ly3/e0;->c:J

    sget v5, Lv3/c;->b:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    int-to-long v5, v0

    add-long/2addr v3, v5

    .line 3
    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    return-wide v1

    .line 4
    :cond_1
    invoke-virtual {p1, v0}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Lv3/c;->k()Ly3/h0;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget-object v2, Lv3/c;->d:Ly3/h0;

    if-ne v1, v2, :cond_4

    return-wide v3

    .line 7
    :cond_3
    :goto_1
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Ly3/e0;->p()V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9
    :cond_5
    invoke-virtual {p1}, Ly3/e;->g()Ly3/e;

    move-result-object p1

    check-cast p1, Lv3/i;

    if-nez p1, :cond_0

    return-wide v1
.end method

.method public d()Ljava/lang/Object;
    .locals 11

    sget-object v0, Lv3/b;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    sget-object v2, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 3
    invoke-virtual {p0, v2, v3}, Lv3/b;->Y(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 5
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {v0}, Lv3/h$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object v0

    .line 7
    invoke-static {}, Lv3/b;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    .line 9
    :goto_0
    invoke-virtual {p0}, Lv3/b;->X()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_3

    .line 11
    :cond_2
    invoke-static {}, Lv3/b;->j()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 12
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v7

    .line 13
    sget v2, Lv3/c;->b:I

    int-to-long v3, v2

    div-long v3, v7, v3

    int-to-long v5, v2

    .line 14
    rem-long v5, v7, v5

    long-to-int v9, v5

    .line 15
    iget-wide v5, v1, Ly3/e0;->c:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_4

    .line 16
    invoke-static {p0, v3, v4, v1}, Lv3/b;->b(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, v2

    goto :goto_1

    :cond_4
    move-object v10, v1

    :goto_1
    move-object v1, p0

    move-object v2, v10

    move v3, v9

    move-wide v4, v7

    move-object v6, v0

    .line 17
    invoke-static/range {v1 .. v6}, Lv3/b;->w(Lv3/b;Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object v2

    if-ne v1, v2, :cond_7

    .line 19
    instance-of v1, v0, Lt3/c2;

    if-eqz v1, :cond_5

    check-cast v0, Lt3/c2;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    invoke-static {p0, v0, v10, v9}, Lv3/b;->t(Lv3/b;Lt3/c2;Lv3/i;I)V

    .line 20
    :cond_6
    invoke-virtual {p0, v7, v8}, Lv3/b;->I0(J)V

    .line 21
    invoke-virtual {v10}, Ly3/e0;->p()V

    .line 22
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {v0}, Lv3/h$b;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 23
    :cond_7
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object v2

    if-ne v1, v2, :cond_9

    .line 24
    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide v1

    cmp-long v1, v7, v1

    if-gez v1, :cond_8

    invoke-virtual {v10}, Ly3/e;->b()V

    :cond_8
    move-object v1, v10

    goto :goto_0

    .line 25
    :cond_9
    invoke-static {}, Lv3/c;->s()Ly3/h0;

    move-result-object v0

    if-eq v1, v0, :cond_a

    .line 26
    invoke-virtual {v10}, Ly3/e;->b()V

    .line 27
    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {v0, v1}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    return-object v0

    .line 28
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d0()V
    .locals 7

    sget-object v6, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v0, 0x3c

    shr-long v0, v2, v0

    long-to-int v0, v0

    if-nez v0, :cond_1

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x1

    .line 1
    invoke-static {v0, v1, v4}, Lv3/c;->b(JI)J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method public final e(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv3/b;->z(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final e0()V
    .locals 7

    sget-object v6, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x3

    invoke-static {v0, v1, v4}, Lv3/c;->b(JI)J

    move-result-wide v4

    move-object v0, v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final f0()V
    .locals 7

    sget-object v6, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v0, 0x3c

    shr-long v0, v2, v0

    long-to-int v0, v0

    const-wide v4, 0xfffffffffffffffL

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    and-long v0, v2, v4

    const/4 v4, 0x3

    .line 1
    invoke-static {v0, v1, v4}, Lv3/c;->b(JI)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    and-long v0, v2, v4

    const/4 v4, 0x2

    .line 2
    invoke-static {v0, v1, v4}, Lv3/c;->b(JI)J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    move-object v0, v6

    move-object v1, p0

    .line 3
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public g(Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv3/b;->C(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method

.method public final g0(JLv3/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lv3/i<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p3, Ly3/e0;->c:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 2
    invoke-virtual {p3}, Ly3/e;->e()Ly3/e;

    move-result-object v0

    check-cast v0, Lv3/i;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p3, v0

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    invoke-virtual {p3}, Ly3/e0;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p3}, Ly3/e;->e()Ly3/e;

    move-result-object p1

    check-cast p1, Lv3/i;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, p1

    goto :goto_1

    .line 5
    :cond_3
    :goto_2
    sget-object p1, Lv3/b;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_4
    :goto_3
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly3/e0;

    .line 6
    iget-wide v0, p2, Ly3/e0;->c:J

    iget-wide v2, p3, Ly3/e0;->c:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_5

    goto :goto_4

    .line 7
    :cond_5
    invoke-virtual {p3}, Ly3/e0;->q()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    .line 8
    :cond_6
    invoke-static {p1, p0, p2, p3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9
    invoke-virtual {p2}, Ly3/e0;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Ly3/e;->k()V

    :cond_7
    :goto_4
    if-eqz v1, :cond_1

    return-void

    .line 10
    :cond_8
    invoke-virtual {p3}, Ly3/e0;->m()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Ly3/e;->k()V

    goto :goto_3
.end method

.method public h0()V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lv3/b;->x0(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p1}, Lv3/h$b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object v8

    .line 3
    invoke-static {}, Lv3/b;->k()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/i;

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lv3/b;->p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v9, v1, v3

    .line 7
    invoke-static {p0, v1, v2}, Lv3/b;->q(Lv3/b;J)Z

    move-result v11

    .line 8
    sget v1, Lv3/c;->b:I

    int-to-long v2, v1

    div-long v2, v9, v2

    int-to-long v4, v1

    .line 9
    rem-long v4, v9, v4

    long-to-int v12, v4

    .line 10
    iget-wide v4, v0, Ly3/e0;->c:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 11
    invoke-static {p0, v2, v3, v0}, Lv3/b;->c(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v11, :cond_1

    goto :goto_3

    :cond_2
    move-object v13, v1

    goto :goto_1

    :cond_3
    move-object v13, v0

    :goto_1
    move-object v0, p0

    move-object v1, v13

    move v2, v12

    move-object v3, p1

    move-wide v4, v9

    move-object v6, v8

    move v7, v11

    .line 12
    invoke-static/range {v0 .. v7}, Lv3/b;->x(Lv3/b;Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v13}, Ly3/e;->b()V

    :goto_2
    move-object v0, v13

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v0

    cmp-long p1, v9, v0

    if-gez p1, :cond_8

    invoke-virtual {v13}, Ly3/e;->b()V

    goto :goto_3

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected"

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v11, :cond_9

    .line 17
    invoke-virtual {v13}, Ly3/e0;->p()V

    .line 18
    :cond_8
    :goto_3
    sget-object p1, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 19
    :cond_9
    instance-of p1, v8, Lt3/c2;

    if-eqz p1, :cond_a

    check-cast v8, Lt3/c2;

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_b

    invoke-static {p0, v8, v13, v12}, Lv3/b;->u(Lv3/b;Lt3/c2;Lv3/i;I)V

    .line 20
    :cond_b
    invoke-virtual {v13}, Ly3/e0;->p()V

    .line 21
    sget-object p1, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p1}, Lv3/h$b;->b()Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    .line 22
    :cond_c
    invoke-virtual {v13}, Ly3/e;->b()V

    .line 23
    :cond_d
    sget-object p1, Lv3/h;->b:Lv3/h$b;

    sget-object v0, La3/o;->a:La3/o;

    invoke-virtual {p1, v0}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public final i0(Lt3/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/j<",
            "-",
            "Lv3/h<",
            "+TE;>;>;)V"
        }
    .end annotation

    sget-object v0, La3/i;->a:La3/i$a;

    sget-object v0, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lv3/h;->b(Ljava/lang/Object;)Lv3/h;

    move-result-object v0

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ld3/d;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public iterator()Lv3/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/f<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lv3/b$a;

    invoke-direct {v0, p0}, Lv3/b$a;-><init>(Lv3/b;)V

    return-object v0
.end method

.method public final j0(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
    .locals 4
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

    .line 1
    new-instance v0, Lt3/k;

    invoke-static {p2}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lt3/k;-><init>(Ld3/d;I)V

    .line 2
    invoke-virtual {v0}, Lt3/k;->w()V

    .line 3
    iget-object v1, p0, Lv3/b;->b:Ll3/l;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Ly3/z;->d(Ll3/l;Ljava/lang/Object;Ly3/q0;ILjava/lang/Object;)Ly3/q0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {p1, v1}, La3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 5
    sget-object v1, La3/i;->a:La3/i$a;

    invoke-static {p1}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object p1

    .line 7
    sget-object v1, La3/i;->a:La3/i$a;

    invoke-static {p1}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ld3/d;->F(Ljava/lang/Object;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lt3/k;->t()Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lf3/h;->c(Ld3/d;)V

    :cond_1
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    .line 10
    :cond_2
    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public final k0(Ljava/lang/Object;Lt3/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lt3/j<",
            "-",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/b;->b:Ll3/l;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ld3/d;->b()Ld3/g;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ly3/z;->b(Ll3/l;Ljava/lang/Object;Ld3/g;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, La3/i;->a:La3/i$a;

    invoke-static {p1}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ld3/d;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public l()Z
    .locals 2

    sget-object v0, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lv3/b;->Z(J)Z

    move-result v0

    return v0
.end method

.method public l0()V
    .locals 0

    return-void
.end method

.method public m0()V
    .locals 0

    return-void
.end method

.method public n(Ll3/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lv3/b;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-static {}, Lv3/c;->d()Ly3/h0;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 4
    sget-object v1, Lv3/b;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lv3/c;->d()Ly3/h0;

    move-result-object v2

    invoke-static {}, Lv3/c;->e()Ly3/h0;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, La4/n;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Ll3/l;->x(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_1
    invoke-static {}, Lv3/c;->e()Ly3/h0;

    move-result-object p1

    if-ne v1, p1, :cond_2

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Another handler was already registered and successfully invoked"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another handler is already registered: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n0(Lt3/c2;Lv3/i;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/c2;",
            "Lv3/i<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv3/b;->m0()V

    .line 2
    invoke-interface {p1, p2, p3}, Lt3/c2;->d(Ly3/e0;I)V

    return-void
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

    invoke-static {p0, p1, p2}, Lv3/b;->v0(Lv3/b;Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o0(Lt3/c2;Lv3/i;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/c2;",
            "Lv3/i<",
            "TE;>;I)V"
        }
    .end annotation

    sget v0, Lv3/c;->b:I

    add-int/2addr p3, v0

    invoke-interface {p1, p2, p3}, Lt3/c2;->d(Ly3/e0;I)V

    return-void
.end method

.method public final q0(Lv3/i;IJLd3/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;IJ",
            "Ld3/d<",
            "-",
            "Lv3/h<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lv3/b$e;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lv3/b$e;

    iget v1, v0, Lv3/b$e;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv3/b$e;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv3/b$e;

    invoke-direct {v0, p0, p5}, Lv3/b$e;-><init>(Lv3/b;Ld3/d;)V

    :goto_0
    iget-object p5, v0, Lv3/b$e;->h:Ljava/lang/Object;

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lv3/b$e;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lv3/b$e;->e:Ljava/lang/Object;

    check-cast p1, Lv3/i;

    iget-object p1, v0, Lv3/b$e;->d:Ljava/lang/Object;

    check-cast p1, Lv3/b;

    invoke-static {p5}, La3/j;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, La3/j;->b(Ljava/lang/Object;)V

    .line 2
    iput-object p0, v0, Lv3/b$e;->d:Ljava/lang/Object;

    iput-object p1, v0, Lv3/b$e;->e:Ljava/lang/Object;

    iput p2, v0, Lv3/b$e;->f:I

    iput-wide p3, v0, Lv3/b$e;->g:J

    iput v3, v0, Lv3/b$e;->o:I

    .line 3
    invoke-static {v0}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object p5

    invoke-static {p5}, Lt3/m;->a(Ld3/d;)Lt3/k;

    move-result-object p5

    .line 4
    :try_start_0
    new-instance v8, Lv3/r;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlinx.coroutines.channels.ChannelResult<E of kotlinx.coroutines.channels.BufferedChannel.receiveCatchingOnNoWaiterSuspend_GKJJFZk$lambda$35>>"

    invoke-static {p5, v2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, p5}, Lv3/r;-><init>(Lt3/k;)V

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, v8

    .line 5
    invoke-static/range {v2 .. v7}, Lv3/b;->w(Lv3/b;Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 7
    invoke-static {p0, v8, p1, p2}, Lv3/b;->t(Lv3/b;Lt3/c2;Lv3/i;I)V

    goto/16 :goto_3

    .line 8
    :cond_3
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p2

    const/4 v9, 0x0

    if-ne v2, p2, :cond_d

    .line 9
    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide v2

    cmp-long p2, p3, v2

    if-gez p2, :cond_4

    invoke-virtual {p1}, Ly3/e;->b()V

    .line 10
    :cond_4
    invoke-static {}, Lv3/b;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/i;

    .line 12
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lv3/b;->X()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 13
    invoke-static {p0, p5}, Lv3/b;->r(Lv3/b;Lt3/j;)V

    goto/16 :goto_3

    .line 14
    :cond_6
    invoke-static {}, Lv3/b;->j()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    .line 16
    sget p4, Lv3/c;->b:I

    int-to-long v2, p4

    div-long v2, p2, v2

    int-to-long v4, p4

    .line 17
    rem-long v4, p2, v4

    long-to-int p4, v4

    .line 18
    iget-wide v4, p1, Ly3/e0;->c:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_8

    .line 19
    invoke-static {p0, v2, v3, p1}, Lv3/b;->b(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move-object p1, v2

    :cond_8
    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move-wide v5, p2

    move-object v7, v8

    .line 20
    invoke-static/range {v2 .. v7}, Lv3/b;->w(Lv3/b;Lv3/i;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 21
    invoke-static {}, Lv3/c;->r()Ly3/h0;

    move-result-object v3

    if-ne v2, v3, :cond_9

    .line 22
    invoke-static {p0, v8, p1, p4}, Lv3/b;->t(Lv3/b;Lt3/c2;Lv3/i;I)V

    goto :goto_3

    .line 23
    :cond_9
    invoke-static {}, Lv3/c;->h()Ly3/h0;

    move-result-object p4

    if-ne v2, p4, :cond_a

    .line 24
    invoke-virtual {p0}, Lv3/b;->Q()J

    move-result-wide v2

    cmp-long p2, p2, v2

    if-gez p2, :cond_5

    invoke-virtual {p1}, Ly3/e;->b()V

    goto :goto_1

    .line 25
    :cond_a
    invoke-static {}, Lv3/c;->s()Ly3/h0;

    move-result-object p2

    if-eq v2, p2, :cond_c

    .line 26
    invoke-virtual {p1}, Ly3/e;->b()V

    .line 27
    sget-object p1, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p1, v2}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lv3/h;->b(Ljava/lang/Object;)Lv3/h;

    move-result-object p1

    iget-object p2, p0, Lv3/b;->b:Ll3/l;

    if-eqz p2, :cond_b

    invoke-virtual {p5}, Lt3/k;->b()Ld3/g;

    move-result-object p3

    invoke-static {p2, v2, p3}, Ly3/z;->a(Ll3/l;Ljava/lang/Object;Ld3/g;)Ll3/l;

    move-result-object v9

    :cond_b
    :goto_2
    invoke-virtual {p5, p1, v9}, Lt3/k;->I(Ljava/lang/Object;Ll3/l;)V

    goto :goto_3

    .line 28
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_d
    invoke-virtual {p1}, Ly3/e;->b()V

    .line 31
    sget-object p1, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p1, v2}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lv3/h;->b(Ljava/lang/Object;)Lv3/h;

    move-result-object p1

    iget-object p2, p0, Lv3/b;->b:Ll3/l;

    if-eqz p2, :cond_b

    invoke-virtual {p5}, Lt3/k;->b()Ld3/g;

    move-result-object p3

    invoke-static {p2, v2, p3}, Ly3/z;->a(Ll3/l;Ljava/lang/Object;Ld3/g;)Ll3/l;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 32
    :goto_3
    invoke-virtual {p5}, Lt3/k;->t()Ljava/lang/Object;

    move-result-object p5

    .line 33
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p5, p1, :cond_e

    invoke-static {v0}, Lf3/h;->c(Ld3/d;)V

    :cond_e
    if-ne p5, v1, :cond_f

    return-object v1

    .line 34
    :cond_f
    :goto_4
    check-cast p5, Lv3/h;

    invoke-virtual {p5}, Lv3/h;->k()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    invoke-virtual {p5}, Lt3/k;->G()V

    .line 36
    throw p1
.end method

.method public final r0(Lv3/i;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv3/b;->b:Ll3/l;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2, v1}, Ly3/n;->b(Ljava/lang/Object;ILm3/g;)Ljava/lang/Object;

    move-result-object v3

    .line 3
    :cond_0
    sget v4, Lv3/c;->b:I

    sub-int/2addr v4, v2

    :goto_0
    const/4 v5, -0x1

    if-ge v5, v4, :cond_b

    .line 4
    iget-wide v6, p1, Ly3/e0;->c:J

    sget v8, Lv3/c;->b:I

    int-to-long v8, v8

    mul-long/2addr v6, v8

    int-to-long v8, v4

    add-long/2addr v6, v8

    .line 5
    :cond_1
    invoke-virtual {p1, v4}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v8

    .line 6
    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object v9

    if-eq v8, v9, :cond_c

    .line 7
    sget-object v9, Lv3/c;->d:Ly3/h0;

    if-ne v8, v9, :cond_3

    .line 8
    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-ltz v9, :cond_c

    .line 9
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v9

    invoke-virtual {p1, v4, v8, v9}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1, v4}, Lv3/i;->v(I)Ljava/lang/Object;

    move-result-object v5

    .line 11
    invoke-static {v0, v5, v1}, Ly3/z;->c(Ll3/l;Ljava/lang/Object;Ly3/q0;)Ly3/q0;

    move-result-object v1

    .line 12
    :cond_2
    invoke-virtual {p1, v4}, Lv3/i;->s(I)V

    .line 13
    invoke-virtual {p1}, Ly3/e0;->p()V

    goto/16 :goto_4

    .line 14
    :cond_3
    invoke-static {}, Lv3/c;->k()Ly3/h0;

    move-result-object v9

    if-eq v8, v9, :cond_a

    if-nez v8, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    instance-of v9, v8, Lt3/c2;

    if-nez v9, :cond_7

    instance-of v9, v8, Lv3/u;

    if-eqz v9, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-static {}, Lv3/c;->p()Ly3/h0;

    move-result-object v9

    if-eq v8, v9, :cond_c

    invoke-static {}, Lv3/c;->q()Ly3/h0;

    move-result-object v9

    if-ne v8, v9, :cond_6

    goto :goto_5

    .line 17
    :cond_6
    invoke-static {}, Lv3/c;->p()Ly3/h0;

    move-result-object v9

    if-eq v8, v9, :cond_1

    goto :goto_4

    .line 18
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v9

    cmp-long v9, v6, v9

    if-ltz v9, :cond_c

    .line 19
    instance-of v9, v8, Lv3/u;

    if-eqz v9, :cond_8

    move-object v9, v8

    check-cast v9, Lv3/u;

    iget-object v9, v9, Lv3/u;->a:Lt3/c2;

    goto :goto_2

    .line 20
    :cond_8
    move-object v9, v8

    check-cast v9, Lt3/c2;

    .line 21
    :goto_2
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v10

    invoke-virtual {p1, v4, v8, v10}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_9

    .line 22
    invoke-virtual {p1, v4}, Lv3/i;->v(I)Ljava/lang/Object;

    move-result-object v5

    .line 23
    invoke-static {v0, v5, v1}, Ly3/z;->c(Ll3/l;Ljava/lang/Object;Ly3/q0;)Ly3/q0;

    move-result-object v1

    .line 24
    :cond_9
    invoke-static {v3, v9}, Ly3/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 25
    invoke-virtual {p1, v4}, Lv3/i;->s(I)V

    .line 26
    invoke-virtual {p1}, Ly3/e0;->p()V

    goto :goto_4

    .line 27
    :cond_a
    :goto_3
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v9

    invoke-virtual {p1, v4, v8, v9}, Lv3/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 28
    invoke-virtual {p1}, Ly3/e0;->p()V

    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_0

    .line 29
    :cond_b
    invoke-virtual {p1}, Ly3/e;->g()Ly3/e;

    move-result-object p1

    check-cast p1, Lv3/i;

    if-nez p1, :cond_0

    :cond_c
    :goto_5
    if-eqz v3, :cond_e

    .line 30
    instance-of p1, v3, Ljava/util/ArrayList;

    if-nez p1, :cond_d

    check-cast v3, Lt3/c2;

    .line 31
    invoke-virtual {p0, v3}, Lv3/b;->t0(Lt3/c2;)V

    goto :goto_7

    :cond_d
    const-string p1, "null cannot be cast to non-null type java.util.ArrayList<E of kotlinx.coroutines.internal.InlineList>{ kotlin.collections.TypeAliasesKt.ArrayList<E of kotlinx.coroutines.internal.InlineList> }"

    .line 32
    invoke-static {v3, p1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_6
    if-ge v5, p1, :cond_e

    .line 34
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/c2;

    .line 35
    invoke-virtual {p0, v0}, Lv3/b;->t0(Lt3/c2;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_e
    :goto_7
    if-nez v1, :cond_f

    return-void

    .line 36
    :cond_f
    throw v1
.end method

.method public final s0(Lt3/c2;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lv3/b;->u0(Lt3/c2;Z)V

    return-void
.end method

.method public final t0(Lt3/c2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lv3/b;->u0(Lt3/c2;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lv3/b;->d:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 2
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const/16 v4, 0x3c

    shr-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cancelled,"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v2, "closed,"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capacity="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lv3/b;->a:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "data=["

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Lv3/i;

    .line 7
    sget-object v3, Lv3/b;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    sget-object v3, Lv3/b;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    sget-object v3, Lv3/b;->o:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lb3/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lv3/i;

    .line 10
    invoke-static {}, Lv3/c;->n()Lv3/i;

    move-result-object v9

    if-eq v8, v9, :cond_3

    move v8, v7

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    if-eqz v8, :cond_2

    .line 11
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    move-object v4, v3

    check-cast v4, Lv3/i;

    .line 17
    iget-wide v8, v4, Ly3/e0;->c:J

    .line 18
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 19
    move-object v10, v4

    check-cast v10, Lv3/i;

    .line 20
    iget-wide v10, v10, Ly3/e0;->c:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_7

    move-object v3, v4

    move-wide v8, v10

    .line 21
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 22
    :goto_3
    check-cast v3, Lv3/i;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lv3/b;->O()J

    move-result-wide v10

    .line 24
    invoke-virtual/range {p0 .. p0}, Lv3/b;->Q()J

    move-result-wide v12

    .line 25
    :goto_4
    sget v2, Lv3/c;->b:I

    move v4, v6

    :goto_5
    if-ge v4, v2, :cond_1c

    .line 26
    iget-wide v8, v3, Ly3/e0;->c:J

    sget v14, Lv3/c;->b:I

    int-to-long v14, v14

    mul-long/2addr v8, v14

    int-to-long v14, v4

    add-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-ltz v14, :cond_8

    cmp-long v15, v8, v10

    if-gez v15, :cond_1d

    .line 27
    :cond_8
    invoke-virtual {v3, v4}, Lv3/i;->w(I)Ljava/lang/Object;

    move-result-object v15

    .line 28
    invoke-virtual {v3, v4}, Lv3/i;->v(I)Ljava/lang/Object;

    move-result-object v6

    .line 29
    instance-of v7, v15, Lt3/j;

    if-eqz v7, :cond_b

    cmp-long v7, v8, v10

    if-gez v7, :cond_9

    if-ltz v14, :cond_9

    const-string v7, "receive"

    goto/16 :goto_d

    :cond_9
    if-gez v14, :cond_a

    if-ltz v7, :cond_a

    const-string v7, "send"

    goto/16 :goto_d

    :cond_a
    const-string v7, "cont"

    goto/16 :goto_d

    .line 30
    :cond_b
    instance-of v7, v15, Lb4/b;

    if-eqz v7, :cond_e

    cmp-long v7, v8, v10

    if-gez v7, :cond_c

    if-ltz v14, :cond_c

    const-string v7, "onReceive"

    goto/16 :goto_d

    :cond_c
    if-gez v14, :cond_d

    if-ltz v7, :cond_d

    const-string v7, "onSend"

    goto/16 :goto_d

    :cond_d
    const-string v7, "select"

    goto/16 :goto_d

    .line 31
    :cond_e
    instance-of v7, v15, Lv3/r;

    if-eqz v7, :cond_f

    const-string v7, "receiveCatching"

    goto/16 :goto_d

    .line 32
    :cond_f
    instance-of v7, v15, Lv3/b$b;

    if-eqz v7, :cond_10

    const-string v7, "sendBroadcast"

    goto/16 :goto_d

    .line 33
    :cond_10
    instance-of v7, v15, Lv3/u;

    if-eqz v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EB("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_d

    .line 34
    :cond_11
    invoke-static {}, Lv3/c;->q()Ly3/h0;

    move-result-object v7

    invoke-static {v15, v7}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x1

    goto :goto_6

    :cond_12
    invoke-static {}, Lv3/c;->p()Ly3/h0;

    move-result-object v7

    invoke-static {v15, v7}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_6
    if-eqz v7, :cond_13

    const-string v7, "resuming_sender"

    goto :goto_d

    :cond_13
    if-nez v15, :cond_14

    const/4 v7, 0x1

    goto :goto_7

    .line 35
    :cond_14
    invoke-static {}, Lv3/c;->k()Ly3/h0;

    move-result-object v7

    invoke-static {v15, v7}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_7
    if-eqz v7, :cond_15

    const/4 v7, 0x1

    goto :goto_8

    :cond_15
    invoke-static {}, Lv3/c;->f()Ly3/h0;

    move-result-object v7

    invoke-static {v15, v7}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_8
    if-eqz v7, :cond_16

    const/4 v7, 0x1

    goto :goto_9

    :cond_16
    invoke-static {}, Lv3/c;->o()Ly3/h0;

    move-result-object v7

    invoke-static {v15, v7}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_9
    if-eqz v7, :cond_17

    const/4 v7, 0x1

    goto :goto_a

    :cond_17
    invoke-static {}, Lv3/c;->i()Ly3/h0;

    move-result-object v7

    invoke-static {v15, v7}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_a
    if-eqz v7, :cond_18

    const/4 v7, 0x1

    goto :goto_b

    :cond_18
    invoke-static {}, Lv3/c;->j()Ly3/h0;

    move-result-object v7

    invoke-static {v15, v7}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_b
    if-eqz v7, :cond_19

    const/4 v7, 0x1

    goto :goto_c

    :cond_19
    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object v7

    invoke-static {v15, v7}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    :goto_c
    if-nez v7, :cond_1b

    .line 36
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_d
    if-eqz v6, :cond_1a

    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x28

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "),"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 38
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    :goto_e
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5

    .line 39
    :cond_1c
    invoke-virtual {v3}, Ly3/e;->e()Ly3/e;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lv3/i;

    if-nez v3, :cond_1f

    .line 40
    :cond_1d
    invoke-static {v1}, Ls3/o;->b0(Ljava/lang/CharSequence;)C

    move-result v2

    if-ne v2, v5, :cond_1e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "this.deleteCharAt(index)"

    invoke-static {v2, v3}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1e
    const-string v2, "]"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1f
    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 43
    :cond_20
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public final u0(Lt3/c2;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lv3/b$b;

    if-eqz v0, :cond_0

    check-cast p1, Lv3/b$b;

    invoke-virtual {p1}, Lv3/b$b;->a()Lt3/j;

    move-result-object p1

    sget-object p2, La3/i;->a:La3/i$a;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    instance-of v0, p1, Lt3/j;

    if-eqz v0, :cond_2

    check-cast p1, Ld3/d;

    sget-object v0, La3/i;->a:La3/i$a;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lv3/b;->N()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lv3/b;->P()Ljava/lang/Throwable;

    move-result-object p2

    :goto_0
    invoke-static {p2}, La3/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_2
    instance-of p2, p1, Lv3/r;

    if-eqz p2, :cond_3

    check-cast p1, Lv3/r;

    iget-object p1, p1, Lv3/r;->a:Lt3/k;

    sget-object p2, La3/i;->a:La3/i$a;

    sget-object p2, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {p0}, Lv3/b;->M()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lv3/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lv3/h;->b(Ljava/lang/Object;)Lv3/h;

    move-result-object p2

    invoke-static {p2}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_3
    instance-of p2, p1, Lv3/b$a;

    if-eqz p2, :cond_4

    check-cast p1, Lv3/b$a;

    invoke-virtual {p1}, Lv3/b$a;->j()V

    goto :goto_1

    .line 5
    :cond_4
    instance-of p2, p1, Lb4/b;

    if-eqz p2, :cond_5

    check-cast p1, Lb4/b;

    invoke-static {}, Lv3/c;->z()Ly3/h0;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lb4/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected waiter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final w0(Lv3/i;ILjava/lang/Object;JLd3/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/i<",
            "TE;>;ITE;J",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p3

    .line 1
    invoke-static/range {p6 .. p6}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object v1

    invoke-static {v1}, Lt3/m;->a(Ld3/d;)Lt3/k;

    move-result-object v10

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v7, v10

    .line 2
    :try_start_0
    invoke-static/range {v1 .. v8}, Lv3/b;->x(Lv3/b;Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_10

    const/4 v11, 0x1

    if-eq v1, v11, :cond_f

    const/4 v12, 0x2

    if-eq v1, v12, :cond_e

    const/4 v13, 0x4

    if-eq v1, v13, :cond_d

    const-string v14, "unexpected"

    const/4 v15, 0x5

    if-ne v1, v15, :cond_c

    .line 3
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ly3/e;->b()V

    .line 4
    invoke-static {}, Lv3/b;->k()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/i;

    .line 6
    :cond_0
    :goto_0
    invoke-static {}, Lv3/b;->p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v4, 0xfffffffffffffffL

    and-long v16, v2, v4

    .line 8
    invoke-static {v9, v2, v3}, Lv3/b;->q(Lv3/b;J)Z

    move-result v18

    .line 9
    sget v2, Lv3/c;->b:I

    int-to-long v3, v2

    div-long v3, v16, v3

    int-to-long v5, v2

    .line 10
    rem-long v5, v16, v5

    long-to-int v8, v5

    .line 11
    iget-wide v5, v1, Ly3/e0;->c:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    .line 12
    invoke-static {v9, v3, v4, v1}, Lv3/b;->c(Lv3/b;JLv3/i;)Lv3/i;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v18, :cond_0

    .line 13
    :cond_1
    :goto_1
    invoke-static {v9, v0, v10}, Lv3/b;->s(Lv3/b;Ljava/lang/Object;Lt3/j;)V

    goto/16 :goto_6

    :cond_2
    move-object v7, v2

    goto :goto_2

    :cond_3
    move-object v7, v1

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v8

    move-object/from16 v4, p3

    move-wide/from16 v5, v16

    move-object/from16 p1, v7

    move-object v7, v10

    move/from16 v19, v8

    move/from16 v8, v18

    .line 14
    invoke-static/range {v1 .. v8}, Lv3/b;->x(Lv3/b;Lv3/i;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v11, :cond_a

    if-eq v1, v12, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    if-eq v1, v13, :cond_5

    if-eq v1, v15, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ly3/e;->b()V

    :goto_3
    move-object/from16 v1, p1

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lv3/b;->O()J

    move-result-wide v1

    cmp-long v1, v16, v1

    if-gez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ly3/e;->b()V

    goto :goto_1

    .line 17
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v18, :cond_8

    .line 19
    invoke-virtual/range {p1 .. p1}, Ly3/e0;->p()V

    goto :goto_1

    .line 20
    :cond_8
    instance-of v0, v10, Lt3/c2;

    if-eqz v0, :cond_9

    move-object v0, v10

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_11

    move-object/from16 v2, p1

    move/from16 v1, v19

    invoke-static {v9, v0, v2, v1}, Lv3/b;->u(Lv3/b;Lt3/c2;Lv3/i;I)V

    goto :goto_6

    .line 21
    :cond_a
    sget-object v0, La3/i;->a:La3/i$a;

    sget-object v0, La3/o;->a:La3/o;

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-interface {v10, v0}, Ld3/d;->F(Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    move-object/from16 v2, p1

    .line 22
    invoke-virtual {v2}, Ly3/e;->b()V

    .line 23
    sget-object v0, La3/i;->a:La3/i$a;

    sget-object v0, La3/o;->a:La3/o;

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 24
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lv3/b;->O()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-gez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ly3/e;->b()V

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 27
    invoke-static {v9, v10, v0, v1}, Lv3/b;->u(Lv3/b;Lt3/c2;Lv3/i;I)V

    goto :goto_6

    .line 28
    :cond_f
    sget-object v0, La3/i;->a:La3/i$a;

    sget-object v0, La3/o;->a:La3/o;

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_10
    move-object/from16 v0, p1

    .line 29
    invoke-virtual/range {p1 .. p1}, Ly3/e;->b()V

    .line 30
    sget-object v0, La3/i;->a:La3/i$a;

    sget-object v0, La3/o;->a:La3/o;

    invoke-static {v0}, La3/i;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 31
    :cond_11
    :goto_6
    invoke-virtual {v10}, Lt3/k;->t()Ljava/lang/Object;

    move-result-object v0

    .line 32
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-static/range {p6 .. p6}, Lf3/h;->c(Ld3/d;)V

    :cond_12
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_13

    return-object v0

    .line 33
    :cond_13
    sget-object v0, La3/o;->a:La3/o;

    return-object v0

    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v10}, Lt3/k;->G()V

    .line 35
    throw v0
.end method

.method public final x0(J)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lv3/b;->Z(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide v0, 0xfffffffffffffffL

    and-long/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lv3/b;->y(J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final y(J)Z
    .locals 4

    invoke-virtual {p0}, Lv3/b;->L()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lv3/b;->O()J

    move-result-wide v0

    iget v2, p0, Lv3/b;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final y0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TE;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lb4/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lb4/b;

    invoke-interface {p1, p0, p2}, Lb4/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lv3/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 4
    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lv3/r;

    .line 5
    iget-object v0, p1, Lv3/r;->a:Lt3/k;

    sget-object v2, Lv3/h;->b:Lv3/h$b;

    invoke-virtual {v2, p2}, Lv3/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lv3/h;->b(Ljava/lang/Object;)Lv3/h;

    move-result-object v2

    iget-object v3, p0, Lv3/b;->b:Ll3/l;

    if-eqz v3, :cond_1

    iget-object p1, p1, Lv3/r;->a:Lt3/k;

    invoke-virtual {p1}, Lt3/k;->b()Ld3/g;

    move-result-object p1

    invoke-static {v3, p2, p1}, Ly3/z;->a(Ll3/l;Ljava/lang/Object;Ld3/g;)Ll3/l;

    move-result-object v1

    :cond_1
    invoke-static {v0, v2, v1}, Lv3/c;->u(Lt3/j;Ljava/lang/Object;Ll3/l;)Z

    move-result p1

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Lv3/b$a;

    if-eqz v0, :cond_3

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 7
    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lv3/b$a;

    .line 8
    invoke-virtual {p1, p2}, Lv3/b$a;->i(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p1, Lt3/j;

    if-eqz v0, :cond_5

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>"

    .line 10
    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lt3/j;

    .line 11
    iget-object v0, p0, Lv3/b;->b:Ll3/l;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ld3/d;->b()Ld3/g;

    move-result-object v1

    invoke-static {v0, p2, v1}, Ly3/z;->a(Ll3/l;Ljava/lang/Object;Ld3/g;)Ll3/l;

    move-result-object v1

    :cond_4
    invoke-static {p1, p2, v1}, Lv3/c;->u(Lt3/j;Ljava/lang/Object;Ll3/l;)Z

    move-result p1

    :goto_0
    return p1

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected receiver type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public z(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel was cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lv3/b;->C(Ljava/lang/Throwable;Z)Z

    move-result p1

    return p1
.end method

.method public final z0(Ljava/lang/Object;Lv3/i;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lv3/i<",
            "TE;>;I)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lt3/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    .line 2
    invoke-static {p1, p2}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lt3/j;

    .line 3
    sget-object p2, La3/o;->a:La3/o;

    invoke-static {p1, p2, v2, v1, v2}, Lv3/c;->C(Lt3/j;Ljava/lang/Object;Ll3/l;ILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lb4/b;

    if-eqz v0, :cond_3

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>"

    .line 5
    invoke-static {p1, v0}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lb4/a;

    .line 6
    sget-object v0, La3/o;->a:La3/o;

    invoke-virtual {p1, p0, v0}, Lb4/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Lb4/d;

    move-result-object p1

    .line 7
    sget-object v0, Lb4/d;->b:Lb4/d;

    if-ne p1, v0, :cond_1

    invoke-virtual {p2, p3}, Lv3/i;->s(I)V

    .line 8
    :cond_1
    sget-object p2, Lb4/d;->a:Lb4/d;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    .line 9
    :cond_3
    instance-of p2, p1, Lv3/b$b;

    if-eqz p2, :cond_4

    check-cast p1, Lv3/b$b;

    invoke-virtual {p1}, Lv3/b$b;->a()Lt3/j;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v2, v1, v2}, Lv3/c;->C(Lt3/j;Ljava/lang/Object;Ll3/l;ILjava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected waiter: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
