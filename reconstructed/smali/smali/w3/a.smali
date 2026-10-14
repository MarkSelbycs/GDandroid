.class public final Lw3/a;
.super Lw3/b;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lw3/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ll3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/p<",
            "Lv3/q<",
            "-TT;>;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3/p;Ld3/g;ILv3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/p<",
            "-",
            "Lv3/q<",
            "-TT;>;-",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ld3/g;",
            "I",
            "Lv3/a;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lw3/b;-><init>(Ll3/p;Ld3/g;ILv3/a;)V

    .line 5
    iput-object p1, p0, Lw3/a;->e:Ll3/p;

    return-void
.end method

.method public synthetic constructor <init>(Ll3/p;Ld3/g;ILv3/a;ILm3/g;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Ld3/h;->a:Ld3/h;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lv3/a;->a:Lv3/a;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lw3/a;-><init>(Ll3/p;Ld3/g;ILv3/a;)V

    return-void
.end method


# virtual methods
.method public d(Lv3/q;Ld3/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/q<",
            "-TT;>;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lw3/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lw3/a$a;

    iget v1, v0, Lw3/a$a;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw3/a$a;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw3/a$a;

    invoke-direct {v0, p0, p2}, Lw3/a$a;-><init>(Lw3/a;Ld3/d;)V

    :goto_0
    iget-object p2, v0, Lw3/a$a;->e:Ljava/lang/Object;

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lw3/a$a;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lw3/a$a;->d:Ljava/lang/Object;

    check-cast p1, Lv3/q;

    invoke-static {p2}, La3/j;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, La3/j;->b(Ljava/lang/Object;)V

    .line 2
    iput-object p1, v0, Lw3/a$a;->d:Ljava/lang/Object;

    iput v3, v0, Lw3/a$a;->g:I

    invoke-super {p0, p1, v0}, Lw3/b;->d(Lv3/q;Ld3/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 3
    :cond_3
    :goto_1
    invoke-interface {p1}, Lv3/t;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 4
    sget-object p1, La3/o;->a:La3/o;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
