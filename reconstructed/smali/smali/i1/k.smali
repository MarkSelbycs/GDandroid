.class public Li1/k;
.super Li1/b;
.source "MapToBeanCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li1/b<",
        "Ljava/util/Map<",
        "**>;TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;TT;",
            "Ljava/lang/reflect/Type;",
            "Li1/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4}, Li1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Li1/i;)V

    .line 2
    instance-of p2, p1, La2/j;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, La2/j;

    invoke-virtual {p1}, La2/j;->x()Ljava/util/Map;

    move-result-object p1

    .line 4
    instance-of p1, p1, La2/c;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p4, p1}, Li1/i;->u(Z)Li1/i;

    .line 6
    :cond_0
    iput-object p3, p0, Li1/k;->d:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static synthetic a(Li1/k;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li1/k;->d(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic d(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Li1/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v0, p2}, Li1/i;->F(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p0, p1, p2}, Li1/k;->c(Ljava/util/Map;Ljava/lang/String;)Lh1/j;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 4
    iget-object p1, p0, Li1/b;->c:Li1/i;

    iget-boolean p1, p1, Li1/i;->h:Z

    invoke-virtual {v1, p1}, Lh1/j;->m(Z)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v1}, Lh1/j;->e()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v1}, Lh1/j;->c()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Li1/i;->H(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 7
    :cond_4
    iget-object p2, p0, Li1/k;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Lh1/j;->f()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p2, v0}, Le2/d0;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 8
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v0, p2, p3}, Li1/i;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 9
    iget-object p3, p0, Li1/b;->c:Li1/i;

    invoke-virtual {p3, p1, p2}, Li1/i;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    iget-object v2, p0, Li1/b;->b:Ljava/lang/Object;

    iget-object p1, p0, Li1/b;->c:Li1/i;

    iget-boolean v4, p1, Li1/i;->b:Z

    iget-boolean v5, p1, Li1/i;->d:Z

    iget-boolean v6, p1, Li1/i;->i:Z

    invoke-virtual/range {v1 .. v6}, Lh1/j;->o(Ljava/lang/Object;Ljava/lang/Object;ZZZ)Lh1/j;

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li1/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li1/b;->c:Li1/i;

    iget-object v1, v1, Li1/i;->a:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Li1/b;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Li1/b;->c:Li1/i;

    iget-object v3, v3, Li1/i;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Target class [{}] not assignable to Editable class [{}]"

    .line 5
    invoke-static {v1, v0, v2}, Lv1/e;->e(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Li1/b;->c:Li1/i;

    iget-object v0, v0, Li1/i;->a:Ljava/lang/Class;

    .line 7
    :cond_0
    invoke-static {v0}, Lh1/h;->f(Ljava/lang/Class;)Lh1/b;

    move-result-object v0

    iget-object v1, p0, Li1/b;->c:Li1/i;

    iget-boolean v1, v1, Li1/i;->e:Z

    invoke-virtual {v0, v1}, Lh1/b;->e(Z)Ljava/util/Map;

    move-result-object v0

    .line 8
    iget-object v1, p0, Li1/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    new-instance v2, Li1/j;

    invoke-direct {v2, p0, v0}, Li1/j;-><init>(Li1/k;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    iget-object v0, p0, Li1/b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c(Ljava/util/Map;Ljava/lang/String;)Lh1/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh1/j;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lh1/j;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh1/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p2}, Lb2/c;->U(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh1/j;

    return-object p1
.end method
