.class public Li1/e;
.super Li1/b;
.source "BeanToBeanCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Li1/b<",
        "TS;TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TT;",
            "Ljava/lang/reflect/Type;",
            "Li1/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4}, Li1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Li1/i;)V

    .line 2
    iput-object p3, p0, Li1/e;->d:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static synthetic a(Li1/e;Ljava/util/Map;Ljava/lang/String;Lh1/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Li1/e;->c(Ljava/util/Map;Ljava/lang/String;Lh1/j;)V

    return-void
.end method

.method private synthetic c(Ljava/util/Map;Ljava/lang/String;Lh1/j;)V
    .locals 6

    if-eqz p2, :cond_5

    .line 1
    iget-object v0, p0, Li1/b;->c:Li1/i;

    iget-boolean v0, v0, Li1/i;->h:Z

    invoke-virtual {p3, v0}, Lh1/j;->j(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v0, p2}, Li1/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v0, p2}, Li1/i;->F(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lh1/j;

    if-eqz v0, :cond_5

    .line 5
    iget-object p1, p0, Li1/b;->c:Li1/i;

    iget-boolean p1, p1, Li1/i;->h:Z

    invoke-virtual {v0, p1}, Lh1/j;->m(Z)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Li1/b;->a:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Lh1/j;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    iget-object v1, p0, Li1/b;->c:Li1/i;

    invoke-virtual {p3}, Lh1/j;->c()Ljava/lang/reflect/Field;

    move-result-object p3

    invoke-virtual {v1, p3, p1}, Li1/i;->H(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    .line 8
    :cond_4
    iget-object p3, p0, Li1/e;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Lh1/j;->f()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p3, v1}, Le2/d0;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p3

    .line 9
    iget-object v1, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v1, p3, p1}, Li1/i;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    iget-object p3, p0, Li1/b;->c:Li1/i;

    invoke-virtual {p3, p2, p1}, Li1/i;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    iget-object v1, p0, Li1/b;->b:Ljava/lang/Object;

    iget-object p1, p0, Li1/b;->c:Li1/i;

    iget-boolean v3, p1, Li1/i;->b:Z

    iget-boolean v4, p1, Li1/i;->d:Z

    iget-boolean v5, p1, Li1/i;->i:Z

    invoke-virtual/range {v0 .. v5}, Lh1/j;->o(Ljava/lang/Object;Ljava/lang/Object;ZZZ)Lh1/j;

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

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lh1/h;->f(Ljava/lang/Class;)Lh1/b;

    move-result-object v1

    iget-object v2, p0, Li1/b;->c:Li1/i;

    iget-boolean v2, v2, Li1/i;->e:Z

    invoke-virtual {v1, v2}, Lh1/b;->e(Z)Ljava/util/Map;

    move-result-object v1

    .line 9
    new-instance v2, Li1/d;

    invoke-direct {v2, p0, v0}, Li1/d;-><init>(Li1/e;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 10
    iget-object v0, p0, Li1/b;->b:Ljava/lang/Object;

    return-object v0
.end method
