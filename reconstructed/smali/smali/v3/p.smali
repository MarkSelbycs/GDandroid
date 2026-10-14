.class public final Lv3/p;
.super Lv3/e;
.source "Produce.kt"

# interfaces
.implements Lv3/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lv3/e<",
        "TE;>;",
        "Lv3/q<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld3/g;Lv3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g;",
            "Lv3/d<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lv3/e;-><init>(Ld3/g;Lv3/d;ZZ)V

    return-void
.end method


# virtual methods
.method public K0(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv3/e;->O0()Lv3/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lv3/t;->g(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lt3/a;->b()Ld3/g;

    move-result-object p2

    invoke-static {p2, p1}, Lt3/d0;->a(Ld3/g;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic L0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, La3/o;

    invoke-virtual {p0, p1}, Lv3/p;->P0(La3/o;)V

    return-void
.end method

.method public P0(La3/o;)V
    .locals 2

    invoke-virtual {p0}, Lv3/e;->O0()Lv3/d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lv3/t$a;->a(Lv3/t;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public f()Z
    .locals 1

    invoke-super {p0}, Lt3/a;->f()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic m()Lv3/t;
    .locals 1

    invoke-virtual {p0}, Lv3/e;->N0()Lv3/d;

    move-result-object v0

    return-object v0
.end method
