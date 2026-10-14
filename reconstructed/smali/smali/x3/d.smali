.class public final Lx3/d;
.super Ljava/lang/Object;
.source "FlowCoroutine.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ll3/p;Ld3/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ll3/p<",
            "-",
            "Lt3/e0;",
            "-",
            "Ld3/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ld3/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lx3/c;

    invoke-interface {p1}, Ld3/d;->b()Ld3/g;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lx3/c;-><init>(Ld3/g;Ld3/d;)V

    .line 2
    invoke-static {v0, v0, p0}, Lz3/b;->b(Ly3/d0;Ljava/lang/Object;Ll3/p;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lf3/h;->c(Ld3/d;)V

    :cond_0
    return-object p0
.end method
