.class public Lh1/j;
.super Ljava/lang/Object;
.source "PropDesc.java"


# instance fields
.field public final a:Ljava/lang/reflect/Field;

.field public b:Ljava/lang/reflect/Method;

.field public c:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    .line 3
    invoke-static {p2}, Le2/k;->p(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lh1/j;->b:Ljava/lang/reflect/Method;

    .line 4
    invoke-static {p3}, Le2/k;->p(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lh1/j;->c:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Le2/d0;->k(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p2}, Le2/d0;->f(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final b(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Le2/d0;->l(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-static {p2, p1}, Le2/d0;->i(Ljava/lang/reflect/Method;I)Ljava/lang/reflect/Type;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public c()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Le2/d0;->d(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lh1/j;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lh1/j;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Lh1/j;->a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Le2/x;->i(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/reflect/Type;
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Le2/d0;->m(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lh1/j;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lh1/j;->c:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Lh1/j;->b(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/j;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1, v0, v1}, Le2/x;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Le2/n;->d(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    invoke-static {p1, v0}, Le2/x;->j(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    const-class v1, Lg1/d;

    invoke-static {v0, v1}, Lg1/b;->b(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lh1/j;->b:Ljava/lang/reflect/Method;

    const-class v1, Lg1/d;

    .line 2
    invoke-static {v0, v1}, Lg1/b;->b(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    const-class v1, Lg1/d;

    invoke-static {v0, v1}, Lg1/b;->b(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lh1/j;->c:Ljava/lang/reflect/Method;

    const-class v1, Lg1/d;

    .line 2
    invoke-static {v0, v1}, Lg1/b;->b(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/j;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Le2/n;->d(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lh1/j;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lh1/j;->h()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    new-array v2, v1, [Le2/n$a;

    sget-object v3, Le2/n$a;->i:Le2/n$a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Le2/n;->a(Ljava/lang/reflect/Field;[Le2/n$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Lh1/j;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    new-array v0, v1, [Le2/n$a;

    aput-object v3, v0, v4

    .line 3
    invoke-static {v2, v0}, Le2/n;->b(Ljava/lang/reflect/Method;[Le2/n$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lh1/j;->b:Ljava/lang/reflect/Method;

    const-class v1, Ljava/beans/Transient;

    invoke-static {v0, v1}, Lg1/b;->b(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final l()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    new-array v2, v1, [Le2/n$a;

    sget-object v3, Le2/n$a;->i:Le2/n$a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Le2/n;->a(Ljava/lang/reflect/Field;[Le2/n$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Lh1/j;->c:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    new-array v0, v1, [Le2/n$a;

    aput-object v3, v0, v4

    .line 3
    invoke-static {v2, v0}, Le2/n;->b(Ljava/lang/reflect/Method;[Le2/n$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lh1/j;->c:Ljava/lang/reflect/Method;

    const-class v1, Ljava/beans/Transient;

    invoke-static {v0, v1}, Lg1/b;->b(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public m(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/j;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Le2/n;->d(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lh1/j;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lh1/j;->i()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public n(Ljava/lang/Object;Ljava/lang/Object;)Lh1/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lh1/j;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 2
    invoke-static {p1, v0, v1}, Le2/x;->u(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    invoke-static {v0}, Le2/n;->d(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lh1/j;->a:Ljava/lang/reflect/Field;

    invoke-static {p1, v0, p2}, Le2/x;->G(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public o(Ljava/lang/Object;Ljava/lang/Object;ZZZ)Lh1/j;
    .locals 1

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    return-object p0

    :cond_0
    if-nez p5, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lh1/j;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_1

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p0}, Lh1/j;->d()Ljava/lang/Class;

    move-result-object p5

    .line 3
    invoke-virtual {p5, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 4
    invoke-static {p5, p2, v0, p4}, Ln1/c;->f(Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_4

    .line 5
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lh1/j;->n(Ljava/lang/Object;Ljava/lang/Object;)Lh1/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p4, :cond_5

    :cond_4
    :goto_0
    return-object p0

    .line 6
    :cond_5
    new-instance p2, Lh1/e;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p0}, Lh1/j;->e()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, p4

    const-string p4, "Set value of [{}] error!"

    invoke-direct {p2, p1, p4, p3}, Lh1/e;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method
