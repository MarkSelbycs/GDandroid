.class public final Lc3/b;
.super Lb3/d;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb3/d<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Lc3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc3/b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final f:Lc3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc3/b<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 8
    invoke-direct {p0, v0}, Lc3/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 9
    invoke-static {p1}, Lc3/c;->d(I)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v6}, Lc3/b;-><init>([Ljava/lang/Object;IIZLc3/b;Lc3/b;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;IIZLc3/b;Lc3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;IIZ",
            "Lc3/b<",
            "TE;>;",
            "Lc3/b<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb3/d;-><init>()V

    .line 2
    iput-object p1, p0, Lc3/b;->a:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lc3/b;->b:I

    .line 4
    iput p3, p0, Lc3/b;->c:I

    .line 5
    iput-boolean p4, p0, Lc3/b;->d:Z

    .line 6
    iput-object p5, p0, Lc3/b;->e:Lc3/b;

    .line 7
    iput-object p6, p0, Lc3/b;->f:Lc3/b;

    return-void
.end method

.method public static final synthetic e(Lc3/b;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc3/b;->a:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic f(Lc3/b;)I
    .locals 0

    iget p0, p0, Lc3/b;->c:I

    return p0
.end method

.method public static final synthetic h(Lc3/b;)I
    .locals 0

    iget p0, p0, Lc3/b;->b:I

    return p0
.end method


# virtual methods
.method public final D(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc3/b;->e:Lc3/b;

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 3
    sget-object v1, Lb3/g;->d:Lb3/g$a;

    array-length v0, v0

    invoke-virtual {v1, v0, p1}, Lb3/g$a;->a(II)I

    move-result p1

    .line 4
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lc3/c;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lc3/b;->a:[Ljava/lang/Object;

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final F(I)V
    .locals 1

    iget v0, p0, Lc3/b;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lc3/b;->D(I)V

    return-void
.end method

.method public final H(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lc3/b;->F(I)V

    .line 2
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lc3/b;->b:I

    iget v2, p0, Lc3/b;->c:I

    add-int/2addr v1, v2

    add-int v2, p1, p2

    invoke-static {v0, v0, v2, p1, v1}, Lb3/j;->d([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 3
    iget p1, p0, Lc3/b;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lc3/b;->c:I

    return-void
.end method

.method public final I()Z
    .locals 1

    iget-boolean v0, p0, Lc3/b;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lc3/b;->f:Lc3/b;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lc3/b;->d:Z

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

.method public final M(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/b;->e:Lc3/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lc3/b;->M(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget v0, p0, Lc3/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc3/b;->c:I

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 5
    iget v3, p0, Lc3/b;->b:I

    iget v4, p0, Lc3/b;->c:I

    add-int/2addr v3, v4

    invoke-static {v0, v0, p1, v2, v3}, Lb3/j;->d([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v0, p0, Lc3/b;->b:I

    iget v2, p0, Lc3/b;->c:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lc3/c;->f([Ljava/lang/Object;I)V

    .line 7
    iget p1, p0, Lc3/b;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lc3/b;->c:I

    return-object v1
.end method

.method public final P(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc3/b;->e:Lc3/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lc3/b;->P(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, Lc3/b;->c:I

    invoke-static {v0, v0, p1, v1, v2}, Lb3/j;->d([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v0, p0, Lc3/b;->c:I

    sub-int v1, v0, p2

    invoke-static {p1, v1, v0}, Lc3/c;->g([Ljava/lang/Object;II)V

    .line 5
    :goto_0
    iget p1, p0, Lc3/b;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lc3/b;->c:I

    return-void
.end method

.method public final T(IILjava/util/Collection;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/b;->e:Lc3/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lc3/b;->T(IILjava/util/Collection;Z)I

    move-result p1

    .line 3
    iget p2, p0, Lc3/b;->c:I

    sub-int/2addr p2, p1

    iput p2, p0, Lc3/b;->c:I

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 4
    iget-object v2, p0, Lc3/b;->a:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_1

    .line 5
    iget-object v2, p0, Lc3/b;->a:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int p3, p2, v1

    .line 6
    iget-object p4, p0, Lc3/b;->a:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, Lc3/b;->c:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, Lb3/j;->d([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget p2, p0, Lc3/b;->c:I

    sub-int p4, p2, p3

    invoke-static {p1, p4, p2}, Lc3/c;->g([Ljava/lang/Object;II)V

    .line 8
    iget p1, p0, Lc3/b;->c:I

    sub-int/2addr p1, p3

    iput p1, p0, Lc3/b;->c:I

    return p3
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 4
    sget-object v0, Lb3/b;->a:Lb3/b$a;

    iget v1, p0, Lc3/b;->c:I

    invoke-virtual {v0, p1, v1}, Lb3/b$a;->b(II)V

    .line 5
    iget v0, p0, Lc3/b;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lc3/b;->q(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 2
    iget v0, p0, Lc3/b;->b:I

    iget v1, p0, Lc3/b;->c:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lc3/b;->q(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 5
    sget-object v0, Lb3/b;->a:Lb3/b$a;

    iget v1, p0, Lc3/b;->c:I

    invoke-virtual {v0, p1, v1}, Lb3/b$a;->b(II)V

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 7
    iget v1, p0, Lc3/b;->b:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lc3/b;->j(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 3
    iget v1, p0, Lc3/b;->b:I

    iget v2, p0, Lc3/b;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lc3/b;->j(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lc3/b;->c:I

    return v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 2
    sget-object v0, Lb3/b;->a:Lb3/b$a;

    iget v1, p0, Lc3/b;->c:I

    invoke-virtual {v0, p1, v1}, Lb3/b$a;->a(II)V

    .line 3
    iget v0, p0, Lc3/b;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lc3/b;->M(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 2
    iget v0, p0, Lc3/b;->b:I

    iget v1, p0, Lc3/b;->c:I

    invoke-virtual {p0, v0, v1}, Lc3/b;->P(II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc3/b;->y(Ljava/util/List;)Z

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

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb3/b;->a:Lb3/b$a;

    iget v1, p0, Lc3/b;->c:I

    invoke-virtual {v0, p1, v1}, Lb3/b$a;->a(II)V

    .line 2
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lc3/b;->b:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lc3/b;->b:I

    iget v2, p0, Lc3/b;->c:I

    invoke-static {v0, v1, v2}, Lc3/c;->b([Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lc3/b;->c:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v2, p0, Lc3/b;->b:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lc3/b;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lc3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc3/b$a;-><init>(Lc3/b;I)V

    return-object v0
.end method

.method public final j(ILjava/util/Collection;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/b;->e:Lc3/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lc3/b;->j(ILjava/util/Collection;I)V

    .line 3
    iget-object p1, p0, Lc3/b;->e:Lc3/b;

    iget-object p1, p1, Lc3/b;->a:[Ljava/lang/Object;

    iput-object p1, p0, Lc3/b;->a:[Ljava/lang/Object;

    .line 4
    iget p1, p0, Lc3/b;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lc3/b;->c:I

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p3}, Lc3/b;->H(II)V

    const/4 v0, 0x0

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 7
    iget-object v1, p0, Lc3/b;->a:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Lc3/b;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v2, p0, Lc3/b;->b:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc3/b$a;-><init>(Lc3/b;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    sget-object v0, Lb3/b;->a:Lb3/b$a;

    iget v1, p0, Lc3/b;->c:I

    invoke-virtual {v0, p1, v1}, Lb3/b$a;->b(II)V

    .line 3
    new-instance v0, Lc3/b$a;

    invoke-direct {v0, p0, p1}, Lc3/b$a;-><init>(Lc3/b;I)V

    return-object v0
.end method

.method public final q(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/b;->e:Lc3/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lc3/b;->q(ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lc3/b;->e:Lc3/b;

    iget-object p1, p1, Lc3/b;->a:[Ljava/lang/Object;

    iput-object p1, p0, Lc3/b;->a:[Ljava/lang/Object;

    .line 4
    iget p1, p0, Lc3/b;->c:I

    add-int/2addr p1, v1

    iput p1, p0, Lc3/b;->c:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v1}, Lc3/b;->H(II)V

    .line 6
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    aput-object p2, v0, p1

    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 2
    invoke-virtual {p0, p1}, Lc3/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lb3/d;->remove(I)Ljava/lang/Object;

    :cond_0
    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 2
    iget v0, p0, Lc3/b;->b:I

    iget v1, p0, Lc3/b;->c:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lc3/b;->T(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 2
    iget v0, p0, Lc3/b;->b:I

    iget v1, p0, Lc3/b;->c:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lc3/b;->T(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc3/b;->x()V

    .line 2
    sget-object v0, Lb3/b;->a:Lb3/b$a;

    iget v1, p0, Lc3/b;->c:I

    invoke-virtual {v0, p1, v1}, Lb3/b$a;->a(II)V

    .line 3
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lc3/b;->b:I

    add-int v2, v1, p1

    aget-object v2, v0, v2

    add-int/2addr v1, p1

    .line 4
    aput-object p2, v0, v1

    return-object v2
.end method

.method public subList(II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb3/b;->a:Lb3/b$a;

    iget v1, p0, Lc3/b;->c:I

    invoke-virtual {v0, p1, p2, v1}, Lb3/b$a;->c(III)V

    .line 2
    new-instance v0, Lc3/b;

    iget-object v3, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lc3/b;->b:I

    add-int v4, v1, p1

    sub-int v5, p2, p1

    iget-boolean v6, p0, Lc3/b;->d:Z

    iget-object p1, p0, Lc3/b;->f:Lc3/b;

    if-nez p1, :cond_0

    move-object v8, p0

    goto :goto_0

    :cond_0
    move-object v8, p1

    :goto_0
    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lc3/b;-><init>([Ljava/lang/Object;IIZLc3/b;Lc3/b;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 6
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lc3/b;->b:I

    iget v2, p0, Lc3/b;->c:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lb3/j;->f([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "destination"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    iget v1, p0, Lc3/b;->c:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v2, p0, Lc3/b;->b:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(array, offse\u2026h, destination.javaClass)"

    invoke-static {p1, v0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lc3/b;->b:I

    add-int/2addr v1, v3

    invoke-static {v0, p1, v2, v3, v1}, Lb3/j;->d([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 4
    array-length v0, p1

    iget v1, p0, Lc3/b;->c:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    aput-object v0, p1, v1

    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lc3/b;->b:I

    iget v2, p0, Lc3/b;->c:I

    invoke-static {v0, v1, v2}, Lc3/c;->c([Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/b;->e:Lc3/b;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc3/b;->x()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc3/b;->d:Z

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final x()V
    .locals 1

    invoke-virtual {p0}, Lc3/b;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final y(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lc3/b;->a:[Ljava/lang/Object;

    iget v1, p0, Lc3/b;->b:I

    iget v2, p0, Lc3/b;->c:I

    invoke-static {v0, v1, v2, p1}, Lc3/c;->a([Ljava/lang/Object;IILjava/util/List;)Z

    move-result p1

    return p1
.end method
