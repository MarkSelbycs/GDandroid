.class public Landroidx/lifecycle/h;
.super Landroidx/lifecycle/d;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h$a;
    }
.end annotation


# instance fields
.field public b:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroidx/lifecycle/f;",
            "Landroidx/lifecycle/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/lifecycle/d$c;

.field public final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/g;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/lifecycle/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/g;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/h;-><init>(Landroidx/lifecycle/g;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/g;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

    .line 3
    new-instance v0, Lh/a;

    invoke-direct {v0}, Lh/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/h;->b:Lh/a;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/lifecycle/h;->e:I

    .line 5
    iput-boolean v0, p0, Landroidx/lifecycle/h;->f:Z

    .line 6
    iput-boolean v0, p0, Landroidx/lifecycle/h;->g:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/h;->h:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/h;->d:Ljava/lang/ref/WeakReference;

    .line 9
    sget-object p1, Landroidx/lifecycle/d$c;->b:Landroidx/lifecycle/d$c;

    iput-object p1, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    .line 10
    iput-boolean p2, p0, Landroidx/lifecycle/h;->i:Z

    return-void
.end method

.method public static i(Landroidx/lifecycle/d$c;Landroidx/lifecycle/d$c;)Landroidx/lifecycle/d$c;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()Landroidx/lifecycle/d$c;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    return-object v0
.end method

.method public b(Landroidx/lifecycle/f;)V
    .locals 1

    const-string v0, "removeObserver"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/h;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/h;->b:Lh/a;

    invoke-virtual {v0, p1}, Lh/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroidx/lifecycle/g;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h;->b:Lh/a;

    .line 2
    invoke-virtual {v0}, Lh/b;->a()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/h;->g:Z

    if-nez v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/h$a;

    .line 6
    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    iget-object v4, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/h;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/h;->b:Lh/a;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/f;

    invoke-virtual {v3, v4}, Lh/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    invoke-static {v3}, Landroidx/lifecycle/d$b;->b(Landroidx/lifecycle/d$c;)Landroidx/lifecycle/d$b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Landroidx/lifecycle/d$b;->e()Landroidx/lifecycle/d$c;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/lifecycle/h;->l(Landroidx/lifecycle/d$c;)V

    .line 10
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/h$a;->a(Landroidx/lifecycle/g;Landroidx/lifecycle/d$b;)V

    .line 11
    invoke-virtual {p0}, Landroidx/lifecycle/h;->k()V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event down from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/h;->i:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lg/a;->e()Lg/a;

    move-result-object v0

    invoke-virtual {v0}, Lg/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Landroidx/lifecycle/g;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h;->b:Lh/a;

    .line 2
    invoke-virtual {v0}, Lh/b;->d()Lh/b$d;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/h;->g:Z

    if-nez v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/h$a;

    .line 6
    :goto_0
    iget-object v3, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    iget-object v4, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroidx/lifecycle/h;->g:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/lifecycle/h;->b:Lh/a;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/f;

    invoke-virtual {v3, v4}, Lh/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    invoke-virtual {p0, v3}, Landroidx/lifecycle/h;->l(Landroidx/lifecycle/d$c;)V

    .line 9
    iget-object v3, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    invoke-static {v3}, Landroidx/lifecycle/d$b;->f(Landroidx/lifecycle/d$c;)Landroidx/lifecycle/d$b;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2, p1, v3}, Landroidx/lifecycle/h$a;->a(Landroidx/lifecycle/g;Landroidx/lifecycle/d$b;)V

    .line 11
    invoke-virtual {p0}, Landroidx/lifecycle/h;->k()V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event up from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public f(Landroidx/lifecycle/d$b;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/h;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/lifecycle/d$b;->e()Landroidx/lifecycle/d$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/h;->j(Landroidx/lifecycle/d$c;)V

    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h;->b:Lh/a;

    invoke-virtual {v0}, Lh/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/h;->b:Lh/a;

    invoke-virtual {v0}, Lh/b;->b()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/h$a;

    iget-object v0, v0, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    .line 3
    iget-object v2, p0, Landroidx/lifecycle/h;->b:Lh/a;

    invoke-virtual {v2}, Lh/b;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/h$a;

    iget-object v2, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h(Landroidx/lifecycle/d$c;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "markState"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/h;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/h;->m(Landroidx/lifecycle/d$c;)V

    return-void
.end method

.method public final j(Landroidx/lifecycle/d$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Landroidx/lifecycle/d$c;->b:Landroidx/lifecycle/d$c;

    if-ne v0, v1, :cond_2

    sget-object v0, Landroidx/lifecycle/d$c;->a:Landroidx/lifecycle/d$c;

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no event down from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    .line 5
    iget-boolean p1, p0, Landroidx/lifecycle/h;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/lifecycle/h;->e:I

    if-eqz p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/h;->f:Z

    .line 7
    invoke-virtual {p0}, Landroidx/lifecycle/h;->n()V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroidx/lifecycle/h;->f:Z

    .line 9
    iget-object p1, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    sget-object v0, Landroidx/lifecycle/d$c;->a:Landroidx/lifecycle/d$c;

    if-ne p1, v0, :cond_4

    .line 10
    new-instance p1, Lh/a;

    invoke-direct {p1}, Lh/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/h;->b:Lh/a;

    :cond_4
    return-void

    .line 11
    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/h;->g:Z

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/h;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final l(Landroidx/lifecycle/d$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/h;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public m(Landroidx/lifecycle/d$c;)V
    .locals 1

    const-string v0, "setCurrentState"

    .line 1
    invoke-virtual {p0, v0}, Landroidx/lifecycle/h;->d(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/lifecycle/h;->j(Landroidx/lifecycle/d$c;)V

    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/h;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/g;

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/lifecycle/h;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3
    iput-boolean v2, p0, Landroidx/lifecycle/h;->g:Z

    .line 4
    iget-object v1, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    iget-object v2, p0, Landroidx/lifecycle/h;->b:Lh/a;

    invoke-virtual {v2}, Lh/b;->b()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/h$a;

    iget-object v2, v2, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/lifecycle/h;->c(Landroidx/lifecycle/g;)V

    .line 6
    :cond_1
    iget-object v1, p0, Landroidx/lifecycle/h;->b:Lh/a;

    invoke-virtual {v1}, Lh/b;->e()Ljava/util/Map$Entry;

    move-result-object v1

    .line 7
    iget-boolean v2, p0, Landroidx/lifecycle/h;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/h;->c:Landroidx/lifecycle/d$c;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/h$a;

    iget-object v1, v1, Landroidx/lifecycle/h$a;->a:Landroidx/lifecycle/d$c;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Landroidx/lifecycle/h;->e(Landroidx/lifecycle/g;)V

    goto :goto_0

    .line 10
    :cond_2
    iput-boolean v2, p0, Landroidx/lifecycle/h;->g:Z

    return-void

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
