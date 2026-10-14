.class public Lo1/a0;
.super Ln1/a;
.source "MapConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln1/a<",
        "Ljava/util/Map<",
        "**>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;

.field public final b:Ljava/lang/reflect/Type;

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Le2/d0;->o(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Le2/d0;->o(Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lo1/a0;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ln1/a;-><init>()V

    .line 3
    iput-object p1, p0, Lo1/a0;->a:Ljava/lang/reflect/Type;

    .line 4
    iput-object p2, p0, Lo1/a0;->b:Ljava/lang/reflect/Type;

    .line 5
    iput-object p3, p0, Lo1/a0;->c:Ljava/lang/reflect/Type;

    return-void
.end method

.method public static synthetic h(Lo1/a0;Ln1/g;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo1/a0;->u(Ln1/g;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic u(Ln1/g;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/a0;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Le2/d0;->r(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo1/a0;->b:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, p3}, Ln1/g;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 2
    :goto_0
    iget-object v0, p0, Lo1/a0;->c:Ljava/lang/reflect/Type;

    invoke-static {v0}, Le2/d0;->r(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo1/a0;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, p4}, Ln1/g;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 3
    :goto_1
    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lo1/a0;->j(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lo1/a0;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Le2/d0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    iget-object v3, p0, Lo1/a0;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v0}, Le2/d0;->p(Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    .line 5
    array-length v4, v0

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lo1/a0;->b:Ljava/lang/reflect/Type;

    aget-object v2, v0, v2

    .line 6
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lo1/a0;->c:Ljava/lang/reflect/Type;

    aget-object v0, v0, v1

    .line 7
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Ljava/util/Map;

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lo1/a0;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Le2/d0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, La2/i;->b(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 10
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lo1/a0;->q(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lh1/h;->j(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v2, [Ljava/lang/String;

    .line 12
    invoke-static {p1, v0}, Lh1/h;->e(Ljava/lang/Object;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lo1/a0;->j(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unsupport toMap value type: {}"

    invoke-static {p1, v1}, Lb2/c;->i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln1/g;->y()Ln1/g;

    move-result-object v0

    .line 2
    new-instance v1, Lo1/z;

    invoke-direct {v1, p0, v0, p2}, Lo1/z;-><init>(Lo1/a0;Ln1/g;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method
