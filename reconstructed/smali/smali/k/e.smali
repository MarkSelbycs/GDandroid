.class public Lk/e;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/e$a;
    }
.end annotation


# static fields
.field public static q:I = 0x3e8


# instance fields
.field public a:I

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lk/i;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lk/e$a;

.field public d:I

.field public e:I

.field public f:[Lk/b;

.field public g:Z

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lk/c;

.field public m:[Lk/i;

.field public n:I

.field public o:[Lk/b;

.field public final p:Lk/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk/e;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lk/e;->b:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 4
    iput v2, p0, Lk/e;->d:I

    .line 5
    iput v2, p0, Lk/e;->e:I

    .line 6
    iput-object v1, p0, Lk/e;->f:[Lk/b;

    .line 7
    iput-boolean v0, p0, Lk/e;->g:Z

    new-array v1, v2, [Z

    .line 8
    iput-object v1, p0, Lk/e;->h:[Z

    const/4 v1, 0x1

    .line 9
    iput v1, p0, Lk/e;->i:I

    .line 10
    iput v0, p0, Lk/e;->j:I

    .line 11
    iput v2, p0, Lk/e;->k:I

    .line 12
    sget v1, Lk/e;->q:I

    new-array v1, v1, [Lk/i;

    iput-object v1, p0, Lk/e;->m:[Lk/i;

    .line 13
    iput v0, p0, Lk/e;->n:I

    new-array v0, v2, [Lk/b;

    .line 14
    iput-object v0, p0, Lk/e;->o:[Lk/b;

    new-array v0, v2, [Lk/b;

    .line 15
    iput-object v0, p0, Lk/e;->f:[Lk/b;

    .line 16
    invoke-virtual {p0}, Lk/e;->D()V

    .line 17
    new-instance v0, Lk/c;

    invoke-direct {v0}, Lk/c;-><init>()V

    iput-object v0, p0, Lk/e;->l:Lk/c;

    .line 18
    new-instance v1, Lk/d;

    invoke-direct {v1, v0}, Lk/d;-><init>(Lk/c;)V

    iput-object v1, p0, Lk/e;->c:Lk/e$a;

    .line 19
    new-instance v1, Lk/b;

    invoke-direct {v1, v0}, Lk/b;-><init>(Lk/c;)V

    iput-object v1, p0, Lk/e;->p:Lk/e$a;

    return-void
.end method

.method public static t(Lk/e;Lk/i;Lk/i;Lk/i;FZ)Lk/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lk/e;->g(Lk/b;)V

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lk/b;->i(Lk/i;Lk/i;Lk/i;F)Lk/b;

    move-result-object p0

    return-object p0
.end method

.method public static x()Lk/f;
    .locals 3

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public A()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lk/e;->g:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Lk/e;->j:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lk/e;->f:[Lk/b;

    aget-object v2, v2, v1

    .line 4
    iget-boolean v2, v2, Lk/b;->e:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lk/e;->c:Lk/e$a;

    invoke-virtual {p0, v0}, Lk/e;->B(Lk/e$a;)V

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lk/e;->o()V

    goto :goto_2

    .line 7
    :cond_3
    iget-object v0, p0, Lk/e;->c:Lk/e$a;

    invoke-virtual {p0, v0}, Lk/e;->B(Lk/e$a;)V

    :goto_2
    return-void
.end method

.method public B(Lk/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lk/b;

    invoke-virtual {p0, v0}, Lk/e;->F(Lk/b;)V

    .line 2
    invoke-virtual {p0, p1}, Lk/e;->v(Lk/e$a;)I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lk/e;->C(Lk/e$a;Z)I

    .line 4
    invoke-virtual {p0}, Lk/e;->o()V

    return-void
.end method

.method public final C(Lk/e$a;Z)I
    .locals 11

    const/4 p2, 0x0

    move v0, p2

    .line 1
    :goto_0
    iget v1, p0, Lk/e;->i:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lk/e;->h:[Z

    aput-boolean p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    move v1, v0

    :goto_1
    if-nez v0, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 3
    iget v2, p0, Lk/e;->i:I

    mul-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-interface {p1}, Lk/e$a;->getKey()Lk/i;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lk/e;->h:[Z

    invoke-interface {p1}, Lk/e$a;->getKey()Lk/i;

    move-result-object v4

    iget v4, v4, Lk/i;->b:I

    aput-boolean v3, v2, v4

    .line 6
    :cond_2
    iget-object v2, p0, Lk/e;->h:[Z

    invoke-interface {p1, p0, v2}, Lk/e$a;->a(Lk/e;[Z)Lk/i;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    iget-object v4, p0, Lk/e;->h:[Z

    iget v5, v2, Lk/i;->b:I

    aget-boolean v6, v4, v5

    if-eqz v6, :cond_3

    return v1

    .line 8
    :cond_3
    aput-boolean v3, v4, v5

    :cond_4
    if-eqz v2, :cond_9

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, -0x1

    move v6, p2

    move v7, v5

    .line 9
    :goto_2
    iget v8, p0, Lk/e;->j:I

    if-ge v6, v8, :cond_8

    .line 10
    iget-object v8, p0, Lk/e;->f:[Lk/b;

    aget-object v8, v8, v6

    .line 11
    iget-object v9, v8, Lk/b;->a:Lk/i;

    .line 12
    iget-object v9, v9, Lk/i;->g:Lk/i$a;

    sget-object v10, Lk/i$a;->a:Lk/i$a;

    if-ne v9, v10, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-boolean v9, v8, Lk/b;->e:Z

    if-eqz v9, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    invoke-virtual {v8, v2}, Lk/b;->s(Lk/i;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 15
    iget-object v9, v8, Lk/b;->d:Lk/a;

    invoke-virtual {v9, v2}, Lk/a;->f(Lk/i;)F

    move-result v9

    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_7

    .line 16
    iget v8, v8, Lk/b;->b:F

    neg-float v8, v8

    div-float/2addr v8, v9

    cmpg-float v9, v8, v4

    if-gez v9, :cond_7

    move v7, v6

    move v4, v8

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    if-le v7, v5, :cond_9

    .line 17
    iget-object v3, p0, Lk/e;->f:[Lk/b;

    aget-object v3, v3, v7

    .line 18
    iget-object v4, v3, Lk/b;->a:Lk/i;

    iput v5, v4, Lk/i;->c:I

    .line 19
    invoke-virtual {v3, v2}, Lk/b;->v(Lk/i;)V

    .line 20
    iget-object v2, v3, Lk/b;->a:Lk/i;

    iput v7, v2, Lk/i;->c:I

    .line 21
    invoke-virtual {v2, v3}, Lk/i;->f(Lk/b;)V

    goto :goto_1

    :cond_9
    move v0, v3

    goto/16 :goto_1

    :cond_a
    return v1
.end method

.method public final D()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lk/e;->f:[Lk/b;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lk/e;->l:Lk/c;

    iget-object v2, v2, Lk/c;->a:Lk/g;

    invoke-interface {v2, v1}, Lk/g;->a(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lk/e;->f:[Lk/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public E()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lk/e;->l:Lk/c;

    iget-object v3, v2, Lk/c;->c:[Lk/i;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2
    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lk/i;->d()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v2, Lk/c;->b:Lk/g;

    iget-object v2, p0, Lk/e;->m:[Lk/i;

    iget v3, p0, Lk/e;->n:I

    invoke-interface {v1, v2, v3}, Lk/g;->c([Ljava/lang/Object;I)V

    .line 5
    iput v0, p0, Lk/e;->n:I

    .line 6
    iget-object v1, p0, Lk/e;->l:Lk/c;

    iget-object v1, v1, Lk/c;->c:[Lk/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lk/e;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    :cond_2
    iput v0, p0, Lk/e;->a:I

    .line 10
    iget-object v1, p0, Lk/e;->c:Lk/e$a;

    invoke-interface {v1}, Lk/e$a;->clear()V

    const/4 v1, 0x1

    .line 11
    iput v1, p0, Lk/e;->i:I

    move v1, v0

    .line 12
    :goto_1
    iget v2, p0, Lk/e;->j:I

    if-ge v1, v2, :cond_3

    .line 13
    iget-object v2, p0, Lk/e;->f:[Lk/b;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Lk/b;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lk/e;->D()V

    .line 15
    iput v0, p0, Lk/e;->j:I

    return-void
.end method

.method public final F(Lk/b;)V
    .locals 2

    .line 1
    iget v0, p0, Lk/e;->j:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p1, Lk/b;->d:Lk/a;

    iget-object v1, p0, Lk/e;->f:[Lk/b;

    invoke-virtual {v0, p1, v1}, Lk/a;->o(Lk/b;[Lk/b;)V

    .line 3
    iget-object v0, p1, Lk/b;->d:Lk/a;

    iget v0, v0, Lk/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Lk/b;->e:Z

    :cond_0
    return-void
.end method

.method public final a(Lk/i$a;Ljava/lang/String;)Lk/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/e;->l:Lk/c;

    iget-object v0, v0, Lk/c;->b:Lk/g;

    invoke-interface {v0}, Lk/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/i;

    invoke-direct {v0, p1, p2}, Lk/i;-><init>(Lk/i$a;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lk/i;->e(Lk/i$a;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lk/i;->d()V

    .line 5
    invoke-virtual {v0, p1, p2}, Lk/i;->e(Lk/i$a;Ljava/lang/String;)V

    .line 6
    :goto_0
    iget p1, p0, Lk/e;->n:I

    sget p2, Lk/e;->q:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    .line 7
    sput p2, Lk/e;->q:I

    .line 8
    iget-object p1, p0, Lk/e;->m:[Lk/i;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lk/i;

    iput-object p1, p0, Lk/e;->m:[Lk/i;

    .line 9
    :cond_1
    iget-object p1, p0, Lk/e;->m:[Lk/i;

    iget p2, p0, Lk/e;->n:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lk/e;->n:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method public b(Ll/f;Ll/f;FI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Ll/e$d;->b:Ll/e$d;

    invoke-virtual {v1, v3}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v4

    invoke-virtual {v0, v4}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v6

    .line 2
    sget-object v4, Ll/e$d;->c:Ll/e$d;

    invoke-virtual {v1, v4}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v5

    invoke-virtual {v0, v5}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v8

    .line 3
    sget-object v5, Ll/e$d;->d:Ll/e$d;

    invoke-virtual {v1, v5}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v7

    invoke-virtual {v0, v7}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v13

    .line 4
    sget-object v7, Ll/e$d;->e:Ll/e$d;

    invoke-virtual {v1, v7}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v9

    .line 5
    invoke-virtual {v2, v3}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v1

    .line 6
    invoke-virtual {v2, v4}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v10

    .line 7
    invoke-virtual {v2, v5}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v7}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v11

    .line 9
    invoke-virtual/range {p0 .. p0}, Lk/e;->s()Lk/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v4, v4

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move/from16 v7, p4

    move-object/from16 p1, v3

    move-wide/from16 p2, v4

    int-to-double v3, v7

    mul-double/2addr v14, v3

    double-to-float v12, v14

    move-object v7, v2

    .line 11
    invoke-virtual/range {v7 .. v12}, Lk/b;->p(Lk/i;Lk/i;Lk/i;Lk/i;F)Lk/b;

    .line 12
    invoke-virtual {v0, v2}, Lk/e;->d(Lk/b;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Lk/e;->s()Lk/b;

    move-result-object v2

    .line 14
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    double-to-float v10, v7

    move-object v5, v2

    move-object v7, v13

    move-object v8, v1

    move-object/from16 v9, p1

    .line 15
    invoke-virtual/range {v5 .. v10}, Lk/b;->p(Lk/i;Lk/i;Lk/i;Lk/i;F)Lk/b;

    .line 16
    invoke-virtual {v0, v2}, Lk/e;->d(Lk/b;)V

    return-void
.end method

.method public c(Lk/i;Lk/i;IFLk/i;Lk/i;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    .line 1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-virtual/range {v2 .. v9}, Lk/b;->g(Lk/i;Lk/i;IFLk/i;Lk/i;I)Lk/b;

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 3
    invoke-virtual {v10, p0, v1}, Lk/b;->d(Lk/e;I)Lk/b;

    .line 4
    :cond_0
    invoke-virtual {p0, v10}, Lk/e;->d(Lk/b;)V

    return-void
.end method

.method public d(Lk/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lk/e;->j:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lk/e;->k:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lk/e;->i:I

    add-int/2addr v0, v1

    iget v2, p0, Lk/e;->e:I

    if-lt v0, v2, :cond_2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lk/e;->z()V

    :cond_2
    const/4 v0, 0x0

    .line 3
    iget-boolean v2, p1, Lk/b;->e:Z

    if-nez v2, :cond_9

    .line 4
    invoke-virtual {p0, p1}, Lk/e;->F(Lk/b;)V

    .line 5
    invoke-virtual {p1}, Lk/b;->t()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p1}, Lk/b;->q()V

    .line 7
    invoke-virtual {p1, p0}, Lk/b;->f(Lk/e;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8
    invoke-virtual {p0}, Lk/e;->q()Lk/i;

    move-result-object v0

    .line 9
    iput-object v0, p1, Lk/b;->a:Lk/i;

    .line 10
    invoke-virtual {p0, p1}, Lk/e;->m(Lk/b;)V

    .line 11
    iget-object v2, p0, Lk/e;->p:Lk/e$a;

    invoke-interface {v2, p1}, Lk/e$a;->b(Lk/e$a;)V

    .line 12
    iget-object v2, p0, Lk/e;->p:Lk/e$a;

    invoke-virtual {p0, v2, v1}, Lk/e;->C(Lk/e$a;Z)I

    .line 13
    iget v2, v0, Lk/i;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 14
    iget-object v2, p1, Lk/b;->a:Lk/i;

    if-ne v2, v0, :cond_4

    .line 15
    invoke-virtual {p1, v0}, Lk/b;->u(Lk/i;)Lk/i;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {p1, v0}, Lk/b;->v(Lk/i;)V

    .line 17
    :cond_4
    iget-boolean v0, p1, Lk/b;->e:Z

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p1, Lk/b;->a:Lk/i;

    invoke-virtual {v0, p1}, Lk/i;->f(Lk/b;)V

    .line 19
    :cond_5
    iget v0, p0, Lk/e;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lk/e;->j:I

    goto :goto_0

    :cond_6
    move v1, v0

    .line 20
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lk/b;->r()Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    move v0, v1

    :cond_9
    if-nez v0, :cond_a

    .line 21
    invoke-virtual {p0, p1}, Lk/e;->m(Lk/b;)V

    :cond_a
    return-void
.end method

.method public e(Lk/i;Lk/i;II)Lk/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lk/b;->m(Lk/i;Lk/i;I)Lk/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 3
    invoke-virtual {v0, p0, p4}, Lk/b;->d(Lk/e;I)Lk/b;

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lk/e;->d(Lk/b;)V

    return-object v0
.end method

.method public f(Lk/i;I)V
    .locals 2

    .line 1
    iget v0, p1, Lk/i;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v1, p0, Lk/e;->f:[Lk/b;

    aget-object v0, v1, v0

    .line 3
    iget-boolean v1, v0, Lk/b;->e:Z

    if-eqz v1, :cond_0

    int-to-float p1, p2

    .line 4
    iput p1, v0, Lk/b;->b:F

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lk/b;->d:Lk/a;

    iget v1, v1, Lk/a;->a:I

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v0, Lk/b;->e:Z

    int-to-float p1, p2

    .line 7
    iput p1, v0, Lk/b;->b:F

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lk/b;->l(Lk/i;I)Lk/b;

    .line 10
    invoke-virtual {p0, v0}, Lk/e;->d(Lk/b;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lk/b;->h(Lk/i;I)Lk/b;

    .line 13
    invoke-virtual {p0, v0}, Lk/e;->d(Lk/b;)V

    :goto_0
    return-void
.end method

.method public final g(Lk/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lk/b;->d(Lk/e;I)Lk/b;

    return-void
.end method

.method public h(Lk/i;Lk/i;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lk/e;->u()Lk/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lk/i;->d:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, v2}, Lk/b;->n(Lk/i;Lk/i;Lk/i;I)Lk/b;

    if-eqz p3, :cond_0

    .line 5
    iget-object p1, v0, Lk/b;->d:Lk/a;

    invoke-virtual {p1, v1}, Lk/a;->f(Lk/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lk/e;->n(Lk/b;II)V

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lk/e;->d(Lk/b;)V

    return-void
.end method

.method public i(Lk/i;Lk/i;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lk/e;->u()Lk/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lk/i;->d:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lk/b;->n(Lk/i;Lk/i;Lk/i;I)Lk/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 5
    iget-object p1, v0, Lk/b;->d:Lk/a;

    invoke-virtual {p1, v1}, Lk/a;->f(Lk/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, v0, p1, p4}, Lk/e;->n(Lk/b;II)V

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lk/e;->d(Lk/b;)V

    return-void
.end method

.method public j(Lk/i;Lk/i;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lk/e;->u()Lk/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lk/i;->d:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, v2}, Lk/b;->o(Lk/i;Lk/i;Lk/i;I)Lk/b;

    if-eqz p3, :cond_0

    .line 5
    iget-object p1, v0, Lk/b;->d:Lk/a;

    invoke-virtual {p1, v1}, Lk/a;->f(Lk/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lk/e;->n(Lk/b;II)V

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lk/e;->d(Lk/b;)V

    return-void
.end method

.method public k(Lk/i;Lk/i;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lk/e;->u()Lk/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lk/i;->d:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lk/b;->o(Lk/i;Lk/i;Lk/i;I)Lk/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 5
    iget-object p1, v0, Lk/b;->d:Lk/a;

    invoke-virtual {p1, v1}, Lk/a;->f(Lk/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 6
    invoke-virtual {p0, v0, p1, p4}, Lk/e;->n(Lk/b;II)V

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lk/e;->d(Lk/b;)V

    return-void
.end method

.method public l(Lk/i;Lk/i;Lk/i;Lk/i;FI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lk/e;->s()Lk/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lk/b;->j(Lk/i;Lk/i;Lk/i;Lk/i;F)Lk/b;

    const/4 p1, 0x6

    if-eq p6, p1, :cond_0

    .line 3
    invoke-virtual {v6, p0, p6}, Lk/b;->d(Lk/e;I)Lk/b;

    .line 4
    :cond_0
    invoke-virtual {p0, v6}, Lk/e;->d(Lk/b;)V

    return-void
.end method

.method public final m(Lk/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk/e;->f:[Lk/b;

    iget v1, p0, Lk/e;->j:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Lk/e;->l:Lk/c;

    iget-object v2, v2, Lk/c;->a:Lk/g;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Lk/g;->a(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lk/e;->f:[Lk/b;

    iget v1, p0, Lk/e;->j:I

    aput-object p1, v0, v1

    .line 4
    iget-object v0, p1, Lk/b;->a:Lk/i;

    iput v1, v0, Lk/i;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lk/e;->j:I

    .line 6
    invoke-virtual {v0, p1}, Lk/i;->f(Lk/b;)V

    return-void
.end method

.method public n(Lk/b;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p3, v0}, Lk/e;->p(ILjava/lang/String;)Lk/i;

    move-result-object p3

    .line 2
    invoke-virtual {p1, p3, p2}, Lk/b;->e(Lk/i;I)Lk/b;

    return-void
.end method

.method public final o()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lk/e;->j:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lk/e;->f:[Lk/b;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Lk/b;->a:Lk/i;

    iget v1, v1, Lk/b;->b:F

    iput v1, v2, Lk/i;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(ILjava/lang/String;)Lk/i;
    .locals 2

    .line 1
    iget v0, p0, Lk/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lk/e;->e:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/e;->z()V

    .line 3
    :cond_0
    sget-object v0, Lk/i$a;->d:Lk/i$a;

    invoke-virtual {p0, v0, p2}, Lk/e;->a(Lk/i$a;Ljava/lang/String;)Lk/i;

    move-result-object p2

    .line 4
    iget v0, p0, Lk/e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/e;->a:I

    .line 5
    iget v1, p0, Lk/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/e;->i:I

    .line 6
    iput v0, p2, Lk/i;->b:I

    .line 7
    iput p1, p2, Lk/i;->d:I

    .line 8
    iget-object p1, p0, Lk/e;->l:Lk/c;

    iget-object p1, p1, Lk/c;->c:[Lk/i;

    aput-object p2, p1, v0

    .line 9
    iget-object p1, p0, Lk/e;->c:Lk/e$a;

    invoke-interface {p1, p2}, Lk/e$a;->c(Lk/i;)V

    return-object p2
.end method

.method public q()Lk/i;
    .locals 3

    .line 1
    iget v0, p0, Lk/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lk/e;->e:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/e;->z()V

    .line 3
    :cond_0
    sget-object v0, Lk/i$a;->c:Lk/i$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lk/e;->a(Lk/i$a;Ljava/lang/String;)Lk/i;

    move-result-object v0

    .line 4
    iget v1, p0, Lk/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/e;->a:I

    .line 5
    iget v2, p0, Lk/e;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lk/e;->i:I

    .line 6
    iput v1, v0, Lk/i;->b:I

    .line 7
    iget-object v2, p0, Lk/e;->l:Lk/c;

    iget-object v2, v2, Lk/c;->c:[Lk/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public r(Ljava/lang/Object;)Lk/i;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget v1, p0, Lk/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lk/e;->e:I

    if-lt v1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lk/e;->z()V

    .line 3
    :cond_1
    instance-of v1, p1, Ll/e;

    if-eqz v1, :cond_5

    .line 4
    check-cast p1, Ll/e;

    invoke-virtual {p1}, Ll/e;->g()Lk/i;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lk/e;->l:Lk/c;

    invoke-virtual {p1, v0}, Ll/e;->n(Lk/c;)V

    .line 6
    invoke-virtual {p1}, Ll/e;->g()Lk/i;

    move-result-object p1

    move-object v0, p1

    .line 7
    :cond_2
    iget p1, v0, Lk/i;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, Lk/e;->a:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, Lk/e;->l:Lk/c;

    iget-object v2, v2, Lk/c;->c:[Lk/i;

    aget-object v2, v2, p1

    if-nez v2, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    .line 8
    invoke-virtual {v0}, Lk/i;->d()V

    .line 9
    :cond_4
    iget p1, p0, Lk/e;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lk/e;->a:I

    .line 10
    iget v1, p0, Lk/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/e;->i:I

    .line 11
    iput p1, v0, Lk/i;->b:I

    .line 12
    sget-object v1, Lk/i$a;->a:Lk/i$a;

    iput-object v1, v0, Lk/i;->g:Lk/i$a;

    .line 13
    iget-object v1, p0, Lk/e;->l:Lk/c;

    iget-object v1, v1, Lk/c;->c:[Lk/i;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public s()Lk/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/e;->l:Lk/c;

    iget-object v0, v0, Lk/c;->a:Lk/g;

    invoke-interface {v0}, Lk/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lk/b;

    iget-object v1, p0, Lk/e;->l:Lk/c;

    invoke-direct {v0, v1}, Lk/b;-><init>(Lk/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lk/b;->w()V

    .line 4
    :goto_0
    invoke-static {}, Lk/i;->b()V

    return-object v0
.end method

.method public u()Lk/i;
    .locals 3

    .line 1
    iget v0, p0, Lk/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lk/e;->e:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lk/e;->z()V

    .line 3
    :cond_0
    sget-object v0, Lk/i$a;->c:Lk/i$a;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lk/e;->a(Lk/i$a;Ljava/lang/String;)Lk/i;

    move-result-object v0

    .line 4
    iget v1, p0, Lk/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/e;->a:I

    .line 5
    iget v2, p0, Lk/e;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lk/e;->i:I

    .line 6
    iput v1, v0, Lk/i;->b:I

    .line 7
    iget-object v2, p0, Lk/e;->l:Lk/c;

    iget-object v2, v2, Lk/c;->c:[Lk/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public final v(Lk/e$a;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, v0, Lk/e;->j:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 2
    iget-object v3, v0, Lk/e;->f:[Lk/b;

    aget-object v6, v3, v2

    iget-object v6, v6, Lk/b;->a:Lk/i;

    .line 3
    iget-object v6, v6, Lk/i;->g:Lk/i$a;

    sget-object v7, Lk/i$a;->a:Lk/i$a;

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v3, v3, v2

    iget v3, v3, Lk/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v2, v5

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_e

    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, -0x1

    move v9, v7

    move v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 5
    :goto_4
    iget v12, v0, Lk/e;->j:I

    if-ge v8, v12, :cond_b

    .line 6
    iget-object v12, v0, Lk/e;->f:[Lk/b;

    aget-object v12, v12, v8

    .line 7
    iget-object v13, v12, Lk/b;->a:Lk/i;

    .line 8
    iget-object v13, v13, Lk/i;->g:Lk/i$a;

    sget-object v14, Lk/i$a;->a:Lk/i$a;

    if-ne v13, v14, :cond_3

    goto :goto_8

    .line 9
    :cond_3
    iget-boolean v13, v12, Lk/b;->e:Z

    if-eqz v13, :cond_4

    goto :goto_8

    .line 10
    :cond_4
    iget v13, v12, Lk/b;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_a

    move v13, v5

    .line 11
    :goto_5
    iget v14, v0, Lk/e;->i:I

    if-ge v13, v14, :cond_a

    .line 12
    iget-object v14, v0, Lk/e;->l:Lk/c;

    iget-object v14, v14, Lk/c;->c:[Lk/i;

    aget-object v14, v14, v13

    .line 13
    iget-object v15, v12, Lk/b;->d:Lk/a;

    invoke-virtual {v15, v14}, Lk/a;->f(Lk/i;)F

    move-result v15

    cmpg-float v16, v15, v4

    if-gtz v16, :cond_5

    goto :goto_7

    :cond_5
    const/4 v1, 0x0

    :goto_6
    const/4 v4, 0x7

    if-ge v1, v4, :cond_9

    .line 14
    iget-object v4, v14, Lk/i;->f:[F

    aget v4, v4, v1

    div-float/2addr v4, v15

    cmpg-float v17, v4, v6

    if-gez v17, :cond_6

    if-eq v1, v11, :cond_7

    :cond_6
    if-le v1, v11, :cond_8

    :cond_7
    move v11, v1

    move v6, v4

    move v9, v8

    move v10, v13

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_b
    if-eq v9, v7, :cond_c

    .line 15
    iget-object v1, v0, Lk/e;->f:[Lk/b;

    aget-object v1, v1, v9

    .line 16
    iget-object v4, v1, Lk/b;->a:Lk/i;

    iput v7, v4, Lk/i;->c:I

    .line 17
    iget-object v4, v0, Lk/e;->l:Lk/c;

    iget-object v4, v4, Lk/c;->c:[Lk/i;

    aget-object v4, v4, v10

    invoke-virtual {v1, v4}, Lk/b;->v(Lk/i;)V

    .line 18
    iget-object v4, v1, Lk/b;->a:Lk/i;

    iput v9, v4, Lk/i;->c:I

    .line 19
    invoke-virtual {v4, v1}, Lk/i;->f(Lk/b;)V

    goto :goto_9

    :cond_c
    move v2, v5

    .line 20
    :goto_9
    iget v1, v0, Lk/e;->i:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_d

    move v2, v5

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_e
    move v1, v3

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public w()Lk/c;
    .locals 1

    iget-object v0, p0, Lk/e;->l:Lk/c;

    return-object v0
.end method

.method public y(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ll/e;

    invoke-virtual {p1}, Ll/e;->g()Lk/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p1, Lk/i;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final z()V
    .locals 3

    .line 1
    iget v0, p0, Lk/e;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lk/e;->d:I

    .line 2
    iget-object v1, p0, Lk/e;->f:[Lk/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/b;

    iput-object v0, p0, Lk/e;->f:[Lk/b;

    .line 3
    iget-object v0, p0, Lk/e;->l:Lk/c;

    iget-object v1, v0, Lk/c;->c:[Lk/i;

    iget v2, p0, Lk/e;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lk/i;

    iput-object v1, v0, Lk/c;->c:[Lk/i;

    .line 4
    iget v0, p0, Lk/e;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lk/e;->h:[Z

    .line 5
    iput v0, p0, Lk/e;->e:I

    .line 6
    iput v0, p0, Lk/e;->k:I

    return-void
.end method
