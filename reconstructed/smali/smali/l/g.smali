.class public Ll/g;
.super Ll/q;
.source "ConstraintWidgetContainer.java"


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:I

.field public E0:I

.field public F0:[Ll/d;

.field public G0:[Ll/d;

.field public H0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/h;",
            ">;"
        }
    .end annotation
.end field

.field public I0:Z

.field public J0:Z

.field public K0:Z

.field public L0:I

.field public M0:I

.field public N0:I

.field public O0:Z

.field public P0:Z

.field public Q0:Z

.field public R0:I

.field public w0:Z

.field public x0:Lk/e;

.field public y0:Ll/p;

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ll/q;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ll/g;->w0:Z

    .line 3
    new-instance v1, Lk/e;

    invoke-direct {v1}, Lk/e;-><init>()V

    iput-object v1, p0, Ll/g;->x0:Lk/e;

    .line 4
    iput v0, p0, Ll/g;->D0:I

    .line 5
    iput v0, p0, Ll/g;->E0:I

    const/4 v1, 0x4

    new-array v2, v1, [Ll/d;

    .line 6
    iput-object v2, p0, Ll/g;->F0:[Ll/d;

    new-array v1, v1, [Ll/d;

    .line 7
    iput-object v1, p0, Ll/g;->G0:[Ll/d;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ll/g;->H0:Ljava/util/List;

    .line 9
    iput-boolean v0, p0, Ll/g;->I0:Z

    .line 10
    iput-boolean v0, p0, Ll/g;->J0:Z

    .line 11
    iput-boolean v0, p0, Ll/g;->K0:Z

    .line 12
    iput v0, p0, Ll/g;->L0:I

    .line 13
    iput v0, p0, Ll/g;->M0:I

    const/4 v1, 0x7

    .line 14
    iput v1, p0, Ll/g;->N0:I

    .line 15
    iput-boolean v0, p0, Ll/g;->O0:Z

    .line 16
    iput-boolean v0, p0, Ll/g;->P0:Z

    .line 17
    iput-boolean v0, p0, Ll/g;->Q0:Z

    .line 18
    iput v0, p0, Ll/g;->R0:I

    return-void
.end method


# virtual methods
.method public K0()V
    .locals 21

    move-object/from16 v1, p0

    .line 1
    iget v2, v1, Ll/f;->K:I

    .line 2
    iget v3, v1, Ll/f;->L:I

    .line 3
    invoke-virtual/range {p0 .. p0}, Ll/f;->D()I

    move-result v0

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Ll/f;->r()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5
    iput-boolean v4, v1, Ll/g;->P0:Z

    .line 6
    iput-boolean v4, v1, Ll/g;->Q0:Z

    .line 7
    iget-object v0, v1, Ll/f;->F:Ll/f;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, v1, Ll/g;->y0:Ll/p;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ll/p;

    invoke-direct {v0, v1}, Ll/p;-><init>(Ll/f;)V

    iput-object v0, v1, Ll/g;->y0:Ll/p;

    .line 10
    :cond_0
    iget-object v0, v1, Ll/g;->y0:Ll/p;

    invoke-virtual {v0, v1}, Ll/p;->b(Ll/f;)V

    .line 11
    iget v0, v1, Ll/g;->z0:I

    invoke-virtual {v1, v0}, Ll/f;->C0(I)V

    .line 12
    iget v0, v1, Ll/g;->A0:I

    invoke-virtual {v1, v0}, Ll/f;->D0(I)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Ll/f;->R()V

    .line 14
    iget-object v0, v1, Ll/g;->x0:Lk/e;

    invoke-virtual {v0}, Lk/e;->w()Lk/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ll/q;->T(Lk/c;)V

    goto :goto_0

    .line 15
    :cond_1
    iput v4, v1, Ll/f;->K:I

    .line 16
    iput v4, v1, Ll/f;->L:I

    .line 17
    :goto_0
    iget v0, v1, Ll/g;->N0:I

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {v1, v8}, Ll/g;->X0(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    invoke-virtual/range {p0 .. p0}, Ll/g;->Z0()V

    .line 20
    :cond_2
    invoke-virtual {v1, v7}, Ll/g;->X0(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    invoke-virtual/range {p0 .. p0}, Ll/g;->W0()V

    .line 22
    :cond_3
    iget-object v0, v1, Ll/g;->x0:Lk/e;

    iput-boolean v9, v0, Lk/e;->g:Z

    goto :goto_1

    .line 23
    :cond_4
    iget-object v0, v1, Ll/g;->x0:Lk/e;

    iput-boolean v4, v0, Lk/e;->g:Z

    .line 24
    :goto_1
    iget-object v0, v1, Ll/f;->E:[Ll/f$b;

    aget-object v10, v0, v9

    .line 25
    aget-object v11, v0, v4

    .line 26
    invoke-virtual/range {p0 .. p0}, Ll/g;->b1()V

    .line 27
    iget-object v0, v1, Ll/g;->H0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 28
    iget-object v0, v1, Ll/g;->H0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    iget-object v0, v1, Ll/g;->H0:Ljava/util/List;

    new-instance v12, Ll/h;

    iget-object v13, v1, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-direct {v12, v13}, Ll/h;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30
    :cond_5
    iget-object v0, v1, Ll/g;->H0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 31
    iget-object v13, v1, Ll/q;->v0:Ljava/util/ArrayList;

    .line 32
    invoke-virtual/range {p0 .. p0}, Ll/f;->s()Ll/f$b;

    move-result-object v0

    sget-object v14, Ll/f$b;->b:Ll/f$b;

    if-eq v0, v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Ll/f;->B()Ll/f$b;

    move-result-object v0

    if-ne v0, v14, :cond_6

    goto :goto_2

    :cond_6
    move v14, v4

    goto :goto_3

    :cond_7
    :goto_2
    move v14, v9

    :goto_3
    move v0, v4

    move v15, v0

    :goto_4
    if-ge v15, v12, :cond_1d

    .line 33
    iget-boolean v8, v1, Ll/g;->O0:Z

    if-nez v8, :cond_1d

    .line 34
    iget-object v8, v1, Ll/g;->H0:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ll/h;

    iget-boolean v8, v8, Ll/h;->d:Z

    if-eqz v8, :cond_8

    move/from16 v20, v3

    move/from16 v19, v12

    goto/16 :goto_13

    .line 35
    :cond_8
    invoke-virtual {v1, v7}, Ll/g;->X0(I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 36
    invoke-virtual/range {p0 .. p0}, Ll/f;->s()Ll/f$b;

    move-result-object v8

    sget-object v7, Ll/f$b;->a:Ll/f$b;

    if-ne v8, v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Ll/f;->B()Ll/f$b;

    move-result-object v8

    if-ne v8, v7, :cond_9

    .line 37
    iget-object v7, v1, Ll/g;->H0:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll/h;

    invoke-virtual {v7}, Ll/h;->d()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, v1, Ll/q;->v0:Ljava/util/ArrayList;

    goto :goto_5

    .line 38
    :cond_9
    iget-object v7, v1, Ll/g;->H0:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll/h;

    iget-object v7, v7, Ll/h;->a:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, v1, Ll/q;->v0:Ljava/util/ArrayList;

    .line 39
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ll/g;->b1()V

    .line 40
    iget-object v7, v1, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_6
    if-ge v8, v7, :cond_c

    .line 41
    iget-object v4, v1, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/f;

    .line 42
    instance-of v9, v4, Ll/q;

    if-eqz v9, :cond_b

    .line 43
    check-cast v4, Ll/q;

    invoke-virtual {v4}, Ll/q;->K0()V

    :cond_b
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_6

    :cond_c
    move v4, v0

    const/4 v0, 0x0

    const/4 v8, 0x1

    :goto_7
    if-eqz v8, :cond_1c

    move/from16 v17, v4

    const/4 v9, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 44
    :try_start_0
    iget-object v0, v1, Ll/g;->x0:Lk/e;

    invoke-virtual {v0}, Lk/e;->E()V

    .line 45
    invoke-virtual/range {p0 .. p0}, Ll/g;->b1()V

    .line 46
    iget-object v0, v1, Ll/g;->x0:Lk/e;

    invoke-virtual {v1, v0}, Ll/f;->g(Lk/e;)V

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v7, :cond_d

    .line 47
    iget-object v9, v1, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v18, v8

    .line 48
    :try_start_1
    iget-object v8, v1, Ll/g;->x0:Lk/e;

    invoke-virtual {v9, v8}, Ll/f;->g(Lk/e;)V

    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v18

    goto :goto_8

    :cond_d
    move/from16 v18, v8

    .line 49
    iget-object v0, v1, Ll/g;->x0:Lk/e;

    invoke-virtual {v1, v0}, Ll/g;->O0(Lk/e;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_e

    .line 50
    :try_start_2
    iget-object v0, v1, Ll/g;->x0:Lk/e;

    invoke-virtual {v0}, Lk/e;->A()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_e
    :goto_9
    move/from16 v19, v12

    goto :goto_b

    :catch_1
    move-exception v0

    move/from16 v8, v18

    goto :goto_a

    :catch_2
    move-exception v0

    move/from16 v18, v8

    .line 51
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move/from16 v18, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v12

    const-string v12, "EXCEPTION : "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move/from16 v8, v18

    :goto_b
    if-eqz v8, :cond_10

    .line 53
    iget-object v8, v1, Ll/g;->x0:Lk/e;

    sget-object v9, Ll/k;->a:[Z

    invoke-virtual {v1, v8, v9}, Ll/g;->f1(Lk/e;[Z)V

    :cond_f
    move/from16 v20, v3

    const/4 v3, 0x2

    goto :goto_d

    .line 54
    :cond_10
    iget-object v8, v1, Ll/g;->x0:Lk/e;

    invoke-virtual {v1, v8}, Ll/f;->G0(Lk/e;)V

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v7, :cond_f

    .line 55
    iget-object v9, v1, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll/f;

    .line 56
    iget-object v12, v9, Ll/f;->E:[Ll/f$b;

    const/16 v16, 0x0

    aget-object v12, v12, v16

    sget-object v0, Ll/f$b;->c:Ll/f$b;

    if-ne v12, v0, :cond_11

    .line 57
    invoke-virtual {v9}, Ll/f;->D()I

    move-result v12

    move/from16 v20, v3

    invoke-virtual {v9}, Ll/f;->F()I

    move-result v3

    if-ge v12, v3, :cond_12

    .line 58
    sget-object v0, Ll/k;->a:[Z

    const/4 v3, 0x2

    const/4 v12, 0x1

    aput-boolean v12, v0, v3

    goto :goto_d

    :cond_11
    move/from16 v20, v3

    :cond_12
    const/4 v12, 0x1

    .line 59
    iget-object v3, v9, Ll/f;->E:[Ll/f$b;

    aget-object v3, v3, v12

    if-ne v3, v0, :cond_13

    .line 60
    invoke-virtual {v9}, Ll/f;->r()I

    move-result v0

    invoke-virtual {v9}, Ll/f;->E()I

    move-result v3

    if-ge v0, v3, :cond_13

    .line 61
    sget-object v0, Ll/k;->a:[Z

    const/4 v3, 0x2

    aput-boolean v12, v0, v3

    goto :goto_d

    :cond_13
    const/4 v3, 0x2

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v20

    goto :goto_c

    :goto_d
    if-eqz v14, :cond_16

    const/16 v8, 0x8

    if-ge v4, v8, :cond_16

    .line 62
    sget-object v0, Ll/k;->a:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_e
    if-ge v0, v7, :cond_14

    .line 63
    iget-object v12, v1, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ll/f;

    .line 64
    iget v8, v12, Ll/f;->K:I

    invoke-virtual {v12}, Ll/f;->D()I

    move-result v18

    add-int v8, v8, v18

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 65
    iget v8, v12, Ll/f;->L:I

    invoke-virtual {v12}, Ll/f;->r()I

    move-result v12

    add-int/2addr v8, v12

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v0, v0, 0x1

    const/16 v8, 0x8

    goto :goto_e

    .line 66
    :cond_14
    iget v0, v1, Ll/f;->V:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 67
    iget v3, v1, Ll/f;->W:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 68
    sget-object v8, Ll/f$b;->b:Ll/f$b;

    if-ne v11, v8, :cond_15

    .line 69
    invoke-virtual/range {p0 .. p0}, Ll/f;->D()I

    move-result v9

    if-ge v9, v0, :cond_15

    .line 70
    invoke-virtual {v1, v0}, Ll/f;->y0(I)V

    .line 71
    iget-object v0, v1, Ll/f;->E:[Ll/f$b;

    const/4 v9, 0x0

    aput-object v8, v0, v9

    const/4 v0, 0x1

    const/16 v17, 0x1

    goto :goto_f

    :cond_15
    const/4 v0, 0x0

    :goto_f
    if-ne v10, v8, :cond_17

    .line 72
    invoke-virtual/range {p0 .. p0}, Ll/f;->r()I

    move-result v9

    if-ge v9, v3, :cond_17

    .line 73
    invoke-virtual {v1, v3}, Ll/f;->b0(I)V

    .line 74
    iget-object v0, v1, Ll/f;->E:[Ll/f$b;

    const/4 v3, 0x1

    aput-object v8, v0, v3

    const/4 v0, 0x1

    const/16 v17, 0x1

    goto :goto_10

    :cond_16
    const/4 v0, 0x0

    .line 75
    :cond_17
    :goto_10
    iget v3, v1, Ll/f;->V:I

    invoke-virtual/range {p0 .. p0}, Ll/f;->D()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 76
    invoke-virtual/range {p0 .. p0}, Ll/f;->D()I

    move-result v8

    if-le v3, v8, :cond_18

    .line 77
    invoke-virtual {v1, v3}, Ll/f;->y0(I)V

    .line 78
    iget-object v0, v1, Ll/f;->E:[Ll/f$b;

    sget-object v3, Ll/f$b;->a:Ll/f$b;

    const/4 v8, 0x0

    aput-object v3, v0, v8

    const/4 v0, 0x1

    const/16 v17, 0x1

    .line 79
    :cond_18
    iget v3, v1, Ll/f;->W:I

    invoke-virtual/range {p0 .. p0}, Ll/f;->r()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 80
    invoke-virtual/range {p0 .. p0}, Ll/f;->r()I

    move-result v8

    if-le v3, v8, :cond_19

    .line 81
    invoke-virtual {v1, v3}, Ll/f;->b0(I)V

    .line 82
    iget-object v0, v1, Ll/f;->E:[Ll/f$b;

    sget-object v3, Ll/f$b;->a:Ll/f$b;

    const/4 v8, 0x1

    aput-object v3, v0, v8

    move v0, v8

    move v9, v0

    goto :goto_11

    :cond_19
    const/4 v8, 0x1

    move/from16 v9, v17

    :goto_11
    if-nez v9, :cond_1b

    .line 83
    iget-object v3, v1, Ll/f;->E:[Ll/f$b;

    const/4 v12, 0x0

    aget-object v3, v3, v12

    sget-object v12, Ll/f$b;->b:Ll/f$b;

    if-ne v3, v12, :cond_1a

    if-lez v5, :cond_1a

    .line 84
    invoke-virtual/range {p0 .. p0}, Ll/f;->D()I

    move-result v3

    if-le v3, v5, :cond_1a

    .line 85
    iput-boolean v8, v1, Ll/g;->P0:Z

    .line 86
    iget-object v0, v1, Ll/f;->E:[Ll/f$b;

    sget-object v3, Ll/f$b;->a:Ll/f$b;

    const/4 v9, 0x0

    aput-object v3, v0, v9

    .line 87
    invoke-virtual {v1, v5}, Ll/f;->y0(I)V

    move v0, v8

    move v9, v0

    .line 88
    :cond_1a
    iget-object v3, v1, Ll/f;->E:[Ll/f$b;

    aget-object v3, v3, v8

    if-ne v3, v12, :cond_1b

    if-lez v6, :cond_1b

    .line 89
    invoke-virtual/range {p0 .. p0}, Ll/f;->r()I

    move-result v3

    if-le v3, v6, :cond_1b

    .line 90
    iput-boolean v8, v1, Ll/g;->Q0:Z

    .line 91
    iget-object v0, v1, Ll/f;->E:[Ll/f$b;

    sget-object v3, Ll/f$b;->a:Ll/f$b;

    aput-object v3, v0, v8

    .line 92
    invoke-virtual {v1, v6}, Ll/f;->b0(I)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_12

    :cond_1b
    move v8, v0

    :goto_12
    move v0, v4

    move v4, v9

    move/from16 v12, v19

    move/from16 v3, v20

    goto/16 :goto_7

    :cond_1c
    move/from16 v20, v3

    move/from16 v17, v4

    move/from16 v19, v12

    .line 93
    iget-object v0, v1, Ll/g;->H0:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/h;

    invoke-virtual {v0}, Ll/h;->g()V

    move/from16 v0, v17

    :goto_13
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v19

    move/from16 v3, v20

    const/4 v4, 0x0

    const/16 v7, 0x20

    const/16 v8, 0x8

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_1d
    move/from16 v20, v3

    .line 94
    iput-object v13, v1, Ll/q;->v0:Ljava/util/ArrayList;

    .line 95
    iget-object v3, v1, Ll/f;->F:Ll/f;

    if-eqz v3, :cond_1e

    .line 96
    iget v2, v1, Ll/f;->V:I

    invoke-virtual/range {p0 .. p0}, Ll/f;->D()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 97
    iget v3, v1, Ll/f;->W:I

    invoke-virtual/range {p0 .. p0}, Ll/f;->r()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 98
    iget-object v4, v1, Ll/g;->y0:Ll/p;

    invoke-virtual {v4, v1}, Ll/p;->a(Ll/f;)V

    .line 99
    iget v4, v1, Ll/g;->z0:I

    add-int/2addr v2, v4

    iget v4, v1, Ll/g;->B0:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ll/f;->y0(I)V

    .line 100
    iget v2, v1, Ll/g;->A0:I

    add-int/2addr v3, v2

    iget v2, v1, Ll/g;->C0:I

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ll/f;->b0(I)V

    goto :goto_14

    .line 101
    :cond_1e
    iput v2, v1, Ll/f;->K:I

    move/from16 v2, v20

    .line 102
    iput v2, v1, Ll/f;->L:I

    :goto_14
    if-eqz v0, :cond_1f

    .line 103
    iget-object v0, v1, Ll/f;->E:[Ll/f$b;

    const/4 v2, 0x0

    aput-object v11, v0, v2

    const/4 v2, 0x1

    .line 104
    aput-object v10, v0, v2

    .line 105
    :cond_1f
    iget-object v0, v1, Ll/g;->x0:Lk/e;

    invoke-virtual {v0}, Lk/e;->w()Lk/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ll/q;->T(Lk/c;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Ll/q;->J0()Ll/g;

    move-result-object v0

    if-ne v1, v0, :cond_20

    .line 107
    invoke-virtual/range {p0 .. p0}, Ll/q;->F0()V

    :cond_20
    return-void
.end method

.method public N0(Ll/f;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ll/g;->P0(Ll/f;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ll/g;->Q0(Ll/f;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public O0(Lk/e;)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Ll/f;->b(Lk/e;)V

    .line 2
    iget-object v0, p0, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    .line 3
    iget-object v4, p0, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/f;

    .line 4
    instance-of v5, v4, Ll/g;

    if-eqz v5, :cond_3

    .line 5
    iget-object v5, v4, Ll/f;->E:[Ll/f$b;

    aget-object v6, v5, v1

    .line 6
    aget-object v3, v5, v3

    .line 7
    sget-object v5, Ll/f$b;->b:Ll/f$b;

    if-ne v6, v5, :cond_0

    .line 8
    sget-object v7, Ll/f$b;->a:Ll/f$b;

    invoke-virtual {v4, v7}, Ll/f;->g0(Ll/f$b;)V

    :cond_0
    if-ne v3, v5, :cond_1

    .line 9
    sget-object v7, Ll/f$b;->a:Ll/f$b;

    invoke-virtual {v4, v7}, Ll/f;->u0(Ll/f$b;)V

    .line 10
    :cond_1
    invoke-virtual {v4, p1}, Ll/f;->b(Lk/e;)V

    if-ne v6, v5, :cond_2

    .line 11
    invoke-virtual {v4, v6}, Ll/f;->g0(Ll/f$b;)V

    :cond_2
    if-ne v3, v5, :cond_4

    .line 12
    invoke-virtual {v4, v3}, Ll/f;->u0(Ll/f$b;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {p0, p1, v4}, Ll/k;->c(Ll/g;Lk/e;Ll/f;)V

    .line 14
    invoke-virtual {v4, p1}, Ll/f;->b(Lk/e;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_5
    iget v0, p0, Ll/g;->D0:I

    if-lez v0, :cond_6

    .line 16
    invoke-static {p0, p1, v1}, Ll/c;->a(Ll/g;Lk/e;I)V

    .line 17
    :cond_6
    iget v0, p0, Ll/g;->E0:I

    if-lez v0, :cond_7

    .line 18
    invoke-static {p0, p1, v3}, Ll/c;->a(Ll/g;Lk/e;I)V

    :cond_7
    return v3
.end method

.method public final P0(Ll/f;)V
    .locals 5

    .line 1
    iget v0, p0, Ll/g;->D0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ll/g;->G0:[Ll/d;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 2
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/d;

    iput-object v0, p0, Ll/g;->G0:[Ll/d;

    .line 4
    :cond_0
    iget-object v0, p0, Ll/g;->G0:[Ll/d;

    iget v1, p0, Ll/g;->D0:I

    new-instance v2, Ll/d;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ll/g;->U0()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Ll/d;-><init>(Ll/f;IZ)V

    aput-object v2, v0, v1

    .line 5
    iget p1, p0, Ll/g;->D0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll/g;->D0:I

    return-void
.end method

.method public Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/g;->x0:Lk/e;

    invoke-virtual {v0}, Lk/e;->E()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ll/g;->z0:I

    .line 3
    iput v0, p0, Ll/g;->B0:I

    .line 4
    iput v0, p0, Ll/g;->A0:I

    .line 5
    iput v0, p0, Ll/g;->C0:I

    .line 6
    iget-object v1, p0, Ll/g;->H0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    iput-boolean v0, p0, Ll/g;->O0:Z

    .line 8
    invoke-super {p0}, Ll/q;->Q()V

    return-void
.end method

.method public final Q0(Ll/f;)V
    .locals 5

    .line 1
    iget v0, p0, Ll/g;->E0:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Ll/g;->F0:[Ll/d;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 2
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll/d;

    iput-object v0, p0, Ll/g;->F0:[Ll/d;

    .line 4
    :cond_0
    iget-object v0, p0, Ll/g;->F0:[Ll/d;

    iget v2, p0, Ll/g;->E0:I

    new-instance v3, Ll/d;

    invoke-virtual {p0}, Ll/g;->U0()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Ll/d;-><init>(Ll/f;IZ)V

    aput-object v3, v0, v2

    .line 5
    iget p1, p0, Ll/g;->E0:I

    add-int/2addr p1, v1

    iput p1, p0, Ll/g;->E0:I

    return-void
.end method

.method public R0()I
    .locals 1

    iget v0, p0, Ll/g;->N0:I

    return v0
.end method

.method public S0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T0()Z
    .locals 1

    iget-boolean v0, p0, Ll/g;->Q0:Z

    return v0
.end method

.method public U0()Z
    .locals 1

    iget-boolean v0, p0, Ll/g;->w0:Z

    return v0
.end method

.method public V0()Z
    .locals 1

    iget-boolean v0, p0, Ll/g;->P0:Z

    return v0
.end method

.method public W0()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Ll/g;->X0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Ll/g;->N0:I

    invoke-virtual {p0, v0}, Ll/g;->d(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ll/g;->e1()V

    return-void
.end method

.method public X0(I)Z
    .locals 1

    iget v0, p0, Ll/g;->N0:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Y0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/f;->E:[Ll/f$b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Ll/f$b;->b:Ll/f$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ll/f;->c:Ll/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ll/n;->h(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Ll/f;->E:[Ll/f$b;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Ll/f;->d:Ll/n;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Ll/n;->h(I)V

    :cond_1
    return-void
.end method

.method public Z0()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ll/f;->S()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/f;

    invoke-virtual {v2}, Ll/f;->S()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll/g;->Z0()V

    .line 2
    iget v0, p0, Ll/g;->N0:I

    invoke-virtual {p0, v0}, Ll/g;->d(I)V

    return-void
.end method

.method public final b1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ll/g;->D0:I

    .line 2
    iput v0, p0, Ll/g;->E0:I

    return-void
.end method

.method public c1(I)V
    .locals 0

    iput p1, p0, Ll/g;->N0:I

    return-void
.end method

.method public d(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ll/f;->d(I)V

    .line 2
    iget-object v0, p0, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/f;

    invoke-virtual {v2, p1}, Ll/f;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d1(Z)V
    .locals 0

    iput-boolean p1, p0, Ll/g;->w0:Z

    return-void
.end method

.method public e1()V
    .locals 4

    .line 1
    sget-object v0, Ll/e$d;->b:Ll/e$d;

    invoke-virtual {p0, v0}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v0

    invoke-virtual {v0}, Ll/e;->f()Ll/m;

    move-result-object v0

    .line 2
    sget-object v1, Ll/e$d;->c:Ll/e$d;

    invoke-virtual {p0, v1}, Ll/f;->h(Ll/e$d;)Ll/e;

    move-result-object v1

    invoke-virtual {v1}, Ll/e;->f()Ll/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v2, v3}, Ll/m;->l(Ll/m;F)V

    .line 4
    invoke-virtual {v1, v2, v3}, Ll/m;->l(Ll/m;F)V

    return-void
.end method

.method public f1(Lk/e;[Z)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    aput-boolean v1, p2, v0

    .line 2
    invoke-virtual {p0, p1}, Ll/f;->G0(Lk/e;)V

    .line 3
    iget-object v2, p0, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 4
    iget-object v4, p0, Ll/q;->v0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/f;

    .line 5
    invoke-virtual {v4, p1}, Ll/f;->G0(Lk/e;)V

    .line 6
    iget-object v5, v4, Ll/f;->E:[Ll/f$b;

    aget-object v5, v5, v1

    sget-object v6, Ll/f$b;->c:Ll/f$b;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 7
    invoke-virtual {v4}, Ll/f;->D()I

    move-result v5

    invoke-virtual {v4}, Ll/f;->F()I

    move-result v8

    if-ge v5, v8, :cond_0

    .line 8
    aput-boolean v7, p2, v0

    .line 9
    :cond_0
    iget-object v5, v4, Ll/f;->E:[Ll/f$b;

    aget-object v5, v5, v7

    if-ne v5, v6, :cond_1

    .line 10
    invoke-virtual {v4}, Ll/f;->r()I

    move-result v5

    invoke-virtual {v4}, Ll/f;->E()I

    move-result v4

    if-ge v5, v4, :cond_1

    .line 11
    aput-boolean v7, p2, v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
