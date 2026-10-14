.class public final Landroidx/room/a0;
.super Ljava/lang/Object;
.source "QueryInterceptorDatabase.kt"

# interfaces
.implements Lf0/g;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lf0/g;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/room/i0$g;


# direct methods
.method public constructor <init>(Lf0/g;Ljava/util/concurrent/Executor;Landroidx/room/i0$g;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallbackExecutor"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallback"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/a0;->a:Lf0/g;

    .line 3
    iput-object p2, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    return-void
.end method

.method public static final C(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$queryInterceptorProgram"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    .line 2
    invoke-interface {p1}, Lf0/j;->e()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Landroidx/room/d0;->c()Ljava/util/List;

    move-result-object p2

    .line 4
    invoke-interface {p0, p1, p2}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final H(Landroidx/room/a0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    invoke-static {}, Lb3/o;->e()Ljava/util/List;

    move-result-object v0

    const-string v1, "TRANSACTION SUCCESSFUL"

    invoke-interface {p0, v1, v0}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/a0;->z(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V

    return-void
.end method

.method public static synthetic e(Landroidx/room/a0;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/a0;->q(Landroidx/room/a0;)V

    return-void
.end method

.method public static synthetic f(Landroidx/room/a0;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/a0;->x(Landroidx/room/a0;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic h(Landroidx/room/a0;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/a0;->s(Landroidx/room/a0;)V

    return-void
.end method

.method public static synthetic i(Landroidx/room/a0;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/a0;->H(Landroidx/room/a0;)V

    return-void
.end method

.method public static synthetic j(Landroidx/room/a0;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/a0;->u(Landroidx/room/a0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/a0;->C(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V

    return-void
.end method

.method public static synthetic n(Landroidx/room/a0;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/a0;->y(Landroidx/room/a0;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Landroidx/room/a0;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/a0;->r(Landroidx/room/a0;)V

    return-void
.end method

.method public static final q(Landroidx/room/a0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    invoke-static {}, Lb3/o;->e()Ljava/util/List;

    move-result-object v0

    const-string v1, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-interface {p0, v1, v0}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final r(Landroidx/room/a0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    invoke-static {}, Lb3/o;->e()Ljava/util/List;

    move-result-object v0

    const-string v1, "BEGIN DEFERRED TRANSACTION"

    invoke-interface {p0, v1, v0}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final s(Landroidx/room/a0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    invoke-static {}, Lb3/o;->e()Ljava/util/List;

    move-result-object v0

    const-string v1, "END TRANSACTION"

    invoke-interface {p0, v1, v0}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final u(Landroidx/room/a0;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    invoke-static {}, Lb3/o;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final x(Landroidx/room/a0;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inputArguments"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    invoke-interface {p0, p1, p2}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final y(Landroidx/room/a0;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    invoke-static {}, Lb3/o;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final z(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$queryInterceptorProgram"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    invoke-interface {p1}, Lf0/j;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/room/d0;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->B()Z

    move-result v0

    return v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/x;

    invoke-direct {v1, p0, p1}, Landroidx/room/x;-><init>(Landroidx/room/a0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0, p1}, Lf0/g;->D(Ljava/lang/String;)V

    return-void
.end method

.method public F(Lf0/j;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    const-string p2, "query"

    invoke-static {p1, p2}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Landroidx/room/d0;

    invoke-direct {p2}, Landroidx/room/d0;-><init>()V

    .line 2
    invoke-interface {p1, p2}, Lf0/j;->c(Lf0/i;)V

    .line 3
    iget-object v0, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/w;

    invoke-direct {v1, p0, p1, p2}, Landroidx/room/w;-><init>(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p2, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {p2, p1}, Lf0/g;->t(Lf0/j;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public J()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/t;

    invoke-direct {v1, p0}, Landroidx/room/t;-><init>(Landroidx/room/a0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->J()V

    return-void
.end method

.method public O(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindArgs"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p2}, Lb3/n;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p2, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/z;

    invoke-direct {v1, p0, p1, v0}, Landroidx/room/z;-><init>(Landroidx/room/a0;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p2, p0, Landroidx/room/a0;->a:Lf0/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p2, p1, v1}, Lf0/g;->O(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public S(Ljava/lang/String;)Lf0/k;
    .locals 4

    const-string v0, "sql"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/room/g0;

    .line 2
    iget-object v1, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v1, p1}, Lf0/g;->S(Ljava/lang/String;)Lf0/k;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iget-object v3, p0, Landroidx/room/a0;->c:Landroidx/room/i0$g;

    .line 5
    invoke-direct {v0, v1, p1, v2, v3}, Landroidx/room/g0;-><init>(Lf0/k;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/room/i0$g;)V

    return-object v0
.end method

.method public T()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/u;

    invoke-direct {v1, p0}, Landroidx/room/u;-><init>(Landroidx/room/a0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->T()V

    return-void
.end method

.method public U(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7

    const-string v0, "table"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/room/a0;->a:Lf0/g;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lf0/g;->U(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/s;

    invoke-direct {v1, p0}, Landroidx/room/s;-><init>(Landroidx/room/a0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->k()V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/q;

    invoke-direct {v1, p0}, Landroidx/room/q;-><init>(Landroidx/room/a0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->m()V

    return-void
.end method

.method public o0(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/y;

    invoke-direct {v1, p0, p1}, Landroidx/room/y;-><init>(Landroidx/room/a0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0, p1}, Lf0/g;->o0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public q0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->q0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s0()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->s0()Z

    move-result v0

    return v0
.end method

.method public t(Lf0/j;)Landroid/database/Cursor;
    .locals 3

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/room/d0;

    invoke-direct {v0}, Landroidx/room/d0;-><init>()V

    .line 2
    invoke-interface {p1, v0}, Lf0/j;->c(Lf0/i;)V

    .line 3
    iget-object v1, p0, Landroidx/room/a0;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/room/v;

    invoke-direct {v2, p0, p1, v0}, Landroidx/room/v;-><init>(Landroidx/room/a0;Lf0/j;Landroidx/room/d0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0, p1}, Lf0/g;->t(Lf0/j;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->v()Z

    move-result v0

    return v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/a0;->a:Lf0/g;

    invoke-interface {v0}, Lf0/g;->w()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
