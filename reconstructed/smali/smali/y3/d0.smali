.class public Ly3/d0;
.super Lt3/a;
.source "Scopes.kt"

# interfaces
.implements Lf3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lt3/a<",
        "TT;>;",
        "Lf3/e;"
    }
.end annotation


# instance fields
.field public final d:Ld3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld3/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld3/g;Ld3/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/g;",
            "Ld3/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lt3/a;-><init>(Ld3/g;ZZ)V

    .line 2
    iput-object p2, p0, Ly3/d0;->d:Ld3/d;

    return-void
.end method


# virtual methods
.method public final D()Lf3/e;
    .locals 2

    iget-object v0, p0, Ly3/d0;->d:Ld3/d;

    instance-of v1, v0, Lf3/e;

    if-eqz v1, :cond_0

    check-cast v0, Lf3/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public J0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ly3/d0;->d:Ld3/d;

    invoke-static {p1, v0}, Lt3/y;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ld3/d;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public final g0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ly3/d0;->d:Ld3/d;

    invoke-static {v0}, Le3/b;->b(Ld3/d;)Ld3/d;

    move-result-object v0

    iget-object v1, p0, Ly3/d0;->d:Ld3/d;

    invoke-static {p1, v1}, Lt3/y;->a(Ljava/lang/Object;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Ly3/k;->c(Ld3/d;Ljava/lang/Object;Ll3/l;ILjava/lang/Object;)V

    return-void
.end method
