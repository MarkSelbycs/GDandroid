.class public Le2/x;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# static fields
.field public static final a:La2/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/b0<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final b:La2/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/b0<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:La2/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/b0<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La2/b0;

    invoke-direct {v0}, La2/b0;-><init>()V

    sput-object v0, Le2/x;->a:La2/b0;

    .line 2
    new-instance v0, La2/b0;

    invoke-direct {v0}, La2/b0;-><init>()V

    sput-object v0, Le2/x;->b:La2/b0;

    .line 3
    new-instance v0, La2/b0;

    invoke-direct {v0}, La2/b0;-><init>()V

    sput-object v0, Le2/x;->c:La2/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Le2/x;->g(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Le2/x;->l(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Le2/x;->r(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr1/c;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le2/c;->u([Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Instance class [{}] error!"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    new-array p1, v3, [Ljava/lang/Class;

    .line 2
    invoke-static {p0, p1}, Le2/x;->e(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lr1/c;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lr1/c;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 5
    :cond_0
    new-instance p1, Lr1/c;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    const-string p0, "No constructor for [{}]"

    invoke-direct {p1, p0, v0}, Lr1/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    .line 6
    :cond_1
    invoke-static {p1}, Le2/k;->b([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Le2/x;->e(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 8
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    .line 9
    new-instance v0, Lr1/c;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lr1/c;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 10
    :cond_2
    new-instance p0, Lr1/c;

    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string v0, "No Constructor matched for parameter types: [{}]"

    invoke-direct {p0, v0, p1}, Lr1/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static E(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Le2/k;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    const-class v0, Ljava/util/AbstractMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-class p0, Ljava/util/HashMap;

    goto :goto_0

    .line 6
    :cond_1
    const-class v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    const-class p0, Ljava/util/ArrayList;

    goto :goto_0

    .line 8
    :cond_2
    const-class v0, Ljava/util/Set;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    const-class p0, Ljava/util/HashSet;

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {p0, v1}, Le2/x;->D(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 11
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 13
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :cond_5
    invoke-static {p0}, Le2/x;->f(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 16
    array-length v1, p0

    :goto_1
    if-ge v0, v1, :cond_7

    aget-object v2, p0, v0

    .line 17
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 18
    array-length v4, v3

    if-nez v4, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    invoke-static {v2}, Le2/x;->F(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 20
    :try_start_1
    invoke-static {v3}, Le2/k;->d([Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static F(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    return-object p0
.end method

.method public static G(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr1/c;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "Field in [{}] not exist !"

    .line 1
    invoke-static {p1, v3, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-static {v1, p2}, Ln1/c;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p2, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Le2/k;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Le2/x;->F(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 7
    :try_start_0
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    move-object v1, p0

    :goto_1
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 8
    new-instance v1, Lr1/c;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    const-string p0, "IllegalAccess for {}.{}"

    invoke-direct {v1, p2, p0, v3}, Lr1/c;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static synthetic a(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0}, Le2/x;->B(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Le2/x;->s(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0}, Le2/x;->C(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 0

    invoke-static {p0}, Le2/x;->A(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static varargs e(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0}, Le2/x;->f(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 4
    invoke-static {v4, p1}, Le2/k;->i([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    invoke-static {v3}, Le2/x;->F(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static f(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Le2/x;->a:La2/b0;

    new-instance v1, Le2/w;

    invoke-direct {v1, p0}, Le2/w;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, La2/t;->y(Ljava/lang/Object;Lx1/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method public static g(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 4
    invoke-static {v7}, Le2/n;->c(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 5
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static i(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-class v0, Lg1/a;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lg1/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lg1/a;->value()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr1/c;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 2
    :cond_1
    invoke-static {p1}, Le2/x;->F(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 3
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Lr1/c;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "IllegalAccess for {}.{}"

    invoke-direct {v0, p0, p1, v1}, Lr1/c;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static k(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Le2/x;->b:La2/b0;

    new-instance v1, Le2/u;

    invoke-direct {v1, p0}, Le2/u;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, La2/t;->y(Ljava/lang/Object;Lx1/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static l(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v1, v2}, Le2/c;->h([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    :goto_1
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static varargs m(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Le2/x;->n(Ljava/lang/Class;ZLjava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static varargs n(Ljava/lang/Class;ZLjava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    invoke-static {p2}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Le2/x;->p(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p0

    .line 3
    invoke-static {p0}, Le2/c;->v([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4, p1}, Lb2/c;->h(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p3}, Le2/k;->i([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static varargs o(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p1}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p2}, Le2/k;->b([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p1, p2}, Le2/x;->m(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static p(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Le2/x;->c:La2/b0;

    new-instance v1, Le2/v;

    invoke-direct {v1, p0}, Le2/v;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, La2/t;->y(Ljava/lang/Object;Lx1/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static q(Ljava/lang/Class;Lv1/i;)[Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lv1/i<",
            "Ljava/lang/reflect/Method;",
            ">;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Le2/x;->p(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0, p1}, Le2/c;->m([Ljava/lang/Object;Lv1/i;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static r(Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;ZZ)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lv1/e;->p(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    :goto_0
    return-object p0

    .line 4
    :cond_1
    new-instance v0, Ll1/q;

    const/4 v1, 0x1

    sget-object v2, Le2/t;->a:Le2/t;

    invoke-direct {v0, v1, v2}, Ll1/q;-><init>(ZLjava/util/function/Function;)V

    :goto_1
    if-eqz p0, :cond_4

    if-nez p2, :cond_2

    .line 5
    const-class v1, Ljava/lang/Object;

    if-ne v1, p0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/q;->b(Ljava/util/Collection;)Z

    .line 7
    invoke-static {p0}, Le2/x;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll1/q;->b(Ljava/util/Collection;)Z

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_2
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/reflect/Method;

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/AbstractSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public static s(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    const/16 v2, 0x3a

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v2, 0x2c

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :goto_1
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs t(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr1/c;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Object to get method must be not null!"

    .line 1
    invoke-static {p0, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Method name must be not blank!"

    .line 2
    invoke-static {p1, v2, v1}, Lv1/e;->k(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 3
    invoke-static {p0, p1, p2}, Le2/x;->o(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p0, v1, p2}, Le2/x;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p2, Lr1/c;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "No such method: [{}] from [{}]"

    invoke-direct {p2, p0, v1}, Lr1/c;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public static varargs u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr1/b;,
            Lr1/c;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Le2/x;->v(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lr1/c;

    invoke-direct {p1, p0}, Lr1/c;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 3
    new-instance p1, Lr1/b;

    invoke-direct {p1, p0}, Lr1/b;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le2/x;->F(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 3
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    .line 4
    array-length v5, p2

    if-ge v4, v5, :cond_4

    aget-object v5, p2, v4

    if-nez v5, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget-object v5, p2, v4

    instance-of v5, v5, Lh1/i;

    if-eqz v5, :cond_1

    .line 6
    aput-object v3, v2, v4

    goto :goto_2

    .line 7
    :cond_1
    aget-object v5, v0, v4

    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 8
    aget-object v5, v0, v4

    aget-object v6, p2, v4

    const/4 v7, 0x1

    invoke-static {v5, v6, v3, v7}, Ln1/c;->f(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    aput-object v5, v2, v4

    goto :goto_2

    .line 10
    :cond_2
    aget-object v5, p2, v4

    aput-object v5, v2, v4

    goto :goto_2

    .line 11
    :cond_3
    aget-object v5, p2, v4

    aput-object v5, v2, v4

    goto :goto_2

    .line 12
    :cond_4
    :goto_1
    aget-object v5, v0, v4

    invoke-static {v5}, Le2/k;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-static {p0, p1, p2}, Lz1/d;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 15
    :cond_6
    invoke-static {p1}, Le2/k;->o(Ljava/lang/reflect/Method;)Z

    move-result p2

    if-eqz p2, :cond_7

    move-object p0, v3

    :cond_7
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs w(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr1/c;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Le2/x;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/reflect/Method;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "getClass"

    .line 3
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    const-string p1, "set"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    const-string p1, "get"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "is"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    return v0
.end method

.method public static y(Ljava/lang/reflect/Method;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Le2/x;->x(Ljava/lang/reflect/Method;Z)Z

    move-result p0

    return p0
.end method

.method public static z(Ljava/lang/reflect/Field;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "this$0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
