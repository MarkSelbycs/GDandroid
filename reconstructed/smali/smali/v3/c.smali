.class public final Lv3/c;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"


# static fields
.field public static final a:Lv3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:I

.field public static final c:I

.field public static final d:Ly3/h0;

.field public static final e:Ly3/h0;

.field public static final f:Ly3/h0;

.field public static final g:Ly3/h0;

.field public static final h:Ly3/h0;

.field public static final i:Ly3/h0;

.field public static final j:Ly3/h0;

.field public static final k:Ly3/h0;

.field public static final l:Ly3/h0;

.field public static final m:Ly3/h0;

.field public static final n:Ly3/h0;

.field public static final o:Ly3/h0;

.field public static final p:Ly3/h0;

.field public static final q:Ly3/h0;

.field public static final r:Ly3/h0;

.field public static final s:Ly3/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lv3/i;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lv3/i;-><init>(JLv3/i;Lv3/b;I)V

    sput-object v6, Lv3/c;->a:Lv3/i;

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    .line 2
    invoke-static/range {v7 .. v12}, Ly3/i0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lv3/c;->b:I

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 3
    invoke-static/range {v1 .. v6}, Ly3/i0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lv3/c;->c:I

    .line 4
    new-instance v0, Ly3/h0;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->d:Ly3/h0;

    .line 5
    new-instance v0, Ly3/h0;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->e:Ly3/h0;

    .line 6
    new-instance v0, Ly3/h0;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->f:Ly3/h0;

    .line 7
    new-instance v0, Ly3/h0;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->g:Ly3/h0;

    .line 8
    new-instance v0, Ly3/h0;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->h:Ly3/h0;

    .line 9
    new-instance v0, Ly3/h0;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->i:Ly3/h0;

    .line 10
    new-instance v0, Ly3/h0;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->j:Ly3/h0;

    .line 11
    new-instance v0, Ly3/h0;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->k:Ly3/h0;

    .line 12
    new-instance v0, Ly3/h0;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->l:Ly3/h0;

    .line 13
    new-instance v0, Ly3/h0;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->m:Ly3/h0;

    .line 14
    new-instance v0, Ly3/h0;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->n:Ly3/h0;

    .line 15
    new-instance v0, Ly3/h0;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->o:Ly3/h0;

    .line 16
    new-instance v0, Ly3/h0;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->p:Ly3/h0;

    .line 17
    new-instance v0, Ly3/h0;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->q:Ly3/h0;

    .line 18
    new-instance v0, Ly3/h0;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->r:Ly3/h0;

    .line 19
    new-instance v0, Ly3/h0;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Ly3/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv3/c;->s:Ly3/h0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static final B(Lt3/j;Ljava/lang/Object;Ll3/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt3/j<",
            "-TT;>;TT;",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0, p2}, Lt3/j;->U(Ljava/lang/Object;Ljava/lang/Object;Ll3/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lt3/j;->T(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic C(Lt3/j;Ljava/lang/Object;Ll3/l;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lv3/c;->B(Lt3/j;Ljava/lang/Object;Ll3/l;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lv3/c;->v(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    invoke-static {p0, p1, p2}, Lv3/c;->w(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(JLv3/i;)Lv3/i;
    .locals 0

    invoke-static {p0, p1, p2}, Lv3/c;->x(JLv3/i;)Lv3/i;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Ly3/h0;
    .locals 1

    sget-object v0, Lv3/c;->q:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic e()Ly3/h0;
    .locals 1

    sget-object v0, Lv3/c;->r:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic f()Ly3/h0;
    .locals 1

    sget-object v0, Lv3/c;->i:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 3

    sget v0, Lv3/c;->c:I

    return v0
.end method

.method public static final synthetic h()Ly3/h0;
    .locals 3

    sget-object v0, Lv3/c;->o:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic i()Ly3/h0;
    .locals 1

    sget-object v0, Lv3/c;->k:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic j()Ly3/h0;
    .locals 2

    sget-object v0, Lv3/c;->j:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic k()Ly3/h0;
    .locals 3

    sget-object v0, Lv3/c;->e:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic l()Ly3/h0;
    .locals 3

    sget-object v0, Lv3/c;->s:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic m()Ly3/h0;
    .locals 3

    sget-object v0, Lv3/c;->p:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic n()Lv3/i;
    .locals 1

    sget-object v0, Lv3/c;->a:Lv3/i;

    return-object v0
.end method

.method public static final synthetic o()Ly3/h0;
    .locals 2

    sget-object v0, Lv3/c;->h:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic p()Ly3/h0;
    .locals 2

    sget-object v0, Lv3/c;->g:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic q()Ly3/h0;
    .locals 1

    sget-object v0, Lv3/c;->f:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic r()Ly3/h0;
    .locals 1

    sget-object v0, Lv3/c;->m:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic s()Ly3/h0;
    .locals 1

    sget-object v0, Lv3/c;->n:Ly3/h0;

    return-object v0
.end method

.method public static final synthetic t(I)J
    .locals 2

    invoke-static {p0}, Lv3/c;->A(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic u(Lt3/j;Ljava/lang/Object;Ll3/l;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lv3/c;->B(Lt3/j;Ljava/lang/Object;Ll3/l;)Z

    move-result p0

    return p0
.end method

.method public static final v(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final w(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static final x(JLv3/i;)Lv3/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(J",
            "Lv3/i<",
            "TE;>;)",
            "Lv3/i<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lv3/i;

    .line 2
    invoke-virtual {p2}, Lv3/i;->u()Lv3/b;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lv3/i;-><init>(JLv3/i;Lv3/b;I)V

    return-object v6
.end method

.method public static final y()Lq3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lq3/d<",
            "Lv3/i<",
            "TE;>;>;"
        }
    .end annotation

    sget-object v0, Lv3/c$a;->o:Lv3/c$a;

    return-object v0
.end method

.method public static final z()Ly3/h0;
    .locals 2

    sget-object v0, Lv3/c;->l:Ly3/h0;

    return-object v0
.end method
