.class public Ll/f;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/f$b;
    }
.end annotation


# static fields
.field public static u0:F = 0.5f


# instance fields
.field public A:Ll/e;

.field public B:Ll/e;

.field public C:[Ll/e;

.field public D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll/e;",
            ">;"
        }
    .end annotation
.end field

.field public E:[Ll/f$b;

.field public F:Ll/f;

.field public G:I

.field public H:I

.field public I:F

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:F

.field public a:I

.field public a0:F

.field public b:I

.field public b0:Ljava/lang/Object;

.field public c:Ll/n;

.field public c0:I

.field public d:Ll/n;

.field public d0:I

.field public e:I

.field public e0:Ljava/lang/String;

.field public f:I

.field public f0:Ljava/lang/String;

.field public g:[I

.field public g0:Z

.field public h:I

.field public h0:Z

.field public i:I

.field public i0:Z

.field public j:F

.field public j0:Z

.field public k:I

.field public k0:Z

.field public l:I

.field public l0:I

.field public m:F

.field public m0:I

.field public n:Z

.field public n0:Z

.field public o:Z

.field public o0:Z

.field public p:I

.field public p0:[F

.field public q:F

.field public q0:[Ll/f;

.field public r:Ll/h;

.field public r0:[Ll/f;

.field public s:[I

.field public s0:Ll/f;

.field public t:F

.field public t0:Ll/f;

.field public u:Ll/e;

.field public v:Ll/e;

.field public w:Ll/e;

.field public x:Ll/e;

.field public y:Ll/e;

.field public z:Ll/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ll/f;->a:I

    .line 3
    iput v0, p0, Ll/f;->b:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Ll/f;->e:I

    .line 5
    iput v1, p0, Ll/f;->f:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 6
    iput-object v3, p0, Ll/f;->g:[I

    .line 7
    iput v1, p0, Ll/f;->h:I

    .line 8
    iput v1, p0, Ll/f;->i:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    iput v3, p0, Ll/f;->j:F

    .line 10
    iput v1, p0, Ll/f;->k:I

    .line 11
    iput v1, p0, Ll/f;->l:I

    .line 12
    iput v3, p0, Ll/f;->m:F

    .line 13
    iput v0, p0, Ll/f;->p:I

    .line 14
    iput v3, p0, Ll/f;->q:F

    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, Ll/f;->r:Ll/h;

    new-array v4, v2, [I

    .line 16
    fill-array-data v4, :array_0

    iput-object v4, p0, Ll/f;->s:[I

    const/4 v4, 0x0

    .line 17
    iput v4, p0, Ll/f;->t:F

    .line 18
    new-instance v5, Ll/e;

    sget-object v6, Ll/e$d;->b:Ll/e$d;

    invoke-direct {v5, p0, v6}, Ll/e;-><init>(Ll/f;Ll/e$d;)V

    iput-object v5, p0, Ll/f;->u:Ll/e;

    .line 19
    new-instance v5, Ll/e;

    sget-object v6, Ll/e$d;->c:Ll/e$d;

    invoke-direct {v5, p0, v6}, Ll/e;-><init>(Ll/f;Ll/e$d;)V

    iput-object v5, p0, Ll/f;->v:Ll/e;

    .line 20
    new-instance v5, Ll/e;

    sget-object v6, Ll/e$d;->d:Ll/e$d;

    invoke-direct {v5, p0, v6}, Ll/e;-><init>(Ll/f;Ll/e$d;)V

    iput-object v5, p0, Ll/f;->w:Ll/e;

    .line 21
    new-instance v5, Ll/e;

    sget-object v6, Ll/e$d;->e:Ll/e$d;

    invoke-direct {v5, p0, v6}, Ll/e;-><init>(Ll/f;Ll/e$d;)V

    iput-object v5, p0, Ll/f;->x:Ll/e;

    .line 22
    new-instance v5, Ll/e;

    sget-object v6, Ll/e$d;->f:Ll/e$d;

    invoke-direct {v5, p0, v6}, Ll/e;-><init>(Ll/f;Ll/e$d;)V

    iput-object v5, p0, Ll/f;->y:Ll/e;

    .line 23
    new-instance v5, Ll/e;

    sget-object v6, Ll/e$d;->h:Ll/e$d;

    invoke-direct {v5, p0, v6}, Ll/e;-><init>(Ll/f;Ll/e$d;)V

    iput-object v5, p0, Ll/f;->z:Ll/e;

    .line 24
    new-instance v5, Ll/e;

    sget-object v6, Ll/e$d;->i:Ll/e$d;

    invoke-direct {v5, p0, v6}, Ll/e;-><init>(Ll/f;Ll/e$d;)V

    iput-object v5, p0, Ll/f;->A:Ll/e;

    .line 25
    new-instance v5, Ll/e;

    sget-object v6, Ll/e$d;->g:Ll/e$d;

    invoke-direct {v5, p0, v6}, Ll/e;-><init>(Ll/f;Ll/e$d;)V

    iput-object v5, p0, Ll/f;->B:Ll/e;

    const/4 v6, 0x6

    new-array v6, v6, [Ll/e;

    .line 26
    iget-object v7, p0, Ll/f;->u:Ll/e;

    aput-object v7, v6, v1

    iget-object v7, p0, Ll/f;->w:Ll/e;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, p0, Ll/f;->v:Ll/e;

    aput-object v7, v6, v2

    iget-object v7, p0, Ll/f;->x:Ll/e;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    iget-object v7, p0, Ll/f;->y:Ll/e;

    const/4 v9, 0x4

    aput-object v7, v6, v9

    const/4 v7, 0x5

    aput-object v5, v6, v7

    iput-object v6, p0, Ll/f;->C:[Ll/e;

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ll/f;->D:Ljava/util/ArrayList;

    new-array v5, v2, [Ll/f$b;

    .line 28
    sget-object v6, Ll/f$b;->a:Ll/f$b;

    aput-object v6, v5, v1

    aput-object v6, v5, v8

    iput-object v5, p0, Ll/f;->E:[Ll/f$b;

    .line 29
    iput-object v3, p0, Ll/f;->F:Ll/f;

    .line 30
    iput v1, p0, Ll/f;->G:I

    .line 31
    iput v1, p0, Ll/f;->H:I

    .line 32
    iput v4, p0, Ll/f;->I:F

    .line 33
    iput v0, p0, Ll/f;->J:I

    .line 34
    iput v1, p0, Ll/f;->K:I

    .line 35
    iput v1, p0, Ll/f;->L:I

    .line 36
    iput v1, p0, Ll/f;->M:I

    .line 37
    iput v1, p0, Ll/f;->N:I

    .line 38
    iput v1, p0, Ll/f;->O:I

    .line 39
    iput v1, p0, Ll/f;->P:I

    .line 40
    iput v1, p0, Ll/f;->Q:I

    .line 41
    iput v1, p0, Ll/f;->R:I

    .line 42
    iput v1, p0, Ll/f;->S:I

    .line 43
    iput v1, p0, Ll/f;->T:I

    .line 44
    iput v1, p0, Ll/f;->U:I

    .line 45
    sget v0, Ll/f;->u0:F

    iput v0, p0, Ll/f;->Z:F

    .line 46
    iput v0, p0, Ll/f;->a0:F

    .line 47
    iput v1, p0, Ll/f;->c0:I

    .line 48
    iput v1, p0, Ll/f;->d0:I

    .line 49
    iput-object v3, p0, Ll/f;->e0:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Ll/f;->f0:Ljava/lang/String;

    .line 51
    iput-boolean v1, p0, Ll/f;->i0:Z

    .line 52
    iput-boolean v1, p0, Ll/f;->j0:Z

    .line 53
    iput-boolean v1, p0, Ll/f;->k0:Z

    .line 54
    iput v1, p0, Ll/f;->l0:I

    .line 55
    iput v1, p0, Ll/f;->m0:I

    new-array v0, v2, [F

    .line 56
    fill-array-data v0, :array_1

    iput-object v0, p0, Ll/f;->p0:[F

    new-array v0, v2, [Ll/f;

    aput-object v3, v0, v1

    aput-object v3, v0, v8

    .line 57
    iput-object v0, p0, Ll/f;->q0:[Ll/f;

    new-array v0, v2, [Ll/f;

    aput-object v3, v0, v1

    aput-object v3, v0, v8

    .line 58
    iput-object v0, p0, Ll/f;->r0:[Ll/f;

    .line 59
    iput-object v3, p0, Ll/f;->s0:Ll/f;

    .line 60
    iput-object v3, p0, Ll/f;->t0:Ll/f;

    .line 61
    invoke-virtual {p0}, Ll/f;->a()V

    return-void

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A()I
    .locals 2

    iget v0, p0, Ll/f;->L:I

    iget v1, p0, Ll/f;->T:I

    add-int/2addr v0, v1

    return v0
.end method

.method public A0(I)V
    .locals 0

    iput p1, p0, Ll/f;->Y:I

    return-void
.end method

.method public B()Ll/f$b;
    .locals 2

    iget-object v0, p0, Ll/f;->E:[Ll/f$b;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public B0(I)V
    .locals 0

    iput p1, p0, Ll/f;->X:I

    return-void
.end method

.method public C()I
    .locals 1

    iget v0, p0, Ll/f;->d0:I

    return v0
.end method

.method public C0(I)V
    .locals 0

    iput p1, p0, Ll/f;->K:I

    return-void
.end method

.method public D()I
    .locals 2

    .line 1
    iget v0, p0, Ll/f;->d0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ll/f;->G:I

    return v0
.end method

.method public D0(I)V
    .locals 0

    iput p1, p0, Ll/f;->L:I

    return-void
.end method

.method public E()I
    .locals 1

    iget v0, p0, Ll/f;->Y:I

    return v0
.end method

.method public E0(ZZZZ)V
    .locals 5

    .line 1
    iget v0, p0, Ll/f;->p:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 2
    iput v2, p0, Ll/f;->p:I

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 3
    iput v4, p0, Ll/f;->p:I

    .line 4
    iget p3, p0, Ll/f;->J:I

    if-ne p3, v3, :cond_1

    .line 5
    iget p3, p0, Ll/f;->q:F

    div-float p3, v1, p3

    iput p3, p0, Ll/f;->q:F

    .line 6
    :cond_1
    :goto_0
    iget p3, p0, Ll/f;->p:I

    if-nez p3, :cond_3

    iget-object p3, p0, Ll/f;->v:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Ll/f;->x:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-nez p3, :cond_3

    .line 7
    :cond_2
    iput v4, p0, Ll/f;->p:I

    goto :goto_1

    .line 8
    :cond_3
    iget p3, p0, Ll/f;->p:I

    if-ne p3, v4, :cond_5

    iget-object p3, p0, Ll/f;->u:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Ll/f;->w:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-nez p3, :cond_5

    .line 9
    :cond_4
    iput v2, p0, Ll/f;->p:I

    .line 10
    :cond_5
    :goto_1
    iget p3, p0, Ll/f;->p:I

    if-ne p3, v3, :cond_8

    .line 11
    iget-object p3, p0, Ll/f;->v:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Ll/f;->x:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Ll/f;->u:Ll/e;

    .line 12
    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Ll/f;->w:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-nez p3, :cond_8

    .line 13
    :cond_6
    iget-object p3, p0, Ll/f;->v:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Ll/f;->x:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 14
    iput v2, p0, Ll/f;->p:I

    goto :goto_2

    .line 15
    :cond_7
    iget-object p3, p0, Ll/f;->u:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Ll/f;->w:Ll/e;

    invoke-virtual {p3}, Ll/e;->k()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 16
    iget p3, p0, Ll/f;->q:F

    div-float p3, v1, p3

    iput p3, p0, Ll/f;->q:F

    .line 17
    iput v4, p0, Ll/f;->p:I

    .line 18
    :cond_8
    :goto_2
    iget p3, p0, Ll/f;->p:I

    if-ne p3, v3, :cond_a

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    .line 19
    iput v2, p0, Ll/f;->p:I

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    .line 20
    iget p3, p0, Ll/f;->q:F

    div-float p3, v1, p3

    iput p3, p0, Ll/f;->q:F

    .line 21
    iput v4, p0, Ll/f;->p:I

    .line 22
    :cond_a
    :goto_3
    iget p3, p0, Ll/f;->p:I

    if-ne p3, v3, :cond_c

    .line 23
    iget p3, p0, Ll/f;->h:I

    if-lez p3, :cond_b

    iget p4, p0, Ll/f;->k:I

    if-nez p4, :cond_b

    .line 24
    iput v2, p0, Ll/f;->p:I

    goto :goto_4

    :cond_b
    if-nez p3, :cond_c

    .line 25
    iget p3, p0, Ll/f;->k:I

    if-lez p3, :cond_c

    .line 26
    iget p3, p0, Ll/f;->q:F

    div-float p3, v1, p3

    iput p3, p0, Ll/f;->q:F

    .line 27
    iput v4, p0, Ll/f;->p:I

    .line 28
    :cond_c
    :goto_4
    iget p3, p0, Ll/f;->p:I

    if-ne p3, v3, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 29
    iget p1, p0, Ll/f;->q:F

    div-float/2addr v1, p1

    iput v1, p0, Ll/f;->q:F

    .line 30
    iput v4, p0, Ll/f;->p:I

    :cond_d
    return-void
.end method

.method public F()I
    .locals 1

    iget v0, p0, Ll/f;->X:I

    return v0
.end method

.method public F0()V
    .locals 4

    .line 1
    iget v0, p0, Ll/f;->K:I

    .line 2
    iget v1, p0, Ll/f;->L:I

    .line 3
    iget v2, p0, Ll/f;->G:I

    add-int/2addr v2, v0

    .line 4
    iget v3, p0, Ll/f;->H:I

    add-int/2addr v3, v1

    .line 5
    iput v0, p0, Ll/f;->O:I

    .line 6
    iput v1, p0, Ll/f;->P:I

    sub-int/2addr v2, v0

    .line 7
    iput v2, p0, Ll/f;->Q:I

    sub-int/2addr v3, v1

    .line 8
    iput v3, p0, Ll/f;->R:I

    return-void
.end method

.method public G()I
    .locals 1

    iget v0, p0, Ll/f;->K:I

    return v0
.end method

.method public G0(Lk/e;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ll/f;->u:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->y(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Ll/f;->v:Ll/e;

    invoke-virtual {p1, v1}, Lk/e;->y(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Ll/f;->w:Ll/e;

    invoke-virtual {p1, v2}, Lk/e;->y(Ljava/lang/Object;)I

    move-result v2

    .line 4
    iget-object v3, p0, Ll/f;->x:Ll/e;

    invoke-virtual {p1, v3}, Lk/e;->y(Ljava/lang/Object;)I

    move-result p1

    sub-int v3, v2, v0

    sub-int v4, p1, v1

    const/4 v5, 0x0

    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    const v4, 0x7fffffff

    if-eq v0, v4, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    move p1, v5

    move v0, p1

    move v1, v0

    move v2, v1

    .line 5
    :cond_1
    invoke-virtual {p0, v0, v1, v2, p1}, Ll/f;->a0(IIII)V

    return-void
.end method

.method public H()I
    .locals 1

    iget v0, p0, Ll/f;->L:I

    return v0
.end method

.method public H0()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ll/f;->C:[Ll/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    invoke-virtual {v1}, Ll/m;->q()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public I()Z
    .locals 1

    iget v0, p0, Ll/f;->U:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J(Ll/e$d;Ll/f;Ll/e$d;II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v0

    .line 2
    invoke-virtual {p2, p3}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v1

    .line 3
    sget-object v4, Ll/e$c;->b:Ll/e$c;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Ll/e;->a(Ll/e;IILl/e$c;IZ)Z

    return-void
.end method

.method public final K(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Ll/f;->C:[Ll/e;

    aget-object v1, v0, p1

    iget-object v1, v1, Ll/e;->d:Ll/e;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Ll/e;->d:Ll/e;

    iget-object v1, v1, Ll/e;->d:Ll/e;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Ll/e;->d:Ll/e;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Ll/e;->d:Ll/e;

    iget-object v1, v1, Ll/e;->d:Ll/e;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public L()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ll/f;->u:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget v0, v0, Ll/o;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ll/f;->w:Ll/e;

    .line 2
    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget v0, v0, Ll/o;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ll/f;->v:Ll/e;

    .line 3
    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget v0, v0, Ll/o;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ll/f;->x:Ll/e;

    .line 4
    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget v0, v0, Ll/o;->b:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public M()Z
    .locals 2

    iget-object v0, p0, Ll/f;->u:Ll/e;

    iget-object v1, v0, Ll/e;->d:Ll/e;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ll/e;->d:Ll/e;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Ll/f;->w:Ll/e;

    iget-object v1, v0, Ll/e;->d:Ll/e;

    if-eqz v1, :cond_2

    iget-object v1, v1, Ll/e;->d:Ll/e;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public N()Z
    .locals 2

    iget-object v0, p0, Ll/f;->v:Ll/e;

    iget-object v1, v0, Ll/e;->d:Ll/e;

    if-eqz v1, :cond_0

    iget-object v1, v1, Ll/e;->d:Ll/e;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Ll/f;->x:Ll/e;

    iget-object v1, v0, Ll/e;->d:Ll/e;

    if-eqz v1, :cond_2

    iget-object v1, v1, Ll/e;->d:Ll/e;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 3

    iget v0, p0, Ll/f;->f:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Ll/f;->I:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Ll/f;->k:I

    if-nez v0, :cond_0

    iget v0, p0, Ll/f;->l:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/f;->E:[Ll/f$b;

    aget-object v0, v0, v1

    sget-object v2, Ll/f$b;->c:Ll/f$b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public P()Z
    .locals 3

    iget v0, p0, Ll/f;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Ll/f;->I:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Ll/f;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Ll/f;->i:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ll/f;->E:[Ll/f$b;

    aget-object v0, v0, v1

    sget-object v2, Ll/f$b;->c:Ll/f$b;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public Q()V
    .locals 6

    .line 1
    iget-object v0, p0, Ll/f;->u:Ll/e;

    invoke-virtual {v0}, Ll/e;->m()V

    .line 2
    iget-object v0, p0, Ll/f;->v:Ll/e;

    invoke-virtual {v0}, Ll/e;->m()V

    .line 3
    iget-object v0, p0, Ll/f;->w:Ll/e;

    invoke-virtual {v0}, Ll/e;->m()V

    .line 4
    iget-object v0, p0, Ll/f;->x:Ll/e;

    invoke-virtual {v0}, Ll/e;->m()V

    .line 5
    iget-object v0, p0, Ll/f;->y:Ll/e;

    invoke-virtual {v0}, Ll/e;->m()V

    .line 6
    iget-object v0, p0, Ll/f;->z:Ll/e;

    invoke-virtual {v0}, Ll/e;->m()V

    .line 7
    iget-object v0, p0, Ll/f;->A:Ll/e;

    invoke-virtual {v0}, Ll/e;->m()V

    .line 8
    iget-object v0, p0, Ll/f;->B:Ll/e;

    invoke-virtual {v0}, Ll/e;->m()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ll/f;->F:Ll/f;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Ll/f;->t:F

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Ll/f;->G:I

    .line 12
    iput v2, p0, Ll/f;->H:I

    .line 13
    iput v1, p0, Ll/f;->I:F

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Ll/f;->J:I

    .line 15
    iput v2, p0, Ll/f;->K:I

    .line 16
    iput v2, p0, Ll/f;->L:I

    .line 17
    iput v2, p0, Ll/f;->O:I

    .line 18
    iput v2, p0, Ll/f;->P:I

    .line 19
    iput v2, p0, Ll/f;->Q:I

    .line 20
    iput v2, p0, Ll/f;->R:I

    .line 21
    iput v2, p0, Ll/f;->S:I

    .line 22
    iput v2, p0, Ll/f;->T:I

    .line 23
    iput v2, p0, Ll/f;->U:I

    .line 24
    iput v2, p0, Ll/f;->V:I

    .line 25
    iput v2, p0, Ll/f;->W:I

    .line 26
    iput v2, p0, Ll/f;->X:I

    .line 27
    iput v2, p0, Ll/f;->Y:I

    .line 28
    sget v3, Ll/f;->u0:F

    iput v3, p0, Ll/f;->Z:F

    .line 29
    iput v3, p0, Ll/f;->a0:F

    .line 30
    iget-object v3, p0, Ll/f;->E:[Ll/f$b;

    sget-object v4, Ll/f$b;->a:Ll/f$b;

    aput-object v4, v3, v2

    const/4 v5, 0x1

    .line 31
    aput-object v4, v3, v5

    .line 32
    iput-object v0, p0, Ll/f;->b0:Ljava/lang/Object;

    .line 33
    iput v2, p0, Ll/f;->c0:I

    .line 34
    iput v2, p0, Ll/f;->d0:I

    .line 35
    iput-object v0, p0, Ll/f;->f0:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Ll/f;->g0:Z

    .line 37
    iput-boolean v2, p0, Ll/f;->h0:Z

    .line 38
    iput v2, p0, Ll/f;->l0:I

    .line 39
    iput v2, p0, Ll/f;->m0:I

    .line 40
    iput-boolean v2, p0, Ll/f;->n0:Z

    .line 41
    iput-boolean v2, p0, Ll/f;->o0:Z

    .line 42
    iget-object v3, p0, Ll/f;->p0:[F

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v3, v2

    .line 43
    aput v4, v3, v5

    .line 44
    iput v1, p0, Ll/f;->a:I

    .line 45
    iput v1, p0, Ll/f;->b:I

    .line 46
    iget-object v3, p0, Ll/f;->s:[I

    const v4, 0x7fffffff

    aput v4, v3, v2

    .line 47
    aput v4, v3, v5

    .line 48
    iput v2, p0, Ll/f;->e:I

    .line 49
    iput v2, p0, Ll/f;->f:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    iput v3, p0, Ll/f;->j:F

    .line 51
    iput v3, p0, Ll/f;->m:F

    .line 52
    iput v4, p0, Ll/f;->i:I

    .line 53
    iput v4, p0, Ll/f;->l:I

    .line 54
    iput v2, p0, Ll/f;->h:I

    .line 55
    iput v2, p0, Ll/f;->k:I

    .line 56
    iput v1, p0, Ll/f;->p:I

    .line 57
    iput v3, p0, Ll/f;->q:F

    .line 58
    iget-object v1, p0, Ll/f;->c:Ll/n;

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Ll/n;->e()V

    .line 60
    :cond_0
    iget-object v1, p0, Ll/f;->d:Ll/n;

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v1}, Ll/n;->e()V

    .line 62
    :cond_1
    iput-object v0, p0, Ll/f;->r:Ll/h;

    .line 63
    iput-boolean v2, p0, Ll/f;->i0:Z

    .line 64
    iput-boolean v2, p0, Ll/f;->j0:Z

    .line 65
    iput-boolean v2, p0, Ll/f;->k0:Z

    return-void
.end method

.method public R()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ll/f;->u()Ll/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v0, v0, Ll/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ll/f;->u()Ll/f;

    move-result-object v0

    check-cast v0, Ll/g;

    .line 4
    invoke-virtual {v0}, Ll/g;->S0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Ll/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 6
    iget-object v2, p0, Ll/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/e;

    .line 7
    invoke-virtual {v2}, Ll/e;->m()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public S()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ll/f;->C:[Ll/e;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    invoke-virtual {v1}, Ll/m;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public T(Lk/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/f;->u:Ll/e;

    invoke-virtual {v0, p1}, Ll/e;->n(Lk/c;)V

    .line 2
    iget-object v0, p0, Ll/f;->v:Ll/e;

    invoke-virtual {v0, p1}, Ll/e;->n(Lk/c;)V

    .line 3
    iget-object v0, p0, Ll/f;->w:Ll/e;

    invoke-virtual {v0, p1}, Ll/e;->n(Lk/c;)V

    .line 4
    iget-object v0, p0, Ll/f;->x:Ll/e;

    invoke-virtual {v0, p1}, Ll/e;->n(Lk/c;)V

    .line 5
    iget-object v0, p0, Ll/f;->y:Ll/e;

    invoke-virtual {v0, p1}, Ll/e;->n(Lk/c;)V

    .line 6
    iget-object v0, p0, Ll/f;->B:Ll/e;

    invoke-virtual {v0, p1}, Ll/e;->n(Lk/c;)V

    .line 7
    iget-object v0, p0, Ll/f;->z:Ll/e;

    invoke-virtual {v0, p1}, Ll/e;->n(Lk/c;)V

    .line 8
    iget-object v0, p0, Ll/f;->A:Ll/e;

    invoke-virtual {v0, p1}, Ll/e;->n(Lk/c;)V

    return-void
.end method

.method public U()V
    .locals 0

    return-void
.end method

.method public V(I)V
    .locals 0

    iput p1, p0, Ll/f;->U:I

    return-void
.end method

.method public W(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ll/f;->b0:Ljava/lang/Object;

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ll/f;->e0:Ljava/lang/String;

    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_3

    .line 4
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v4, "H"

    .line 6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v5

    :cond_2
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_3
    const/16 v3, 0x3a

    .line 7
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_5

    .line 8
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 11
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_6

    cmpl-float v3, p1, v0

    if-lez v3, :cond_6

    if-ne v1, v5, :cond_4

    div-float/2addr p1, v2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_4
    div-float/2addr v2, p1

    .line 14
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15
    :cond_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 17
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_6
    move p1, v0

    :goto_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    .line 18
    iput p1, p0, Ll/f;->I:F

    .line 19
    iput v1, p0, Ll/f;->J:I

    :cond_7
    return-void

    .line 20
    :cond_8
    :goto_2
    iput v0, p0, Ll/f;->I:F

    return-void
.end method

.method public Z(III)V
    .locals 1

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Ll/f;->f0(II)V

    goto :goto_0

    :cond_0
    if-ne p3, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Ll/f;->t0(II)V

    .line 3
    :cond_1
    :goto_0
    iput-boolean v0, p0, Ll/f;->j0:Z

    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Ll/f;->u:Ll/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Ll/f;->v:Ll/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Ll/f;->w:Ll/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Ll/f;->x:Ll/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Ll/f;->z:Ll/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Ll/f;->A:Ll/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Ll/f;->B:Ll/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Ll/f;->D:Ljava/util/ArrayList;

    iget-object v1, p0, Ll/f;->y:Ll/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a0(IIII)V
    .locals 1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    .line 1
    iput p1, p0, Ll/f;->K:I

    .line 2
    iput p2, p0, Ll/f;->L:I

    .line 3
    iget p1, p0, Ll/f;->d0:I

    const/4 p2, 0x0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 4
    iput p2, p0, Ll/f;->G:I

    .line 5
    iput p2, p0, Ll/f;->H:I

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Ll/f;->E:[Ll/f$b;

    aget-object p2, p1, p2

    sget-object v0, Ll/f$b;->a:Ll/f$b;

    if-ne p2, v0, :cond_1

    iget p2, p0, Ll/f;->G:I

    if-ge p3, p2, :cond_1

    move p3, p2

    :cond_1
    const/4 p2, 0x1

    .line 7
    aget-object p1, p1, p2

    if-ne p1, v0, :cond_2

    iget p1, p0, Ll/f;->H:I

    if-ge p4, p1, :cond_2

    move p4, p1

    .line 8
    :cond_2
    iput p3, p0, Ll/f;->G:I

    .line 9
    iput p4, p0, Ll/f;->H:I

    .line 10
    iget p1, p0, Ll/f;->W:I

    if-ge p4, p1, :cond_3

    .line 11
    iput p1, p0, Ll/f;->H:I

    .line 12
    :cond_3
    iget p1, p0, Ll/f;->V:I

    if-ge p3, p1, :cond_4

    .line 13
    iput p1, p0, Ll/f;->G:I

    .line 14
    :cond_4
    iput-boolean p2, p0, Ll/f;->j0:Z

    return-void
.end method

.method public b(Lk/e;)V
    .locals 41

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 1
    iget-object v0, v15, Ll/f;->u:Ll/e;

    invoke-virtual {v14, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v21

    .line 2
    iget-object v0, v15, Ll/f;->w:Ll/e;

    invoke-virtual {v14, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v10

    .line 3
    iget-object v0, v15, Ll/f;->v:Ll/e;

    invoke-virtual {v14, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v6

    .line 4
    iget-object v0, v15, Ll/f;->x:Ll/e;

    invoke-virtual {v14, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v4

    .line 5
    iget-object v0, v15, Ll/f;->y:Ll/e;

    invoke-virtual {v14, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v3

    .line 6
    iget-object v0, v15, Ll/f;->F:Ll/f;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_6

    if-eqz v0, :cond_0

    .line 7
    iget-object v5, v0, Ll/f;->E:[Ll/f$b;

    aget-object v5, v5, v13

    sget-object v7, Ll/f$b;->b:Ll/f$b;

    if-ne v5, v7, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v13

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v0, Ll/f;->E:[Ll/f$b;

    aget-object v0, v0, v2

    sget-object v7, Ll/f$b;->b:Ll/f$b;

    if-ne v0, v7, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v13

    .line 9
    :goto_1
    invoke-virtual {v15, v13}, Ll/f;->K(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    iget-object v7, v15, Ll/f;->F:Ll/f;

    check-cast v7, Ll/g;

    invoke-virtual {v7, v15, v13}, Ll/g;->N0(Ll/f;I)V

    move v7, v2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ll/f;->M()Z

    move-result v7

    .line 12
    :goto_2
    invoke-virtual {v15, v2}, Ll/f;->K(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 13
    iget-object v8, v15, Ll/f;->F:Ll/f;

    check-cast v8, Ll/g;

    invoke-virtual {v8, v15, v2}, Ll/g;->N0(Ll/f;I)V

    move v8, v2

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ll/f;->N()Z

    move-result v8

    :goto_3
    if-eqz v5, :cond_4

    .line 15
    iget v9, v15, Ll/f;->d0:I

    if-eq v9, v1, :cond_4

    iget-object v9, v15, Ll/f;->u:Ll/e;

    iget-object v9, v9, Ll/e;->d:Ll/e;

    if-nez v9, :cond_4

    iget-object v9, v15, Ll/f;->w:Ll/e;

    iget-object v9, v9, Ll/e;->d:Ll/e;

    if-nez v9, :cond_4

    .line 16
    iget-object v9, v15, Ll/f;->F:Ll/f;

    iget-object v9, v9, Ll/f;->w:Ll/e;

    invoke-virtual {v14, v9}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v9

    .line 17
    invoke-virtual {v14, v9, v10, v13, v2}, Lk/e;->i(Lk/i;Lk/i;II)V

    :cond_4
    if-eqz v0, :cond_5

    .line 18
    iget v9, v15, Ll/f;->d0:I

    if-eq v9, v1, :cond_5

    iget-object v9, v15, Ll/f;->v:Ll/e;

    iget-object v9, v9, Ll/e;->d:Ll/e;

    if-nez v9, :cond_5

    iget-object v9, v15, Ll/f;->x:Ll/e;

    iget-object v9, v9, Ll/e;->d:Ll/e;

    if-nez v9, :cond_5

    iget-object v9, v15, Ll/f;->y:Ll/e;

    if-nez v9, :cond_5

    .line 19
    iget-object v9, v15, Ll/f;->F:Ll/f;

    iget-object v9, v9, Ll/f;->x:Ll/e;

    invoke-virtual {v14, v9}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v9

    .line 20
    invoke-virtual {v14, v9, v4, v13, v2}, Lk/e;->i(Lk/i;Lk/i;II)V

    :cond_5
    move v12, v0

    move v0, v5

    move/from16 v16, v7

    move/from16 v22, v8

    goto :goto_4

    :cond_6
    move v0, v13

    move v12, v0

    move/from16 v16, v12

    move/from16 v22, v16

    .line 21
    :goto_4
    iget v5, v15, Ll/f;->G:I

    .line 22
    iget v7, v15, Ll/f;->V:I

    if-ge v5, v7, :cond_7

    goto :goto_5

    :cond_7
    move v7, v5

    .line 23
    :goto_5
    iget v8, v15, Ll/f;->H:I

    .line 24
    iget v9, v15, Ll/f;->W:I

    if-ge v8, v9, :cond_8

    goto :goto_6

    :cond_8
    move v9, v8

    .line 25
    :goto_6
    iget-object v11, v15, Ll/f;->E:[Ll/f$b;

    aget-object v1, v11, v13

    sget-object v13, Ll/f$b;->c:Ll/f$b;

    if-eq v1, v13, :cond_9

    move v1, v2

    move-object/from16 v20, v3

    goto :goto_7

    :cond_9
    move-object/from16 v20, v3

    const/4 v1, 0x0

    .line 26
    :goto_7
    aget-object v3, v11, v2

    if-eq v3, v13, :cond_a

    move v3, v2

    goto :goto_8

    :cond_a
    const/4 v3, 0x0

    .line 27
    :goto_8
    iget v2, v15, Ll/f;->J:I

    iput v2, v15, Ll/f;->p:I

    move-object/from16 v24, v4

    .line 28
    iget v4, v15, Ll/f;->I:F

    iput v4, v15, Ll/f;->q:F

    move-object/from16 v25, v6

    .line 29
    iget v6, v15, Ll/f;->e:I

    move/from16 v19, v7

    .line 30
    iget v7, v15, Ll/f;->f:I

    const/16 v26, 0x0

    cmpl-float v26, v4, v26

    const/16 v27, 0x4

    move-object/from16 v28, v10

    if-lez v26, :cond_14

    .line 31
    iget v10, v15, Ll/f;->d0:I

    move/from16 v29, v9

    const/16 v9, 0x8

    if-eq v10, v9, :cond_15

    const/4 v9, 0x0

    .line 32
    aget-object v10, v11, v9

    if-ne v10, v13, :cond_b

    if-nez v6, :cond_b

    const/4 v6, 0x3

    :cond_b
    const/4 v10, 0x1

    .line 33
    aget-object v9, v11, v10

    if-ne v9, v13, :cond_c

    if-nez v7, :cond_c

    const/4 v7, 0x3

    :cond_c
    const/4 v9, 0x0

    .line 34
    aget-object v14, v11, v9

    if-ne v14, v13, :cond_d

    aget-object v9, v11, v10

    if-ne v9, v13, :cond_d

    const/4 v9, 0x3

    if-ne v6, v9, :cond_e

    if-ne v7, v9, :cond_e

    .line 35
    invoke-virtual {v15, v0, v12, v1, v3}, Ll/f;->E0(ZZZZ)V

    goto :goto_9

    :cond_d
    const/4 v9, 0x3

    :cond_e
    const/4 v1, 0x0

    .line 36
    aget-object v3, v11, v1

    if-ne v3, v13, :cond_10

    if-ne v6, v9, :cond_10

    .line 37
    iput v1, v15, Ll/f;->p:I

    int-to-float v1, v8

    mul-float/2addr v4, v1

    float-to-int v1, v4

    const/4 v3, 0x1

    .line 38
    aget-object v2, v11, v3

    move v10, v1

    if-eq v2, v13, :cond_f

    move/from16 v31, v7

    move/from16 v30, v27

    const/16 v18, 0x0

    const/16 v27, 0x0

    goto :goto_a

    :cond_f
    move/from16 v27, v3

    move/from16 v30, v6

    move/from16 v31, v7

    const/16 v18, 0x0

    goto :goto_a

    :cond_10
    const/4 v3, 0x1

    .line 39
    aget-object v1, v11, v3

    if-ne v1, v13, :cond_12

    const/4 v1, 0x3

    if-ne v7, v1, :cond_12

    .line 40
    iput v3, v15, Ll/f;->p:I

    const/4 v1, -0x1

    if-ne v2, v1, :cond_11

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v4

    .line 41
    iput v1, v15, Ll/f;->q:F

    .line 42
    :cond_11
    iget v1, v15, Ll/f;->q:F

    int-to-float v2, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v18, 0x0

    .line 43
    aget-object v2, v11, v18

    move/from16 v29, v1

    move/from16 v30, v6

    if-eq v2, v13, :cond_13

    move/from16 v10, v19

    move/from16 v31, v27

    move/from16 v27, v18

    goto :goto_a

    :cond_12
    :goto_9
    const/16 v18, 0x0

    move/from16 v30, v6

    :cond_13
    move/from16 v31, v7

    move/from16 v10, v19

    const/16 v27, 0x1

    goto :goto_a

    :cond_14
    move/from16 v29, v9

    :cond_15
    const/16 v18, 0x0

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v27, v18

    move/from16 v10, v19

    .line 44
    :goto_a
    iget-object v1, v15, Ll/f;->g:[I

    aput v30, v1, v18

    const/4 v2, 0x1

    .line 45
    aput v31, v1, v2

    if-eqz v27, :cond_17

    .line 46
    iget v1, v15, Ll/f;->p:I

    const/4 v14, -0x1

    if-eqz v1, :cond_16

    if-ne v1, v14, :cond_18

    :cond_16
    const/16 v26, 0x1

    goto :goto_b

    :cond_17
    const/4 v14, -0x1

    :cond_18
    const/16 v26, 0x0

    .line 47
    :goto_b
    iget-object v1, v15, Ll/f;->E:[Ll/f$b;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v6, Ll/f$b;->b:Ll/f$b;

    if-ne v1, v6, :cond_19

    instance-of v1, v15, Ll/g;

    if-eqz v1, :cond_19

    const/16 v32, 0x1

    goto :goto_c

    :cond_19
    const/16 v32, 0x0

    .line 48
    :goto_c
    iget-object v1, v15, Ll/f;->B:Ll/e;

    invoke-virtual {v1}, Ll/e;->k()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/lit8 v23, v1, 0x1

    .line 49
    iget v1, v15, Ll/f;->a:I

    const/4 v4, 0x2

    const/16 v33, 0x0

    if-eq v1, v4, :cond_1c

    .line 50
    iget-object v1, v15, Ll/f;->F:Ll/f;

    if-eqz v1, :cond_1a

    iget-object v1, v1, Ll/f;->w:Ll/e;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v1

    move-object/from16 v34, v1

    goto :goto_d

    :cond_1a
    move-object/from16 v3, p1

    move-object/from16 v34, v33

    .line 51
    :goto_d
    iget-object v1, v15, Ll/f;->F:Ll/f;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Ll/f;->u:Ll/e;

    invoke-virtual {v3, v1}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v1

    move-object/from16 v35, v1

    goto :goto_e

    :cond_1b
    move-object/from16 v35, v33

    .line 52
    :goto_e
    iget-object v1, v15, Ll/f;->E:[Ll/f$b;

    const/4 v13, 0x0

    aget-object v5, v1, v13

    iget-object v7, v15, Ll/f;->u:Ll/e;

    iget-object v8, v15, Ll/f;->w:Ll/e;

    iget v9, v15, Ll/f;->K:I

    iget v11, v15, Ll/f;->V:I

    iget-object v1, v15, Ll/f;->s:[I

    aget v1, v1, v13

    move/from16 v36, v12

    move v12, v1

    iget v1, v15, Ll/f;->Z:F

    move v13, v1

    iget v1, v15, Ll/f;->h:I

    move/from16 v17, v1

    iget v1, v15, Ll/f;->i:I

    move/from16 v18, v1

    iget v1, v15, Ll/f;->j:F

    move/from16 v19, v1

    move/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v37

    move-object/from16 v38, v20

    move-object/from16 v3, v35

    move-object/from16 v4, v34

    move-object/from16 v40, v6

    move-object/from16 v39, v25

    move/from16 v6, v32

    move-object/from16 v25, v28

    move/from16 v14, v26

    move/from16 v15, v16

    move/from16 v16, v30

    move/from16 v20, v23

    invoke-virtual/range {v0 .. v20}, Ll/f;->e(Lk/e;ZLk/i;Lk/i;Ll/f$b;ZLl/e;Ll/e;IIIIFZZIIIFZ)V

    goto :goto_f

    :cond_1c
    move-object/from16 v40, v6

    move/from16 v36, v12

    move-object/from16 v38, v20

    move-object/from16 v39, v25

    move-object/from16 v25, v28

    :goto_f
    move-object/from16 v15, p0

    .line 53
    iget v0, v15, Ll/f;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    return-void

    .line 54
    :cond_1d
    iget-object v0, v15, Ll/f;->E:[Ll/f$b;

    const/4 v14, 0x1

    aget-object v0, v0, v14

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_1e

    instance-of v0, v15, Ll/g;

    if-eqz v0, :cond_1e

    move v6, v14

    goto :goto_10

    :cond_1e
    const/4 v6, 0x0

    :goto_10
    if-eqz v27, :cond_20

    .line 55
    iget v0, v15, Ll/f;->p:I

    if-eq v0, v14, :cond_1f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    :cond_1f
    move/from16 v16, v14

    goto :goto_11

    :cond_20
    const/16 v16, 0x0

    .line 56
    :goto_11
    iget v0, v15, Ll/f;->U:I

    if-lez v0, :cond_22

    .line 57
    iget-object v0, v15, Ll/f;->y:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    iget v0, v0, Ll/o;->b:I

    if-ne v0, v14, :cond_21

    .line 58
    iget-object v0, v15, Ll/f;->y:Ll/e;

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Ll/m;->g(Lk/e;)V

    goto :goto_12

    :cond_21
    move-object/from16 v10, p1

    .line 59
    invoke-virtual/range {p0 .. p0}, Ll/f;->j()I

    move-result v0

    const/4 v1, 0x6

    move-object/from16 v2, v38

    move-object/from16 v4, v39

    invoke-virtual {v10, v2, v4, v0, v1}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    .line 60
    iget-object v0, v15, Ll/f;->y:Ll/e;

    iget-object v0, v0, Ll/e;->d:Ll/e;

    if-eqz v0, :cond_23

    .line 61
    invoke-virtual {v10, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v0

    const/4 v3, 0x0

    .line 62
    invoke-virtual {v10, v2, v0, v3, v1}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    move/from16 v20, v3

    goto :goto_13

    :cond_22
    move-object/from16 v10, p1

    :goto_12
    move-object/from16 v4, v39

    :cond_23
    move/from16 v20, v23

    .line 63
    :goto_13
    iget-object v0, v15, Ll/f;->F:Ll/f;

    if-eqz v0, :cond_24

    iget-object v0, v0, Ll/f;->x:Ll/e;

    invoke-virtual {v10, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_14

    :cond_24
    move-object/from16 v23, v33

    .line 64
    :goto_14
    iget-object v0, v15, Ll/f;->F:Ll/f;

    if-eqz v0, :cond_25

    iget-object v0, v0, Ll/f;->v:Ll/e;

    invoke-virtual {v10, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v0

    move-object v3, v0

    goto :goto_15

    :cond_25
    move-object/from16 v3, v33

    .line 65
    :goto_15
    iget-object v0, v15, Ll/f;->E:[Ll/f$b;

    aget-object v5, v0, v14

    iget-object v7, v15, Ll/f;->v:Ll/e;

    iget-object v8, v15, Ll/f;->x:Ll/e;

    iget v9, v15, Ll/f;->L:I

    iget v11, v15, Ll/f;->W:I

    iget-object v0, v15, Ll/f;->s:[I

    aget v12, v0, v14

    iget v13, v15, Ll/f;->a0:F

    iget v0, v15, Ll/f;->k:I

    move/from16 v17, v0

    iget v0, v15, Ll/f;->l:I

    move/from16 v18, v0

    iget v0, v15, Ll/f;->m:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    move-object/from16 v26, v4

    move-object/from16 v4, v23

    move/from16 v10, v29

    move/from16 v14, v16

    move/from16 v15, v22

    move/from16 v16, v31

    invoke-virtual/range {v0 .. v20}, Ll/f;->e(Lk/e;ZLk/i;Lk/i;Ll/f$b;ZLl/e;Ll/e;IIIIFZZIIIFZ)V

    if-eqz v27, :cond_27

    const/4 v6, 0x6

    move-object/from16 v7, p0

    .line 66
    iget v0, v7, Ll/f;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 67
    iget v5, v7, Ll/f;->q:F

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v25

    move-object/from16 v4, v21

    invoke-virtual/range {v0 .. v6}, Lk/e;->l(Lk/i;Lk/i;Lk/i;Lk/i;FI)V

    goto :goto_16

    .line 68
    :cond_26
    iget v5, v7, Ll/f;->q:F

    const/4 v6, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    move-object/from16 v4, v26

    invoke-virtual/range {v0 .. v6}, Lk/e;->l(Lk/i;Lk/i;Lk/i;Lk/i;FI)V

    goto :goto_16

    :cond_27
    move-object/from16 v7, p0

    .line 69
    :goto_16
    iget-object v0, v7, Ll/f;->B:Ll/e;

    invoke-virtual {v0}, Ll/e;->k()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 70
    iget-object v0, v7, Ll/f;->B:Ll/e;

    invoke-virtual {v0}, Ll/e;->i()Ll/e;

    move-result-object v0

    invoke-virtual {v0}, Ll/e;->e()Ll/f;

    move-result-object v0

    iget v1, v7, Ll/f;->t:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Ll/f;->B:Ll/e;

    invoke-virtual {v2}, Ll/e;->d()I

    move-result v2

    move-object/from16 v3, p1

    invoke-virtual {v3, v7, v0, v1, v2}, Lk/e;->b(Ll/f;Ll/f;FI)V

    :cond_28
    return-void
.end method

.method public b0(I)V
    .locals 1

    .line 1
    iput p1, p0, Ll/f;->H:I

    .line 2
    iget v0, p0, Ll/f;->W:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Ll/f;->H:I

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Ll/f;->d0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c0(Z)V
    .locals 0

    iput-boolean p1, p0, Ll/f;->o:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    invoke-static {p1, p0}, Ll/k;->a(ILl/f;)V

    return-void
.end method

.method public d0(F)V
    .locals 0

    iput p1, p0, Ll/f;->Z:F

    return-void
.end method

.method public final e(Lk/e;ZLk/i;Lk/i;Ll/f$b;ZLl/e;Ll/e;IIIIFZZIIIFZ)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v1, p11

    move/from16 v2, p12

    .line 1
    invoke-virtual {v10, v13}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v15

    .line 2
    invoke-virtual {v10, v14}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v9

    .line 3
    invoke-virtual/range {p7 .. p7}, Ll/e;->i()Ll/e;

    move-result-object v3

    invoke-virtual {v10, v3}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v8

    .line 4
    invoke-virtual/range {p8 .. p8}, Ll/e;->i()Ll/e;

    move-result-object v3

    invoke-virtual {v10, v3}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v7

    .line 5
    iget-boolean v3, v10, Lk/e;->g:Z

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual/range {p7 .. p7}, Ll/e;->f()Ll/m;

    move-result-object v3

    iget v3, v3, Ll/o;->b:I

    if-ne v3, v6, :cond_1

    .line 7
    invoke-virtual/range {p8 .. p8}, Ll/e;->f()Ll/m;

    move-result-object v3

    iget v3, v3, Ll/o;->b:I

    if-ne v3, v6, :cond_1

    .line 8
    invoke-static {}, Lk/e;->x()Lk/f;

    .line 9
    invoke-virtual/range {p7 .. p7}, Ll/e;->f()Ll/m;

    move-result-object v1

    invoke-virtual {v1, v10}, Ll/m;->g(Lk/e;)V

    .line 10
    invoke-virtual/range {p8 .. p8}, Ll/e;->f()Ll/m;

    move-result-object v1

    invoke-virtual {v1, v10}, Ll/m;->g(Lk/e;)V

    if-nez p15, :cond_0

    if-eqz p2, :cond_0

    .line 11
    invoke-virtual {v10, v12, v9, v5, v4}, Lk/e;->i(Lk/i;Lk/i;II)V

    :cond_0
    return-void

    .line 12
    :cond_1
    invoke-static {}, Lk/e;->x()Lk/f;

    .line 13
    invoke-virtual/range {p7 .. p7}, Ll/e;->k()Z

    move-result v16

    .line 14
    invoke-virtual/range {p8 .. p8}, Ll/e;->k()Z

    move-result v17

    .line 15
    iget-object v3, v0, Ll/f;->B:Ll/e;

    invoke-virtual {v3}, Ll/e;->k()Z

    move-result v18

    if-eqz v17, :cond_2

    add-int/lit8 v3, v16, 0x1

    goto :goto_0

    :cond_2
    move/from16 v3, v16

    :goto_0
    if-eqz v18, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    if-eqz p14, :cond_4

    const/4 v4, 0x3

    goto :goto_1

    :cond_4
    move/from16 v4, p16

    .line 16
    :goto_1
    sget-object v21, Ll/f$a;->b:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v22

    aget v5, v21, v22

    const/4 v14, 0x2

    const/4 v13, 0x4

    if-eq v5, v6, :cond_5

    if-eq v5, v14, :cond_5

    const/4 v14, 0x3

    if-eq v5, v14, :cond_5

    if-eq v5, v13, :cond_6

    :cond_5
    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    if-ne v4, v13, :cond_7

    goto :goto_2

    :cond_7
    move v5, v6

    .line 17
    :goto_3
    iget v14, v0, Ll/f;->d0:I

    const/16 v13, 0x8

    if-ne v14, v13, :cond_8

    const/4 v5, 0x0

    const/4 v13, 0x0

    goto :goto_4

    :cond_8
    move v13, v5

    move/from16 v5, p10

    :goto_4
    if-eqz p20, :cond_a

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v18, :cond_9

    move/from16 v14, p9

    .line 18
    invoke-virtual {v10, v15, v14}, Lk/e;->f(Lk/i;I)V

    goto :goto_5

    :cond_9
    if-eqz v16, :cond_a

    if-nez v17, :cond_a

    .line 19
    invoke-virtual/range {p7 .. p7}, Ll/e;->d()I

    move-result v14

    const/4 v6, 0x6

    invoke-virtual {v10, v15, v8, v14, v6}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v6, 0x6

    :goto_6
    if-nez v13, :cond_e

    if-eqz p6, :cond_d

    const/4 v6, 0x0

    const/4 v14, 0x3

    .line 20
    invoke-virtual {v10, v9, v15, v6, v14}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    const/4 v5, 0x6

    if-lez v1, :cond_b

    .line 21
    invoke-virtual {v10, v9, v15, v1, v5}, Lk/e;->i(Lk/i;Lk/i;II)V

    :cond_b
    const v6, 0x7fffffff

    if-ge v2, v6, :cond_c

    .line 22
    invoke-virtual {v10, v9, v15, v2, v5}, Lk/e;->k(Lk/i;Lk/i;II)V

    :cond_c
    move v6, v5

    goto :goto_7

    :cond_d
    const/4 v14, 0x3

    .line 23
    invoke-virtual {v10, v9, v15, v5, v6}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    :goto_7
    move/from16 v14, p17

    move v0, v3

    move/from16 v24, v4

    move-object v1, v7

    move-object/from16 v22, v8

    move/from16 v19, v13

    const/4 v2, 0x2

    move/from16 v13, p18

    goto/16 :goto_d

    :cond_e
    const/4 v14, 0x3

    const/4 v2, -0x2

    move/from16 v14, p17

    move/from16 v6, p18

    if-ne v14, v2, :cond_f

    move v14, v5

    :cond_f
    if-ne v6, v2, :cond_10

    move v6, v5

    :cond_10
    const/4 v2, 0x6

    if-lez v14, :cond_11

    .line 24
    invoke-virtual {v10, v9, v15, v14, v2}, Lk/e;->i(Lk/i;Lk/i;II)V

    .line 25
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_11
    if-lez v6, :cond_12

    .line 26
    invoke-virtual {v10, v9, v15, v6, v2}, Lk/e;->k(Lk/i;Lk/i;II)V

    .line 27
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_12
    const/4 v2, 0x1

    if-ne v4, v2, :cond_15

    if-eqz p2, :cond_13

    const/4 v2, 0x6

    .line 28
    invoke-virtual {v10, v9, v15, v5, v2}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    move v0, v3

    move/from16 v24, v4

    move-object v1, v7

    move-object/from16 v22, v8

    move/from16 p10, v13

    move v8, v5

    move v13, v6

    goto/16 :goto_b

    :cond_13
    const/4 v2, 0x6

    if-eqz p15, :cond_14

    move/from16 p10, v13

    const/4 v13, 0x4

    .line 29
    invoke-virtual {v10, v9, v15, v5, v13}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    goto/16 :goto_a

    :cond_14
    move/from16 p10, v13

    const/4 v2, 0x1

    const/4 v13, 0x4

    .line 30
    invoke-virtual {v10, v9, v15, v5, v2}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    goto/16 :goto_a

    :cond_15
    move/from16 p10, v13

    const/4 v2, 0x2

    const/4 v13, 0x4

    if-ne v4, v2, :cond_18

    .line 31
    invoke-virtual/range {p7 .. p7}, Ll/e;->j()Ll/e$d;

    move-result-object v2

    sget-object v13, Ll/e$d;->c:Ll/e$d;

    if-eq v2, v13, :cond_17

    invoke-virtual/range {p7 .. p7}, Ll/e;->j()Ll/e$d;

    move-result-object v2

    move/from16 v22, v3

    sget-object v3, Ll/e$d;->e:Ll/e$d;

    if-ne v2, v3, :cond_16

    goto :goto_8

    .line 32
    :cond_16
    iget-object v2, v0, Ll/f;->F:Ll/f;

    sget-object v3, Ll/e$d;->b:Ll/e$d;

    invoke-virtual {v2, v3}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v2

    invoke-virtual {v10, v2}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v2

    .line 33
    iget-object v3, v0, Ll/f;->F:Ll/f;

    sget-object v13, Ll/e$d;->d:Ll/e$d;

    invoke-virtual {v3, v13}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v3

    invoke-virtual {v10, v3}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v3

    goto :goto_9

    :cond_17
    move/from16 v22, v3

    .line 34
    :goto_8
    iget-object v2, v0, Ll/f;->F:Ll/f;

    invoke-virtual {v2, v13}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v2

    invoke-virtual {v10, v2}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v2

    .line 35
    iget-object v3, v0, Ll/f;->F:Ll/f;

    sget-object v13, Ll/e$d;->e:Ll/e$d;

    invoke-virtual {v3, v13}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v3

    invoke-virtual {v10, v3}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    move-result-object v3

    :goto_9
    move-object/from16 v23, v2

    move-object v13, v3

    .line 36
    invoke-virtual/range {p1 .. p1}, Lk/e;->s()Lk/b;

    move-result-object v2

    const/16 v20, 0x1

    const/16 v21, 0x6

    move/from16 v0, v22

    move-object v3, v9

    move/from16 v24, v4

    move-object/from16 v22, v8

    move/from16 v8, v21

    move-object v4, v15

    move v8, v5

    move-object v5, v13

    move v13, v6

    move-object/from16 v6, v23

    move-object v1, v7

    move/from16 v7, p19

    invoke-virtual/range {v2 .. v7}, Lk/b;->j(Lk/i;Lk/i;Lk/i;Lk/i;F)Lk/b;

    move-result-object v2

    invoke-virtual {v10, v2}, Lk/e;->d(Lk/b;)V

    const/4 v5, 0x0

    goto :goto_c

    :cond_18
    :goto_a
    move v0, v3

    move/from16 v24, v4

    move v13, v6

    move-object v1, v7

    move-object/from16 v22, v8

    move v8, v5

    :goto_b
    move/from16 v5, p10

    :goto_c
    const/4 v2, 0x2

    if-eqz v5, :cond_1a

    if-eq v0, v2, :cond_1a

    if-nez p14, :cond_1a

    .line 37
    invoke-static {v14, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v13, :cond_19

    .line 38
    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_19
    const/4 v4, 0x6

    .line 39
    invoke-virtual {v10, v9, v15, v3, v4}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    const/16 v19, 0x0

    goto :goto_d

    :cond_1a
    move/from16 v19, v5

    :goto_d
    if-eqz p20, :cond_37

    if-eqz p15, :cond_1b

    goto/16 :goto_1a

    :cond_1b
    const/4 v0, 0x5

    if-nez v16, :cond_1d

    if-nez v17, :cond_1d

    if-nez v18, :cond_1d

    if-eqz p2, :cond_1c

    const/4 v8, 0x0

    .line 40
    invoke-virtual {v10, v12, v9, v8, v0}, Lk/e;->i(Lk/i;Lk/i;II)V

    goto/16 :goto_17

    :cond_1c
    move-object v12, v9

    const/4 v0, 0x0

    goto/16 :goto_18

    :cond_1d
    const/4 v8, 0x0

    if-eqz v16, :cond_1e

    if-nez v17, :cond_1e

    if-eqz p2, :cond_34

    .line 41
    invoke-virtual {v10, v12, v9, v8, v0}, Lk/e;->i(Lk/i;Lk/i;II)V

    goto/16 :goto_17

    :cond_1e
    if-nez v16, :cond_1f

    if-eqz v17, :cond_1f

    .line 42
    invoke-virtual/range {p8 .. p8}, Ll/e;->d()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x6

    invoke-virtual {v10, v9, v1, v2, v3}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    if-eqz p2, :cond_34

    .line 43
    invoke-virtual {v10, v15, v11, v8, v0}, Lk/e;->i(Lk/i;Lk/i;II)V

    goto/16 :goto_17

    :cond_1f
    if-eqz v16, :cond_34

    if-eqz v17, :cond_34

    if-eqz v19, :cond_29

    move-object v7, v1

    const/4 v6, 0x6

    if-eqz p2, :cond_20

    if-nez p11, :cond_20

    .line 44
    invoke-virtual {v10, v9, v15, v8, v6}, Lk/e;->i(Lk/i;Lk/i;II)V

    :cond_20
    move/from16 v5, v24

    if-nez v5, :cond_25

    if-gtz v13, :cond_22

    if-lez v14, :cond_21

    goto :goto_e

    :cond_21
    move v4, v6

    move v1, v8

    goto :goto_f

    :cond_22
    :goto_e
    const/4 v1, 0x1

    const/4 v4, 0x4

    .line 45
    :goto_f
    invoke-virtual/range {p7 .. p7}, Ll/e;->d()I

    move-result v2

    move-object/from16 v3, v22

    invoke-virtual {v10, v15, v3, v2, v4}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    .line 46
    invoke-virtual/range {p8 .. p8}, Ll/e;->d()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v10, v9, v7, v2, v4}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    if-gtz v13, :cond_24

    if-lez v14, :cond_23

    goto :goto_10

    :cond_23
    move v2, v8

    goto :goto_11

    :cond_24
    :goto_10
    const/4 v2, 0x1

    :goto_11
    move-object/from16 v5, p0

    move/from16 v16, v0

    move v13, v1

    const/4 v14, 0x1

    goto :goto_15

    :cond_25
    move-object/from16 v3, v22

    const/4 v14, 0x1

    if-ne v5, v14, :cond_26

    move-object/from16 v5, p0

    move/from16 v16, v6

    :goto_12
    move v2, v14

    goto :goto_14

    :cond_26
    const/4 v1, 0x3

    if-ne v5, v1, :cond_28

    move-object/from16 v5, p0

    if-nez p14, :cond_27

    .line 47
    iget v1, v5, Ll/f;->p:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    if-gtz v13, :cond_27

    move v4, v6

    goto :goto_13

    :cond_27
    const/4 v4, 0x4

    .line 48
    :goto_13
    invoke-virtual/range {p7 .. p7}, Ll/e;->d()I

    move-result v1

    invoke-virtual {v10, v15, v3, v1, v4}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    .line 49
    invoke-virtual/range {p8 .. p8}, Ll/e;->d()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v9, v7, v1, v4}, Lk/e;->e(Lk/i;Lk/i;II)Lk/b;

    move/from16 v16, v0

    goto :goto_12

    :cond_28
    move-object/from16 v5, p0

    move/from16 v16, v0

    move v2, v8

    :goto_14
    move v13, v2

    goto :goto_15

    :cond_29
    move-object/from16 v5, p0

    move-object v7, v1

    move-object/from16 v3, v22

    const/4 v6, 0x6

    const/4 v14, 0x1

    move/from16 v16, v0

    move v13, v8

    move v2, v14

    :goto_15
    if-eqz v2, :cond_2b

    .line 50
    invoke-virtual/range {p7 .. p7}, Ll/e;->d()I

    move-result v4

    .line 51
    invoke-virtual/range {p8 .. p8}, Ll/e;->d()I

    move-result v17

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v18, v3

    move/from16 v5, p13

    move/from16 v20, v6

    move-object v6, v7

    move-object v0, v7

    move-object v7, v9

    move v12, v8

    move-object/from16 v14, v18

    move/from16 v8, v17

    move-object v12, v9

    move/from16 v9, v16

    .line 52
    invoke-virtual/range {v1 .. v9}, Lk/e;->c(Lk/i;Lk/i;IFLk/i;Lk/i;II)V

    move-object/from16 v1, p7

    .line 53
    iget-object v2, v1, Ll/e;->d:Ll/e;

    iget-object v2, v2, Ll/e;->b:Ll/f;

    instance-of v2, v2, Ll/b;

    move-object/from16 v3, p8

    .line 54
    iget-object v4, v3, Ll/e;->d:Ll/e;

    iget-object v4, v4, Ll/e;->b:Ll/f;

    instance-of v4, v4, Ll/b;

    if-eqz v2, :cond_2a

    if-nez v4, :cond_2a

    move/from16 v6, p2

    const/4 v2, 0x6

    const/4 v4, 0x5

    const/16 v21, 0x1

    goto :goto_16

    :cond_2a
    if-nez v2, :cond_2c

    if-eqz v4, :cond_2c

    move/from16 v21, p2

    const/4 v2, 0x5

    const/4 v4, 0x6

    const/4 v6, 0x1

    goto :goto_16

    :cond_2b
    move-object/from16 v1, p7

    move-object v14, v3

    move-object v0, v7

    move-object v12, v9

    move-object/from16 v3, p8

    :cond_2c
    move/from16 v6, p2

    move/from16 v21, v6

    const/4 v2, 0x5

    const/4 v4, 0x5

    :goto_16
    if-eqz v13, :cond_2d

    const/4 v2, 0x6

    const/4 v4, 0x6

    :cond_2d
    if-nez v19, :cond_2e

    if-nez v6, :cond_2f

    :cond_2e
    if-eqz v13, :cond_30

    .line 55
    :cond_2f
    invoke-virtual/range {p7 .. p7}, Ll/e;->d()I

    move-result v1

    invoke-virtual {v10, v15, v14, v1, v4}, Lk/e;->i(Lk/i;Lk/i;II)V

    :cond_30
    if-nez v19, :cond_31

    if-nez v21, :cond_32

    :cond_31
    if-eqz v13, :cond_33

    .line 56
    :cond_32
    invoke-virtual/range {p8 .. p8}, Ll/e;->d()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v12, v0, v1, v2}, Lk/e;->k(Lk/i;Lk/i;II)V

    :cond_33
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eqz p2, :cond_35

    .line 57
    invoke-virtual {v10, v15, v11, v0, v1}, Lk/e;->i(Lk/i;Lk/i;II)V

    goto :goto_19

    :cond_34
    :goto_17
    move v0, v8

    move-object v12, v9

    :goto_18
    const/4 v1, 0x6

    :cond_35
    :goto_19
    if-eqz p2, :cond_36

    move v2, v0

    move-object/from16 v0, p4

    .line 58
    invoke-virtual {v10, v0, v12, v2, v1}, Lk/e;->i(Lk/i;Lk/i;II)V

    :cond_36
    return-void

    :cond_37
    :goto_1a
    move v3, v0

    move v4, v2

    move-object v0, v12

    const/4 v1, 0x6

    const/4 v2, 0x0

    move-object v12, v9

    if-ge v3, v4, :cond_38

    if-eqz p2, :cond_38

    .line 59
    invoke-virtual {v10, v15, v11, v2, v1}, Lk/e;->i(Lk/i;Lk/i;II)V

    .line 60
    invoke-virtual {v10, v0, v12, v2, v1}, Lk/e;->i(Lk/i;Lk/i;II)V

    :cond_38
    return-void
.end method

.method public e0(I)V
    .locals 0

    iput p1, p0, Ll/f;->l0:I

    return-void
.end method

.method public f(Ll/f;FI)V
    .locals 6

    .line 1
    sget-object v3, Ll/e$d;->g:Ll/e$d;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v3

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Ll/f;->J(Ll/e$d;Ll/f;Ll/e$d;II)V

    .line 2
    iput p2, p0, Ll/f;->t:F

    return-void
.end method

.method public f0(II)V
    .locals 0

    .line 1
    iput p1, p0, Ll/f;->K:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Ll/f;->G:I

    .line 3
    iget p1, p0, Ll/f;->V:I

    if-ge p2, p1, :cond_0

    .line 4
    iput p1, p0, Ll/f;->G:I

    :cond_0
    return-void
.end method

.method public g(Lk/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/f;->u:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    .line 2
    iget-object v0, p0, Ll/f;->v:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    .line 3
    iget-object v0, p0, Ll/f;->w:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    .line 4
    iget-object v0, p0, Ll/f;->x:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    .line 5
    iget v0, p0, Ll/f;->U:I

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Ll/f;->y:Ll/e;

    invoke-virtual {p1, v0}, Lk/e;->r(Ljava/lang/Object;)Lk/i;

    :cond_0
    return-void
.end method

.method public g0(Ll/f$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/f;->E:[Ll/f$b;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    sget-object v0, Ll/f$b;->b:Ll/f$b;

    if-ne p1, v0, :cond_0

    .line 3
    iget p1, p0, Ll/f;->X:I

    invoke-virtual {p0, p1}, Ll/f;->y0(I)V

    :cond_0
    return-void
.end method

.method public h(Ll/e$d;)Ll/e;
    .locals 2

    .line 1
    sget-object v0, Ll/f$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :pswitch_1
    iget-object p1, p0, Ll/f;->A:Ll/e;

    return-object p1

    .line 4
    :pswitch_2
    iget-object p1, p0, Ll/f;->z:Ll/e;

    return-object p1

    .line 5
    :pswitch_3
    iget-object p1, p0, Ll/f;->B:Ll/e;

    return-object p1

    .line 6
    :pswitch_4
    iget-object p1, p0, Ll/f;->y:Ll/e;

    return-object p1

    .line 7
    :pswitch_5
    iget-object p1, p0, Ll/f;->x:Ll/e;

    return-object p1

    .line 8
    :pswitch_6
    iget-object p1, p0, Ll/f;->w:Ll/e;

    return-object p1

    .line 9
    :pswitch_7
    iget-object p1, p0, Ll/f;->v:Ll/e;

    return-object p1

    .line 10
    :pswitch_8
    iget-object p1, p0, Ll/f;->u:Ll/e;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h0(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Ll/f;->e:I

    .line 2
    iput p2, p0, Ll/f;->h:I

    .line 3
    iput p3, p0, Ll/f;->i:I

    .line 4
    iput p4, p0, Ll/f;->j:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Ll/f;->e:I

    :cond_0
    return-void
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

.method public i0(F)V
    .locals 2

    iget-object v0, p0, Ll/f;->p0:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Ll/f;->U:I

    return v0
.end method

.method public j0(I)V
    .locals 2

    iget-object v0, p0, Ll/f;->s:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public k(I)F
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Ll/f;->Z:F

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget p1, p0, Ll/f;->a0:F

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public k0(I)V
    .locals 2

    iget-object v0, p0, Ll/f;->s:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public l()I
    .locals 2

    invoke-virtual {p0}, Ll/f;->H()I

    move-result v0

    iget v1, p0, Ll/f;->H:I

    add-int/2addr v0, v1

    return v0
.end method

.method public l0(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Ll/f;->W:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Ll/f;->W:I

    :goto_0
    return-void
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll/f;->b0:Ljava/lang/Object;

    return-object v0
.end method

.method public m0(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Ll/f;->V:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Ll/f;->V:I

    :goto_0
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll/f;->e0:Ljava/lang/String;

    return-object v0
.end method

.method public n0(II)V
    .locals 0

    .line 1
    iput p1, p0, Ll/f;->S:I

    .line 2
    iput p2, p0, Ll/f;->T:I

    return-void
.end method

.method public o(I)Ll/f$b;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ll/f;->s()Ll/f$b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ll/f;->B()Ll/f$b;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public o0(II)V
    .locals 0

    .line 1
    iput p1, p0, Ll/f;->K:I

    .line 2
    iput p2, p0, Ll/f;->L:I

    return-void
.end method

.method public p()I
    .locals 2

    iget v0, p0, Ll/f;->O:I

    iget v1, p0, Ll/f;->S:I

    add-int/2addr v0, v1

    return v0
.end method

.method public p0(Ll/f;)V
    .locals 0

    iput-object p1, p0, Ll/f;->F:Ll/f;

    return-void
.end method

.method public q()I
    .locals 2

    iget v0, p0, Ll/f;->P:I

    iget v1, p0, Ll/f;->T:I

    add-int/2addr v0, v1

    return v0
.end method

.method public q0(II)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    iput p1, p0, Ll/f;->M:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    iput p1, p0, Ll/f;->N:I

    :cond_1
    :goto_0
    return-void
.end method

.method public r()I
    .locals 2

    .line 1
    iget v0, p0, Ll/f;->d0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ll/f;->H:I

    return v0
.end method

.method public r0(F)V
    .locals 0

    iput p1, p0, Ll/f;->a0:F

    return-void
.end method

.method public s()Ll/f$b;
    .locals 2

    iget-object v0, p0, Ll/f;->E:[Ll/f$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public s0(I)V
    .locals 0

    iput p1, p0, Ll/f;->m0:I

    return-void
.end method

.method public t(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Ll/f;->D()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Ll/f;->r()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public t0(II)V
    .locals 0

    .line 1
    iput p1, p0, Ll/f;->L:I

    sub-int/2addr p2, p1

    .line 2
    iput p2, p0, Ll/f;->H:I

    .line 3
    iget p1, p0, Ll/f;->W:I

    if-ge p2, p1, :cond_0

    .line 4
    iput p1, p0, Ll/f;->H:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ll/f;->f0:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ll/f;->f0:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll/f;->e0:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ll/f;->e0:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/f;->K:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/f;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/f;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll/f;->H:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") wrap: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ll/f;->X:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll/f;->Y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ll/f;
    .locals 1

    iget-object v0, p0, Ll/f;->F:Ll/f;

    return-object v0
.end method

.method public u0(Ll/f$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/f;->E:[Ll/f$b;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 2
    sget-object v0, Ll/f$b;->b:Ll/f$b;

    if-ne p1, v0, :cond_0

    .line 3
    iget p1, p0, Ll/f;->Y:I

    invoke-virtual {p0, p1}, Ll/f;->b0(I)V

    :cond_0
    return-void
.end method

.method public v(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Ll/f;->M:I

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget p1, p0, Ll/f;->N:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public v0(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Ll/f;->f:I

    .line 2
    iput p2, p0, Ll/f;->k:I

    .line 3
    iput p3, p0, Ll/f;->l:I

    .line 4
    iput p4, p0, Ll/f;->m:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Ll/f;->f:I

    :cond_0
    return-void
.end method

.method public w()Ll/n;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/f;->d:Ll/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ll/n;

    invoke-direct {v0}, Ll/n;-><init>()V

    iput-object v0, p0, Ll/f;->d:Ll/n;

    .line 3
    :cond_0
    iget-object v0, p0, Ll/f;->d:Ll/n;

    return-object v0
.end method

.method public w0(F)V
    .locals 2

    iget-object v0, p0, Ll/f;->p0:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public x()Ll/n;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/f;->c:Ll/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ll/n;

    invoke-direct {v0}, Ll/n;-><init>()V

    iput-object v0, p0, Ll/f;->c:Ll/n;

    .line 3
    :cond_0
    iget-object v0, p0, Ll/f;->c:Ll/n;

    return-object v0
.end method

.method public x0(I)V
    .locals 0

    iput p1, p0, Ll/f;->d0:I

    return-void
.end method

.method public y()I
    .locals 2

    invoke-virtual {p0}, Ll/f;->G()I

    move-result v0

    iget v1, p0, Ll/f;->G:I

    add-int/2addr v0, v1

    return v0
.end method

.method public y0(I)V
    .locals 1

    .line 1
    iput p1, p0, Ll/f;->G:I

    .line 2
    iget v0, p0, Ll/f;->V:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Ll/f;->G:I

    :cond_0
    return-void
.end method

.method public z()I
    .locals 2

    iget v0, p0, Ll/f;->K:I

    iget v1, p0, Ll/f;->S:I

    add-int/2addr v0, v1

    return v0
.end method

.method public z0(Z)V
    .locals 0

    iput-boolean p1, p0, Ll/f;->n:Z

    return-void
.end method
