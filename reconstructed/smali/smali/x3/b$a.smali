.class public final Lx3/b$a;
.super Lf3/k;
.source "Combine.kt"

# interfaces
.implements Ll3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/b;->a(Lw3/e;[Lw3/d;Ll3/a;Ll3/q;Ld3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf3/k;",
        "Ll3/p<",
        "Lt3/e0;",
        "Ld3/d<",
        "-",
        "La3/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lf3/f;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    l = {
        0x36,
        0x4c,
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public i:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:[Lw3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lw3/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic q:Ll3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field public final synthetic r:Ll3/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll3/q<",
            "Lw3/e<",
            "-TR;>;[TT;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Lw3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw3/e<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lw3/d;Ll3/a;Ll3/q;Lw3/e;Ld3/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lw3/d<",
            "+TT;>;",
            "Ll3/a<",
            "[TT;>;",
            "Ll3/q<",
            "-",
            "Lw3/e<",
            "-TR;>;-[TT;-",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lw3/e<",
            "-TR;>;",
            "Ld3/d<",
            "-",
            "Lx3/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx3/b$a;->p:[Lw3/d;

    iput-object p2, p0, Lx3/b$a;->q:Ll3/a;

    iput-object p3, p0, Lx3/b$a;->r:Ll3/q;

    iput-object p4, p0, Lx3/b$a;->s:Lw3/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lf3/k;-><init>(ILd3/d;)V

    return-void
.end method


# virtual methods
.method public final I(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Le3/c;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lx3/b$a;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lx3/b$a;->h:I

    iget v3, v0, Lx3/b$a;->g:I

    iget-object v7, v0, Lx3/b$a;->f:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lx3/b$a;->e:Ljava/lang/Object;

    check-cast v8, Lv3/d;

    iget-object v9, v0, Lx3/b$a;->o:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, La3/j;->b(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v0, Lx3/b$a;->h:I

    iget v3, v0, Lx3/b$a;->g:I

    iget-object v7, v0, Lx3/b$a;->f:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lx3/b$a;->e:Ljava/lang/Object;

    check-cast v8, Lv3/d;

    iget-object v9, v0, Lx3/b$a;->o:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, La3/j;->b(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_1

    :cond_2
    iget v2, v0, Lx3/b$a;->h:I

    iget v3, v0, Lx3/b$a;->g:I

    iget-object v7, v0, Lx3/b$a;->f:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lx3/b$a;->e:Ljava/lang/Object;

    check-cast v8, Lv3/d;

    iget-object v9, v0, Lx3/b$a;->o:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, La3/j;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lv3/h;

    invoke-virtual {v10}, Lv3/h;->k()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v9

    move-object v9, v0

    move-object/from16 v22, v7

    move v7, v2

    move-object/from16 v2, v22

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, La3/j;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lx3/b$a;->o:Ljava/lang/Object;

    check-cast v2, Lt3/e0;

    .line 2
    iget-object v7, v0, Lx3/b$a;->p:[Lw3/d;

    array-length v13, v7

    if-nez v13, :cond_4

    .line 3
    sget-object v1, La3/o;->a:La3/o;

    return-object v1

    .line 4
    :cond_4
    new-array v14, v13, [Ljava/lang/Object;

    .line 5
    sget-object v8, Lx3/e;->b:Ly3/h0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v14

    invoke-static/range {v7 .. v12}, Lb3/j;->i([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 6
    invoke-static {v13, v8, v8, v7, v8}, Lv3/g;->b(ILv3/a;Ll3/l;ILjava/lang/Object;)Lv3/d;

    move-result-object v21

    .line 7
    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v11, v3

    :goto_0
    if-ge v11, v13, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    new-instance v10, Lx3/b$a$a;

    iget-object v7, v0, Lx3/b$a;->p:[Lw3/d;

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v16, v7

    move/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lx3/b$a$a;-><init>([Lw3/d;ILjava/util/concurrent/atomic/AtomicInteger;Lv3/d;Ld3/d;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v7, v2

    move v11, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, Lt3/f;->b(Lt3/e0;Ld3/g;Lt3/g0;Ll3/p;ILjava/lang/Object;)Lt3/h1;

    add-int/lit8 v11, v17, 0x1

    move-object v12, v15

    goto :goto_0

    .line 9
    :cond_5
    new-array v2, v13, [B

    move-object v8, v0

    move-object/from16 v7, v21

    :goto_1
    add-int/2addr v3, v6

    int-to-byte v3, v3

    .line 10
    iput-object v14, v8, Lx3/b$a;->o:Ljava/lang/Object;

    iput-object v7, v8, Lx3/b$a;->e:Ljava/lang/Object;

    iput-object v2, v8, Lx3/b$a;->f:Ljava/lang/Object;

    iput v13, v8, Lx3/b$a;->g:I

    iput v3, v8, Lx3/b$a;->h:I

    iput v6, v8, Lx3/b$a;->i:I

    invoke-interface {v7, v8}, Lv3/s;->a(Ld3/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, v8

    move-object v15, v14

    move-object v8, v7

    move v7, v3

    move v3, v13

    :goto_2
    invoke-static {v10}, Lv3/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb3/b0;

    if-nez v10, :cond_7

    .line 11
    sget-object v1, La3/o;->a:La3/o;

    return-object v1

    .line 12
    :cond_7
    invoke-virtual {v10}, Lb3/b0;->a()I

    move-result v11

    .line 13
    aget-object v12, v15, v11

    .line 14
    invoke-virtual {v10}, Lb3/b0;->b()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v15, v11

    .line 15
    sget-object v10, Lx3/e;->b:Ly3/h0;

    if-ne v12, v10, :cond_8

    add-int/lit8 v3, v3, -0x1

    .line 16
    :cond_8
    aget-byte v10, v2, v11

    if-eq v10, v7, :cond_9

    int-to-byte v10, v7

    .line 17
    aput-byte v10, v2, v11

    .line 18
    invoke-interface {v8}, Lv3/s;->d()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lv3/h;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb3/b0;

    if-nez v10, :cond_7

    :cond_9
    if-nez v3, :cond_c

    .line 19
    iget-object v10, v9, Lx3/b$a;->q:Ll3/a;

    invoke-interface {v10}, Ll3/a;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    if-nez v10, :cond_b

    .line 20
    iget-object v10, v9, Lx3/b$a;->r:Ll3/q;

    iget-object v11, v9, Lx3/b$a;->s:Lw3/e;

    iput-object v15, v9, Lx3/b$a;->o:Ljava/lang/Object;

    iput-object v8, v9, Lx3/b$a;->e:Ljava/lang/Object;

    iput-object v2, v9, Lx3/b$a;->f:Ljava/lang/Object;

    iput v3, v9, Lx3/b$a;->g:I

    iput v7, v9, Lx3/b$a;->h:I

    iput v5, v9, Lx3/b$a;->i:I

    invoke-interface {v10, v11, v15, v9}, Ll3/q;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_a

    return-object v1

    :cond_a
    move v13, v3

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    move-object v14, v15

    goto :goto_1

    :cond_b
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-object v11, v15

    move-object v12, v10

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    .line 21
    invoke-static/range {v11 .. v17}, Lb3/j;->e([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    .line 22
    iget-object v11, v9, Lx3/b$a;->r:Ll3/q;

    iget-object v12, v9, Lx3/b$a;->s:Lw3/e;

    iput-object v5, v9, Lx3/b$a;->o:Ljava/lang/Object;

    iput-object v8, v9, Lx3/b$a;->e:Ljava/lang/Object;

    iput-object v2, v9, Lx3/b$a;->f:Ljava/lang/Object;

    iput v3, v9, Lx3/b$a;->g:I

    iput v7, v9, Lx3/b$a;->h:I

    iput v4, v9, Lx3/b$a;->i:I

    invoke-interface {v11, v12, v10, v9}, Ll3/q;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_d

    return-object v1

    :goto_3
    const/4 v5, 0x2

    goto/16 :goto_1

    :cond_c
    move-object v5, v15

    :cond_d
    move v13, v3

    move-object v14, v5

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_3
.end method

.method public final V(Lt3/e0;Ld3/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt3/e0;",
            "Ld3/d<",
            "-",
            "La3/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx3/b$a;->f(Ljava/lang/Object;Ld3/d;)Ld3/d;

    move-result-object p1

    check-cast p1, Lx3/b$a;

    sget-object p2, La3/o;->a:La3/o;

    invoke-virtual {p1, p2}, Lx3/b$a;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/Object;Ld3/d;)Ld3/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ld3/d<",
            "*>;)",
            "Ld3/d<",
            "La3/o;",
            ">;"
        }
    .end annotation

    new-instance v6, Lx3/b$a;

    iget-object v1, p0, Lx3/b$a;->p:[Lw3/d;

    iget-object v2, p0, Lx3/b$a;->q:Ll3/a;

    iget-object v3, p0, Lx3/b$a;->r:Ll3/q;

    iget-object v4, p0, Lx3/b$a;->s:Lw3/e;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lx3/b$a;-><init>([Lw3/d;Ll3/a;Ll3/q;Lw3/e;Ld3/d;)V

    iput-object p1, v6, Lx3/b$a;->o:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt3/e0;

    check-cast p2, Ld3/d;

    invoke-virtual {p0, p1, p2}, Lx3/b$a;->V(Lt3/e0;Ld3/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
