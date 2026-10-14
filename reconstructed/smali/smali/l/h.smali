.class public Ll/h;
.super Ljava/lang/Object;
.source "ConstraintWidgetGroup.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Z

.field public final e:[I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ll/h;->b:I

    .line 3
    iput v0, p0, Ll/h;->c:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ll/h;->d:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v1

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 5
    iput-object v2, p0, Ll/h;->e:[I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/h;->f:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/h;->g:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ll/h;->h:Ljava/util/HashSet;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ll/h;->i:Ljava/util/HashSet;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/h;->j:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/h;->k:Ljava/util/List;

    .line 12
    iput-object p1, p0, Ll/h;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll/f;",
            ">;Z)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Ll/h;->b:I

    .line 15
    iput v0, p0, Ll/h;->c:I

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Ll/h;->d:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v1

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 17
    iput-object v2, p0, Ll/h;->e:[I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/h;->f:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/h;->g:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ll/h;->h:Ljava/util/HashSet;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ll/h;->i:Ljava/util/HashSet;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/h;->j:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll/h;->k:Ljava/util/List;

    .line 24
    iput-object p1, p0, Ll/h;->a:Ljava/util/List;

    .line 25
    iput-boolean p2, p0, Ll/h;->d:Z

    return-void
.end method


# virtual methods
.method public a(Ll/f;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Ll/h;->h:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    iget-object p2, p0, Ll/h;->i:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ll/f;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ll/h;->f:Ljava/util/List;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Ll/h;->g:Ljava/util/List;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ll/f;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ll/h;->h:Ljava/util/HashSet;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Ll/h;->i:Ljava/util/HashSet;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ll/h;->j:Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Ll/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Ll/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/f;

    .line 5
    iget-boolean v3, v2, Ll/f;->i0:Z

    if-nez v3, :cond_1

    .line 6
    iget-object v3, p0, Ll/h;->j:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {p0, v3, v2}, Ll/h;->e(Ljava/util/ArrayList;Ll/f;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Ll/h;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    iget-object v0, p0, Ll/h;->k:Ljava/util/List;

    iget-object v1, p0, Ll/h;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, p0, Ll/h;->k:Ljava/util/List;

    iget-object v1, p0, Ll/h;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, p0, Ll/h;->j:Ljava/util/List;

    return-object v0
.end method

.method public final e(Ljava/util/ArrayList;Ll/f;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ll/f;",
            ">;",
            "Ll/f;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p2, Ll/f;->k0:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p2, Ll/f;->k0:Z

    .line 4
    invoke-virtual {p2}, Ll/f;->L()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    instance-of v0, p2, Ll/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    move-object v0, p2

    check-cast v0, Ll/j;

    .line 7
    iget v2, v0, Ll/j;->w0:I

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 8
    iget-object v4, v0, Ll/j;->v0:[Ll/f;

    aget-object v4, v4, v3

    invoke-virtual {p0, p1, v4}, Ll/h;->e(Ljava/util/ArrayList;Ll/f;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p2, Ll/f;->C:[Ll/e;

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 10
    iget-object v2, p2, Ll/f;->C:[Ll/e;

    aget-object v2, v2, v1

    iget-object v2, v2, Ll/e;->d:Ll/e;

    if-eqz v2, :cond_3

    .line 11
    iget-object v2, v2, Ll/e;->b:Ll/f;

    .line 12
    invoke-virtual {p2}, Ll/f;->u()Ll/f;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 13
    invoke-virtual {p0, p1, v2}, Ll/h;->e(Ljava/util/ArrayList;Ll/f;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final f(Ll/f;)V
    .locals 6

    .line 1
    iget-boolean v0, p1, Ll/f;->i0:Z

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {p1}, Ll/f;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Ll/f;->w:Ll/e;

    iget-object v0, v0, Ll/e;->d:Ll/e;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object v0, p1, Ll/f;->u:Ll/e;

    iget-object v0, v0, Ll/e;->d:Ll/e;

    :goto_1
    if-eqz v0, :cond_5

    .line 5
    iget-object v4, v0, Ll/e;->b:Ll/f;

    iget-boolean v5, v4, Ll/f;->j0:Z

    if-nez v5, :cond_3

    .line 6
    invoke-virtual {p0, v4}, Ll/h;->f(Ll/f;)V

    .line 7
    :cond_3
    iget-object v4, v0, Ll/e;->c:Ll/e$d;

    sget-object v5, Ll/e$d;->d:Ll/e$d;

    if-ne v4, v5, :cond_4

    .line 8
    iget-object v0, v0, Ll/e;->b:Ll/f;

    iget v4, v0, Ll/f;->K:I

    invoke-virtual {v0}, Ll/f;->D()I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_2

    .line 9
    :cond_4
    sget-object v5, Ll/e$d;->b:Ll/e$d;

    if-ne v4, v5, :cond_5

    .line 10
    iget-object v0, v0, Ll/e;->b:Ll/f;

    iget v4, v0, Ll/f;->K:I

    goto :goto_2

    :cond_5
    move v4, v1

    :goto_2
    if-eqz v3, :cond_6

    .line 11
    iget-object v0, p1, Ll/f;->w:Ll/e;

    invoke-virtual {v0}, Ll/e;->d()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_3

    .line 12
    :cond_6
    iget-object v0, p1, Ll/f;->u:Ll/e;

    invoke-virtual {v0}, Ll/e;->d()I

    move-result v0

    invoke-virtual {p1}, Ll/f;->D()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v4, v0

    .line 13
    :goto_3
    invoke-virtual {p1}, Ll/f;->D()I

    move-result v0

    sub-int v0, v4, v0

    .line 14
    invoke-virtual {p1, v0, v4}, Ll/f;->f0(II)V

    .line 15
    iget-object v0, p1, Ll/f;->y:Ll/e;

    iget-object v0, v0, Ll/e;->d:Ll/e;

    if-eqz v0, :cond_8

    .line 16
    iget-object v1, v0, Ll/e;->b:Ll/f;

    iget-boolean v3, v1, Ll/f;->j0:Z

    if-nez v3, :cond_7

    .line 17
    invoke-virtual {p0, v1}, Ll/h;->f(Ll/f;)V

    .line 18
    :cond_7
    iget-object v0, v0, Ll/e;->b:Ll/f;

    iget v1, v0, Ll/f;->L:I

    iget v0, v0, Ll/f;->U:I

    add-int/2addr v1, v0

    iget v0, p1, Ll/f;->U:I

    sub-int/2addr v1, v0

    .line 19
    iget v0, p1, Ll/f;->H:I

    add-int/2addr v0, v1

    .line 20
    invoke-virtual {p1, v1, v0}, Ll/f;->t0(II)V

    .line 21
    iput-boolean v2, p1, Ll/f;->j0:Z

    return-void

    .line 22
    :cond_8
    iget-object v0, p1, Ll/f;->x:Ll/e;

    iget-object v0, v0, Ll/e;->d:Ll/e;

    if-eqz v0, :cond_9

    move v1, v2

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_4

    .line 23
    :cond_a
    iget-object v0, p1, Ll/f;->v:Ll/e;

    iget-object v0, v0, Ll/e;->d:Ll/e;

    :goto_4
    if-eqz v0, :cond_d

    .line 24
    iget-object v3, v0, Ll/e;->b:Ll/f;

    iget-boolean v5, v3, Ll/f;->j0:Z

    if-nez v5, :cond_b

    .line 25
    invoke-virtual {p0, v3}, Ll/h;->f(Ll/f;)V

    .line 26
    :cond_b
    iget-object v3, v0, Ll/e;->c:Ll/e$d;

    sget-object v5, Ll/e$d;->e:Ll/e$d;

    if-ne v3, v5, :cond_c

    .line 27
    iget-object v0, v0, Ll/e;->b:Ll/f;

    iget v3, v0, Ll/f;->L:I

    invoke-virtual {v0}, Ll/f;->r()I

    move-result v0

    add-int v4, v3, v0

    goto :goto_5

    .line 28
    :cond_c
    sget-object v5, Ll/e$d;->c:Ll/e$d;

    if-ne v3, v5, :cond_d

    .line 29
    iget-object v0, v0, Ll/e;->b:Ll/f;

    iget v4, v0, Ll/f;->L:I

    :cond_d
    :goto_5
    if-eqz v1, :cond_e

    .line 30
    iget-object v0, p1, Ll/f;->x:Ll/e;

    invoke-virtual {v0}, Ll/e;->d()I

    move-result v0

    sub-int/2addr v4, v0

    goto :goto_6

    .line 31
    :cond_e
    iget-object v0, p1, Ll/f;->v:Ll/e;

    invoke-virtual {v0}, Ll/e;->d()I

    move-result v0

    invoke-virtual {p1}, Ll/f;->r()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v4, v0

    .line 32
    :goto_6
    invoke-virtual {p1}, Ll/f;->r()I

    move-result v0

    sub-int v0, v4, v0

    .line 33
    invoke-virtual {p1, v0, v4}, Ll/f;->t0(II)V

    .line 34
    iput-boolean v2, p1, Ll/f;->j0:Z

    :cond_f
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll/h;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Ll/h;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/f;

    .line 3
    invoke-virtual {p0, v2}, Ll/h;->f(Ll/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
