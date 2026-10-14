.class public final Lv0/f$a;
.super Lf3/k;
.source "WorkConstraintsTracker.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/f;->b(Lv0/e;Lz0/u;Lt3/b0;Lv0/d;)Lt3/h1;
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
    c = "androidx.work.impl.constraints.WorkConstraintsTrackerKt$listen$1"
    f = "WorkConstraintsTracker.kt"
    l = {
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lv0/e;

.field public final synthetic g:Lz0/u;

.field public final synthetic h:Lv0/d;


# direct methods
.method public constructor <init>(Lv0/e;Lz0/u;Lv0/d;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv0/e;",
            "Lz0/u;",
            "Lv0/d;",
            "Ld3/d<",
            "-",
            "Lv0/f$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lv0/f$a;->f:Lv0/e;

    iput-object p2, p0, Lv0/f$a;->g:Lz0/u;

    iput-object p3, p0, Lv0/f$a;->h:Lv0/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lv0/f$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Lv0/f$a;->f:Lv0/e;

    iget-object v1, p0, Lv0/f$a;->g:Lz0/u;

    invoke-virtual {p1, v1}, Lv0/e;->b(Lz0/u;)Lw3/d;

    move-result-object p1

    new-instance v1, Lv0/f$a$a;

    iget-object v3, p0, Lv0/f$a;->h:Lv0/d;

    iget-object v4, p0, Lv0/f$a;->g:Lz0/u;

    invoke-direct {v1, v3, v4}, Lv0/f$a$a;-><init>(Lv0/d;Lz0/u;)V

    iput v2, p0, Lv0/f$a;->e:I

    invoke-interface {p1, v1, p0}, Lw3/d;->a(Lw3/e;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 3
    :cond_2
    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lv0/f$a;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    check-cast p1, Lv0/f$a;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Lv0/f$a;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 3
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

    new-instance p1, Lv0/f$a;

    iget-object v0, p0, Lv0/f$a;->f:Lv0/e;

    iget-object v1, p0, Lv0/f$a;->g:Lz0/u;

    iget-object v2, p0, Lv0/f$a;->h:Lv0/d;

    invoke-direct {p1, v0, v1, v2, p2}, Lv0/f$a;-><init>(Lv0/e;Lz0/u;Lv0/d;Ld3/d;)V

    return-object p1
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt3/e0;

    check-cast p2, Ld3/d;

    invoke-virtual {p0, p1, p2}, Lv0/f$a;->V(Lt3/e0;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
