.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "WorkDatabase_Impl.java"


# instance fields
.field public volatile q:Lz0/v;

.field public volatile r:Lz0/b;

.field public volatile s:Lz0/z;

.field public volatile t:Lz0/j;

.field public volatile u:Lz0/o;

.field public volatile v:Lz0/r;

.field public volatile w:Lz0/e;

.field public volatile x:Lz0/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method public static synthetic L(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic M(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic N(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic O(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic P(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic Q(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic R(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic S(Landroidx/work/impl/WorkDatabase_Impl;Lf0/g;)Lf0/g;
    .locals 0

    iput-object p1, p0, Landroidx/room/i0;->a:Lf0/g;

    return-object p1
.end method

.method public static synthetic T(Landroidx/work/impl/WorkDatabase_Impl;Lf0/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/i0;->u(Lf0/g;)V

    return-void
.end method

.method public static synthetic U(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic V(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/i0;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public D()Lz0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lz0/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lz0/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lz0/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lz0/c;

    invoke-direct {v0, p0}, Lz0/c;-><init>(Landroidx/room/i0;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lz0/b;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->r:Lz0/b;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public E()Lz0/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->w:Lz0/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->w:Lz0/e;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->w:Lz0/e;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lz0/f;

    invoke-direct {v0, p0}, Lz0/f;-><init>(Landroidx/room/i0;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->w:Lz0/e;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->w:Lz0/e;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public F()Lz0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->x:Lz0/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->x:Lz0/g;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->x:Lz0/g;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lz0/h;

    invoke-direct {v0, p0}, Lz0/h;-><init>(Landroidx/room/i0;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->x:Lz0/g;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->x:Lz0/g;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public G()Lz0/j;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lz0/j;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lz0/j;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lz0/j;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lz0/k;

    invoke-direct {v0, p0}, Lz0/k;-><init>(Landroidx/room/i0;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lz0/j;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->t:Lz0/j;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public H()Lz0/o;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lz0/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lz0/o;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lz0/o;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lz0/p;

    invoke-direct {v0, p0}, Lz0/p;-><init>(Landroidx/room/i0;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lz0/o;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->u:Lz0/o;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public I()Lz0/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lz0/r;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lz0/r;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lz0/r;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lz0/s;

    invoke-direct {v0, p0}, Lz0/s;-><init>(Landroidx/room/i0;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lz0/r;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->v:Lz0/r;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public J()Lz0/v;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lz0/v;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lz0/v;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lz0/v;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lz0/w;

    invoke-direct {v0, p0}, Lz0/w;-><init>(Landroidx/room/i0;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lz0/v;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lz0/v;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public K()Lz0/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lz0/z;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lz0/z;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lz0/z;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lz0/a0;

    invoke-direct {v0, p0}, Lz0/a0;-><init>(Landroidx/room/i0;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lz0/z;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->s:Lz0/z;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Landroidx/room/m;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v1, Landroidx/room/m;

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Landroidx/room/m;-><init>(Landroidx/room/i0;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v1
.end method

.method public h(Landroidx/room/f;)Lf0/h;
    .locals 4

    .line 1
    new-instance v0, Landroidx/room/k0;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$a;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$a;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "7d73d21f1bd82c9e5268b6dcf9fde2cb"

    const-string v3, "3071c8717539de5d5353f4c8cd59a032"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/k0;-><init>(Landroidx/room/f;Landroidx/room/k0$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lf0/h$b;->a(Landroid/content/Context;)Lf0/h$b$a;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/f;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lf0/h$b$a;->d(Ljava/lang/String;)Lf0/h$b$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lf0/h$b$a;->c(Lf0/h$a;)Lf0/h$b$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lf0/h$b$a;->b()Lf0/h$b;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/f;->c:Lf0/h$c;

    invoke-interface {p1, v0}, Lf0/h$c;->a(Lf0/h$b;)Lf0/h;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ld0/a;",
            ">;",
            "Ld0/a;",
            ">;)",
            "Ljava/util/List<",
            "Ld0/b;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x6

    new-array p1, p1, [Ld0/b;

    new-instance v0, Lr0/h0;

    invoke-direct {v0}, Lr0/h0;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Lr0/i0;

    invoke-direct {v0}, Lr0/i0;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lr0/j0;

    invoke-direct {v0}, Lr0/j0;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    new-instance v0, Lr0/k0;

    invoke-direct {v0}, Lr0/k0;-><init>()V

    const/4 v1, 0x3

    aput-object v0, p1, v1

    new-instance v0, Lr0/l0;

    invoke-direct {v0}, Lr0/l0;-><init>()V

    const/4 v1, 0x4

    aput-object v0, p1, v1

    new-instance v0, Lr0/m0;

    invoke-direct {v0}, Lr0/m0;-><init>()V

    const/4 v1, 0x5

    aput-object v0, p1, v1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ld0/a;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lz0/v;

    invoke-static {}, Lz0/w;->D()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lz0/b;

    invoke-static {}, Lz0/c;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lz0/z;

    invoke-static {}, Lz0/a0;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lz0/j;

    invoke-static {}, Lz0/k;->j()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lz0/o;

    invoke-static {}, Lz0/p;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Lz0/r;

    invoke-static {}, Lz0/s;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Lz0/e;

    invoke-static {}, Lz0/f;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v1, Lz0/g;

    invoke-static {}, Lz0/h;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
