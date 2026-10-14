.class public final Ls0/d;
.super Ljava/lang/Object;
.source "TimeLimiter.kt"


# instance fields
.field public final a:Lq0/v;

.field public final b:Lr0/n0;

.field public final c:J

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr0/a0;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq0/v;Lr0/n0;)V
    .locals 8

    const-string v0, "runnableScheduler"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Ls0/d;-><init>(Lq0/v;Lr0/n0;JILm3/g;)V

    return-void
.end method

.method public constructor <init>(Lq0/v;Lr0/n0;J)V
    .locals 1

    const-string v0, "runnableScheduler"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls0/d;->a:Lq0/v;

    .line 3
    iput-object p2, p0, Ls0/d;->b:Lr0/n0;

    .line 4
    iput-wide p3, p0, Ls0/d;->c:J

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls0/d;->d:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Ls0/d;->e:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lq0/v;Lr0/n0;JILm3/g;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 7
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x5a

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ls0/d;-><init>(Lq0/v;Lr0/n0;J)V

    return-void
.end method

.method public static synthetic a(Ls0/d;Lr0/a0;)V
    .locals 0

    invoke-static {p0, p1}, Ls0/d;->d(Ls0/d;Lr0/a0;)V

    return-void
.end method

.method public static final d(Ls0/d;Lr0/a0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$token"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ls0/d;->b:Lr0/n0;

    const/4 v0, 0x3

    invoke-interface {p0, p1, v0}, Lr0/n0;->c(Lr0/a0;I)V

    return-void
.end method


# virtual methods
.method public final b(Lr0/a0;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls0/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ls0/d;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_0

    iget-object v0, p0, Ls0/d;->a:Lq0/v;

    invoke-interface {v0, p1}, Lq0/v;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Lr0/a0;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls0/c;

    invoke-direct {v0, p0, p1}, Ls0/c;-><init>(Ls0/d;Lr0/a0;)V

    .line 2
    iget-object v1, p0, Ls0/d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ls0/d;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3
    iget-object p1, p0, Ls0/d;->a:Lq0/v;

    iget-wide v1, p0, Ls0/d;->c:J

    invoke-interface {p1, v1, v2, v0}, Lq0/v;->b(JLjava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v1

    throw p1
.end method
