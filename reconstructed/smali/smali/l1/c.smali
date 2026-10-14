.class public Ll1/c;
.super Ljava/lang/Object;
.source "CollUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll1/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Ll1/c;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/Collection;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-static {p2}, Le2/d0;->r(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-class p2, Ljava/lang/Object;

    .line 3
    :cond_1
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_2

    .line 4
    check-cast p1, Ljava/util/Iterator;

    goto :goto_1

    .line 5
    :cond_2
    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_3
    instance-of v0, p1, Ljava/util/Enumeration;

    if-eqz v0, :cond_4

    .line 8
    new-instance v0, Ll1/e;

    check-cast p1, Ljava/util/Enumeration;

    invoke-direct {v0, p1}, Ll1/e;-><init>(Ljava/util/Enumeration;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {p1}, Le2/c;->s(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    new-instance v0, Ll1/a;

    invoke-direct {v0, p1}, Ll1/a;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_5
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 12
    check-cast p1, Ljava/lang/CharSequence;

    const/16 v0, 0x5b

    const/16 v1, 0x5d

    invoke-static {p1, v0, v1}, Lb2/c;->Z(Ljava/lang/CharSequence;CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2c

    .line 13
    invoke-static {p1, v0}, Lb2/c;->F(Ljava/lang/CharSequence;C)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 14
    invoke-static {v0}, Ll1/c;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 15
    :goto_1
    invoke-static {}, Ln1/g;->y()Ln1/g;

    move-result-object v0

    .line 16
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ln1/g;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    :goto_3
    return-object p0
.end method

.method public static c(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll1/c;->d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/AbstractCollection;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    const-class v0, Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 5
    :cond_1
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    .line 7
    :cond_2
    const-class v0, Ljava/util/TreeSet;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p0, Ljava/util/TreeSet;

    sget-object p1, Ll1/b;->a:Ll1/b;

    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0

    .line 9
    :cond_3
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-static {p1}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_4
    const-class p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 13
    :cond_5
    const-class p1, Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :try_start_0
    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    invoke-static {p0, p1}, Le2/x;->D(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :goto_0
    return-object p0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eq p0, v0, :cond_7

    .line 17
    invoke-static {v0}, Ll1/c;->c(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 18
    :cond_7
    new-instance p0, Lr1/c;

    invoke-direct {p0, p1}, Lr1/c;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static e(Ljava/lang/Iterable;Ll1/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ll1/c$a<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Ll1/c;->f(Ljava/util/Iterator;Ll1/c$a;)V

    return-void
.end method

.method public static f(Ljava/util/Iterator;Ll1/c$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ll1/c$a<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ll1/c$a;->J(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static g(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Ll1/c;->g(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic i(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Comparable;

    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lm1/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

.method public static varargs j([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p0}, Ll1/h;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static varargs k([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ll1/c;->l(Z[Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public static varargs l(Z[Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z[TT;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    .line 1
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    return-object p0

    .line 2
    :cond_1
    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p0, :cond_2

    .line 3
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0, v0}, Ljava/util/LinkedHashSet;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 4
    :goto_1
    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static m(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TF;>;",
            "Ljava/util/function/Function<",
            "-TF;+TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ll1/l;

    invoke-direct {v0, p0, p1}, Ll1/l;-><init>(Ljava/util/Collection;Ljava/util/function/Function;)V

    return-object v0
.end method
