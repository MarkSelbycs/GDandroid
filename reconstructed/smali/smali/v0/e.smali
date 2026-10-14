.class public final Lv0/e;
.super Ljava/lang/Object;
.source "WorkConstraintsTracker.kt"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw0/c<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lw0/c<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "controllers"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv0/e;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lx0/m;)V
    .locals 3

    const-string v0, "trackers"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [Lw0/c;

    .line 3
    new-instance v1, Lw0/a;

    invoke-virtual {p1}, Lx0/m;->a()Lx0/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lw0/a;-><init>(Lx0/g;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Lw0/b;

    invoke-virtual {p1}, Lx0/m;->b()Lx0/c;

    move-result-object v2

    invoke-direct {v1, v2}, Lw0/b;-><init>(Lx0/c;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Lw0/h;

    invoke-virtual {p1}, Lx0/m;->d()Lx0/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lw0/h;-><init>(Lx0/g;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    new-instance v1, Lw0/d;

    invoke-virtual {p1}, Lx0/m;->c()Lx0/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lw0/d;-><init>(Lx0/g;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7
    new-instance v1, Lw0/g;

    invoke-virtual {p1}, Lx0/m;->c()Lx0/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lw0/g;-><init>(Lx0/g;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 8
    new-instance v1, Lw0/f;

    invoke-virtual {p1}, Lx0/m;->c()Lx0/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lw0/f;-><init>(Lx0/g;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lw0/e;

    invoke-virtual {p1}, Lx0/m;->c()Lx0/g;

    move-result-object p1

    invoke-direct {v1, p1}, Lw0/e;-><init>(Lx0/g;)V

    const/4 p1, 0x6

    aput-object v1, v0, p1

    .line 10
    invoke-static {v0}, Lb3/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lv0/e;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lz0/u;)Z
    .locals 13

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lv0/e;->a:Ljava/util/List;

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lw0/c;

    .line 4
    invoke-virtual {v2, p1}, Lw0/c;->e(Lz0/u;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v10, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    .line 8
    invoke-static {}, Lv0/f;->a()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Work "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lz0/u;->a:Ljava/lang/String;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " constrained by "

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9
    sget-object v7, Lv0/e$a;->b:Lv0/e$a;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v1, v10

    invoke-static/range {v1 .. v9}, Lb3/w;->t(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ll3/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {v0, v11, p1}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public final b(Lz0/u;)Lw3/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz0/u;",
            ")",
            "Lw3/d<",
            "Lv0/b;",
            ">;"
        }
    .end annotation

    const-string v0, "spec"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lv0/e;->a:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lw0/c;

    .line 4
    invoke-virtual {v3, p1}, Lw0/c;->c(Lz0/u;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lb3/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lw0/c;

    .line 9
    invoke-virtual {v1}, Lw0/c;->f()Lw3/d;

    move-result-object v1

    .line 10
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {p1}, Lb3/w;->B(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lw3/d;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, [Lw3/d;

    .line 14
    new-instance v0, Lv0/e$b;

    invoke-direct {v0, p1}, Lv0/e$b;-><init>([Lw3/d;)V

    .line 15
    invoke-static {v0}, Lw3/f;->b(Lw3/d;)Lw3/d;

    move-result-object p1

    return-object p1
.end method
