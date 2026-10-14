.class public Lh1/h;
.super Ljava/lang/Object;
.source "BeanUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;)Lh1/b;
    .locals 0

    invoke-static {p0}, Lh1/h;->m(Ljava/lang/Class;)Lh1/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lh1/h;->l(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;Ljava/util/Map;Li1/i;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Li1/i;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Li1/c;->c(Ljava/lang/Object;Ljava/lang/Object;Li1/i;)Li1/c;

    move-result-object p0

    invoke-virtual {p0}, Li1/c;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static d(Ljava/lang/Object;Ljava/util/Map;ZLv1/g;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lv1/g<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Li1/i;->e()Li1/i;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Li1/i;->y(Z)Li1/i;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p3}, Li1/i;->q(Lv1/g;)Li1/i;

    move-result-object p2

    .line 4
    invoke-static {p0, p1, p2}, Li1/c;->c(Ljava/lang/Object;Ljava/lang/Object;Li1/i;)Li1/c;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Li1/c;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static varargs e(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le2/c;->v([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v0, p1

    .line 3
    invoke-static {v1, p1}, Ll1/c;->l(Z[Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    .line 4
    new-instance v2, Lh1/f;

    invoke-direct {v2, p1}, Lh1/f;-><init>(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    const/4 v2, 0x0

    .line 5
    :goto_0
    new-instance p1, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-static {p0, p1, v1, v2}, Lh1/h;->d(Ljava/lang/Object;Ljava/util/Map;ZLv1/g;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Class;)Lh1/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lh1/b;"
        }
    .end annotation

    sget-object v0, Lh1/d;->b:Lh1/d;

    new-instance v1, Lh1/g;

    invoke-direct {v1, p0}, Lh1/g;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, Lh1/d;->e(Ljava/lang/Class;Lx1/a;)Lh1/b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le2/k;->m(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "get"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "is"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v4, "getClass"

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static h(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le2/k;->m(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 3
    invoke-static {v3}, Le2/n;->d(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Le2/n;->e(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static i(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le2/k;->m(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "set"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static j(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lh1/h;->i(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lh1/h;->h(Ljava/lang/Class;)Z

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

.method public static k(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lh1/h;->g(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lh1/h;->h(Ljava/lang/Class;)Z

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

.method public static synthetic l(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static synthetic m(Ljava/lang/Class;)Lh1/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lh1/b;

    invoke-direct {v0, p0}, Lh1/b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
