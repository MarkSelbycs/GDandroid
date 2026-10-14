.class public final Lv0/e$b$b;
.super Lf3/k;
.source "Zip.kt"

# interfaces
.implements Ll3/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/e$b;->a(Lw3/e;Ld3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf3/k;",
        "Ll3/q<",
        "Lw3/e<",
        "-",
        "Lv0/b;",
        ">;[",
        "Lv0/b;",
        "Ld3/d<",
        "-",
        "La3/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lf3/f;
    c = "androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3"
    f = "WorkConstraintsTracker.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld3/d;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lv0/e$b$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 1
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    invoke-static {p1}, La3/j;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lv0/e$b$b;->f:Ljava/lang/Object;

    check-cast p1, Lw3/e;

    iget-object v1, p0, Lv0/e$b$b;->g:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 3
    check-cast v1, [Lv0/b;

    const/4 v3, 0x0

    .line 4
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v1, v3

    .line 5
    sget-object v6, Lv0/b$a;->a:Lv0/b$a;

    invoke-static {v5, v6}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_4

    sget-object v5, Lv0/b$a;->a:Lv0/b$a;

    .line 6
    :cond_4
    iput v2, p0, Lv0/e$b$b;->e:I

    invoke-interface {p1, v5, p0}, Lw3/e;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p1, La3/o;->a:La3/o;

    return-object p1
.end method

.method public final V(Lw3/e;[Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/e<",
            "-",
            "Lv0/b;",
            ">;[",
            "Lv0/b;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lv0/e$b$b;

    invoke-direct {v0, p3}, Lv0/e$b$b;-><init>(Ld3/d;)V

    iput-object p1, v0, Lv0/e$b$b;->f:Ljava/lang/Object;

    iput-object p2, v0, Lv0/e$b$b;->g:Ljava/lang/Object;

    sget-object p1, La3/o;->a:La3/o;

    invoke-virtual {v0, p1}, Lv0/e$b$b;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lw3/e;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Ld3/d;

    invoke-virtual {p0, p1, p2, p3}, Lv0/e$b$b;->V(Lw3/e;[Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
