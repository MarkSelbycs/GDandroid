.class public Ll1/l;
.super Ljava/util/AbstractCollection;
.source "TransCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TF;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TF;>;",
            "Ljava/util/function/Function<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    invoke-static {p1}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Ll1/l;->a:Ljava/util/Collection;

    .line 3
    invoke-static {p2}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Function;

    iput-object p1, p0, Ll1/l;->b:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Ll1/l;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll1/l;->c(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Ll1/l;Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Ll1/l;->d(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic c(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll1/l;->b:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic d(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ll1/l;->b:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Ll1/l;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll1/l;->a:Ljava/util/Collection;

    new-instance v1, Ll1/j;

    invoke-direct {v1, p0, p1}, Ll1/j;-><init>(Ll1/l;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ll1/l;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ll1/l;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ll1/l;->b:Ljava/util/function/Function;

    invoke-static {v0, v1}, Ll1/f;->c(Ljava/util/Iterator;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll1/l;->a:Ljava/util/Collection;

    new-instance v1, Ll1/k;

    invoke-direct {v1, p0, p1}, Ll1/k;-><init>(Ll1/l;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ll1/l;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ll1/l;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Ll1/l;->b:Ljava/util/function/Function;

    invoke-static {v0, v1}, Ll1/i;->a(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
