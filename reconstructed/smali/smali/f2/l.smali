.class public Lf2/l;
.super La2/j;
.source "JSONObject.java"

# interfaces
.implements Lf2/b;
.implements Lf2/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La2/j<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lf2/b;",
        "Lf2/i<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lf2/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lf2/l;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(ILf2/f;)V
    .locals 1

    .line 5
    invoke-static {}, Lf2/f;->b()Lf2/f;

    move-result-object v0

    invoke-static {p2, v0}, Le2/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf2/f;

    invoke-static {p1, v0}, Lf2/a;->a(ILf2/f;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, La2/j;-><init>(Ljava/util/Map;)V

    .line 6
    invoke-static {}, Lf2/f;->b()Lf2/f;

    move-result-object p1

    invoke-static {p2, p1}, Le2/p;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf2/f;

    iput-object p1, p0, Lf2/l;->b:Lf2/f;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lf2/l;-><init>(IZZ)V

    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {}, Lf2/f;->b()Lf2/f;

    move-result-object p3

    invoke-virtual {p3, p2}, Lf2/f;->y(Z)Lf2/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lf2/l;-><init>(ILf2/f;)V

    return-void
.end method

.method public constructor <init>(Lf2/f;)V
    .locals 1

    const/16 v0, 0x10

    .line 4
    invoke-direct {p0, v0, p1}, Lf2/l;-><init>(ILf2/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-static {p1}, Lf2/a;->b(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lf2/l;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lf2/f;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lf2/l;-><init>(Ljava/lang/Object;Lf2/f;Lv1/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lf2/f;Lv1/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lf2/f;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x10

    .line 10
    invoke-direct {p0, v0, p2}, Lf2/l;-><init>(ILf2/f;)V

    .line 11
    invoke-static {p1}, Lf2/q;->i(Ljava/lang/Object;)Lf2/q;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lf2/q;->b(Lf2/l;Lv1/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    .line 8
    invoke-static {}, Lf2/f;->b()Lf2/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lf2/f;->D(Z)Lf2/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lf2/l;-><init>(Ljava/lang/Object;Lf2/f;)V

    return-void
.end method

.method public static synthetic I(Lg2/d;Lv1/i;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ly1/d;

    invoke-direct {v0, p2, p3}, Ly1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lg2/d;->l(Ly1/d;Lv1/i;)Lg2/d;

    return-void
.end method

.method public static synthetic y(Lg2/d;Lv1/i;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lf2/l;->I(Lg2/d;Lv1/i;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lf2/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0, p1}, Ls1/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lf2/e;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lf2/e;

    invoke-virtual {v0, p2}, Lf2/e;->D(Ljava/lang/Object;)Lf2/e;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lf2/l;->b:Lf2/f;

    invoke-static {v1}, Lf2/p;->a(Lf2/f;)Lf2/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf2/e;->D(Ljava/lang/Object;)Lf2/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lf2/e;->D(Ljava/lang/Object;)Lf2/e;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    :goto_0
    return-object p0
.end method

.method public F()Lf2/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, La2/j;->u()La2/j;

    move-result-object v0

    check-cast v0, Lf2/l;

    .line 2
    iget-object v1, p0, Lf2/l;->b:Lf2/f;

    iput-object v1, v0, Lf2/l;->b:Lf2/f;

    return-object v0
.end method

.method public H(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, La2/j;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public M(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lf2/l;->T(Ljava/lang/String;Ljava/lang/Object;Lv1/i;Z)Lf2/l;

    move-result-object p1

    return-object p1
.end method

.method public T(Ljava/lang/String;Ljava/lang/Object;Lv1/i;Z)Lf2/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)",
            "Lf2/l;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_2

    .line 1
    new-instance v0, Ly1/d;

    invoke-direct {v0, p1, p2}, Ly1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p3, v0}, Lv1/i;->accept(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0}, Lv1/l;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lv1/l;->e()Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p0

    .line 5
    :cond_2
    :goto_0
    iget-object p3, p0, Lf2/l;->b:Lf2/f;

    invoke-virtual {p3}, Lf2/f;->q()Z

    move-result p3

    .line 6
    invoke-static {p2}, Le2/p;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p0, p1}, La2/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_5

    .line 8
    invoke-virtual {p0, p1}, La2/j;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    new-instance p2, Lf2/h;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "Duplicate key \"{}\""

    invoke-direct {p2, p1, p3}, Lf2/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 10
    :cond_5
    :goto_1
    invoke-static {p2}, Lf2/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lf2/l;->b:Lf2/f;

    invoke-static {p2, p3}, Lf2/p;->n(Ljava/lang/Object;Lf2/f;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, La2/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object p0
.end method

.method public U(Ljava/io/Writer;IILv1/i;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "II",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/io/Writer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf2/l;->b:Lf2/f;

    invoke-static {p1, p2, p3, v0}, Lg2/d;->i(Ljava/io/Writer;IILf2/f;)Lg2/d;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lg2/d;->e()Lg2/d;

    move-result-object p2

    .line 3
    new-instance p3, Lf2/k;

    invoke-direct {p3, p2, p4}, Lf2/k;-><init>(Lg2/d;Lv1/i;)V

    invoke-virtual {p0, p3}, La2/j;->forEach(Ljava/util/function/BiConsumer;)V

    .line 4
    invoke-virtual {p2}, Lg2/d;->f()Lg2/d;

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lf2/l;->F()Lf2/l;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lf2/l;->H(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Lf2/f;
    .locals 1

    iget-object v0, p0, Lf2/l;->b:Lf2/f;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lf2/l;->M(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lf2/l;->P(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lf2/l;->U(Ljava/io/Writer;IILv1/i;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lf2/b;->Y(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()La2/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lf2/l;->F()Lf2/l;

    move-result-object v0

    return-object v0
.end method
