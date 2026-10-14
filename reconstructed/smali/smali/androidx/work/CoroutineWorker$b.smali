.class public final Landroidx/work/CoroutineWorker$b;
.super Lf3/k;
.source "CoroutineWorker.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/CoroutineWorker;->startWork()Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf3/k;",
        "Ll3/p<",
        "Lt3/e0;",
        "Ld3/d<",
        "-",
        "La3/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lf3/f;
    c = "androidx.work.CoroutineWorker$startWork$1"
    f = "CoroutineWorker.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Landroidx/work/CoroutineWorker;


# direct methods
.method public constructor <init>(Landroidx/work/CoroutineWorker;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/CoroutineWorker;",
            "Ld3/d<",
            "-",
            "Landroidx/work/CoroutineWorker$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/CoroutineWorker$b;->f:Landroidx/work/CoroutineWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Landroidx/work/CoroutineWorker$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_1
    iget-object p1, p0, Landroidx/work/CoroutineWorker$b;->f:Landroidx/work/CoroutineWorker;

    iput v2, p0, Landroidx/work/CoroutineWorker$b;->e:I

    invoke-virtual {p1, p0}, Landroidx/work/CoroutineWorker;->d(Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 3
    :cond_2
    :goto_0
    check-cast p1, Landroidx/work/c$a;

    .line 4
    iget-object v0, p0, Landroidx/work/CoroutineWorker$b;->f:Landroidx/work/CoroutineWorker;

    invoke-virtual {v0}, Landroidx/work/CoroutineWorker;->h()Lb1/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb1/c;->p(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5
    :goto_1
    iget-object v0, p0, Landroidx/work/CoroutineWorker$b;->f:Landroidx/work/CoroutineWorker;

    invoke-virtual {v0}, Landroidx/work/CoroutineWorker;->h()Lb1/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    .line 6
    :goto_2
    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public final V(Lt3/e0;Ld3/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e0;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/work/CoroutineWorker$b;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    check-cast p1, Landroidx/work/CoroutineWorker$b;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Landroidx/work/CoroutineWorker$b;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ld3/d<",
            "*>;)",
            "Ld3/d<",
            "La3/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/work/CoroutineWorker$b;

    iget-object v0, p0, Landroidx/work/CoroutineWorker$b;->f:Landroidx/work/CoroutineWorker;

    invoke-direct {p1, v0, p2}, Landroidx/work/CoroutineWorker$b;-><init>(Landroidx/work/CoroutineWorker;Ld3/d;)V

    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt3/e0;

    check-cast p2, Ld3/d;

    invoke-virtual {p0, p1, p2}, Landroidx/work/CoroutineWorker$b;->V(Lt3/e0;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
