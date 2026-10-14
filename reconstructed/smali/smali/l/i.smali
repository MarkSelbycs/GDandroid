.class public Ll/i;
.super Ll/f;
.source "Guideline.java"


# instance fields
.field public A0:Z

.field public B0:I

.field public C0:Ll/l;

.field public D0:I

.field public v0:F

.field public w0:I

.field public x0:I

.field public y0:Ll/e;

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ll/f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Ll/i;->v0:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ll/i;->w0:I

    .line 4
    iput v0, p0, Ll/i;->x0:I

    .line 5
    iget-object v0, p0, Ll/f;->v:Ll/e;

    iput-object v0, p0, Ll/i;->y0:Ll/e;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ll/i;->z0:I

    .line 7
    iput-boolean v0, p0, Ll/i;->A0:Z

    .line 8
    iput v0, p0, Ll/i;->B0:I

    .line 9
    new-instance v1, Ll/l;

    invoke-direct {v1}, Ll/l;-><init>()V

    iput-object v1, p0, Ll/i;->C0:Ll/l;

    const/16 v1, 0x8

    .line 10
    iput v1, p0, Ll/i;->D0:I

    .line 11
    iget-object v1, p0, Ll/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 12
    iget-object v1, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v2, p0, Ll/i;->y0:Ll/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v1, p0, Ll/f;->C:[Ll/e;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 14
    iget-object v2, p0, Ll/f;->C:[Ll/e;

    iget-object v3, p0, Ll/i;->y0:Ll/e;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public G0(Lk/e;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ll/f;->u()Ll/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Ll/i;->y0:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->y(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget v0, p0, Ll/i;->z0:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Ll/f;->C0(I)V

    .line 5
    invoke-virtual {p0, v2}, Ll/f;->D0(I)V

    .line 6
    invoke-virtual {p0}, Ll/f;->u()Ll/f;

    move-result-object p1

    invoke-virtual {p1}, Ll/f;->r()I

    move-result p1

    invoke-virtual {p0, p1}, Ll/f;->b0(I)V

    .line 7
    invoke-virtual {p0, v2}, Ll/f;->y0(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v2}, Ll/f;->C0(I)V

    .line 9
    invoke-virtual {p0, p1}, Ll/f;->D0(I)V

    .line 10
    invoke-virtual {p0}, Ll/f;->u()Ll/f;

    move-result-object p1

    invoke-virtual {p1}, Ll/f;->D()I

    move-result p1

    invoke-virtual {p0, p1}, Ll/f;->y0(I)V

    .line 11
    invoke-virtual {p0, v2}, Ll/f;->b0(I)V

    :goto_0
    return-void
.end method

.method public I0()I
    .locals 1

    iget v0, p0, Ll/i;->z0:I

    return v0
.end method

.method public J0(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    iput v1, p0, Ll/i;->v0:F

    .line 2
    iput p1, p0, Ll/i;->w0:I

    .line 3
    iput v0, p0, Ll/i;->x0:I

    :cond_0
    return-void
.end method

.method public K0(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1
    iput v1, p0, Ll/i;->v0:F

    .line 2
    iput v0, p0, Ll/i;->w0:I

    .line 3
    iput p1, p0, Ll/i;->x0:I

    :cond_0
    return-void
.end method

.method public L0(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iput p1, p0, Ll/i;->v0:F

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ll/i;->w0:I

    .line 3
    iput p1, p0, Ll/i;->x0:I

    :cond_0
    return-void
.end method

.method public M0(I)V
    .locals 3

    .line 1
    iget v0, p0, Ll/i;->z0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Ll/i;->z0:I

    .line 3
    iget-object p1, p0, Ll/f;->D:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget p1, p0, Ll/i;->z0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Ll/f;->u:Ll/e;

    iput-object p1, p0, Ll/i;->y0:Ll/e;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Ll/f;->v:Ll/e;

    iput-object p1, p0, Ll/i;->y0:Ll/e;

    .line 7
    :goto_0
    iget-object p1, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v0, p0, Ll/i;->y0:Ll/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Ll/f;->C:[Ll/e;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 9
    iget-object v1, p0, Ll/f;->C:[Ll/e;

    iget-object v2, p0, Ll/i;->y0:Ll/e;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public b(Lk/e;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ll/f;->u()Ll/f;

    move-result-object v0

    check-cast v0, Ll/g;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Ll/e$d;->b:Ll/e$d;

    invoke-virtual {v0, v1}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v1

    .line 3
    sget-object v2, Ll/e$d;->d:Ll/e$d;

    invoke-virtual {v0, v2}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v2

    .line 4
    iget-object v3, p0, Ll/f;->F:Ll/f;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Ll/f;->E:[Ll/f$b;

    aget-object v3, v3, v5

    sget-object v6, Ll/f$b;->b:Ll/f$b;

    if-ne v3, v6, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    .line 5
    :goto_0
    iget v6, p0, Ll/i;->z0:I

    if-nez v6, :cond_3

    .line 6
    sget-object v1, Ll/e$d;->c:Ll/e$d;

    invoke-virtual {v0, v1}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v1

    .line 7
    sget-object v2, Ll/e$d;->e:Ll/e$d;

    invoke-virtual {v0, v2}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v2

    .line 8
    iget-object v0, p0, Ll/f;->F:Ll/f;

    if-eqz v0, :cond_2

    iget-object v0, v0, Ll/f;->E:[Ll/f$b;

    aget-object v0, v0, v4

    sget-object v3, Ll/f$b;->b:Ll/f$b;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v3, v4

    .line 9
    :cond_3
    iget v0, p0, Ll/i;->w0:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_4

    .line 10
    iget-object v0, p0, Ll/i;->y0:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v1}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v1

    .line 12
    iget v6, p0, Ll/i;->w0:I

    invoke-virtual {p1, v0, v1, v6, v4}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    if-eqz v3, :cond_6

    .line 13
    invoke-virtual {p1, v2}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Lk/e;->i(Lk/i;Lk/i;II)V

    goto :goto_2

    .line 14
    :cond_4
    iget v0, p0, Ll/i;->x0:I

    if-eq v0, v6, :cond_5

    .line 15
    iget-object v0, p0, Ll/i;->y0:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v2}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v2

    .line 17
    iget v6, p0, Ll/i;->x0:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {p1, v1}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Lk/e;->i(Lk/i;Lk/i;II)V

    .line 19
    invoke-virtual {p1, v2, v0, v5, v7}, Lk/e;->i(Lk/i;Lk/i;II)V

    goto :goto_2

    .line 20
    :cond_5
    iget v0, p0, Ll/i;->v0:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Ll/i;->y0:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v4

    .line 22
    invoke-virtual {p1, v1}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v5

    .line 23
    invoke-virtual {p1, v2}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v6

    .line 24
    iget v7, p0, Ll/i;->v0:F

    iget-boolean v8, p0, Ll/i;->A0:Z

    move-object v3, p1

    .line 25
    invoke-static/range {v3 .. v8}, Lk/e;->t(Lk/e;Lk/i;Lk/i;Lk/i;FZ)Lk/b;

    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lk/e;->d(Lk/b;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ll/f;->u()Ll/f;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ll/i;->I0()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 3
    iget-object v0, p0, Ll/f;->v:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object v5, p1, Ll/f;->v:Ll/e;

    invoke-virtual {v5}, Ll/e;->f()Ll/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Ll/m;->h(ILl/m;I)V

    .line 4
    iget-object v0, p0, Ll/f;->x:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object v5, p1, Ll/f;->v:Ll/e;

    invoke-virtual {v5}, Ll/e;->f()Ll/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Ll/m;->h(ILl/m;I)V

    .line 5
    iget v0, p0, Ll/i;->w0:I

    if-eq v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Ll/f;->u:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object v1, p1, Ll/f;->u:Ll/e;

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    iget v2, p0, Ll/i;->w0:I

    invoke-virtual {v0, v4, v1, v2}, Ll/m;->h(ILl/m;I)V

    .line 7
    iget-object v0, p0, Ll/f;->w:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object p1, p1, Ll/f;->u:Ll/e;

    invoke-virtual {p1}, Ll/e;->f()Ll/m;

    move-result-object p1

    iget v1, p0, Ll/i;->w0:I

    invoke-virtual {v0, v4, p1, v1}, Ll/m;->h(ILl/m;I)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget v0, p0, Ll/i;->x0:I

    if-eq v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Ll/f;->u:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object v1, p1, Ll/f;->w:Ll/e;

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    iget v2, p0, Ll/i;->x0:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Ll/m;->h(ILl/m;I)V

    .line 10
    iget-object v0, p0, Ll/f;->w:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object p1, p1, Ll/f;->w:Ll/e;

    invoke-virtual {p1}, Ll/e;->f()Ll/m;

    move-result-object p1

    iget v1, p0, Ll/i;->x0:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Ll/m;->h(ILl/m;I)V

    goto/16 :goto_0

    .line 11
    :cond_2
    iget v0, p0, Ll/i;->v0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ll/f;->s()Ll/f$b;

    move-result-object v0

    sget-object v1, Ll/f$b;->a:Ll/f$b;

    if-ne v0, v1, :cond_6

    .line 12
    iget v0, p1, Ll/f;->G:I

    int-to-float v0, v0

    iget v1, p0, Ll/i;->v0:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 13
    iget-object v1, p0, Ll/f;->u:Ll/e;

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    iget-object v2, p1, Ll/f;->u:Ll/e;

    invoke-virtual {v2}, Ll/e;->f()Ll/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Ll/m;->h(ILl/m;I)V

    .line 14
    iget-object v1, p0, Ll/f;->w:Ll/e;

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    iget-object p1, p1, Ll/f;->u:Ll/e;

    invoke-virtual {p1}, Ll/e;->f()Ll/m;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Ll/m;->h(ILl/m;I)V

    goto/16 :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Ll/f;->u:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object v5, p1, Ll/f;->u:Ll/e;

    invoke-virtual {v5}, Ll/e;->f()Ll/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Ll/m;->h(ILl/m;I)V

    .line 16
    iget-object v0, p0, Ll/f;->w:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object v5, p1, Ll/f;->u:Ll/e;

    invoke-virtual {v5}, Ll/e;->f()Ll/m;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v3}, Ll/m;->h(ILl/m;I)V

    .line 17
    iget v0, p0, Ll/i;->w0:I

    if-eq v0, v2, :cond_4

    .line 18
    iget-object v0, p0, Ll/f;->v:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object v1, p1, Ll/f;->v:Ll/e;

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    iget v2, p0, Ll/i;->w0:I

    invoke-virtual {v0, v4, v1, v2}, Ll/m;->h(ILl/m;I)V

    .line 19
    iget-object v0, p0, Ll/f;->x:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object p1, p1, Ll/f;->v:Ll/e;

    invoke-virtual {p1}, Ll/e;->f()Ll/m;

    move-result-object p1

    iget v1, p0, Ll/i;->w0:I

    invoke-virtual {v0, v4, p1, v1}, Ll/m;->h(ILl/m;I)V

    goto :goto_0

    .line 20
    :cond_4
    iget v0, p0, Ll/i;->x0:I

    if-eq v0, v2, :cond_5

    .line 21
    iget-object v0, p0, Ll/f;->v:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object v1, p1, Ll/f;->x:Ll/e;

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    iget v2, p0, Ll/i;->x0:I

    neg-int v2, v2

    invoke-virtual {v0, v4, v1, v2}, Ll/m;->h(ILl/m;I)V

    .line 22
    iget-object v0, p0, Ll/f;->x:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget-object p1, p1, Ll/f;->x:Ll/e;

    invoke-virtual {p1}, Ll/e;->f()Ll/m;

    move-result-object p1

    iget v1, p0, Ll/i;->x0:I

    neg-int v1, v1

    invoke-virtual {v0, v4, p1, v1}, Ll/m;->h(ILl/m;I)V

    goto :goto_0

    .line 23
    :cond_5
    iget v0, p0, Ll/i;->v0:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ll/f;->B()Ll/f$b;

    move-result-object v0

    sget-object v1, Ll/f$b;->a:Ll/f$b;

    if-ne v0, v1, :cond_6

    .line 24
    iget v0, p1, Ll/f;->H:I

    int-to-float v0, v0

    iget v1, p0, Ll/i;->v0:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 25
    iget-object v1, p0, Ll/f;->v:Ll/e;

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    iget-object v2, p1, Ll/f;->v:Ll/e;

    invoke-virtual {v2}, Ll/e;->f()Ll/m;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Ll/m;->h(ILl/m;I)V

    .line 26
    iget-object v1, p0, Ll/f;->x:Ll/e;

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    iget-object p1, p1, Ll/f;->v:Ll/e;

    invoke-virtual {p1}, Ll/e;->f()Ll/m;

    move-result-object p1

    invoke-virtual {v1, v4, p1, v0}, Ll/m;->h(ILl/m;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public h(Ll/e$d;)Ll/e;
    .locals 2

    .line 1
    sget-object v0, Ll/i$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :pswitch_1
    iget v0, p0, Ll/i;->z0:I

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Ll/i;->y0:Ll/e;

    return-object p1

    .line 4
    :pswitch_2
    iget v0, p0, Ll/i;->z0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p0, Ll/i;->y0:Ll/e;

    return-object p1

    .line 6
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ll/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    return-object v0
.end method
