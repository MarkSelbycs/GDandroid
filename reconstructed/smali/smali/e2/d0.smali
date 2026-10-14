.class public Le2/d0;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    invoke-static {v0}, Le2/d0;->q([Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, v0}, Le2/d0;->c(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 4
    invoke-static {p0}, Le2/c;->v([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lv1/m;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lv1/m;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method

.method public static b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Le2/d0;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1}, Lz1/b;->d(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static varargs c(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 0

    invoke-static {p0, p1}, Lz1/b;->e(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 5
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 7
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 8
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 9
    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 10
    aget-object p0, p0, v1

    invoke-static {p0}, Le2/d0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le2/d0;->g(Ljava/lang/reflect/Method;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/reflect/Method;I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le2/d0;->h(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 3
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    invoke-static {p0}, Le2/d0;->j(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 3
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Ljava/lang/reflect/Method;)[Ljava/lang/reflect/Type;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static k(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static l(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static m(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le2/d0;->o(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    invoke-static {p0}, Le2/d0;->p(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 3
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0}, Le2/d0;->s(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs q([Ljava/lang/reflect/Type;)Z
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2
    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static r(Ljava/lang/reflect/Type;)Z
    .locals 0

    if-eqz p0, :cond_1

    instance-of p0, p0, Ljava/lang/reflect/TypeVariable;

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

.method public static s(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    .line 4
    check-cast p0, Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    .line 8
    invoke-static {p0}, Le2/c;->v([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 9
    aget-object v0, p0, v0

    .line 10
    :cond_2
    invoke-static {v0}, Le2/d0;->s(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
