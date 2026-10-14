.class public La2/t;
.super Ljava/lang/Object;
.source "ReferenceConcurrentMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/t$b;,
        La2/t$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/ref/Reference<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final c:Le2/s;

.field public d:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/ref/Reference<",
            "+TK;>;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;Le2/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/ref/Reference<",
            "TK;>;TV;>;",
            "Le2/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    iput-object p2, p0, La2/t;->c:Le2/s;

    .line 4
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public static synthetic D(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lx1/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Lx1/a;->t()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 2

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic P(Ljava/util/function/BiConsumer;Ljava/lang/ref/Reference;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic T(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic U(Ljava/util/function/BiFunction;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 0

    invoke-static {p0}, La2/t;->M(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, La2/t;->T(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lx1/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, La2/t;->H(Lx1/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/t;->D(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/util/function/BiConsumer;Ljava/lang/ref/Reference;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, La2/t;->P(Ljava/util/function/BiConsumer;Ljava/lang/ref/Reference;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic q(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, La2/t;->I(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, La2/t;->F(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Ljava/util/function/BiFunction;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, La2/t;->U(Ljava/util/function/BiFunction;Ljava/lang/ref/Reference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TK;>;)",
            "Ljava/lang/ref/Reference<",
            "TK;>;"
        }
    .end annotation

    .line 1
    sget-object v0, La2/t$a;->a:[I

    iget-object v1, p0, La2/t;->c:Le2/s;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, La2/t$b;

    invoke-direct {v0, p1, p2}, La2/t$b;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported key type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, La2/t;->c:Le2/s;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance v0, La2/t$c;

    invoke-direct {v0, p1, p2}, La2/t$c;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method public final W()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, La2/t;->d:Ljava/util/function/BiConsumer;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 2
    :goto_0
    iget-object v0, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object v1

    new-instance v2, La2/n;

    invoke-direct {v2, p2, p1}, La2/n;-><init>(Ljava/util/function/BiFunction;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object v1

    new-instance v2, La2/p;

    invoke-direct {v2, p2, p1}, La2/p;-><init>(Ljava/util/function/Function;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object v1

    new-instance v2, La2/o;

    invoke-direct {v2, p2, p1}, La2/o;-><init>(Ljava/util/function/BiFunction;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, La2/s;->a:La2/s;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, La2/l;

    invoke-direct {v1, p1}, La2/l;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, La2/t;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, La2/t;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, La2/r;->a:La2/r;

    invoke-static {v0, v1}, Ll1/c;->m(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    new-instance v0, La2/k;

    invoke-direct {v0, p0}, La2/k;-><init>(La2/t;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, La2/t;->W()V

    .line 4
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, La2/t;->W()V

    .line 4
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, La2/t;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1, v1}, La2/t;->V(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/ref/Reference;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, La2/m;

    invoke-direct {v1, p1}, La2/m;-><init>(Ljava/util/function/BiFunction;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replaceAll(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La2/t;->W()V

    .line 2
    iget-object v0, p0, La2/t;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public y(Ljava/lang/Object;Lx1/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lx1/a<",
            "+TV;>;)TV;"
        }
    .end annotation

    new-instance v0, La2/q;

    invoke-direct {v0, p2}, La2/q;-><init>(Lx1/a;)V

    invoke-virtual {p0, p1, v0}, La2/t;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
