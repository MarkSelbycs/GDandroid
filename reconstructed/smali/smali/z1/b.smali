.class public Lz1/b;
.super Ljava/lang/Object;
.source "ActualTypeMapperPool.java"


# static fields
.field public static final a:La2/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/b0<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b0;

    invoke-direct {v0}, La2/b0;-><init>()V

    sput-object v0, Lz1/b;->a:La2/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1}, Lz1/b;->f(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    if-eqz p0, :cond_3

    .line 2
    invoke-static {p0}, Le2/d0;->s(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 7
    aget-object v4, v1, v3

    .line 8
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-nez v5, :cond_2

    .line 9
    aget-object v5, v2, v3

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static c(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    sget-object v0, Lz1/b;->a:La2/b0;

    new-instance v1, Lz1/a;

    invoke-direct {v1, p0}, Lz1/a;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p0, v1}, La2/t;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static d(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lz1/b;->c(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    .line 3
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static varargs e(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3

    .line 1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, p1, v1

    instance-of v2, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 4
    invoke-static {p0, v2}, Lz1/b;->d(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_1

    :cond_0
    aget-object v2, p1, v1

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic f(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lz1/b;->b(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
