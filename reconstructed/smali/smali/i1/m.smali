.class public Li1/m;
.super Li1/b;
.source "MapToMapCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/b<",
        "Ljava/util/Map;",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/lang/reflect/Type;Li1/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Li1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Li1/i;)V

    .line 2
    iput-object p3, p0, Li1/m;->d:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static synthetic a(Li1/m;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li1/m;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Li1/b;->c:Li1/i;

    iget-boolean v1, v0, Li1/i;->b:Z

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Li1/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v0, p1}, Li1/i;->F(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Li1/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Li1/b;->c:Li1/i;

    iget-boolean v1, v1, Li1/i;->i:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    return-void

    .line 6
    :cond_4
    iget-object v0, p0, Li1/m;->d:Ljava/lang/reflect/Type;

    invoke-static {v0}, Le2/d0;->p(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    iget-object v1, p0, Li1/b;->c:Li1/i;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, p2}, Li1/i;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v0, p1, p2}, Li1/i;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    :cond_5
    iget-object v0, p0, Li1/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li1/m;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Li1/b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Li1/l;

    invoke-direct {v1, p0}, Li1/l;-><init>(Li1/m;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2
    iget-object v0, p0, Li1/b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method
