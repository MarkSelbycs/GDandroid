.class public final Landroidx/work/ArrayCreatingInputMerger;
.super Lq0/j;
.source "ArrayCreatingInputMerger.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq0/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Landroidx/work/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/b;",
            ">;)",
            "Landroidx/work/b;"
        }
    .end annotation

    const-string v0, "inputs"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/work/b$a;

    invoke-direct {v0}, Landroidx/work/b$a;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/b;

    .line 4
    invoke-virtual {v2}, Landroidx/work/b;->n()Ljava/util/Map;

    move-result-object v2

    const-string v3, "input.keyValueMap"

    invoke-static {v2, v3}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-class v5, Ljava/lang/String;

    .line 6
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "key"

    .line 7
    invoke-static {v4, v7}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_3

    .line 8
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0, v3, v5}, Landroidx/work/ArrayCreatingInputMerger;->d(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 11
    invoke-static {v7, v5}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v5, "value"

    .line 12
    invoke-static {v3, v5}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v3}, Landroidx/work/ArrayCreatingInputMerger;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v5}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 14
    invoke-virtual {p0, v6, v3, v5}, Landroidx/work/ArrayCreatingInputMerger;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    const-string v5, "if (existingValue == nul\u2026      }\n                }"

    .line 15
    invoke-static {v3, v5}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 18
    :cond_6
    invoke-virtual {v0, v1}, Landroidx/work/b$a;->c(Ljava/util/Map;)Landroidx/work/b$a;

    .line 19
    invoke-virtual {v0}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object p1

    const-string v0, "output.build()"

    invoke-static {p1, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 2
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p3

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-static {p3, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string p1, "newArray"

    .line 5
    invoke-static {p3, p1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lm3/k;->b(Ljava/lang/Object;)V

    add-int v3, v0, v1

    .line 4
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p1, "newArray"

    .line 7
    invoke-static {v2, p1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string p1, "newArray"

    .line 3
    invoke-static {p2, p1}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
