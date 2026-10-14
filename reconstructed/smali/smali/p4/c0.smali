.class public Lp4/c0;
.super Lp4/t;
.source "USM.java"


# static fields
.field public static final h:Ln4/a;


# instance fields
.field public b:Lp4/j0;

.field public c:Lp4/g0;

.field public d:Z

.field public e:Lp4/z;

.field public transient f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lm4/j;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lo4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lp4/c0;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/c0;->h:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 8
    invoke-static {}, Lp4/z;->h()Lp4/z;

    move-result-object v0

    invoke-virtual {v0}, Lp4/z;->c()Lp4/z;

    move-result-object v0

    new-instance v1, Lr4/k;

    .line 9
    invoke-static {}, Lp4/c0;->t()Lr4/k;

    move-result-object v2

    invoke-static {v2}, Lo4/e;->k(Lr4/k;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lr4/k;-><init>([B)V

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v2}, Lp4/c0;-><init>(Lp4/z;Lr4/k;I)V

    return-void
.end method

.method public constructor <init>(Lp4/z;Lr4/k;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp4/t;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp4/c0;->d:Z

    .line 3
    iput-object p2, p0, Lp4/t;->a:Lr4/k;

    .line 4
    new-instance v0, Lp4/g0;

    invoke-direct {v0, p2, p3}, Lp4/g0;-><init>(Lr4/k;I)V

    iput-object v0, p0, Lp4/c0;->c:Lp4/g0;

    .line 5
    new-instance p2, Lp4/j0;

    invoke-direct {p2}, Lp4/j0;-><init>()V

    iput-object p2, p0, Lp4/c0;->b:Lp4/j0;

    .line 6
    iput-object p1, p0, Lp4/c0;->e:Lp4/z;

    .line 7
    invoke-static {}, Lo4/a;->b()Lo4/a;

    move-result-object p1

    iput-object p1, p0, Lp4/c0;->g:Lo4/a;

    return-void
.end method

.method public static t()Lr4/k;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 3
    new-instance v0, Lr4/k;

    invoke-direct {v0, v1}, Lr4/k;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public b(I[BII[B[BILl4/b;Lp4/y;Ll4/c;Lk4/t;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lp4/c0;->h(I[BII[B[BILl4/b;Lp4/a0;Lp4/y;Ll4/c;)I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(IILp4/y;Lp4/w;ILl4/b;Lk4/t;Lr4/k;Lr4/k;Ll4/c;Lr4/g;Lp4/a0;Lo4/o;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p5

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    .line 1
    move-object/from16 v6, p3

    check-cast v6, Lp4/d0;

    .line 2
    move-object/from16 v7, p12

    check-cast v7, Lp4/e0;

    .line 3
    invoke-virtual {v6}, Lp4/d0;->k()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lr4/k;->f0([B)V

    .line 4
    invoke-static/range {p6 .. p6}, Lp4/t;->i(Ll4/b;)[B

    move-result-object v8

    .line 5
    invoke-virtual/range {p8 .. p8}, Lr4/k;->e0()I

    move-result v9

    if-eqz v9, :cond_1c

    iget-object v9, v1, Lp4/c0;->c:Lp4/g0;

    .line 6
    invoke-virtual/range {p0 .. p0}, Lp4/c0;->s()Z

    move-result v10

    .line 7
    invoke-virtual {v6}, Lp4/d0;->i()I

    move-result v11

    .line 8
    invoke-virtual {v6}, Lp4/d0;->l()I

    move-result v12

    .line 9
    invoke-virtual {v9, v2, v10, v11, v12}, Lp4/g0;->c(Lr4/k;ZII)I

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_5

    .line 10
    :cond_0
    invoke-virtual {v6}, Lp4/d0;->w()Lr4/k;

    move-result-object v9

    invoke-virtual {v9}, Lr4/k;->a0()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Lr4/k;->f0([B)V

    .line 11
    invoke-virtual {v6}, Lp4/d0;->u()I

    move-result v14

    .line 12
    invoke-virtual {v6}, Lp4/d0;->w()Lr4/k;

    move-result-object v9

    invoke-virtual {v9}, Lr4/k;->e0()I

    move-result v9

    const/16 v10, 0x57c

    const-string v11, "RFC3414 \u00a73.2.4 Unknown security name: "

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-gtz v9, :cond_3

    if-le v0, v12, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    sget-object v9, Lp4/c0;->h:Ln4/a;

    invoke-interface {v9}, Ln4/a;->e()Z

    move-result v16

    if-eqz v16, :cond_2

    const-string v15, "Accepting zero length security name"

    .line 14
    invoke-interface {v9, v15}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_2
    new-array v9, v13, [B

    .line 15
    invoke-virtual {v3, v9}, Lr4/k;->f0([B)V

    goto :goto_1

    .line 16
    :cond_3
    :goto_0
    invoke-virtual {v6}, Lp4/d0;->w()Lr4/k;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Lp4/c0;->p(Lr4/k;Lr4/k;)Lr4/k;

    move-result-object v9

    if-nez v9, :cond_6

    .line 17
    sget-object v0, Lp4/c0;->h:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual/range {p9 .. p9}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-interface {v0, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_4
    if-eqz v5, :cond_5

    .line 21
    new-instance v0, Lm4/c;

    sget-object v2, Lo4/m;->n:Lr4/j;

    invoke-direct {v0, v1, v2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 22
    invoke-virtual {v1, v0}, Lp4/c0;->l(Lm4/c;)V

    .line 23
    new-instance v2, Lr4/g;

    invoke-direct {v2, v12}, Lr4/g;-><init>(I)V

    invoke-virtual {v5, v2}, Lo4/o;->j(Lr4/g;)V

    .line 24
    new-instance v2, Lr4/v;

    invoke-virtual {v0}, Lm4/c;->e()Lr4/j;

    move-result-object v3

    .line 25
    invoke-virtual {v0}, Lm4/c;->b()Lr4/u;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    .line 26
    invoke-virtual {v5, v2}, Lo4/o;->h(Lr4/v;)V

    :cond_5
    return v10

    .line 27
    :cond_6
    :goto_1
    invoke-virtual {v6}, Lp4/d0;->w()Lr4/k;

    move-result-object v9

    invoke-virtual {v9}, Lr4/k;->e0()I

    move-result v9

    if-gtz v9, :cond_8

    if-le v0, v12, :cond_7

    goto :goto_2

    .line 28
    :cond_7
    array-length v2, v8

    sub-int/2addr v2, v14

    .line 29
    invoke-static {v8, v14, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 30
    invoke-virtual {v4, v2}, Ll4/c;->h(Ljava/nio/ByteBuffer;)V

    move/from16 v19, v13

    goto/16 :goto_4

    .line 31
    :cond_8
    :goto_2
    invoke-virtual {v1, v2, v3}, Lp4/c0;->q(Lr4/k;Lr4/k;)Lp4/i0;

    move-result-object v15

    if-nez v15, :cond_c

    .line 32
    sget-object v0, Lp4/c0;->h:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual/range {p9 .. p9}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "( "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") for engine ID "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual/range {p8 .. p8}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-interface {v0, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 37
    :cond_9
    new-instance v0, Lm4/c;

    sget-object v2, Lo4/m;->n:Lr4/j;

    invoke-direct {v0, v1, v2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 38
    invoke-virtual {v1, v0}, Lp4/c0;->l(Lm4/c;)V

    if-eqz v5, :cond_b

    .line 39
    invoke-static {}, Lk4/m;->d()Lk4/m$a;

    move-result-object v2

    sget-object v3, Lk4/m$a;->a:Lk4/m$a;

    if-ne v2, v3, :cond_a

    .line 40
    new-instance v2, Lr4/g;

    invoke-direct {v2, v12}, Lr4/g;-><init>(I)V

    invoke-virtual {v5, v2}, Lo4/o;->j(Lr4/g;)V

    .line 41
    :cond_a
    new-instance v2, Lr4/v;

    invoke-virtual {v0}, Lm4/c;->e()Lr4/j;

    move-result-object v3

    .line 42
    invoke-virtual {v0}, Lm4/c;->b()Lr4/u;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    .line 43
    invoke-virtual {v5, v2}, Lo4/o;->h(Lr4/v;)V

    :cond_b
    return v10

    .line 44
    :cond_c
    invoke-virtual {v15}, Lp4/i0;->h()Lr4/k;

    move-result-object v9

    invoke-virtual {v9}, Lr4/k;->a0()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lp4/e0;->m([B)V

    .line 45
    iget-object v9, v1, Lp4/c0;->e:Lp4/z;

    .line 46
    invoke-virtual {v15}, Lp4/i0;->j()Lp4/h0;

    move-result-object v10

    invoke-virtual {v10}, Lp4/h0;->e()Lr4/j;

    move-result-object v10

    .line 47
    invoke-virtual {v9, v10}, Lp4/z;->f(Lr4/j;)Lp4/i;

    move-result-object v9

    .line 48
    iget-object v10, v1, Lp4/c0;->e:Lp4/z;

    .line 49
    invoke-virtual {v15}, Lp4/i0;->j()Lp4/h0;

    move-result-object v11

    invoke-virtual {v11}, Lp4/h0;->j()Lr4/j;

    move-result-object v11

    .line 50
    invoke-virtual {v10, v11}, Lp4/z;->u(Lr4/j;)Lp4/s;

    move-result-object v11

    .line 51
    invoke-virtual {v15}, Lp4/i0;->b()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Lp4/e0;->g([B)V

    .line 52
    invoke-virtual {v15}, Lp4/i0;->f()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Lp4/e0;->i([B)V

    .line 53
    invoke-virtual {v7, v9}, Lp4/e0;->h(Lp4/i;)V

    .line 54
    invoke-virtual {v7, v11}, Lp4/e0;->j(Lp4/s;)V

    const/4 v10, 0x2

    if-lt v0, v10, :cond_d

    if-eqz v9, :cond_e

    :cond_d
    const/4 v10, 0x3

    if-lt v0, v10, :cond_11

    if-nez v11, :cond_11

    .line 55
    :cond_e
    sget-object v2, Lp4/c0;->h:Ln4/a;

    invoke-interface {v2}, Ln4/a;->e()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RFC3414 \u00a73.2.5 - Unsupported security level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " by user "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 57
    :cond_f
    new-instance v0, Lm4/c;

    sget-object v2, Lo4/m;->l:Lr4/j;

    invoke-direct {v0, v1, v2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 58
    invoke-virtual {v1, v0}, Lp4/c0;->l(Lm4/c;)V

    .line 59
    invoke-static {}, Lk4/m;->d()Lk4/m$a;

    move-result-object v2

    sget-object v3, Lk4/m$a;->a:Lk4/m$a;

    if-ne v2, v3, :cond_10

    .line 60
    new-instance v2, Lr4/g;

    invoke-direct {v2, v12}, Lr4/g;-><init>(I)V

    invoke-virtual {v5, v2}, Lo4/o;->j(Lr4/g;)V

    .line 61
    :cond_10
    new-instance v2, Lr4/v;

    invoke-virtual {v0}, Lm4/c;->e()Lr4/j;

    move-result-object v3

    .line 62
    invoke-virtual {v0}, Lm4/c;->b()Lr4/u;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    .line 63
    invoke-virtual {v5, v2}, Lo4/o;->h(Lr4/v;)V

    const/16 v0, 0x57b

    return v0

    :cond_11
    const/4 v10, 0x2

    if-lt v0, v10, :cond_1b

    if-eqz v5, :cond_19

    .line 64
    invoke-virtual {v6}, Lp4/d0;->a()I

    move-result v16

    .line 65
    invoke-virtual {v6}, Lp4/d0;->v()I

    move-result v17

    add-int v10, v16, v17

    .line 66
    invoke-virtual {v15}, Lp4/i0;->b()[B

    move-result-object v16

    const/16 v17, 0x0

    array-length v13, v8

    new-instance v12, Lp4/j;

    move-object/from16 p12, v11

    .line 67
    invoke-interface {v9}, Lp4/i;->B()I

    move-result v11

    invoke-direct {v12, v8, v10, v11}, Lp4/j;-><init>([BII)V

    const/4 v11, 0x3

    move-object/from16 v10, v16

    move-object/from16 v16, p12

    move v3, v11

    move-object v11, v8

    move-object/from16 v18, v12

    const/4 v3, 0x1

    move/from16 v12, v17

    move/from16 v20, v14

    move-object/from16 v14, v18

    .line 68
    invoke-interface/range {v9 .. v14}, Lp4/i;->m([B[BIILp4/j;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 69
    sget-object v0, Lp4/c0;->h:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RFC3414 \u00a73.2.6 Wrong digest -> authentication failure: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v6}, Lp4/d0;->g()Lr4/k;

    move-result-object v4

    invoke-virtual {v4}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-interface {v0, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 73
    :cond_12
    new-instance v0, Lm4/c;

    sget-object v2, Lo4/m;->p:Lr4/j;

    invoke-direct {v0, v1, v2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 74
    invoke-virtual {v1, v0}, Lp4/c0;->l(Lm4/c;)V

    .line 75
    invoke-static {}, Lk4/m;->d()Lk4/m$a;

    move-result-object v2

    sget-object v4, Lk4/m$a;->a:Lk4/m$a;

    if-ne v2, v4, :cond_13

    .line 76
    new-instance v2, Lr4/g;

    invoke-direct {v2, v3}, Lr4/g;-><init>(I)V

    invoke-virtual {v5, v2}, Lo4/o;->j(Lr4/g;)V

    .line 77
    :cond_13
    new-instance v2, Lr4/v;

    invoke-virtual {v0}, Lm4/c;->e()Lr4/j;

    move-result-object v3

    .line 78
    invoke-virtual {v0}, Lm4/c;->b()Lr4/u;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    .line 79
    invoke-virtual {v5, v2}, Lo4/o;->h(Lr4/v;)V

    const/16 v0, 0x580

    return v0

    .line 80
    :cond_14
    iget-object v9, v1, Lp4/c0;->c:Lp4/g0;

    new-instance v10, Lp4/f0;

    .line 81
    invoke-virtual {v6}, Lp4/d0;->i()I

    move-result v11

    .line 82
    invoke-virtual {v6}, Lp4/d0;->l()I

    move-result v12

    invoke-direct {v10, v2, v11, v12}, Lp4/f0;-><init>(Lr4/k;II)V

    .line 83
    invoke-virtual {v9, v10}, Lp4/g0;->e(Lp4/f0;)I

    move-result v9

    const/16 v10, 0x582

    if-eq v9, v10, :cond_16

    const/16 v3, 0x583

    if-eq v9, v3, :cond_15

    goto/16 :goto_3

    .line 84
    :cond_15
    sget-object v0, Lp4/c0;->h:Ln4/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RFC3414 \u00a73.2.7.a Not in time window; engineID=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\', engineBoots="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v6}, Lp4/d0;->i()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", engineTime="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v6}, Lp4/d0;->l()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-interface {v0, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 88
    new-instance v0, Lm4/c;

    sget-object v2, Lo4/m;->m:Lr4/j;

    invoke-direct {v0, v1, v2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 89
    invoke-virtual {v1, v0}, Lp4/c0;->l(Lm4/c;)V

    .line 90
    new-instance v2, Lr4/g;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lr4/g;-><init>(I)V

    invoke-virtual {v5, v2}, Lo4/o;->j(Lr4/g;)V

    .line 91
    new-instance v2, Lr4/v;

    invoke-virtual {v0}, Lm4/c;->e()Lr4/j;

    move-result-object v3

    .line 92
    invoke-virtual {v0}, Lm4/c;->b()Lr4/u;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    .line 93
    invoke-virtual {v5, v2}, Lo4/o;->h(Lr4/v;)V

    return v9

    .line 94
    :cond_16
    sget-object v0, Lp4/c0;->h:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RFC3414 \u00a73.2.7.b - Unknown engine ID: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 96
    :cond_17
    new-instance v0, Lm4/c;

    sget-object v2, Lo4/m;->o:Lr4/j;

    invoke-direct {v0, v1, v2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 97
    invoke-virtual {v1, v0}, Lp4/c0;->l(Lm4/c;)V

    .line 98
    invoke-static {}, Lk4/m;->d()Lk4/m$a;

    move-result-object v2

    sget-object v4, Lk4/m$a;->a:Lk4/m$a;

    if-ne v2, v4, :cond_18

    .line 99
    new-instance v2, Lr4/g;

    invoke-direct {v2, v3}, Lr4/g;-><init>(I)V

    invoke-virtual {v5, v2}, Lo4/o;->j(Lr4/g;)V

    .line 100
    :cond_18
    new-instance v2, Lr4/v;

    invoke-virtual {v0}, Lm4/c;->e()Lr4/j;

    move-result-object v3

    .line 101
    invoke-virtual {v0}, Lm4/c;->b()Lr4/u;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    .line 102
    invoke-virtual {v5, v2}, Lo4/o;->h(Lr4/v;)V

    return v9

    :cond_19
    move-object/from16 v16, v11

    move/from16 v20, v14

    :goto_3
    const/4 v2, 0x3

    if-lt v0, v2, :cond_1a

    .line 103
    invoke-virtual {v6}, Lp4/d0;->s()Lr4/k;

    move-result-object v2

    .line 104
    new-instance v3, Lp4/l;

    invoke-virtual {v2}, Lr4/k;->a0()[B

    move-result-object v5

    .line 105
    invoke-virtual {v2}, Lr4/k;->e0()I

    move-result v2

    const/4 v14, 0x0

    invoke-direct {v3, v5, v14, v2}, Lp4/l;-><init>([BII)V

    .line 106
    :try_start_0
    array-length v2, v8

    move/from16 v5, v20

    sub-int/2addr v2, v5

    .line 107
    invoke-static {v8, v5, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 108
    new-instance v9, Ll4/b;

    invoke-direct {v9, v2}, Ll4/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 109
    invoke-virtual {v9}, Ll4/b;->e()J

    move-result-wide v10

    .line 110
    new-instance v2, Ll4/a$a;

    invoke-direct {v2}, Ll4/a$a;-><init>()V

    .line 111
    invoke-static {v9, v2}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v12

    .line 112
    invoke-virtual {v9}, Ll4/b;->e()J

    move-result-wide v17

    sub-long v10, v17, v10

    long-to-int v2, v10

    add-int v11, v5, v2

    .line 113
    invoke-virtual {v9}, Ll4/b;->close()V

    .line 114
    invoke-virtual {v15}, Lp4/i0;->f()[B

    move-result-object v13

    .line 115
    invoke-virtual {v6}, Lp4/d0;->i()I

    move-result v2

    int-to-long v9, v2

    .line 116
    invoke-virtual {v6}, Lp4/d0;->l()I

    move-result v2

    int-to-long v1, v2

    move-wide/from16 v17, v9

    move-object/from16 v9, v16

    move-object v10, v8

    move/from16 v19, v14

    move-wide/from16 v14, v17

    move-wide/from16 v16, v1

    move-object/from16 v18, v3

    .line 117
    invoke-interface/range {v9 .. v18}, Lp4/s;->d([BII[BJJLp4/l;)[B

    move-result-object v1

    .line 118
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 119
    invoke-virtual {v4, v1}, Ll4/c;->h(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lp4/c0;->h:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RFC 3414 \u00a73.2.8 Decryption error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ln4/a;->f(Ljava/io/Serializable;)V

    const/16 v0, 0x57e

    return v0

    :cond_1a
    move/from16 v5, v20

    const/16 v19, 0x0

    .line 121
    array-length v1, v8

    sub-int/2addr v1, v5

    .line 122
    invoke-static {v8, v5, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 123
    invoke-virtual {v4, v1}, Ll4/c;->h(Ljava/nio/ByteBuffer;)V

    goto :goto_4

    :cond_1b
    move/from16 v19, v13

    move v5, v14

    .line 124
    array-length v1, v8

    sub-int/2addr v1, v5

    .line 125
    invoke-static {v8, v5, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 126
    invoke-virtual {v4, v1}, Ll4/c;->h(Ljava/nio/ByteBuffer;)V

    .line 127
    :goto_4
    invoke-virtual {v6, v0}, Lp4/d0;->n(I)I

    move-result v0

    sub-int v0, p2, v0

    move-object/from16 v1, p11

    .line 128
    invoke-virtual {v1, v0}, Lr4/g;->I(I)V

    .line 129
    invoke-virtual/range {p9 .. p9}, Lr4/k;->a0()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Lp4/e0;->l([B)V

    return v19

    .line 130
    :cond_1c
    :goto_5
    sget-object v1, Lp4/c0;->h:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RFC3414 \u00a73.2.3 Unknown engine ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p8 .. p8}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 132
    :cond_1d
    invoke-virtual {v6}, Lp4/d0;->k()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lr4/k;->f0([B)V

    .line 133
    invoke-virtual {v6}, Lp4/d0;->w()Lr4/k;

    move-result-object v1

    invoke-virtual {v1}, Lr4/k;->a0()[B

    move-result-object v1

    move-object/from16 v2, p9

    invoke-virtual {v2, v1}, Lr4/k;->f0([B)V

    if-eqz v5, :cond_1e

    .line 134
    new-instance v1, Lm4/c;

    sget-object v2, Lo4/m;->o:Lr4/j;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 135
    invoke-virtual {v3, v1}, Lp4/c0;->l(Lm4/c;)V

    .line 136
    new-instance v2, Lr4/g;

    invoke-direct {v2, v0}, Lr4/g;-><init>(I)V

    invoke-virtual {v5, v2}, Lo4/o;->j(Lr4/g;)V

    .line 137
    new-instance v0, Lr4/v;

    invoke-virtual {v1}, Lm4/c;->e()Lr4/j;

    move-result-object v2

    .line 138
    invoke-virtual {v1}, Lm4/c;->b()Lr4/u;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    .line 139
    invoke-virtual {v5, v0}, Lo4/o;->h(Lr4/v;)V

    goto :goto_6

    :cond_1e
    move-object/from16 v3, p0

    :goto_6
    const/16 v0, 0x582

    return v0
.end method

.method public e()Lp4/y;
    .locals 1

    new-instance v0, Lp4/d0;

    invoke-direct {v0}, Lp4/d0;-><init>()V

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Lp4/a0;
    .locals 1

    new-instance v0, Lp4/e0;

    invoke-direct {v0}, Lp4/e0;-><init>()V

    return-object v0
.end method

.method public h(I[BII[B[BILl4/b;Lp4/a0;Lp4/y;Ll4/c;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    .line 1
    move-object/from16 v6, p10

    check-cast v6, Lp4/d0;

    const/16 v7, 0x20

    if-eqz p9, :cond_3

    .line 2
    move-object/from16 v8, p9

    check-cast v8, Lp4/e0;

    .line 3
    invoke-virtual {v8}, Lp4/e0;->e()[B

    move-result-object v9

    if-nez v9, :cond_0

    .line 4
    invoke-virtual {v6, v3}, Lp4/d0;->B([B)V

    .line 5
    invoke-virtual {v8, v3}, Lp4/e0;->k([B)V

    .line 6
    :cond_0
    invoke-virtual {v8}, Lp4/e0;->f()[B

    move-result-object v9

    if-nez v9, :cond_1

    .line 7
    new-instance v9, Lr4/k;

    invoke-direct {v9, v4}, Lr4/k;-><init>([B)V

    .line 8
    invoke-virtual {v9}, Lr4/k;->a0()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Lp4/e0;->l([B)V

    .line 9
    invoke-virtual {v6, v9}, Lp4/d0;->G(Lr4/k;)V

    .line 10
    new-instance v10, Lr4/k;

    invoke-direct {v10, v3}, Lr4/k;-><init>([B)V

    .line 11
    invoke-virtual {v0, v10, v9}, Lp4/c0;->p(Lr4/k;Lr4/k;)Lr4/k;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 12
    invoke-virtual {v9}, Lr4/k;->e0()I

    move-result v10

    if-gt v10, v7, :cond_2

    .line 13
    invoke-virtual {v6, v9}, Lp4/d0;->G(Lr4/k;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance v9, Lr4/k;

    invoke-virtual {v8}, Lp4/e0;->f()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lr4/k;-><init>([B)V

    invoke-virtual {v6, v9}, Lp4/d0;->G(Lr4/k;)V

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {v8}, Lp4/e0;->b()Lp4/i;

    move-result-object v9

    .line 16
    invoke-virtual {v6, v9}, Lp4/d0;->z(Lp4/i;)V

    .line 17
    invoke-virtual {v8}, Lp4/e0;->d()Lp4/s;

    move-result-object v9

    .line 18
    invoke-virtual {v6, v9}, Lp4/d0;->F(Lp4/s;)V

    .line 19
    invoke-virtual {v8}, Lp4/e0;->a()[B

    move-result-object v9

    .line 20
    invoke-virtual {v6, v9}, Lp4/d0;->x([B)V

    .line 21
    invoke-virtual {v8}, Lp4/e0;->c()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lp4/d0;->D([B)V

    goto/16 :goto_2

    .line 22
    :cond_3
    new-instance v8, Lr4/k;

    invoke-direct {v8}, Lr4/k;-><init>()V

    if-eqz v3, :cond_4

    .line 23
    invoke-virtual {v8, v3}, Lr4/k;->f0([B)V

    .line 24
    :cond_4
    new-instance v9, Lr4/k;

    invoke-direct {v9, v4}, Lr4/k;-><init>([B)V

    .line 25
    invoke-virtual {v8}, Lr4/k;->e0()I

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_7

    .line 26
    invoke-virtual/range {p0 .. p0}, Lp4/c0;->s()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 27
    invoke-virtual {v0, v11, v9}, Lp4/c0;->r(Lr4/k;Lr4/k;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 28
    new-instance v11, Lp4/i0;

    invoke-direct {v11}, Lp4/i0;-><init>()V

    goto :goto_1

    .line 29
    :cond_5
    sget-object v1, Lp4/c0;->h:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Engine ID unknown and discovery disabled"

    .line 30
    invoke-interface {v1, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_6
    const/16 v1, 0x582

    return v1

    .line 31
    :cond_7
    invoke-virtual {v0, v8, v9}, Lp4/c0;->q(Lr4/k;Lr4/k;)Lp4/i0;

    move-result-object v11

    :cond_8
    :goto_1
    if-nez v11, :cond_a

    .line 32
    sget-object v1, Lp4/c0;->h:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security name not found for engineID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v8}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", securityName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v9}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_9
    const/16 v1, 0x57c

    return v1

    .line 37
    :cond_a
    iget-object v9, v0, Lp4/c0;->e:Lp4/z;

    .line 38
    invoke-virtual {v11}, Lp4/i0;->j()Lp4/h0;

    move-result-object v10

    invoke-virtual {v10}, Lp4/h0;->e()Lr4/j;

    move-result-object v10

    invoke-virtual {v9, v10}, Lp4/z;->f(Lr4/j;)Lp4/i;

    move-result-object v9

    .line 39
    iget-object v10, v0, Lp4/c0;->e:Lp4/z;

    .line 40
    invoke-virtual {v11}, Lp4/i0;->j()Lp4/h0;

    move-result-object v12

    invoke-virtual {v12}, Lp4/h0;->j()Lr4/j;

    move-result-object v12

    invoke-virtual {v10, v12}, Lp4/z;->u(Lr4/j;)Lp4/s;

    move-result-object v10

    .line 41
    invoke-virtual {v6, v9}, Lp4/d0;->z(Lp4/i;)V

    .line 42
    invoke-virtual {v6, v10}, Lp4/d0;->F(Lp4/s;)V

    .line 43
    invoke-virtual {v11}, Lp4/i0;->b()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lp4/d0;->x([B)V

    .line 44
    invoke-virtual {v11}, Lp4/i0;->f()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Lp4/d0;->D([B)V

    .line 45
    invoke-virtual {v11}, Lp4/i0;->j()Lp4/h0;

    move-result-object v9

    invoke-virtual {v9}, Lp4/h0;->Z()Lr4/k;

    move-result-object v9

    invoke-virtual {v6, v9}, Lp4/d0;->G(Lr4/k;)V

    .line 46
    invoke-virtual {v8}, Lr4/k;->a0()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lp4/d0;->B([B)V

    .line 47
    :goto_2
    invoke-virtual {v6}, Lp4/d0;->k()[B

    move-result-object v8

    array-length v8, v8

    const-string v9, " for "

    const-string v10, ">"

    if-le v8, v7, :cond_b

    .line 48
    sget-object v1, Lp4/c0;->h:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine ID too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v6}, Lp4/d0;->k()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lr4/k;

    .line 50
    invoke-virtual {v6}, Lp4/d0;->k()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lr4/k;-><init>([B)V

    .line 51
    invoke-virtual {v3}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Ln4/a;->c(Ljava/io/Serializable;)V

    const/16 v1, 0x587

    return v1

    .line 53
    :cond_b
    array-length v8, v4

    if-le v8, v7, :cond_c

    .line 54
    sget-object v1, Lp4/c0;->h:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security name too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v6}, Lp4/d0;->k()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lr4/k;

    invoke-direct {v3, v4}, Lr4/k;-><init>([B)V

    .line 56
    invoke-virtual {v3}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-interface {v1, v2}, Ln4/a;->c(Ljava/io/Serializable;)V

    const/16 v1, 0x588

    return v1

    :cond_c
    const/4 v4, 0x2

    if-lt v5, v4, :cond_f

    if-eqz p9, :cond_d

    .line 58
    invoke-virtual/range {p0 .. p0}, Lp4/c0;->n()I

    move-result v3

    invoke-virtual {v6, v3}, Lp4/d0;->A(I)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lp4/c0;->o()I

    move-result v3

    invoke-virtual {v6, v3}, Lp4/d0;->C(I)V

    goto :goto_3

    .line 60
    :cond_d
    new-instance v7, Lr4/k;

    invoke-direct {v7, v3}, Lr4/k;-><init>([B)V

    .line 61
    iget-object v3, v0, Lp4/c0;->c:Lp4/g0;

    invoke-virtual {v3, v7}, Lp4/g0;->q(Lr4/k;)Lp4/f0;

    move-result-object v3

    if-nez v3, :cond_e

    .line 62
    new-instance v3, Lp4/f0;

    .line 63
    invoke-virtual {v6}, Lp4/d0;->i()I

    move-result v8

    .line 64
    invoke-virtual {v6}, Lp4/d0;->l()I

    move-result v9

    invoke-direct {v3, v7, v8, v9}, Lp4/f0;-><init>(Lr4/k;II)V

    .line 65
    iget-object v7, v0, Lp4/c0;->c:Lp4/g0;

    invoke-virtual {v7, v3}, Lp4/g0;->b(Lp4/f0;)V

    goto :goto_3

    .line 66
    :cond_e
    invoke-virtual {v3}, Lp4/f0;->b()I

    move-result v7

    invoke-virtual {v6, v7}, Lp4/d0;->A(I)V

    .line 67
    invoke-virtual {v3}, Lp4/f0;->e()I

    move-result v3

    .line 68
    invoke-virtual {v6, v3}, Lp4/d0;->C(I)V

    :cond_f
    :goto_3
    const/16 v3, 0x57b

    if-lt v5, v4, :cond_10

    .line 69
    invoke-virtual {v6}, Lp4/d0;->h()Lp4/i;

    move-result-object v7

    if-nez v7, :cond_10

    return v3

    .line 70
    :cond_10
    invoke-static/range {p8 .. p8}, Lp4/t;->i(Ll4/b;)[B

    move-result-object v9

    const/4 v7, 0x3

    if-ne v5, v7, :cond_15

    .line 71
    invoke-virtual {v6}, Lp4/d0;->t()Lp4/s;

    move-result-object v7

    if-nez v7, :cond_12

    .line 72
    sget-object v1, Lp4/c0;->h:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported security level (missing or unsupported privacy protocol): Security params are "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_11
    return v3

    .line 74
    :cond_12
    sget-object v3, Lp4/c0;->h:Ln4/a;

    const-string v7, "RFC3414 \u00a73.1.4.a Outgoing message needs to be encrypted"

    invoke-interface {v3, v7}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 75
    new-instance v7, Lp4/l;

    invoke-direct {v7}, Lp4/l;-><init>()V

    .line 76
    invoke-virtual {v6}, Lp4/d0;->t()Lp4/s;

    move-result-object v8

    const/4 v10, 0x0

    array-length v11, v9

    .line 77
    invoke-virtual {v6}, Lp4/d0;->r()[B

    move-result-object v12

    .line 78
    invoke-virtual {v6}, Lp4/d0;->i()I

    move-result v13

    int-to-long v13, v13

    .line 79
    invoke-virtual {v6}, Lp4/d0;->l()I

    move-result v15

    int-to-long v4, v15

    move-wide v15, v4

    move-object/from16 v17, v7

    .line 80
    invoke-interface/range {v8 .. v17}, Lp4/s;->g([BII[BJJLp4/l;)[B

    move-result-object v4

    if-nez v4, :cond_14

    .line 81
    invoke-interface {v3}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Encryption error"

    .line 82
    invoke-interface {v3, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_13
    const/16 v1, 0x57d

    return v1

    .line 83
    :cond_14
    new-instance v3, Lr4/k;

    iget-object v5, v7, Lp4/l;->a:[B

    invoke-direct {v3, v5}, Lr4/k;-><init>([B)V

    invoke-virtual {v6, v3}, Lp4/d0;->E(Lr4/k;)V

    .line 84
    new-instance v3, Lr4/k;

    invoke-direct {v3, v4}, Lr4/k;-><init>([B)V

    .line 85
    new-instance v4, Ll4/c;

    .line 86
    invoke-virtual {v3}, Lr4/k;->f()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-direct {v4, v5}, Ll4/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 87
    invoke-virtual {v3, v4}, Lr4/k;->e(Ljava/io/OutputStream;)V

    .line 88
    invoke-virtual {v4}, Ll4/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_4

    .line 89
    :cond_15
    sget-object v3, Lp4/c0;->h:Ln4/a;

    const-string v4, "RFC3414 \u00a73.1.4.b Outgoing message is not encrypted"

    invoke-interface {v3, v4}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 90
    new-instance v3, Lr4/k;

    invoke-direct {v3}, Lr4/k;-><init>()V

    invoke-virtual {v6, v3}, Lp4/d0;->E(Lr4/k;)V

    :goto_4
    const/4 v3, 0x0

    move/from16 v4, p7

    const/4 v5, 0x2

    if-lt v4, v5, :cond_17

    .line 91
    invoke-virtual {v6}, Lp4/d0;->h()Lp4/i;

    move-result-object v4

    .line 92
    invoke-interface {v4}, Lp4/i;->B()I

    move-result v5

    new-array v5, v5, [B

    .line 93
    new-instance v7, Lr4/k;

    invoke-direct {v7, v5}, Lr4/k;-><init>([B)V

    invoke-virtual {v6, v7}, Lp4/d0;->y(Lr4/k;)V

    .line 94
    new-instance v5, Lr4/g;

    invoke-direct {v5, v1}, Lr4/g;-><init>(I)V

    .line 95
    invoke-static {v5, v9, v2, v6}, Lp4/t;->j(Lr4/g;[B[BLp4/y;)[B

    move-result-object v1

    .line 96
    invoke-virtual {v6}, Lp4/d0;->a()I

    move-result v2

    .line 97
    invoke-virtual {v6}, Lp4/d0;->v()I

    move-result v5

    add-int/2addr v2, v5

    .line 98
    invoke-virtual {v6}, Lp4/d0;->h()Lp4/i;

    move-result-object v5

    .line 99
    invoke-virtual {v6}, Lp4/d0;->d()[B

    move-result-object v6

    const/4 v7, 0x0

    array-length v8, v1

    new-instance v9, Lp4/j;

    .line 100
    invoke-interface {v4}, Lp4/i;->B()I

    move-result v4

    invoke-direct {v9, v1, v2, v4}, Lp4/j;-><init>([BII)V

    move-object/from16 p1, v5

    move-object/from16 p2, v6

    move-object/from16 p3, v1

    move/from16 p4, v7

    move/from16 p5, v8

    move-object/from16 p6, v9

    .line 101
    invoke-interface/range {p1 .. p6}, Lp4/i;->N([B[BIILp4/j;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 102
    sget-object v1, Lp4/c0;->h:Ln4/a;

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "Outgoing message could not be authenticated"

    .line 103
    invoke-interface {v1, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_16
    const/16 v1, 0x57f

    return v1

    .line 104
    :cond_17
    invoke-virtual {v6, v3}, Lp4/d0;->A(I)V

    .line 105
    new-instance v4, Lr4/k;

    invoke-direct {v4}, Lr4/k;-><init>()V

    invoke-virtual {v6, v4}, Lp4/d0;->y(Lr4/k;)V

    .line 106
    invoke-virtual {v6, v3}, Lp4/d0;->C(I)V

    .line 107
    new-instance v4, Lr4/g;

    invoke-direct {v4, v1}, Lr4/g;-><init>(I)V

    .line 108
    invoke-static {v4, v9, v2, v6}, Lp4/t;->j(Lr4/g;[B[BLp4/y;)[B

    move-result-object v1

    .line 109
    :cond_18
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    move-object/from16 v2, p11

    .line 110
    invoke-virtual {v2, v1}, Ll4/c;->f(Ljava/nio/ByteBuffer;)V

    return v3
.end method

.method public k([BLr4/k;Lr4/j;[BLr4/j;[B)Lp4/i0;
    .locals 8

    .line 1
    new-instance v7, Lp4/i0;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lp4/i0;-><init>([BLr4/k;Lr4/j;[BLr4/j;[B)V

    .line 2
    iget-object p1, p0, Lp4/c0;->b:Lp4/j0;

    invoke-virtual {p1, v7}, Lp4/j0;->b(Lp4/i0;)Lp4/i0;

    .line 3
    new-instance p1, Lm4/i;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v7, p2}, Lm4/i;-><init>(Lp4/w;Lp4/i0;I)V

    invoke-virtual {p0, p1}, Lp4/c0;->m(Lm4/i;)V

    return-object v7
.end method

.method public l(Lm4/c;)V
    .locals 1

    iget-object v0, p0, Lp4/c0;->g:Lo4/a;

    invoke-virtual {v0, p1}, Lo4/a;->a(Lm4/c;)V

    return-void
.end method

.method public m(Lm4/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/c0;->f:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/j;

    .line 3
    invoke-interface {v1, p1}, Lm4/j;->e(Lm4/i;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lp4/c0;->c:Lp4/g0;

    invoke-virtual {v0}, Lp4/g0;->f()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lp4/c0;->c:Lp4/g0;

    invoke-virtual {v0}, Lp4/g0;->h()I

    move-result v0

    return v0
.end method

.method public final p(Lr4/k;Lr4/k;)Lr4/k;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lr4/k;->e0()I

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget-object v0, p0, Lp4/c0;->b:Lp4/j0;

    invoke-virtual {v0, p1, p2}, Lp4/j0;->e(Lr4/k;Lr4/k;)Lp4/i0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lp4/i0;->j()Lp4/h0;

    move-result-object p1

    invoke-virtual {p1}, Lp4/h0;->Z()Lr4/k;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lp4/c0;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lp4/c0;->b:Lp4/j0;

    invoke-virtual {p1, p2}, Lp4/j0;->c(Lr4/k;)Lp4/i0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lp4/i0;->j()Lp4/h0;

    move-result-object p1

    invoke-virtual {p1}, Lp4/h0;->Z()Lr4/k;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public q(Lr4/k;Lr4/k;)Lp4/i0;
    .locals 10

    .line 1
    sget-object v0, Lp4/c0;->h:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUser(engineID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", securityName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p2}, Lr4/k;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lp4/c0;->b:Lp4/j0;

    invoke-virtual {v1, p1, p2}, Lp4/j0;->e(Lr4/k;Lr4/k;)Lp4/i0;

    move-result-object v1

    if-nez v1, :cond_8

    .line 6
    iget-object v1, p0, Lp4/c0;->b:Lp4/j0;

    invoke-virtual {v1, p2}, Lp4/j0;->c(Lr4/k;)Lp4/i0;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p2}, Lr4/k;->e0()I

    move-result v3

    if-lez v3, :cond_2

    .line 8
    invoke-interface {v0}, Ln4/a;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USM.getUser - User \'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_1
    return-object v2

    :cond_2
    if-eqz v1, :cond_7

    .line 10
    invoke-virtual {p1}, Lr4/k;->e0()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 11
    :cond_3
    invoke-virtual {v1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v0

    invoke-virtual {v0}, Lp4/h0;->e()Lr4/j;

    move-result-object v6

    .line 12
    invoke-virtual {v1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v0

    invoke-virtual {v0}, Lp4/h0;->j()Lr4/j;

    move-result-object v8

    if-eqz v6, :cond_8

    .line 13
    invoke-virtual {v1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v0

    invoke-virtual {v0}, Lp4/h0;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v0

    invoke-virtual {v0}, Lp4/h0;->b()Lr4/k;

    move-result-object v0

    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lp4/c0;->e:Lp4/z;

    .line 16
    invoke-virtual {v1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v3

    invoke-virtual {v3}, Lp4/h0;->b()Lr4/k;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lr4/k;->a0()[B

    move-result-object v4

    .line 18
    invoke-virtual {v0, v6, v3, v4}, Lp4/z;->y(Lr4/j;Lr4/k;[B)[B

    move-result-object v0

    :goto_0
    move-object v7, v0

    if-eqz v8, :cond_6

    .line 19
    invoke-virtual {v1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v0

    invoke-virtual {v0}, Lp4/h0;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v0

    invoke-virtual {v0}, Lp4/h0;->h()Lr4/k;

    move-result-object v0

    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object v2

    goto :goto_1

    .line 21
    :cond_5
    iget-object v0, p0, Lp4/c0;->e:Lp4/z;

    .line 22
    invoke-virtual {v1}, Lp4/i0;->j()Lp4/h0;

    move-result-object v1

    invoke-virtual {v1}, Lp4/h0;->h()Lr4/k;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lr4/k;->a0()[B

    move-result-object v2

    .line 24
    invoke-virtual {v0, v8, v6, v1, v2}, Lp4/z;->x(Lr4/j;Lr4/j;Lr4/k;[B)[B

    move-result-object v2

    :cond_6
    :goto_1
    move-object v9, v2

    .line 25
    invoke-virtual {p1}, Lr4/k;->a0()[B

    move-result-object v4

    move-object v3, p0

    move-object v5, p2

    invoke-virtual/range {v3 .. v9}, Lp4/c0;->k([BLr4/k;Lr4/j;[BLr4/j;[B)Lp4/i0;

    move-result-object v1

    goto :goto_3

    .line 26
    :cond_7
    :goto_2
    new-instance p1, Lp4/i0;

    invoke-direct {p1}, Lp4/i0;-><init>()V

    .line 27
    invoke-virtual {p1, p2}, Lp4/i0;->u(Lr4/k;)V

    .line 28
    new-instance v6, Lp4/h0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lp4/h0;-><init>(Lr4/k;Lr4/j;Lr4/k;Lr4/j;Lr4/k;)V

    invoke-virtual {p1, v6}, Lp4/i0;->x(Lp4/h0;)V

    return-object p1

    :cond_8
    :goto_3
    return-object v1
.end method

.method public r(Lr4/k;Lr4/k;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/c0;->b:Lp4/j0;

    invoke-virtual {v0, p1, p2}, Lp4/j0;->e(Lr4/k;Lr4/k;)Lp4/i0;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/c0;->b:Lp4/j0;

    invoke-virtual {p1, p2}, Lp4/j0;->c(Lr4/k;)Lp4/i0;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lr4/k;->e0()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lp4/c0;->d:Z

    return v0
.end method
