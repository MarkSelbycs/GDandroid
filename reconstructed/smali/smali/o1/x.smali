.class public Lo1/x;
.super Ln1/a;
.source "EnumConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:La2/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/b0<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b0;

    invoke-direct {v0}, La2/b0;-><init>()V

    sput-object v0, Lo1/x;->b:La2/b0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln1/a;-><init>()V

    .line 2
    iput-object p1, p0, Lo1/x;->a:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic D(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0, p1}, Lo1/x;->V(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    sget-object v0, Lo1/x;->b:La2/b0;

    new-instance v1, Lo1/q;

    invoke-direct {v1, p0}, Lo1/q;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, La2/t;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic H(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lo1/w;->a:Lo1/w;

    .line 2
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lo1/t;

    invoke-direct {v0, p0}, Lo1/t;-><init>(Ljava/lang/Class;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lo1/u;->a:Lo1/u;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lo1/v;->a:Lo1/v;

    .line 5
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lo1/r;->a:Lo1/r;

    sget-object v0, Lo1/s;->a:Lo1/s;

    sget-object v1, Lo1/p;->a:Lo1/p;

    .line 6
    invoke-static {p1, v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic I(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic M(Ljava/lang/reflect/Method;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic P(Ljava/lang/reflect/Method;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "valueOf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic T(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static synthetic U(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    return-object p0
.end method

.method public static synthetic V(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    return-object p0
.end method

.method public static W(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    const-class v1, Lv1/h;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    invoke-static {p1, v2}, Le2/l;->a(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lv1/h;

    if-eqz v1, :cond_2

    .line 3
    instance-of v3, p0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Integer;

    invoke-interface {v1, p0}, Lv1/h;->v(Ljava/lang/Integer;)Lv1/h;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    return-object p0

    .line 5
    :cond_1
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lv1/h;->A(Ljava/lang/String;)Lv1/h;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    return-object p0

    .line 7
    :cond_2
    :try_start_0
    invoke-static {p1}, Lo1/x;->F(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-static {v1}, La2/i;->i(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-static {v5, v3}, Le2/k;->j(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Le2/x;->w(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 13
    :catch_0
    :cond_4
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 14
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Le2/l;->a(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 16
    :try_start_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_6
    :goto_0
    return-object v0
.end method

.method public static synthetic h(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lo1/x;->T(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 0

    invoke-static {p0}, Lo1/x;->U(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-static {p0}, Lo1/x;->M(Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-static {p0, p1}, Lo1/x;->I(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 0

    invoke-static {p0, p1}, Lo1/x;->H(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-static {p0}, Lo1/x;->P(Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/x;->a:Ljava/lang/Class;

    invoke-static {p1, v0}, Lo1/x;->W(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lo1/x;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ln1/a;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ln1/d;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget-object v2, p0, Lo1/x;->a:Ljava/lang/Class;

    aput-object v2, v1, p1

    const-string p1, "Can not convert {} to {}"

    invoke-direct {v0, p1, v1}, Ln1/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lo1/x;->a:Ljava/lang/Class;

    return-object v0
.end method
