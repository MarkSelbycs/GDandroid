.class public abstract Lf3/d;
.super Lf3/a;
.source "ContinuationImpl.kt"


# instance fields
.field public final b:Ld3/g;

.field public transient c:Ld3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ld3/d;->b()Ld3/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lf3/d;-><init>(Ld3/d;Ld3/g;)V

    return-void
.end method

.method public constructor <init>(Ld3/d;Ld3/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ld3/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lf3/a;-><init>(Ld3/d;)V

    .line 2
    iput-object p2, p0, Lf3/d;->b:Ld3/g;

    return-void
.end method


# virtual methods
.method public M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf3/d;->c:Ld3/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf3/d;->b()Ld3/g;

    move-result-object v1

    sget-object v2, Ld3/e;->k:Ld3/e$b;

    invoke-interface {v1, v2}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v1

    invoke-static {v1}, Lm3/k;->b(Ljava/lang/Object;)V

    check-cast v1, Ld3/e;

    invoke-interface {v1, v0}, Ld3/e;->i0(Ld3/d;)V

    .line 3
    :cond_0
    sget-object v0, Lf3/c;->a:Lf3/c;

    iput-object v0, p0, Lf3/d;->c:Ld3/d;

    return-void
.end method

.method public final P()Ld3/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf3/d;->c:Ld3/d;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lf3/d;->b()Ld3/g;

    move-result-object v0

    sget-object v1, Ld3/e;->k:Ld3/e$b;

    invoke-interface {v0, v1}, Ld3/g;->c(Ld3/g$c;)Ld3/g$b;

    move-result-object v0

    check-cast v0, Ld3/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ld3/e;->M(Ld3/d;)Ld3/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 3
    :cond_1
    iput-object v0, p0, Lf3/d;->c:Ld3/d;

    :cond_2
    return-object v0
.end method

.method public b()Ld3/g;
    .locals 1

    iget-object v0, p0, Lf3/d;->b:Ld3/g;

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    return-object v0
.end method
