.class public Li1/i;
.super Ljava/lang/Object;
.source "CopyOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Z

.field public f:Lv1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv1/g<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field public i:Z

.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ln1/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li1/i;->h:Z

    .line 3
    iput-boolean v0, p0, Li1/i;->i:Z

    .line 4
    new-instance v0, Li1/h;

    invoke-direct {v0, p0}, Li1/h;-><init>(Li1/i;)V

    iput-object v0, p0, Li1/i;->p:Ln1/i;

    return-void
.end method

.method public static synthetic b(Li1/i;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Li1/i;->j(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e()Li1/i;
    .locals 2

    new-instance v0, Li1/i;

    invoke-direct {v0}, Li1/i;-><init>()V

    return-object v0
.end method

.method private synthetic j(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cn.hutool.json.JSONObject"

    const-string v3, "cn.hutool.json.JSONArray"

    .line 2
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Le2/c;->j([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    const-class v2, Ljava/lang/Object;

    invoke-static {p1, v2}, Le2/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "toBean"

    invoke-static {p2, p1, v0}, Le2/x;->t(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-boolean v1, p0, Li1/i;->d:Z

    invoke-static {p1, p2, v0, v1}, Ln1/c;->f(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public D(Z)Li1/i;
    .locals 0

    iput-boolean p1, p0, Li1/i;->h:Z

    return-object p0
.end method

.method public F(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Li1/i;->o:Ljava/util/Set;

    invoke-static {v0}, Ll1/c;->g(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li1/i;->o:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public H(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Li1/i;->c:Ljava/util/function/BiPredicate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li1/i;->p:Ln1/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ln1/i;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li1/i;->f:Lv1/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lv1/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Li1/i;->g:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public q(Lv1/g;)Li1/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/g<",
            "Ljava/lang/String;",
            ">;)",
            "Li1/i;"
        }
    .end annotation

    iput-object p1, p0, Li1/i;->f:Lv1/g;

    return-object p0
.end method

.method public u(Z)Li1/i;
    .locals 0

    iput-boolean p1, p0, Li1/i;->e:Z

    return-object p0
.end method

.method public x(Z)Li1/i;
    .locals 0

    iput-boolean p1, p0, Li1/i;->d:Z

    return-object p0
.end method

.method public y(Z)Li1/i;
    .locals 0

    iput-boolean p1, p0, Li1/i;->b:Z

    return-object p0
.end method
