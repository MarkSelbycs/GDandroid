.class public Lg1/c;
.super Ljava/lang/Object;
.source "CombinationAnnotationElement.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lg1/c;-><init>(Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lg1/c;->c:Ljava/util/function/Predicate;

    .line 4
    invoke-virtual {p0, p1}, Lg1/c;->b(Ljava/lang/reflect/AnnotatedElement;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2
    new-instance v1, La2/v;

    invoke-direct {v1}, La2/v;-><init>()V

    iput-object v1, p0, Lg1/c;->b:Ljava/util/Map;

    .line 3
    invoke-virtual {p0, v0}, Lg1/c;->e([Ljava/lang/annotation/Annotation;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lg1/c;->b:Ljava/util/Map;

    iput-object p1, p0, Lg1/c;->a:Ljava/util/Map;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, La2/v;

    invoke-direct {v0}, La2/v;-><init>()V

    iput-object v0, p0, Lg1/c;->a:Ljava/util/Map;

    .line 8
    invoke-virtual {p0, p1}, Lg1/c;->c([Ljava/lang/annotation/Annotation;)V

    :goto_0
    return-void
.end method

.method public final c([Ljava/lang/annotation/Annotation;)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lg1/b;->d(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lg1/c;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Lg1/c;->f(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lg1/c;->a:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lg1/c;->c([Ljava/lang/annotation/Annotation;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final e([Ljava/lang/annotation/Annotation;)V
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lg1/b;->d(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lg1/c;->b:Ljava/util/Map;

    .line 4
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Lg1/c;->f(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lg1/c;->b:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {p0, v2}, Lg1/c;->e([Ljava/lang/annotation/Annotation;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final f(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    iget-object v0, p0, Lg1/c;->c:Ljava/util/function/Predicate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lg1/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .line 1
    iget-object v0, p0, Lg1/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 2

    .line 1
    iget-object v0, p0, Lg1/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lg1/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
