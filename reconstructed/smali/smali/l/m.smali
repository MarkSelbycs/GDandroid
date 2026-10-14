.class public Ll/m;
.super Ll/o;
.source "ResolutionAnchor.java"


# instance fields
.field public c:Ll/e;

.field public d:F

.field public e:Ll/m;

.field public f:F

.field public g:Ll/m;

.field public h:F

.field public i:I

.field public j:Ll/m;

.field public k:F

.field public l:Ll/n;

.field public m:I

.field public n:Ll/n;

.field public o:I


# direct methods
.method public constructor <init>(Ll/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ll/o;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ll/m;->i:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ll/m;->l:Ll/n;

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Ll/m;->m:I

    .line 5
    iput-object v0, p0, Ll/m;->n:Ll/n;

    .line 6
    iput v1, p0, Ll/m;->o:I

    .line 7
    iput-object p1, p0, Ll/m;->c:Ll/e;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    invoke-super {p0}, Ll/o;->e()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ll/m;->e:Ll/m;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Ll/m;->f:F

    .line 4
    iput-object v0, p0, Ll/m;->l:Ll/n;

    const/4 v2, 0x1

    .line 5
    iput v2, p0, Ll/m;->m:I

    .line 6
    iput-object v0, p0, Ll/m;->n:Ll/n;

    .line 7
    iput v2, p0, Ll/m;->o:I

    .line 8
    iput-object v0, p0, Ll/m;->g:Ll/m;

    .line 9
    iput v1, p0, Ll/m;->h:F

    .line 10
    iput v1, p0, Ll/m;->d:F

    .line 11
    iput-object v0, p0, Ll/m;->j:Ll/m;

    .line 12
    iput v1, p0, Ll/m;->k:F

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Ll/m;->i:I

    return-void
.end method

.method public f()V
    .locals 8

    .line 1
    iget v0, p0, Ll/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ll/m;->i:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Ll/m;->l:Ll/n;

    if-eqz v2, :cond_3

    .line 4
    iget v3, v2, Ll/o;->b:I

    if-eq v3, v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v3, p0, Ll/m;->m:I

    int-to-float v3, v3

    iget v2, v2, Ll/n;->c:F

    mul-float/2addr v3, v2

    iput v3, p0, Ll/m;->f:F

    .line 6
    :cond_3
    iget-object v2, p0, Ll/m;->n:Ll/n;

    if-eqz v2, :cond_5

    .line 7
    iget v3, v2, Ll/o;->b:I

    if-eq v3, v1, :cond_4

    return-void

    .line 8
    :cond_4
    iget v3, p0, Ll/m;->o:I

    int-to-float v3, v3

    iget v2, v2, Ll/n;->c:F

    mul-float/2addr v3, v2

    iput v3, p0, Ll/m;->k:F

    :cond_5
    if-ne v0, v1, :cond_8

    .line 9
    iget-object v2, p0, Ll/m;->e:Ll/m;

    if-eqz v2, :cond_6

    iget v3, v2, Ll/o;->b:I

    if-ne v3, v1, :cond_8

    :cond_6
    if-nez v2, :cond_7

    .line 10
    iput-object p0, p0, Ll/m;->g:Ll/m;

    .line 11
    iget v0, p0, Ll/m;->f:F

    iput v0, p0, Ll/m;->h:F

    goto :goto_0

    .line 12
    :cond_7
    iget-object v0, v2, Ll/m;->g:Ll/m;

    iput-object v0, p0, Ll/m;->g:Ll/m;

    .line 13
    iget v0, v2, Ll/m;->h:F

    iget v1, p0, Ll/m;->f:F

    add-float/2addr v0, v1

    iput v0, p0, Ll/m;->h:F

    .line 14
    :goto_0
    invoke-virtual {p0}, Ll/o;->b()V

    goto/16 :goto_7

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_10

    .line 15
    iget-object v2, p0, Ll/m;->e:Ll/m;

    if-eqz v2, :cond_10

    iget v2, v2, Ll/o;->b:I

    if-ne v2, v1, :cond_10

    iget-object v2, p0, Ll/m;->j:Ll/m;

    if-eqz v2, :cond_10

    iget-object v2, v2, Ll/m;->e:Ll/m;

    if-eqz v2, :cond_10

    iget v2, v2, Ll/o;->b:I

    if-ne v2, v1, :cond_10

    .line 16
    invoke-static {}, Lk/e;->x()Lk/f;

    .line 17
    iget-object v0, p0, Ll/m;->e:Ll/m;

    iget-object v2, v0, Ll/m;->g:Ll/m;

    iput-object v2, p0, Ll/m;->g:Ll/m;

    .line 18
    iget-object v2, p0, Ll/m;->j:Ll/m;

    iget-object v3, v2, Ll/m;->e:Ll/m;

    iget-object v4, v3, Ll/m;->g:Ll/m;

    iput-object v4, v2, Ll/m;->g:Ll/m;

    .line 19
    iget-object v2, p0, Ll/m;->c:Ll/e;

    iget-object v4, v2, Ll/e;->c:Ll/e$d;

    sget-object v5, Ll/e$d;->d:Ll/e$d;

    const/4 v6, 0x0

    if-eq v4, v5, :cond_a

    sget-object v7, Ll/e$d;->e:Ll/e$d;

    if-ne v4, v7, :cond_9

    goto :goto_1

    :cond_9
    move v1, v6

    :cond_a
    :goto_1
    if-eqz v1, :cond_b

    .line 20
    iget v0, v0, Ll/m;->h:F

    iget v3, v3, Ll/m;->h:F

    sub-float/2addr v0, v3

    goto :goto_2

    .line 21
    :cond_b
    iget v3, v3, Ll/m;->h:F

    iget v0, v0, Ll/m;->h:F

    sub-float v0, v3, v0

    .line 22
    :goto_2
    sget-object v3, Ll/e$d;->b:Ll/e$d;

    if-eq v4, v3, :cond_d

    if-ne v4, v5, :cond_c

    goto :goto_3

    .line 23
    :cond_c
    iget-object v2, v2, Ll/e;->b:Ll/f;

    invoke-virtual {v2}, Ll/f;->r()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 24
    iget-object v2, p0, Ll/m;->c:Ll/e;

    iget-object v2, v2, Ll/e;->b:Ll/f;

    iget v2, v2, Ll/f;->a0:F

    goto :goto_4

    .line 25
    :cond_d
    :goto_3
    iget-object v2, v2, Ll/e;->b:Ll/f;

    invoke-virtual {v2}, Ll/f;->D()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 26
    iget-object v2, p0, Ll/m;->c:Ll/e;

    iget-object v2, v2, Ll/e;->b:Ll/f;

    iget v2, v2, Ll/f;->Z:F

    .line 27
    :goto_4
    iget-object v3, p0, Ll/m;->c:Ll/e;

    invoke-virtual {v3}, Ll/e;->d()I

    move-result v3

    .line 28
    iget-object v4, p0, Ll/m;->j:Ll/m;

    iget-object v4, v4, Ll/m;->c:Ll/e;

    invoke-virtual {v4}, Ll/e;->d()I

    move-result v4

    .line 29
    iget-object v5, p0, Ll/m;->c:Ll/e;

    invoke-virtual {v5}, Ll/e;->i()Ll/e;

    move-result-object v5

    iget-object v7, p0, Ll/m;->j:Ll/m;

    iget-object v7, v7, Ll/m;->c:Ll/e;

    invoke-virtual {v7}, Ll/e;->i()Ll/e;

    move-result-object v7

    if-ne v5, v7, :cond_e

    const/high16 v2, 0x3f000000    # 0.5f

    move v4, v6

    goto :goto_5

    :cond_e
    move v6, v3

    :goto_5
    int-to-float v3, v6

    sub-float/2addr v0, v3

    int-to-float v4, v4

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_f

    .line 30
    iget-object v1, p0, Ll/m;->j:Ll/m;

    iget-object v6, v1, Ll/m;->e:Ll/m;

    iget v6, v6, Ll/m;->h:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v6, v4

    iput v6, v1, Ll/m;->h:F

    .line 31
    iget-object v1, p0, Ll/m;->e:Ll/m;

    iget v1, v1, Ll/m;->h:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float/2addr v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Ll/m;->h:F

    goto :goto_6

    .line 32
    :cond_f
    iget-object v1, p0, Ll/m;->e:Ll/m;

    iget v1, v1, Ll/m;->h:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iput v1, p0, Ll/m;->h:F

    .line 33
    iget-object v1, p0, Ll/m;->j:Ll/m;

    iget-object v3, v1, Ll/m;->e:Ll/m;

    iget v3, v3, Ll/m;->h:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float/2addr v0, v5

    sub-float/2addr v3, v0

    iput v3, v1, Ll/m;->h:F

    .line 34
    :goto_6
    invoke-virtual {p0}, Ll/o;->b()V

    .line 35
    iget-object v0, p0, Ll/m;->j:Ll/m;

    invoke-virtual {v0}, Ll/o;->b()V

    goto :goto_7

    :cond_10
    const/4 v2, 0x3

    if-ne v0, v2, :cond_11

    .line 36
    iget-object v2, p0, Ll/m;->e:Ll/m;

    if-eqz v2, :cond_11

    iget v2, v2, Ll/o;->b:I

    if-ne v2, v1, :cond_11

    iget-object v2, p0, Ll/m;->j:Ll/m;

    if-eqz v2, :cond_11

    iget-object v2, v2, Ll/m;->e:Ll/m;

    if-eqz v2, :cond_11

    iget v2, v2, Ll/o;->b:I

    if-ne v2, v1, :cond_11

    .line 37
    invoke-static {}, Lk/e;->x()Lk/f;

    .line 38
    iget-object v0, p0, Ll/m;->e:Ll/m;

    iget-object v1, v0, Ll/m;->g:Ll/m;

    iput-object v1, p0, Ll/m;->g:Ll/m;

    .line 39
    iget-object v1, p0, Ll/m;->j:Ll/m;

    iget-object v2, v1, Ll/m;->e:Ll/m;

    iget-object v3, v2, Ll/m;->g:Ll/m;

    iput-object v3, v1, Ll/m;->g:Ll/m;

    .line 40
    iget v0, v0, Ll/m;->h:F

    iget v3, p0, Ll/m;->f:F

    add-float/2addr v0, v3

    iput v0, p0, Ll/m;->h:F

    .line 41
    iget v0, v2, Ll/m;->h:F

    iget v2, v1, Ll/m;->f:F

    add-float/2addr v0, v2

    iput v0, v1, Ll/m;->h:F

    .line 42
    invoke-virtual {p0}, Ll/o;->b()V

    .line 43
    iget-object v0, p0, Ll/m;->j:Ll/m;

    invoke-virtual {v0}, Ll/o;->b()V

    goto :goto_7

    :cond_11
    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 44
    iget-object v0, p0, Ll/m;->c:Ll/e;

    iget-object v0, v0, Ll/e;->b:Ll/f;

    invoke-virtual {v0}, Ll/f;->U()V

    :cond_12
    :goto_7
    return-void
.end method

.method public g(Lk/e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/m;->c:Ll/e;

    invoke-virtual {v0}, Ll/e;->g()Lk/i;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ll/m;->g:Ll/m;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    .line 3
    iget v1, p0, Ll/m;->h:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lk/e;->f(Lk/i;I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v1, Ll/m;->c:Ll/e;

    invoke-virtual {p1, v1}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v1

    .line 5
    iget v3, p0, Ll/m;->h:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    :goto_0
    return-void
.end method

.method public h(ILl/m;I)V
    .locals 0

    .line 1
    iput p1, p0, Ll/m;->i:I

    .line 2
    iput-object p2, p0, Ll/m;->e:Ll/m;

    int-to-float p1, p3

    .line 3
    iput p1, p0, Ll/m;->f:F

    .line 4
    invoke-virtual {p2, p0}, Ll/o;->a(Ll/o;)V

    return-void
.end method

.method public i(Ll/m;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/m;->e:Ll/m;

    int-to-float p2, p2

    .line 2
    iput p2, p0, Ll/m;->f:F

    .line 3
    invoke-virtual {p1, p0}, Ll/o;->a(Ll/o;)V

    return-void
.end method

.method public j(Ll/m;ILl/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/m;->e:Ll/m;

    .line 2
    invoke-virtual {p1, p0}, Ll/o;->a(Ll/o;)V

    .line 3
    iput-object p3, p0, Ll/m;->l:Ll/n;

    .line 4
    iput p2, p0, Ll/m;->m:I

    .line 5
    invoke-virtual {p3, p0}, Ll/o;->a(Ll/o;)V

    return-void
.end method

.method public k()F
    .locals 1

    iget v0, p0, Ll/m;->h:F

    return v0
.end method

.method public l(Ll/m;F)V
    .locals 2

    .line 1
    iget v0, p0, Ll/o;->b:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Ll/m;->g:Ll/m;

    if-eq v1, p1, :cond_2

    iget v1, p0, Ll/m;->h:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_2

    .line 2
    :cond_0
    iput-object p1, p0, Ll/m;->g:Ll/m;

    .line 3
    iput p2, p0, Ll/m;->h:F

    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    .line 4
    invoke-virtual {p0}, Ll/o;->c()V

    .line 5
    :cond_1
    invoke-virtual {p0}, Ll/o;->b()V

    :cond_2
    return-void
.end method

.method public m(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "DIRECT"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "CENTER"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "MATCH"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "CHAIN"

    return-object p1

    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const-string p1, "BARRIER"

    return-object p1

    :cond_4
    const-string p1, "UNCONNECTED"

    return-object p1
.end method

.method public n(Ll/m;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/m;->j:Ll/m;

    .line 2
    iput p2, p0, Ll/m;->k:F

    return-void
.end method

.method public o(Ll/m;ILl/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/m;->j:Ll/m;

    .line 2
    iput-object p3, p0, Ll/m;->n:Ll/n;

    .line 3
    iput p2, p0, Ll/m;->o:I

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Ll/m;->i:I

    return-void
.end method

.method public q()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/m;->c:Ll/e;

    invoke-virtual {v0}, Ll/e;->i()Ll/e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ll/e;->i()Ll/e;

    move-result-object v1

    iget-object v2, p0, Ll/m;->c:Ll/e;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    .line 3
    iput v1, p0, Ll/m;->i:I

    .line 4
    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v2

    iput v1, v2, Ll/m;->i:I

    .line 5
    :cond_1
    iget-object v1, p0, Ll/m;->c:Ll/e;

    invoke-virtual {v1}, Ll/e;->d()I

    move-result v1

    .line 6
    iget-object v2, p0, Ll/m;->c:Ll/e;

    iget-object v2, v2, Ll/e;->c:Ll/e$d;

    sget-object v3, Ll/e$d;->d:Ll/e$d;

    if-eq v2, v3, :cond_2

    sget-object v3, Ll/e$d;->e:Ll/e$d;

    if-ne v2, v3, :cond_3

    :cond_2
    neg-int v1, v1

    .line 7
    :cond_3
    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ll/m;->i(Ll/m;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Ll/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Ll/m;->g:Ll/m;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll/m;->c:Ll/e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/m;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/m;->i:I

    invoke-virtual {p0, v1}, Ll/m;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ll/m;->c:Ll/e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll/m;->g:Ll/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/m;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/m;->i:I

    .line 5
    invoke-virtual {p0, v1}, Ll/m;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll/m;->c:Ll/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/m;->i:I

    invoke-virtual {p0, v1}, Ll/m;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
