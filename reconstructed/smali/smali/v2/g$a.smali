.class public final Lv2/g$a;
.super Ls2/s;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls2/s<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ls2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/s<",
            "TK;>;"
        }
    .end annotation
.end field

.field public final b:Ls2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/s<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Lu2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu2/h<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lv2/g;


# direct methods
.method public constructor <init>(Lv2/g;Ls2/e;Ljava/lang/reflect/Type;Ls2/s;Ljava/lang/reflect/Type;Ls2/s;Lu2/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/e;",
            "Ljava/lang/reflect/Type;",
            "Ls2/s<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Ls2/s<",
            "TV;>;",
            "Lu2/h<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv2/g$a;->d:Lv2/g;

    invoke-direct {p0}, Ls2/s;-><init>()V

    .line 2
    new-instance p1, Lv2/l;

    invoke-direct {p1, p2, p4, p3}, Lv2/l;-><init>(Ls2/e;Ls2/s;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lv2/g$a;->a:Ls2/s;

    .line 3
    new-instance p1, Lv2/l;

    invoke-direct {p1, p2, p6, p5}, Lv2/l;-><init>(Ls2/e;Ls2/s;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lv2/g$a;->b:Ls2/s;

    .line 4
    iput-object p7, p0, Lv2/g$a;->c:Lu2/h;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ly2/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv2/g$a;->f(Ly2/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Ly2/c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lv2/g$a;->g(Ly2/c;Ljava/util/Map;)V

    return-void
.end method

.method public final e(Ls2/i;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ls2/i;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Ls2/i;->d()Ls2/o;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ls2/o;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ls2/o;->n()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ls2/o;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Ls2/o;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Ls2/o;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Ls2/o;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Ls2/i;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public f(Ly2/a;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/a;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ly2/a;->V()Ly2/b;

    move-result-object v0

    .line 2
    sget-object v1, Ly2/b;->i:Ly2/b;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ly2/a;->K()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Lv2/g$a;->c:Lu2/h;

    invoke-interface {v1}, Lu2/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5
    sget-object v2, Ly2/b;->a:Ly2/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 6
    invoke-virtual {p1}, Ly2/a;->c()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Ly2/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Ly2/a;->c()V

    .line 9
    iget-object v0, p0, Lv2/g$a;->a:Ls2/s;

    invoke-virtual {v0, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lv2/g$a;->b:Ls2/s;

    invoke-virtual {v2, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {p1}, Ly2/a;->j()V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Ls2/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ls2/q;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p1}, Ly2/a;->j()V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p1}, Ly2/a;->e()V

    .line 16
    :goto_1
    invoke-virtual {p1}, Ly2/a;->r()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    sget-object v0, Lu2/e;->a:Lu2/e;

    invoke-virtual {v0, p1}, Lu2/e;->a(Ly2/a;)V

    .line 18
    iget-object v0, p0, Lv2/g$a;->a:Ls2/s;

    invoke-virtual {v0, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lv2/g$a;->b:Ls2/s;

    invoke-virtual {v2, p1}, Ls2/s;->b(Ly2/a;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    new-instance p1, Ls2/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ls2/q;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_5
    invoke-virtual {p1}, Ly2/a;->l()V

    :goto_2
    return-object v1
.end method

.method public g(Ly2/c;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/c;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Ly2/c;->u()Ly2/c;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lv2/g$a;->d:Lv2/g;

    iget-boolean v0, v0, Lv2/g;->b:Z

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ly2/c;->h()Ly2/c;

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ly2/c;->r(Ljava/lang/String;)Ly2/c;

    .line 6
    iget-object v1, p0, Lv2/g$a;->b:Ls2/s;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Ly2/c;->l()Ly2/c;

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 11
    iget-object v5, p0, Lv2/g$a;->a:Ls2/s;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ls2/s;->c(Ljava/lang/Object;)Ls2/i;

    move-result-object v5

    .line 12
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v5}, Ls2/i;->f()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Ls2/i;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 15
    invoke-virtual {p1}, Ly2/c;->f()Ly2/c;

    .line 16
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_6

    .line 17
    invoke-virtual {p1}, Ly2/c;->f()Ly2/c;

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls2/i;

    invoke-static {p2, p1}, Lu2/j;->b(Ls2/i;Ly2/c;)V

    .line 19
    iget-object p2, p0, Lv2/g$a;->b:Ls2/s;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Ly2/c;->j()Ly2/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {p1}, Ly2/c;->j()Ly2/c;

    goto :goto_6

    .line 22
    :cond_7
    invoke-virtual {p1}, Ly2/c;->h()Ly2/c;

    .line 23
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_8

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls2/i;

    .line 25
    invoke-virtual {p0, p2}, Lv2/g$a;->e(Ls2/i;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly2/c;->r(Ljava/lang/String;)Ly2/c;

    .line 26
    iget-object p2, p0, Lv2/g$a;->b:Ls2/s;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Ls2/s;->d(Ly2/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 27
    :cond_8
    invoke-virtual {p1}, Ly2/c;->l()Ly2/c;

    :goto_6
    return-void
.end method
