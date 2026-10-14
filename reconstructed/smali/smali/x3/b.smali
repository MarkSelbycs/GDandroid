.class public final Lx3/b;
.super Ljava/lang/Object;
.source "Combine.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lw3/e;[Lw3/d;Ll3/a;Ll3/q;Ld3/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw3/e<",
            "-TR;>;[",
            "Lw3/d<",
            "+TT;>;",
            "Ll3/a<",
            "[TT;>;",
            "Ll3/q<",
            "-",
            "Lw3/e<",
            "-TR;>;-[TT;-",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v6, Lx3/b$a;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lx3/b$a;-><init>([Lw3/d;Ll3/a;Ll3/q;Lw3/e;Ld3/d;)V

    invoke-static {v6, p4}, Lx3/d;->a(Ll3/p;Ld3/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, La3/o;->a:La3/o;

    return-object p0
.end method
