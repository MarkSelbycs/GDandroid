.class public final Lg4/d;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg4/d$i;,
        Lg4/d$j;,
        Lg4/d$h;
    }
.end annotation


# static fields
.field public static final B:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Lc4/w;

.field public final b:Z

.field public final c:Lg4/d$i;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lg4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lg4/l;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lg4/m;

.field public q:I

.field public r:J

.field public s:J

.field public t:Lg4/n;

.field public final u:Lg4/n;

.field public v:Z

.field public final w:Lg4/q;

.field public final x:Ljava/net/Socket;

.field public final y:Lg4/c;

.field public final z:Lg4/d$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    const-class v0, Lg4/d;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp FramedConnection"

    .line 3
    invoke-static {v8, v1}, Ld4/c;->y(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lg4/d;->B:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lg4/d$h;)V
    .locals 18

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lg4/d;->d:Ljava/util/Map;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, v0, Lg4/d;->r:J

    .line 5
    new-instance v1, Lg4/n;

    invoke-direct {v1}, Lg4/n;-><init>()V

    iput-object v1, v0, Lg4/d;->t:Lg4/n;

    .line 6
    new-instance v1, Lg4/n;

    invoke-direct {v1}, Lg4/n;-><init>()V

    iput-object v1, v0, Lg4/d;->u:Lg4/n;

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v0, Lg4/d;->v:Z

    .line 8
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lg4/d;->A:Ljava/util/Set;

    .line 9
    invoke-static/range {p1 .. p1}, Lg4/d$h;->a(Lg4/d$h;)Lc4/w;

    move-result-object v3

    iput-object v3, v0, Lg4/d;->a:Lc4/w;

    .line 10
    invoke-static/range {p1 .. p1}, Lg4/d$h;->b(Lg4/d$h;)Lg4/m;

    move-result-object v4

    iput-object v4, v0, Lg4/d;->p:Lg4/m;

    .line 11
    invoke-static/range {p1 .. p1}, Lg4/d$h;->c(Lg4/d$h;)Z

    move-result v4

    iput-boolean v4, v0, Lg4/d;->b:Z

    .line 12
    invoke-static/range {p1 .. p1}, Lg4/d$h;->d(Lg4/d$h;)Lg4/d$i;

    move-result-object v5

    iput-object v5, v0, Lg4/d;->c:Lg4/d$i;

    .line 13
    invoke-static/range {p1 .. p1}, Lg4/d$h;->c(Lg4/d$h;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iput v5, v0, Lg4/d;->g:I

    .line 14
    invoke-static/range {p1 .. p1}, Lg4/d$h;->c(Lg4/d$h;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lc4/w;->e:Lc4/w;

    if-ne v3, v5, :cond_1

    .line 15
    iget v5, v0, Lg4/d;->g:I

    add-int/2addr v5, v6

    iput v5, v0, Lg4/d;->g:I

    .line 16
    :cond_1
    invoke-static/range {p1 .. p1}, Lg4/d$h;->c(Lg4/d$h;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    iput v6, v0, Lg4/d;->q:I

    .line 17
    invoke-static/range {p1 .. p1}, Lg4/d$h;->c(Lg4/d$h;)Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_3

    .line 18
    iget-object v5, v0, Lg4/d;->t:Lg4/n;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v2, v8}, Lg4/n;->l(III)Lg4/n;

    .line 19
    :cond_3
    invoke-static/range {p1 .. p1}, Lg4/d$h;->e(Lg4/d$h;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lg4/d;->e:Ljava/lang/String;

    .line 20
    sget-object v8, Lc4/w;->e:Lc4/w;

    const/4 v9, 0x0

    if-ne v3, v8, :cond_4

    .line 21
    new-instance v3, Lg4/i;

    invoke-direct {v3}, Lg4/i;-><init>()V

    iput-object v3, v0, Lg4/d;->w:Lg4/q;

    .line 22
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v2

    const-string v5, "OkHttp %s Push Observer"

    .line 23
    invoke-static {v5, v8}, Ld4/c;->l(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ld4/c;->y(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lg4/d;->i:Ljava/util/concurrent/ExecutorService;

    const v3, 0xffff

    .line 24
    invoke-virtual {v1, v6, v2, v3}, Lg4/n;->l(III)Lg4/n;

    const/4 v3, 0x5

    const/16 v5, 0x4000

    .line 25
    invoke-virtual {v1, v3, v2, v5}, Lg4/n;->l(III)Lg4/n;

    goto :goto_1

    .line 26
    :cond_4
    sget-object v2, Lc4/w;->d:Lc4/w;

    if-ne v3, v2, :cond_5

    .line 27
    new-instance v2, Lg4/o;

    invoke-direct {v2}, Lg4/o;-><init>()V

    iput-object v2, v0, Lg4/d;->w:Lg4/q;

    .line 28
    iput-object v9, v0, Lg4/d;->i:Ljava/util/concurrent/ExecutorService;

    :goto_1
    const/high16 v2, 0x10000

    .line 29
    invoke-virtual {v1, v2}, Lg4/n;->e(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lg4/d;->s:J

    .line 30
    invoke-static/range {p1 .. p1}, Lg4/d$h;->f(Lg4/d$h;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lg4/d;->x:Ljava/net/Socket;

    .line 31
    iget-object v1, v0, Lg4/d;->w:Lg4/q;

    invoke-static/range {p1 .. p1}, Lg4/d$h;->g(Lg4/d$h;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lg4/q;->b(Lokio/BufferedSink;Z)Lg4/c;

    move-result-object v1

    iput-object v1, v0, Lg4/d;->y:Lg4/c;

    .line 32
    new-instance v1, Lg4/d$j;

    iget-object v2, v0, Lg4/d;->w:Lg4/q;

    invoke-static/range {p1 .. p1}, Lg4/d$h;->h(Lg4/d$h;)Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lg4/q;->a(Lokio/BufferedSource;Z)Lg4/b;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9}, Lg4/d$j;-><init>(Lg4/d;Lg4/b;Lg4/d$a;)V

    iput-object v1, v0, Lg4/d;->z:Lg4/d$j;

    return-void

    .line 33
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public synthetic constructor <init>(Lg4/d$h;Lg4/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg4/d;-><init>(Lg4/d$h;)V

    return-void
.end method

.method public static synthetic C(Lg4/d;I)Lg4/l;
    .locals 0

    invoke-virtual {p0, p1}, Lg4/d;->r0(I)Lg4/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lg4/d;ZIILg4/l;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lg4/d;->A0(ZIILg4/l;)V

    return-void
.end method

.method public static synthetic I(Lg4/d;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg4/d;->j0(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic K(Lg4/d;)Lg4/m;
    .locals 0

    iget-object p0, p0, Lg4/d;->p:Lg4/m;

    return-object p0
.end method

.method public static synthetic M(Lg4/d;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lg4/d;->A:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic P(Lg4/d;ZIILg4/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lg4/d;->z0(ZIILg4/l;)V

    return-void
.end method

.method public static synthetic c(Lg4/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg4/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lg4/d;Lg4/a;Lg4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lg4/d;->V(Lg4/a;Lg4/a;)V

    return-void
.end method

.method public static synthetic f(Lg4/d;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lg4/d;->m0(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lg4/d;ILokio/BufferedSource;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lg4/d;->h0(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method public static synthetic i(Lg4/d;ILjava/util/List;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lg4/d;->i0(ILjava/util/List;Z)V

    return-void
.end method

.method public static synthetic j(Lg4/d;)Z
    .locals 0

    iget-boolean p0, p0, Lg4/d;->h:Z

    return p0
.end method

.method public static synthetic l(Lg4/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lg4/d;->h:Z

    return p1
.end method

.method public static synthetic n(Lg4/d;)I
    .locals 0

    iget p0, p0, Lg4/d;->f:I

    return p0
.end method

.method public static synthetic o(Lg4/d;I)I
    .locals 0

    iput p1, p0, Lg4/d;->f:I

    return p1
.end method

.method public static synthetic q(Lg4/d;)I
    .locals 0

    iget p0, p0, Lg4/d;->g:I

    return p0
.end method

.method public static synthetic r(Lg4/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lg4/d;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic s(Lg4/d;)Lg4/d$i;
    .locals 0

    iget-object p0, p0, Lg4/d;->c:Lg4/d$i;

    return-object p0
.end method

.method public static synthetic u()Ljava/util/concurrent/ExecutorService;
    .locals 2

    sget-object v0, Lg4/d;->B:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static synthetic x(Lg4/d;ILg4/a;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg4/d;->k0(ILg4/a;)V

    return-void
.end method

.method public static synthetic y(Lg4/d;)Z
    .locals 0

    iget-boolean p0, p0, Lg4/d;->v:Z

    return p0
.end method

.method public static synthetic z(Lg4/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lg4/d;->v:Z

    return p1
.end method


# virtual methods
.method public final A0(ZIILg4/l;)V
    .locals 10

    .line 1
    sget-object v0, Lg4/d;->B:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lg4/d$c;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lg4/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lg4/d$c;-><init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ZIILg4/l;)V

    .line 3
    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public B0(ILg4/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {v0, p1, p2}, Lg4/c;->a(ILg4/a;)V

    return-void
.end method

.method public C0(ILg4/a;)V
    .locals 8

    sget-object v0, Lg4/d;->B:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lg4/d$a;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lg4/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lg4/d$a;-><init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ILg4/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public D0(IJ)V
    .locals 9

    sget-object v0, Lg4/d;->B:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lg4/d$b;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lg4/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lg4/d$b;-><init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public R(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lg4/d;->s:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lg4/d;->s:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public final V(Lg4/a;Lg4/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lg4/d;->v0(Lg4/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Lg4/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lg4/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lg4/d;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lg4/e;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lg4/e;

    .line 5
    iget-object v2, p0, Lg4/d;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 6
    :goto_1
    iget-object v2, p0, Lg4/d;->o:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lg4/d;->o:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lg4/l;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lg4/l;

    .line 8
    iput-object v0, p0, Lg4/d;->o:Ljava/util/Map;

    move-object v0, v2

    .line 9
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 10
    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 11
    :try_start_2
    invoke-virtual {v5, p2}, Lg4/e;->l(Lg4/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    if-eqz p1, :cond_2

    move-object p1, v5

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 12
    array-length p2, v0

    :goto_4
    if-ge v2, p2, :cond_4

    aget-object v1, v0, v2

    .line 13
    invoke-virtual {v1}, Lg4/l;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 14
    :cond_4
    :try_start_3
    iget-object p2, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    if-nez p1, :cond_5

    move-object p1, p2

    .line 15
    :cond_5
    :goto_5
    :try_start_4
    iget-object p2, p0, Lg4/d;->x:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    :goto_6
    if-nez p1, :cond_6

    return-void

    .line 16
    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    .line 17
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public X()Lc4/w;
    .locals 1

    iget-object v0, p0, Lg4/d;->a:Lc4/w;

    return-object v0
.end method

.method public declared-synchronized Y(I)Lg4/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg4/d;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg4/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized Z()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg4/d;->u:Lg4/n;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lg4/n;->f(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b0(ILjava/util/List;ZZ)Lg4/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;ZZ)",
            "Lg4/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v7, 0x1

    xor-int/2addr p4, v7

    .line 1
    iget-object v8, p0, Lg4/d;->y:Lg4/c;

    monitor-enter v8

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v0, p0, Lg4/d;->h:Z

    if-nez v0, :cond_6

    .line 4
    iget v9, p0, Lg4/d;->g:I

    add-int/lit8 v0, v9, 0x2

    .line 5
    iput v0, p0, Lg4/d;->g:I

    .line 6
    new-instance v10, Lg4/e;

    move-object v0, v10

    move v1, v9

    move-object v2, p0

    move v3, v6

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lg4/e;-><init>(ILg4/d;ZZLjava/util/List;)V

    if-eqz p3, :cond_1

    .line 7
    iget-wide v0, p0, Lg4/d;->s:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    iget-wide v0, v10, Lg4/e;->b:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v10}, Lg4/e;->t()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    iget-object p3, p0, Lg4/d;->d:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_3

    .line 11
    :try_start_2
    iget-object v0, p0, Lg4/d;->y:Lg4/c;

    move v1, v6

    move v2, p4

    move v3, v9

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lg4/c;->f0(ZZIILjava/util/List;)V

    goto :goto_1

    .line 12
    :cond_3
    iget-boolean p3, p0, Lg4/d;->b:Z

    if-nez p3, :cond_5

    .line 13
    iget-object p3, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {p3, p1, v9, p2}, Lg4/c;->d(IILjava/util/List;)V

    .line 14
    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_4

    .line 15
    iget-object p1, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {p1}, Lg4/c;->flush()V

    :cond_4
    return-object v10

    .line 16
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :cond_6
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 19
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public c0(Ljava/util/List;ZZ)Lg4/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;ZZ)",
            "Lg4/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lg4/d;->b0(ILjava/util/List;ZZ)Lg4/e;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lg4/a;->d:Lg4/a;

    sget-object v1, Lg4/a;->t:Lg4/a;

    invoke-virtual {p0, v0, v1}, Lg4/d;->V(Lg4/a;Lg4/a;)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {v0}, Lg4/c;->flush()V

    return-void
.end method

.method public final h0(ILokio/BufferedSource;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 2
    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 3
    invoke-interface {p2, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 4
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lg4/d;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lg4/d$f;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lg4/d;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lg4/d$f;-><init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i0(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lg4/d;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lg4/d$e;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lg4/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lg4/d$e;-><init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j0(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg4/d;->A:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lg4/a;->e:Lg4/a;

    invoke-virtual {p0, p1, p2}, Lg4/d;->C0(ILg4/a;)V

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lg4/d;->A:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lg4/d;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lg4/d$d;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lg4/d;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lg4/d$d;-><init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k0(ILg4/a;)V
    .locals 8

    iget-object v0, p0, Lg4/d;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lg4/d$g;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lg4/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lg4/d$g;-><init>(Lg4/d;Ljava/lang/String;[Ljava/lang/Object;ILg4/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final m0(I)Z
    .locals 3

    iget-object v0, p0, Lg4/d;->a:Lc4/w;

    sget-object v1, Lc4/w;->e:Lc4/w;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/2addr p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final declared-synchronized r0(I)Lg4/l;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lg4/d;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg4/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized u0(I)Lg4/e;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg4/d;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg4/e;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public v0(Lg4/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/d;->y:Lg4/c;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lg4/d;->h:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lg4/d;->h:Z

    .line 6
    iget v1, p0, Lg4/d;->f:I

    .line 7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    iget-object v2, p0, Lg4/d;->y:Lg4/c;

    sget-object v3, Ld4/c;->a:[B

    invoke-interface {v2, v1, p1, v3}, Lg4/c;->A(ILg4/a;[B)V

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public w0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg4/d;->x0(Z)V

    return-void
.end method

.method public x0(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {p1}, Lg4/c;->p0()V

    .line 2
    iget-object p1, p0, Lg4/d;->y:Lg4/c;

    iget-object v0, p0, Lg4/d;->t:Lg4/n;

    invoke-interface {p1, v0}, Lg4/c;->t0(Lg4/n;)V

    .line 3
    iget-object p1, p0, Lg4/d;->t:Lg4/n;

    const/high16 v0, 0x10000

    invoke-virtual {p1, v0}, Lg4/n;->e(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lg4/d;->y:Lg4/c;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lg4/c;->b(IJ)V

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lg4/d;->z:Lg4/d$j;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public y0(IZLokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1
    iget-object p4, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {p4, p2, p1, p3, v3}, Lg4/c;->p(ZILokio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v4, p0, Lg4/d;->s:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    .line 4
    iget-object v2, p0, Lg4/d;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 8
    iget-object v4, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {v4}, Lg4/c;->e0()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9
    iget-wide v4, p0, Lg4/d;->s:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lg4/d;->s:J

    .line 10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 11
    iget-object v4, p0, Lg4/d;->y:Lg4/c;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-interface {v4, v5, p1, p3, v2}, Lg4/c;->p(ZILokio/Buffer;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 12
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 13
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public final z0(ZIILg4/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg4/d;->y:Lg4/c;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p4}, Lg4/l;->c()V

    .line 3
    :cond_0
    iget-object p4, p0, Lg4/d;->y:Lg4/c;

    invoke-interface {p4, p1, p2, p3}, Lg4/c;->g(ZII)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
