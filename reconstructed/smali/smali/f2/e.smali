.class public Lf2/e;
.super Ljava/lang/Object;
.source "JSONArray.java"

# interfaces
.implements Lf2/b;
.implements Lf2/i;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf2/b;",
        "Lf2/i<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lf2/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lf2/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-static {}, Lf2/f;->b()Lf2/f;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lf2/e;-><init>(ILf2/f;)V

    return-void
.end method

.method public constructor <init>(ILf2/f;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lf2/e;->a:Ljava/util/List;

    .line 6
    sget-object p1, Lf2/c;->a:Lf2/c;

    invoke-static {p2, p1}, Le2/p;->d(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf2/f;

    iput-object p1, p0, Lf2/e;->b:Lf2/f;

    return-void
.end method

.method public constructor <init>(Lf2/f;)V
    .locals 1

    const/16 v0, 0xa

    .line 3
    invoke-direct {p0, v0, p1}, Lf2/e;-><init>(ILf2/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, v0}, Lf2/e;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lf2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lf2/e;-><init>(Ljava/lang/Object;Lf2/f;Lv1/i;)V

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
            "Ly1/a<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    const/16 v0, 0xa

    .line 10
    invoke-direct {p0, v0, p2}, Lf2/e;-><init>(ILf2/f;)V

    .line 11
    invoke-static {p1}, Lf2/q;->i(Ljava/lang/Object;)Lf2/q;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lf2/q;->a(Lf2/e;Lv1/i;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 8
    invoke-static {}, Lf2/f;->b()Lf2/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lf2/f;->D(Z)Lf2/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lf2/e;-><init>(Ljava/lang/Object;Lf2/f;)V

    return-void
.end method

.method public static synthetic j(Lg2/d;Lv1/i;Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lf2/e;->y(Lg2/d;Lv1/i;Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic y(Lg2/d;Lv1/i;Ljava/lang/Object;I)V
    .locals 1

    new-instance v0, Ly1/d;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p3, p2}, Ly1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lg2/d;->l(Ly1/d;Lv1/i;)Lg2/d;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Object;)Lf2/e;
    .locals 0

    invoke-virtual {p0, p1}, Lf2/e;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public F(ILjava/lang/Object;Lv1/i;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Lv1/i<",
            "Ly1/d<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Ly1/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ly1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p3, v0}, Lv1/i;->accept(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {v0}, Lv1/l;->e()Ljava/lang/Object;

    move-result-object p2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf2/e;->size()I

    move-result p3

    if-lt p1, p3, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lf2/e;->add(ILjava/lang/Object;)V

    .line 6
    :cond_1
    iget-object p3, p0, Lf2/e;->a:Ljava/util/List;

    iget-object v0, p0, Lf2/e;->b:Lf2/f;

    invoke-static {p2, v0}, Lf2/p;->n(Ljava/lang/Object;Lf2/f;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public H(Ljava/io/Writer;IILv1/i;)Ljava/io/Writer;
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
    iget-object v0, p0, Lf2/e;->b:Lf2/f;

    invoke-static {p1, p2, p3, v0}, Lg2/d;->i(Ljava/io/Writer;IILf2/f;)Lg2/d;

    move-result-object p2

    invoke-virtual {p2}, Lg2/d;->c()Lg2/d;

    move-result-object p2

    .line 2
    new-instance p3, Lf2/d;

    invoke-direct {p3, p2, p4}, Lf2/d;-><init>(Lg2/d;Lv1/i;)V

    invoke-static {p0, p3}, Ll1/c;->e(Ljava/lang/Iterable;Ll1/c$a;)V

    .line 3
    invoke-virtual {p2}, Lg2/d;->f()Lg2/d;

    return-object p1
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2

    if-ltz p1, :cond_2

    .line 2
    invoke-virtual {p0}, Lf2/e;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-static {p2}, Lf2/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    iget-object v1, p0, Lf2/e;->b:Lf2/f;

    invoke-static {p2, v1}, Lf2/p;->n(Ljava/lang/Object;Lf2/f;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lf2/e;->size()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 6
    sget-object v0, Lf2/j;->a:Lf2/j;

    invoke-virtual {p0, v0}, Lf2/e;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p2}, Lf2/e;->D(Ljava/lang/Object;)Lf2/e;

    :goto_1
    return-void

    .line 8
    :cond_2
    new-instance p2, Lf2/h;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "JSONArray[{}] not found."

    invoke-direct {p2, p1, v0}, Lf2/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/e;->b:Lf2/f;

    invoke-static {p1, v0}, Lf2/p;->n(Ljava/lang/Object;Lf2/f;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf2/e;->u(Ljava/lang/Object;Lv1/i;)Z

    move-result p1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Ll1/c;->g(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lf2/e;->b:Lf2/f;

    invoke-static {v1, v2}, Lf2/p;->n(Ljava/lang/Object;Lf2/f;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ll1/c;->g(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lf2/e;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf2/e;

    .line 2
    iget-object v1, p0, Lf2/e;->a:Ljava/util/List;

    invoke-static {v1}, Le2/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, v0, Lf2/e;->a:Ljava/util/List;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lf2/e;->x(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lf2/e;

    .line 3
    iget-object v2, p0, Lf2/e;->a:Ljava/util/List;

    if-nez v2, :cond_4

    .line 4
    iget-object p1, p1, Lf2/e;->a:Ljava/util/List;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 5
    :cond_4
    iget-object p1, p1, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Lf2/f;
    .locals 1

    iget-object v0, p0, Lf2/e;->b:Lf2/f;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/io/Writer;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lf2/e;->H(Ljava/io/Writer;IILv1/i;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lf2/e;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lf2/e;->F(ILjava/lang/Object;Lv1/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lf2/g;->c(Lf2/e;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lf2/b;->Y(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;Lv1/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lv1/i<",
            "Ly1/a<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1
    new-instance v0, Ly1/c;

    invoke-direct {v0, p1}, Ly1/c;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p2, v0}, Lv1/i;->accept(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Ly1/a;->get()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    :goto_0
    iget-object p2, p0, Lf2/e;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public x(Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lf2/e;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lf2/e;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method
