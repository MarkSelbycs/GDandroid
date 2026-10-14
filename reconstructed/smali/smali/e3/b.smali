.class public Le3/b;
.super Ljava/lang/Object;
.source "IntrinsicsJvm.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ll3/p;Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/p<",
            "-TR;-",
            "Ld3/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Ld3/d<",
            "-TT;>;)",
            "Ld3/d<",
            "La3/o;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lf3/h;->a(Ld3/d;)Ld3/d;

    move-result-object p2

    .line 2
    instance-of v0, p0, Lf3/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lf3/a;

    invoke-virtual {p0, p1, p2}, Lf3/a;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Ld3/d;->b()Ld3/g;

    move-result-object v0

    .line 5
    sget-object v1, Ld3/h;->a:Ld3/h;

    if-ne v0, v1, :cond_1

    .line 6
    new-instance v0, Le3/b$a;

    invoke-direct {v0, p2, p0, p1}, Le3/b$a;-><init>(Ld3/d;Ll3/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Le3/b$b;

    invoke-direct {v1, p2, v0, p0, p1}, Le3/b$b;-><init>(Ld3/d;Ld3/g;Ll3/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final b(Ld3/d;)Ld3/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ld3/d<",
            "-TT;>;)",
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lf3/d;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lf3/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lf3/d;->P()Ld3/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
