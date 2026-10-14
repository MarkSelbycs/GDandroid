.class public final Landroidx/work/CoroutineWorker$a;
.super Lf3/k;
.source "CoroutineWorker.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/CoroutineWorker;->getForegroundInfoAsync()Lr2/a;
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
    c = "androidx.work.CoroutineWorker$getForegroundInfoAsync$1"
    f = "CoroutineWorker.kt"
    l = {
        0x86
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lq0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/m<",
            "Lq0/h;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic h:Landroidx/work/CoroutineWorker;


# direct methods
.method public constructor <init>(Lq0/m;Landroidx/work/CoroutineWorker;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/m<",
            "Lq0/h;",
            ">;",
            "Landroidx/work/CoroutineWorker;",
            "Ld3/d<",
            "-",
            "Landroidx/work/CoroutineWorker$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/CoroutineWorker$a;->g:Lq0/m;

    iput-object p2, p0, Landroidx/work/CoroutineWorker$a;->h:Landroidx/work/CoroutineWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Landroidx/work/CoroutineWorker$a;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/work/CoroutineWorker$a;->e:Ljava/lang/Object;

    check-cast v0, Lq0/m;

    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Landroidx/work/CoroutineWorker$a;->g:Lq0/m;

    iget-object v1, p0, Landroidx/work/CoroutineWorker$a;->h:Landroidx/work/CoroutineWorker;

    iput-object p1, p0, Landroidx/work/CoroutineWorker$a;->e:Ljava/lang/Object;

    iput v2, p0, Landroidx/work/CoroutineWorker$a;->f:I

    invoke-virtual {v1, p0}, Landroidx/work/CoroutineWorker;->f(Ld3/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lq0/m;->c(Ljava/lang/Object;)V

    .line 3
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

    invoke-virtual {p0, p1, p2}, Landroidx/work/CoroutineWorker$a;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    check-cast p1, Landroidx/work/CoroutineWorker$a;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Landroidx/work/CoroutineWorker$a;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 2
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

    new-instance p1, Landroidx/work/CoroutineWorker$a;

    iget-object v0, p0, Landroidx/work/CoroutineWorker$a;->g:Lq0/m;

    iget-object v1, p0, Landroidx/work/CoroutineWorker$a;->h:Landroidx/work/CoroutineWorker;

    invoke-direct {p1, v0, v1, p2}, Landroidx/work/CoroutineWorker$a;-><init>(Lq0/m;Landroidx/work/CoroutineWorker;Ld3/d;)V

    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt3/e0;

    check-cast p2, Ld3/d;

    invoke-virtual {p0, p1, p2}, Landroidx/work/CoroutineWorker$a;->V(Lt3/e0;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
