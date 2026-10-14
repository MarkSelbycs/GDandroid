.class Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroidx/lifecycle/LiveData$b;
.source "LiveData.java"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>.b;",
        "Landroidx/lifecycle/e;"
    }
.end annotation


# instance fields
.field public final e:Landroidx/lifecycle/g;

.field public final synthetic f:Landroidx/lifecycle/LiveData;


# virtual methods
.method public d(Landroidx/lifecycle/g;Landroidx/lifecycle/d$b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/g;

    invoke-interface {p1}, Landroidx/lifecycle/g;->getLifecycle()Landroidx/lifecycle/d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/d;->a()Landroidx/lifecycle/d$c;

    move-result-object p1

    .line 2
    sget-object p2, Landroidx/lifecycle/d$c;->a:Landroidx/lifecycle/d$c;

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f:Landroidx/lifecycle/LiveData;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$b;->a:Landroidx/lifecycle/l;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/l;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->j()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData$b;->h(Z)V

    .line 5
    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/g;

    invoke-interface {p2}, Landroidx/lifecycle/g;->getLifecycle()Landroidx/lifecycle/d;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/d;->a()Landroidx/lifecycle/d$c;

    move-result-object p2

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/g;

    invoke-interface {v0}, Landroidx/lifecycle/g;->getLifecycle()Landroidx/lifecycle/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/d;->b(Landroidx/lifecycle/f;)V

    return-void
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->e:Landroidx/lifecycle/g;

    invoke-interface {v0}, Landroidx/lifecycle/g;->getLifecycle()Landroidx/lifecycle/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/d;->a()Landroidx/lifecycle/d$c;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/d$c;->d:Landroidx/lifecycle/d$c;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/d$c;->b(Landroidx/lifecycle/d$c;)Z

    move-result v0

    return v0
.end method
