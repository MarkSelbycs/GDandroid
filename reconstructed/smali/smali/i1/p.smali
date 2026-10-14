.class public Li1/p;
.super Li1/b;
.source "ValueProviderToBeanCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li1/b<",
        "Li1/n<",
        "Ljava/lang/String;",
        ">;TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Li1/n;Ljava/lang/Object;Ljava/lang/reflect/Type;Li1/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/n<",
            "Ljava/lang/String;",
            ">;TT;",
            "Ljava/lang/reflect/Type;",
            "Li1/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p4}, Li1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Li1/i;)V

    .line 2
    iput-object p3, p0, Li1/p;->d:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static synthetic a(Li1/p;Ljava/lang/String;Lh1/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li1/p;->c(Ljava/lang/String;Lh1/j;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;Lh1/j;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v0, p1}, Li1/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Li1/b;->a:Ljava/lang/Object;

    check-cast v0, Li1/n;

    invoke-interface {v0, p1}, Li1/n;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v0, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v0, p1}, Li1/i;->F(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_6

    .line 4
    iget-object v0, p0, Li1/b;->c:Li1/i;

    iget-boolean v0, v0, Li1/i;->h:Z

    invoke-virtual {p2, v0}, Lh1/j;->m(Z)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    iget-object v0, p0, Li1/p;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p2}, Lh1/j;->f()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Le2/d0;->b(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 6
    iget-object v1, p0, Li1/b;->a:Ljava/lang/Object;

    check-cast v1, Li1/n;

    invoke-interface {v1, p1, v0}, Li1/n;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    iget-object v1, p0, Li1/b;->c:Li1/i;

    invoke-virtual {p2}, Lh1/j;->c()Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Li1/i;->H(Ljava/lang/reflect/Field;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 8
    :cond_5
    iget-object v1, p0, Li1/b;->c:Li1/i;

    invoke-virtual {v1, p1, v0}, Li1/i;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    iget-object v3, p0, Li1/b;->b:Ljava/lang/Object;

    iget-object p1, p0, Li1/b;->c:Li1/i;

    iget-boolean v5, p1, Li1/i;->b:Z

    iget-boolean v6, p1, Li1/i;->d:Z

    iget-boolean v7, p1, Li1/i;->i:Z

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lh1/j;->o(Ljava/lang/Object;Ljava/lang/Object;ZZZ)Lh1/j;

    :cond_6
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
    new-instance v1, Li1/o;

    invoke-direct {v1, p0}, Li1/o;-><init>(Li1/p;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    iget-object v0, p0, Li1/b;->b:Ljava/lang/Object;

    return-object v0
.end method
