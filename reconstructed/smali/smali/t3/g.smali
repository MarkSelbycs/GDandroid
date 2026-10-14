.class public final synthetic Lt3/g;
.super Ljava/lang/Object;
.source "Builders.common.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lt3/e0;Ld3/g;Lt3/g0;Ll3/p;)Lt3/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e0;",
            "Ld3/g;",
            "Lt3/g0;",
            "Ll3/p<",
            "-",
            "Lt3/e0;",
            "-",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lt3/h1;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lt3/a0;->d(Lt3/e0;Ld3/g;)Ld3/g;

    move-result-object p0

    .line 2
    invoke-virtual {p2}, Lt3/g0;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lt3/q1;

    invoke-direct {p1, p0, p3}, Lt3/q1;-><init>(Ld3/g;Ll3/p;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lt3/w1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lt3/w1;-><init>(Ld3/g;Z)V

    .line 5
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lt3/a;->M0(Lt3/g0;Ljava/lang/Object;Ll3/p;)V

    return-object p1
.end method

.method public static synthetic b(Lt3/e0;Ld3/g;Lt3/g0;Ll3/p;ILjava/lang/Object;)Lt3/h1;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Ld3/h;->a:Ld3/h;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    sget-object p2, Lt3/g0;->a:Lt3/g0;

    .line 3
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lt3/f;->a(Lt3/e0;Ld3/g;Lt3/g0;Ll3/p;)Lt3/h1;

    move-result-object p0

    return-object p0
.end method
