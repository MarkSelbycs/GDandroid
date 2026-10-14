.class public Lh1/b;
.super Ljava/lang/Object;
.source "BeanDesc.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh1/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lh1/b;->b:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lh1/b;->a:Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Lh1/b;->f()Lh1/b;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;)Lh1/j;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lh1/b;->c(Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;Z)Lh1/j;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lh1/j;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lh1/j;->c:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, v1}, Lh1/b;->c(Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;Z)Lh1/j;

    move-result-object p1

    .line 4
    iget-object p2, v0, Lh1/j;->b:Ljava/lang/reflect/Method;

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p1, Lh1/j;->b:Ljava/lang/reflect/Method;

    iput-object p2, v0, Lh1/j;->b:Ljava/lang/reflect/Method;

    .line 6
    :cond_1
    iget-object p2, v0, Lh1/j;->c:Ljava/lang/reflect/Method;

    if-nez p2, :cond_2

    .line 7
    iget-object p1, p1, Lh1/j;->c:Ljava/lang/reflect/Method;

    iput-object p1, v0, Lh1/j;->c:Ljava/lang/reflect/Method;

    :cond_2
    return-object v0
.end method

.method public final c(Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;Z)Lh1/j;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-static {v1}, Le2/d;->a(Ljava/lang/Class;)Z

    move-result v2

    .line 4
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v4

    move-object v6, v5

    :goto_0
    if-ge v7, v3, :cond_3

    aget-object v8, p2, v7

    .line 5
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v10

    if-nez v10, :cond_0

    .line 7
    invoke-virtual {p0, v9, v0, v2, p3}, Lh1/b;->h(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v5, v8

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0, v9, v0, v2, p3}, Lh1/b;->j(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 9
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v6, v8

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_2
    new-instance p2, Lh1/j;

    invoke-direct {p2, p1, v5, v6}, Lh1/j;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object p2
.end method

.method public e(Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh1/j;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p1, La2/c;

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lh1/b;->b:Ljava/util/Map;

    invoke-direct {p1, v0, v1}, La2/c;-><init>(FLjava/util/Map;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh1/b;->b:Ljava/util/Map;

    :goto_0
    return-object p1
.end method

.method public final f()Lh1/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lh1/b;->a:Ljava/lang/Class;

    sget-object v1, Lh1/a;->a:Lh1/a;

    invoke-static {v0, v1}, Le2/x;->q(Ljava/lang/Class;Lv1/i;)[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lh1/b;->a:Ljava/lang/Class;

    invoke-static {v1}, Le2/x;->k(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    invoke-static {v4}, Le2/n;->e(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Le2/x;->z(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {p0, v4, v0}, Lh1/b;->b(Ljava/lang/reflect/Field;[Ljava/lang/reflect/Method;)Lh1/j;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lh1/b;->b:Ljava/util/Map;

    invoke-virtual {v4}, Lh1/j;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 3

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    move-object p4, p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lb2/c;->a0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const-string v0, "get"

    if-eqz p3, :cond_3

    const-string p3, "is"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_1
    return v2

    .line 8
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v2

    .line 9
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 2

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    move-object p4, p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Lb2/c;->a0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const-string v0, "set"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p3, :cond_3

    const-string p3, "is"

    .line 5
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lb2/c;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
