.class public abstract Landroidx/room/i0;
.super Ljava/lang/Object;
.source "RoomDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/i0$d;,
        Landroidx/room/i0$a;,
        Landroidx/room/i0$e;,
        Landroidx/room/i0$b;,
        Landroidx/room/i0$f;,
        Landroidx/room/i0$g;,
        Landroidx/room/i0$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Landroidx/room/i0$c;


# instance fields
.field public volatile a:Lf0/g;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Lf0/h;

.field public final e:Landroidx/room/m;

.field public f:Z

.field public g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/room/i0$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ld0/a;",
            ">;",
            "Ld0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public k:Landroidx/room/c;

.field public final l:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/i0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/i0$c;-><init>(Lm3/g;)V

    sput-object v0, Landroidx/room/i0;->o:Landroidx/room/i0$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/i0;->g()Landroidx/room/m;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/i0;->e:Landroidx/room/m;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/i0;->i:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroidx/room/i0;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/i0;->l:Ljava/lang/ThreadLocal;

    .line 6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "synchronizedMap(mutableMapOf())"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/room/i0;->m:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/i0;->n:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic a(Landroidx/room/i0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/room/i0;->s()V

    return-void
.end method

.method public static final synthetic b(Landroidx/room/i0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/room/i0;->t()V

    return-void
.end method

.method public static synthetic y(Landroidx/room/i0;Lf0/j;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/room/i0;->x(Lf0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: query"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public A(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/room/i0;->e()V

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3
    invoke-virtual {p0}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/room/i0;->i()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/i0;->i()V

    throw p1
.end method

.method public B()V
    .locals 1

    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v0

    invoke-interface {v0}, Lf0/h;->l0()Lf0/g;

    move-result-object v0

    invoke-interface {v0}, Lf0/g;->J()V

    return-void
.end method

.method public final C(Ljava/lang/Class;Lf0/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lf0/h;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    instance-of v0, p2, Landroidx/room/g;

    if-eqz v0, :cond_1

    .line 3
    check-cast p2, Landroidx/room/g;

    invoke-interface {p2}, Landroidx/room/g;->c()Lf0/h;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/room/i0;->C(Ljava/lang/Class;Lf0/h;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/room/i0;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/room/i0;->v()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/i0;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/room/i0;->l:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/i0;->c()V

    .line 2
    iget-object v0, p0, Landroidx/room/i0;->k:Landroidx/room/c;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/room/i0;->s()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroidx/room/i0$h;

    invoke-direct {v1, p0}, Landroidx/room/i0$h;-><init>(Landroidx/room/i0;)V

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)Lf0/k;
    .locals 1

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/room/i0;->c()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/i0;->d()V

    .line 3
    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v0

    invoke-interface {v0}, Lf0/h;->l0()Lf0/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lf0/g;->S(Ljava/lang/String;)Lf0/k;

    move-result-object p1

    return-object p1
.end method

.method public abstract g()Landroidx/room/m;
.end method

.method public abstract h(Landroidx/room/f;)Lf0/h;
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/i0;->k:Landroidx/room/c;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/room/i0;->t()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroidx/room/i0$i;

    invoke-direct {v1, p0}, Landroidx/room/i0$i;-><init>(Landroidx/room/i0;)V

    invoke-virtual {v0, v1}, Landroidx/room/c;->g(Ll3/l;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public j(Ljava/util/Map;)Ljava/util/List;
    .locals 1
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

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lb3/o;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/util/concurrent/locks/Lock;
    .locals 2

    iget-object v0, p0, Landroidx/room/i0;->j:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    const-string v1, "readWriteLock.readLock()"

    invoke-static {v0, v1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public l()Landroidx/room/m;
    .locals 1

    iget-object v0, p0, Landroidx/room/i0;->e:Landroidx/room/m;

    return-object v0
.end method

.method public m()Lf0/h;
    .locals 1

    iget-object v0, p0, Landroidx/room/i0;->d:Lf0/h;

    if-nez v0, :cond_0

    const-string v0, "internalOpenHelper"

    invoke-static {v0}, Lm3/k;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public n()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/room/i0;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "internalQueryExecutor"

    invoke-static {v0}, Lm3/k;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
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

    invoke-static {}, Lb3/j0;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/util/Map;
    .locals 1
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

    invoke-static {}, Lb3/h0;->g()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v0

    invoke-interface {v0}, Lf0/h;->l0()Lf0/g;

    move-result-object v0

    invoke-interface {v0}, Lf0/g;->s0()Z

    move-result v0

    return v0
.end method

.method public r(Landroidx/room/f;)V
    .locals 11

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/i0;->h(Landroidx/room/f;)Lf0/h;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/i0;->d:Lf0/h;

    .line 2
    invoke-virtual {p0}, Landroidx/room/i0;->o()Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 5
    iget-object v6, p1, Landroidx/room/f;->r:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v6, v5

    if-ltz v6, :cond_2

    :goto_1
    add-int/lit8 v7, v6, -0x1

    .line 6
    iget-object v8, p1, Landroidx/room/f;->r:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8
    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    move v5, v6

    goto :goto_2

    :cond_0
    if-gez v7, :cond_1

    goto :goto_2

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_2
    if-ltz v5, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    if-eqz v3, :cond_4

    .line 9
    iget-object v3, p0, Landroidx/room/i0;->i:Ljava/util/Map;

    iget-object v4, p1, Landroidx/room/f;->r:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A required auto migration spec ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") is missing in the database configuration."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_5
    iget-object v0, p1, Landroidx/room/f;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v5

    if-ltz v0, :cond_8

    :goto_4
    add-int/lit8 v2, v0, -0x1

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-gez v2, :cond_6

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_8
    :goto_5
    iget-object v0, p0, Landroidx/room/i0;->i:Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroidx/room/i0;->j(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld0/b;

    .line 16
    iget-object v2, p1, Landroidx/room/f;->d:Landroidx/room/i0$e;

    .line 17
    iget v6, v1, Ld0/b;->a:I

    .line 18
    iget v7, v1, Ld0/b;->b:I

    .line 19
    invoke-virtual {v2, v6, v7}, Landroidx/room/i0$e;->c(II)Z

    move-result v2

    if-nez v2, :cond_9

    .line 20
    iget-object v2, p1, Landroidx/room/f;->d:Landroidx/room/i0$e;

    new-array v6, v3, [Ld0/b;

    aput-object v1, v6, v4

    invoke-virtual {v2, v6}, Landroidx/room/i0$e;->b([Ld0/b;)V

    goto :goto_6

    .line 21
    :cond_a
    const-class v0, Landroidx/room/m0;

    .line 22
    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v1

    .line 23
    invoke-virtual {p0, v0, v1}, Landroidx/room/i0;->C(Ljava/lang/Class;Lf0/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/m0;

    if-eqz v0, :cond_b

    .line 24
    invoke-virtual {v0, p1}, Landroidx/room/m0;->h(Landroidx/room/f;)V

    .line 25
    :cond_b
    const-class v0, Landroidx/room/d;

    .line 26
    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v1

    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/room/i0;->C(Ljava/lang/Class;Lf0/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/d;

    if-eqz v0, :cond_c

    .line 28
    iget-object v1, v0, Landroidx/room/d;->b:Landroidx/room/c;

    iput-object v1, p0, Landroidx/room/i0;->k:Landroidx/room/c;

    .line 29
    invoke-virtual {p0}, Landroidx/room/i0;->l()Landroidx/room/m;

    move-result-object v1

    iget-object v0, v0, Landroidx/room/d;->b:Landroidx/room/c;

    invoke-virtual {v1, v0}, Landroidx/room/m;->o(Landroidx/room/c;)V

    .line 30
    :cond_c
    iget-object v0, p1, Landroidx/room/f;->g:Landroidx/room/i0$d;

    sget-object v1, Landroidx/room/i0$d;->c:Landroidx/room/i0$d;

    if-ne v0, v1, :cond_d

    move v0, v3

    goto :goto_7

    :cond_d
    move v0, v4

    .line 31
    :goto_7
    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v1

    invoke-interface {v1, v0}, Lf0/h;->setWriteAheadLoggingEnabled(Z)V

    .line 32
    iget-object v1, p1, Landroidx/room/f;->e:Ljava/util/List;

    iput-object v1, p0, Landroidx/room/i0;->h:Ljava/util/List;

    .line 33
    iget-object v1, p1, Landroidx/room/f;->h:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroidx/room/i0;->b:Ljava/util/concurrent/Executor;

    .line 34
    new-instance v1, Landroidx/room/q0;

    iget-object v2, p1, Landroidx/room/f;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, Landroidx/room/q0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroidx/room/i0;->c:Ljava/util/concurrent/Executor;

    .line 35
    iget-boolean v1, p1, Landroidx/room/f;->f:Z

    iput-boolean v1, p0, Landroidx/room/i0;->f:Z

    .line 36
    iput-boolean v0, p0, Landroidx/room/i0;->g:Z

    .line 37
    iget-object v0, p1, Landroidx/room/f;->j:Landroid/content/Intent;

    if-eqz v0, :cond_f

    .line 38
    iget-object v0, p1, Landroidx/room/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 39
    invoke-virtual {p0}, Landroidx/room/i0;->l()Landroidx/room/m;

    move-result-object v0

    .line 40
    iget-object v1, p1, Landroidx/room/f;->a:Landroid/content/Context;

    .line 41
    iget-object v2, p1, Landroidx/room/f;->b:Ljava/lang/String;

    .line 42
    iget-object v6, p1, Landroidx/room/f;->j:Landroid/content/Intent;

    .line 43
    invoke-virtual {v0, v1, v2, v6}, Landroidx/room/m;->p(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_8

    .line 44
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_f
    :goto_8
    invoke-virtual {p0}, Landroidx/room/i0;->p()Ljava/util/Map;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 49
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    .line 50
    iget-object v8, p1, Landroidx/room/f;->q:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v5

    if-ltz v8, :cond_13

    :goto_a
    add-int/lit8 v9, v8, -0x1

    .line 51
    iget-object v10, p1, Landroidx/room/f;->q:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 52
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 53
    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_c

    :cond_11
    if-gez v9, :cond_12

    goto :goto_b

    :cond_12
    move v8, v9

    goto :goto_a

    :cond_13
    :goto_b
    move v8, v5

    :goto_c
    if-ltz v8, :cond_14

    move v9, v3

    goto :goto_d

    :cond_14
    move v9, v4

    :goto_d
    if-eqz v9, :cond_15

    .line 54
    iget-object v9, p0, Landroidx/room/i0;->n:Ljava/util/Map;

    iget-object v10, p1, Landroidx/room/f;->q:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 55
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A required type converter ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is missing in the database configuration."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_16
    iget-object v0, p1, Landroidx/room/f;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v5

    if-ltz v0, :cond_19

    :goto_e
    add-int/lit8 v2, v0, -0x1

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_18

    if-gez v2, :cond_17

    goto :goto_f

    :cond_17
    move v0, v2

    goto :goto_e

    .line 61
    :cond_18
    iget-object p1, p1, Landroidx/room/f;->q:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type converter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_f
    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/room/i0;->c()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v0

    invoke-interface {v0}, Lf0/h;->l0()Lf0/g;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/room/i0;->l()Landroidx/room/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/room/m;->t(Lf0/g;)V

    .line 4
    invoke-interface {v0}, Lf0/g;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Lf0/g;->T()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lf0/g;->m()V

    :goto_0
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v0

    invoke-interface {v0}, Lf0/h;->l0()Lf0/g;

    move-result-object v0

    invoke-interface {v0}, Lf0/g;->k()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/i0;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/room/i0;->l()Landroidx/room/m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/m;->l()V

    :cond_0
    return-void
.end method

.method public u(Lf0/g;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/i0;->l()Landroidx/room/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/m;->i(Lf0/g;)V

    return-void
.end method

.method public final v()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Landroidx/room/i0;->k:Landroidx/room/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/room/c;->l()Z

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/room/i0;->a:Lf0/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lf0/g;->v()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public x(Lf0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/room/i0;->c()V

    .line 2
    invoke-virtual {p0}, Landroidx/room/i0;->d()V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object v0

    invoke-interface {v0}, Lf0/h;->l0()Lf0/g;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lf0/g;->F(Lf0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/room/i0;->m()Lf0/h;

    move-result-object p2

    invoke-interface {p2}, Lf0/h;->l0()Lf0/g;

    move-result-object p2

    invoke-interface {p2, p1}, Lf0/g;->t(Lf0/j;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public z(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/room/i0;->e()V

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/room/i0;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/room/i0;->i()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/i0;->i()V

    throw p1
.end method
