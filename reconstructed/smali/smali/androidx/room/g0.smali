.class public final Landroidx/room/g0;
.super Ljava/lang/Object;
.source "QueryInterceptorStatement.kt"

# interfaces
.implements Lf0/k;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lf0/k;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Landroidx/room/i0$g;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf0/k;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/room/i0$g;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sqlStatement"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallbackExecutor"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queryCallback"

    invoke-static {p4, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/g0;->a:Lf0/k;

    .line 3
    iput-object p2, p0, Landroidx/room/g0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroidx/room/g0;->c:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Landroidx/room/g0;->d:Landroidx/room/i0$g;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/room/g0;->e:Ljava/util/List;

    return-void
.end method

.method public static synthetic c(Landroidx/room/g0;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/g0;->h(Landroidx/room/g0;)V

    return-void
.end method

.method public static synthetic e(Landroidx/room/g0;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/g0;->f(Landroidx/room/g0;)V

    return-void
.end method

.method public static final f(Landroidx/room/g0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/g0;->d:Landroidx/room/i0$g;

    iget-object v1, p0, Landroidx/room/g0;->b:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/g0;->e:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static final h(Landroidx/room/g0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/g0;->d:Landroidx/room/i0$g;

    iget-object v1, p0, Landroidx/room/g0;->b:Ljava/lang/String;

    iget-object p0, p0, Landroidx/room/g0;->e:Ljava/util/List;

    invoke-interface {v0, v1, p0}, Landroidx/room/i0$g;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public E(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/g0;->i(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/g0;->a:Lf0/k;

    invoke-interface {v0, p1, p2}, Lf0/i;->E(ILjava/lang/String;)V

    return-void
.end method

.method public G(IJ)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/room/g0;->i(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/g0;->a:Lf0/k;

    invoke-interface {v0, p1, p2, p3}, Lf0/i;->G(IJ)V

    return-void
.end method

.method public Q()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/g0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/e0;

    invoke-direct {v1, p0}, Landroidx/room/e0;-><init>(Landroidx/room/g0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/g0;->a:Lf0/k;

    invoke-interface {v0}, Lf0/k;->Q()I

    move-result v0

    return v0
.end method

.method public a0(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/g0;->i(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/g0;->a:Lf0/k;

    invoke-interface {v0, p1, p2}, Lf0/i;->a0(I[B)V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/room/g0;->a:Lf0/k;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public d0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/g0;->e:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Lm3/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/room/g0;->i(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Landroidx/room/g0;->a:Lf0/k;

    invoke-interface {v0, p1}, Lf0/i;->d0(I)V

    return-void
.end method

.method public g0(ID)V
    .locals 1

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/room/g0;->i(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/room/g0;->a:Lf0/k;

    invoke-interface {v0, p1, p2, p3}, Lf0/i;->g0(ID)V

    return-void
.end method

.method public final i(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, -0x1

    .line 1
    iget-object v0, p0, Landroidx/room/g0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/room/g0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/room/g0;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/room/g0;->e:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public n0()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/g0;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/room/f0;

    invoke-direct {v1, p0}, Landroidx/room/f0;-><init>(Landroidx/room/g0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/room/g0;->a:Lf0/k;

    invoke-interface {v0}, Lf0/k;->n0()J

    move-result-wide v0

    return-wide v0
.end method
