.class public Ln1/g;
.super Ljava/lang/Object;
.source "ConverterRegistry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln1/g$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ln1/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ln1/e<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ln1/g;->j()Ln1/g;

    .line 3
    invoke-virtual {p0}, Ln1/g;->I()V

    return-void
.end method

.method private synthetic D(Ln1/e;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Le2/k;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le2/d0;->n(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Ln1/g;->H(Ljava/lang/reflect/Type;Ln1/e;)Ln1/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic b(Ln1/g;Ln1/e;)V
    .locals 0

    invoke-direct {p0, p1}, Ln1/g;->D(Ln1/e;)V

    return-void
.end method

.method public static y()Ln1/g;
    .locals 1

    invoke-static {}, Ln1/g$a;->a()Ln1/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public F(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ln1/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "+",
            "Ln1/e<",
            "*>;>;)",
            "Ln1/g;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Le2/x;->D(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln1/e;

    invoke-virtual {p0, p1, p2}, Ln1/g;->H(Ljava/lang/reflect/Type;Ln1/e;)Ln1/g;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/lang/reflect/Type;Ln1/e;)Ln1/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ln1/e<",
            "*>;)",
            "Ln1/g;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln1/g;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ln1/g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, La2/u;

    invoke-direct {v0}, La2/u;-><init>()V

    iput-object v0, p0, Ln1/g;->b:Ljava/util/Map;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Ln1/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final I()V
    .locals 2

    const-class v0, Ln1/e;

    invoke-static {v0}, Le2/a0;->a(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    new-instance v1, Ln1/f;

    invoke-direct {v1, p0}, Ln1/f;-><init>(Ln1/g;)V

    invoke-virtual {v0, v1}, Ljava/util/ServiceLoader;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln1/d;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ln1/g;->e(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln1/d;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Ln1/g;->f(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "TT;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln1/d;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le2/d0;->r(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-static {p2}, Le2/p;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p3

    .line 3
    :cond_1
    invoke-static {p1}, Le2/d0;->r(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 5
    :cond_2
    instance-of v0, p1, Lv1/q;

    if-eqz v0, :cond_3

    .line 6
    check-cast p1, Lv1/q;

    invoke-virtual {p1}, Lv1/q;->a()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 7
    :cond_3
    instance-of v0, p2, Ln1/i;

    if-eqz v0, :cond_4

    .line 8
    move-object p4, p2

    check-cast p4, Ln1/i;

    invoke-interface {p4, p1, p2}, Ln1/i;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Le2/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p0, p1, p4}, Ln1/g;->q(Ljava/lang/reflect/Type;Z)Ln1/e;

    move-result-object p4

    if-eqz p4, :cond_5

    .line 10
    invoke-interface {p4, p2, p3}, Ln1/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_5
    invoke-static {p1}, Le2/d0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p4

    if-nez p4, :cond_7

    if-eqz p3, :cond_6

    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_0

    :cond_6
    return-object p2

    .line 13
    :cond_7
    :goto_0
    invoke-virtual {p0, p1, p4, p2, p3}, Ln1/g;->h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    .line 14
    :cond_8
    invoke-static {p4}, Lh1/h;->j(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 15
    new-instance p4, Lo1/f;

    invoke-direct {p4, p1}, Lo1/f;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p4, p2, p3}, Ln1/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16
    :cond_9
    new-instance p3, Ln1/d;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v0

    const/4 p2, 0x1

    invoke-interface {p1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, p2

    const-string p1, "Can not Converter from [{}] to [{}]"

    invoke-direct {p3, p1, p4}, Ln1/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p3
.end method

.method public final h(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    new-instance p2, Lo1/l;

    invoke-direct {p2, p1}, Lo1/l;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    check-cast p4, Ljava/util/Collection;

    invoke-virtual {p2, p3, p4}, Lo1/l;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    new-instance p2, Lo1/a0;

    invoke-direct {p2, p1}, Lo1/a0;-><init>(Ljava/lang/reflect/Type;)V

    .line 6
    check-cast p4, Ljava/util/Map;

    invoke-virtual {p2, p3, p4}, Ln1/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p3

    .line 8
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    new-instance p1, Lo1/x;

    invoke-direct {p1, p2}, Lo1/x;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, p3, p4}, Ln1/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    new-instance p1, Lo1/a;

    invoke-direct {p1, p2}, Lo1/a;-><init>(Ljava/lang/Class;)V

    .line 12
    invoke-virtual {p1, p3, p4}, Ln1/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method

.method public final j()Ln1/g;
    .locals 9

    .line 1
    const-class v0, Ljava/lang/Double;

    const-class v1, Ljava/lang/Float;

    const-class v2, Ljava/lang/Short;

    const-class v3, Ljava/lang/Byte;

    const-class v4, Ljava/lang/Long;

    const-class v5, Ljava/lang/Integer;

    new-instance v6, La2/u;

    invoke-direct {v6}, La2/u;-><init>()V

    iput-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    .line 2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v8, Lo1/i0;

    invoke-direct {v8, v7}, Lo1/i0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v8, Lo1/i0;

    invoke-direct {v8, v7}, Lo1/i0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v8, Lo1/i0;

    invoke-direct {v8, v7}, Lo1/i0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v8, Lo1/i0;

    invoke-direct {v8, v7}, Lo1/i0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v8, Lo1/i0;

    invoke-direct {v8, v7}, Lo1/i0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v8, Lo1/i0;

    invoke-direct {v8, v7}, Lo1/i0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v8, Lo1/i0;

    invoke-direct {v8, v7}, Lo1/i0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v8, Lo1/i0;

    invoke-direct {v8, v7}, Lo1/i0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v7, Ljava/lang/Number;

    new-instance v8, Lo1/c0;

    invoke-direct {v8}, Lo1/c0;-><init>()V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v6, p0, Ln1/g;->a:Ljava/util/Map;

    new-instance v7, Lo1/c0;

    invoke-direct {v7, v5}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v5, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v6, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v7, Lo1/c0;

    const-class v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v8}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v5, p0, Ln1/g;->a:Ljava/util/Map;

    new-instance v6, Lo1/c0;

    invoke-direct {v6, v4}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v4, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v5, Ljava/util/concurrent/atomic/LongAdder;

    new-instance v6, Lo1/c0;

    const-class v7, Ljava/util/concurrent/atomic/LongAdder;

    invoke-direct {v6, v7}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v4, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v6, Lo1/c0;

    const-class v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6, v7}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v4, p0, Ln1/g;->a:Ljava/util/Map;

    new-instance v5, Lo1/c0;

    invoke-direct {v5, v3}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v3, p0, Ln1/g;->a:Ljava/util/Map;

    new-instance v4, Lo1/c0;

    invoke-direct {v4, v2}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Ln1/g;->a:Ljava/util/Map;

    new-instance v3, Lo1/c0;

    invoke-direct {v3, v1}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Ln1/g;->a:Ljava/util/Map;

    new-instance v2, Lo1/c0;

    invoke-direct {v2, v0}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/DoubleAdder;

    new-instance v2, Lo1/c0;

    const-class v3, Ljava/util/concurrent/atomic/DoubleAdder;

    invoke-direct {v2, v3}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Lo1/i;

    invoke-direct {v2}, Lo1/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lo1/g;

    invoke-direct {v2}, Lo1/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Lo1/b;

    invoke-direct {v2}, Lo1/b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/math/BigDecimal;

    new-instance v2, Lo1/c0;

    const-class v3, Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/math/BigInteger;

    new-instance v2, Lo1/c0;

    const-class v3, Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lo1/c0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/CharSequence;

    new-instance v2, Lo1/l0;

    invoke-direct {v2}, Lo1/l0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lo1/l0;

    invoke-direct {v2}, Lo1/l0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/net/URI;

    new-instance v2, Lo1/q0;

    invoke-direct {v2}, Lo1/q0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/net/URL;

    new-instance v2, Lo1/r0;

    invoke-direct {v2}, Lo1/r0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/Calendar;

    new-instance v2, Lo1/h;

    invoke-direct {v2}, Lo1/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lo1/n;

    const-class v3, Ljava/util/Date;

    invoke-direct {v2, v3}, Lo1/n;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Lp1/e;

    new-instance v2, Lo1/n;

    const-class v3, Lp1/e;

    invoke-direct {v2, v3}, Lo1/n;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/sql/Date;

    new-instance v2, Lo1/n;

    const-class v3, Ljava/sql/Date;

    invoke-direct {v2, v3}, Lo1/n;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/sql/Time;

    new-instance v2, Lo1/n;

    const-class v3, Ljava/sql/Time;

    invoke-direct {v2, v3}, Lo1/n;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/sql/Timestamp;

    new-instance v2, Lo1/n;

    const-class v3, Ljava/sql/Timestamp;

    invoke-direct {v2, v3}, Lo1/n;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/temporal/TemporalAccessor;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/Instant;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/Instant;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/Instant;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/LocalDateTime;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/LocalDateTime;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/LocalDate;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/LocalDate;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/LocalTime;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/LocalTime;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/ZonedDateTime;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/ZonedDateTime;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/OffsetDateTime;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/OffsetDateTime;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/OffsetTime;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/OffsetTime;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/DayOfWeek;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/DayOfWeek;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/Month;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/Month;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/MonthDay;

    new-instance v2, Lo1/o0;

    const-class v3, Ljava/time/MonthDay;

    invoke-direct {v2, v3}, Lo1/o0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/Period;

    new-instance v2, Lo1/g0;

    invoke-direct {v2}, Lo1/g0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/time/Duration;

    new-instance v2, Lo1/o;

    invoke-direct {v2}, Lo1/o;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lo1/j0;

    const-class v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lo1/j0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/ref/SoftReference;

    new-instance v2, Lo1/j0;

    const-class v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v3}, Lo1/j0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lo1/e;

    invoke-direct {v2}, Lo1/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    new-instance v2, Lo1/c;

    invoke-direct {v2}, Lo1/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    new-instance v2, Lo1/d;

    invoke-direct {v2}, Lo1/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/Class;

    new-instance v2, Lo1/k;

    invoke-direct {v2}, Lo1/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/TimeZone;

    new-instance v2, Lo1/p0;

    invoke-direct {v2}, Lo1/p0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/Locale;

    new-instance v2, Lo1/y;

    invoke-direct {v2}, Lo1/y;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/nio/charset/Charset;

    new-instance v2, Lo1/j;

    invoke-direct {v2}, Lo1/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/nio/file/Path;

    new-instance v2, Lo1/f0;

    invoke-direct {v2}, Lo1/f0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/Currency;

    new-instance v2, Lo1/m;

    invoke-direct {v2}, Lo1/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/UUID;

    new-instance v2, Lo1/s0;

    invoke-direct {v2}, Lo1/s0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/lang/StackTraceElement;

    new-instance v2, Lo1/k0;

    invoke-direct {v2}, Lo1/k0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Ljava/util/Optional;

    new-instance v2, Lo1/e0;

    invoke-direct {v2}, Lo1/e0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    const-class v1, Lv1/k;

    new-instance v2, Lo1/d0;

    invoke-direct {v2}, Lo1/d0;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public q(Ljava/lang/reflect/Type;Z)Ln1/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Z)",
            "Ln1/e<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ln1/g;->u(Ljava/lang/reflect/Type;)Ln1/e;

    move-result-object p2

    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ln1/g;->x(Ljava/lang/reflect/Type;)Ln1/e;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ln1/g;->x(Ljava/lang/reflect/Type;)Ln1/e;

    move-result-object p2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Ln1/g;->u(Ljava/lang/reflect/Type;)Ln1/e;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method public u(Ljava/lang/reflect/Type;)Ln1/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ln1/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ln1/g;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln1/g;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/e;

    :goto_0
    return-object p1
.end method

.method public x(Ljava/lang/reflect/Type;)Ln1/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ln1/e<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ln1/g;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln1/e;

    :goto_0
    return-object p1
.end method
