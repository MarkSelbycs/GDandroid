.class public Lk4/h;
.super Ljava/lang/Object;
.source "MessageDispatcherImpl.java"

# interfaces
.implements Lk4/g;


# static fields
.field public static final h:Ln4/a;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lr4/b;",
            ">;",
            "Ljava/util/List<",
            "Lk4/s;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:I

.field public transient d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lk4/c;",
            ">;"
        }
    .end annotation
.end field

.field public transient e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm4/d;",
            ">;"
        }
    .end annotation
.end field

.field public transient f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm4/b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lk4/h;

    .line 2
    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lk4/h;->h:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lk4/h;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lk4/h;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7ffffffd

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lk4/h;->c:I

    .line 5
    iput-boolean v1, p0, Lk4/h;->g:Z

    return-void
.end method

.method public static j(Lk4/k;Lr4/b;Lk4/s;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Lk4/s;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lk4/h;->h:Ln4/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending confirmed PDU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to target "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " although transport mapping "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not listening for a response"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ln4/a;->i(Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lk4/s;Lr4/b;Ljava/nio/ByteBuffer;Lk4/t;)V
    .locals 1

    new-instance v0, Ll4/b;

    invoke-direct {v0, p3}, Ll4/b;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lk4/h;->t(Lk4/s;Lr4/b;Ll4/b;Lk4/t;)V

    return-void
.end method

.method public b(ILo4/i;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lk4/h;->c(I)Lo4/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2}, Lo4/g;->d(Lo4/i;)V

    return-void

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported message processing model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c(I)Lo4/g;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lk4/h;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo4/g;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized d(Lk4/c;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk4/h;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lk4/h;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lk4/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk4/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(Lk4/s;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk4/h;->b:Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Lk4/s;->f()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    iget-object v1, p0, Lk4/h;->b:Ljava/util/Map;

    invoke-interface {p1}, Lk4/s;->f()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Lo4/g;)V
    .locals 2

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lk4/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lo4/g;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lk4/h;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk4/h;->a:Ljava/util/List;

    invoke-interface {p1}, Lo4/g;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lk4/h;->a:Ljava/util/List;

    invoke-interface {p1}, Lo4/g;->a()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(Lk4/s;Lk4/q;Lk4/k;ZLo4/j;)Lo4/i;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/s;",
            "Lk4/q;",
            "Lk4/k;",
            "Z",
            "Lo4/j<",
            "Lk4/k;",
            ">;)",
            "Lo4/i;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lk4/i;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p5

    const-string v13, "Unsupported message processing model: "

    .line 1
    invoke-interface/range {p2 .. p2}, Lk4/q;->b0()I

    move-result v12

    .line 2
    invoke-interface/range {p2 .. p2}, Lk4/q;->c0()Lr4/b;

    move-result-object v11

    .line 3
    invoke-interface/range {p2 .. p2}, Lk4/q;->r0()I

    move-result v16

    .line 4
    invoke-interface/range {p2 .. p2}, Lk4/q;->o()I

    move-result v17

    const/16 v10, 0x6a6

    .line 5
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lk4/q;->Z()Lr4/k;

    move-result-object v2

    invoke-virtual {v2}, Lr4/k;->a0()[B

    move-result-object v9

    .line 6
    invoke-virtual {v1, v12}, Lk4/h;->c(I)Lo4/g;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lk4/i; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    if-eqz v8, :cond_b

    .line 7
    :try_start_1
    invoke-interface {v8, v12}, Lo4/g;->e(I)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lk4/i; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v2, :cond_a

    if-nez p1, :cond_0

    .line 8
    :try_start_2
    invoke-virtual {v1, v11}, Lk4/h;->s(Lr4/b;)Lk4/s;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    :goto_0
    if-eqz v7, :cond_9

    .line 9
    invoke-virtual/range {p3 .. p3}, Lk4/k;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    invoke-interface/range {p2 .. p2}, Lk4/q;->c0()Lr4/b;

    move-result-object v2

    invoke-static {v15, v2, v7}, Lk4/h;->j(Lk4/k;Lr4/b;Lk4/s;)V

    .line 11
    :cond_1
    invoke-virtual {v1, v11, v12, v15}, Lk4/h;->k(Lr4/b;ILk4/k;)V

    .line 12
    invoke-virtual/range {p3 .. p3}, Lk4/k;->I()Lr4/g;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lr4/g;->H()I

    move-result v2

    if-nez v2, :cond_3

    .line 14
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lk4/k;->M()I

    move-result v2

    const/16 v3, -0x5e

    if-eq v2, v3, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Lk4/h;->m()Lo4/i;

    move-result-object v2

    :goto_1
    move-object v6, v2

    goto :goto_2

    .line 16
    :cond_3
    new-instance v2, Lo4/i;

    invoke-virtual/range {p3 .. p3}, Lk4/k;->I()Lr4/g;

    move-result-object v3

    invoke-virtual {v3}, Lr4/g;->H()I

    move-result v3

    invoke-direct {v2, v3}, Lo4/i;-><init>(I)V

    goto :goto_1

    .line 17
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lk4/k;->M()I

    move-result v2

    const/16 v3, -0x5c

    if-eq v2, v3, :cond_4

    .line 18
    new-instance v2, Lr4/g;

    invoke-virtual {v6}, Lo4/i;->c()I

    move-result v3

    invoke-direct {v2, v3}, Lr4/g;-><init>(I)V

    invoke-virtual {v15, v2}, Lk4/k;->f0(Lr4/g;)V

    .line 19
    :cond_4
    new-instance v18, Lr4/f;

    invoke-direct/range {v18 .. v18}, Lr4/f;-><init>()V

    const/4 v2, 0x0

    .line 20
    instance-of v3, v0, Lk4/b;

    if-eqz v3, :cond_5

    .line 21
    move-object v2, v0

    check-cast v2, Lk4/b;

    :cond_5
    move-object/from16 v19, v2

    .line 22
    new-instance v5, Lk4/t;

    new-instance v4, Lr4/k;

    invoke-direct {v4, v9}, Lr4/k;-><init>([B)V

    .line 23
    invoke-static/range {v17 .. v17}, Lp4/v;->b(I)Lp4/v;

    move-result-object v20

    sget-object v21, Lp4/v;->b:Lp4/v;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lk4/i; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v2, v5

    move-object v3, v7

    move-object/from16 v24, v4

    move-object v4, v11

    move-object/from16 p1, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v7

    move-object/from16 v7, v21

    move-object v15, v8

    move/from16 v8, v22

    move-object/from16 v21, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v19

    :try_start_3
    invoke-direct/range {v2 .. v10}, Lk4/t;-><init>(Lk4/s;Lr4/b;Lr4/k;Lp4/v;Lp4/v;ZLjava/lang/Object;Lk4/b;)V

    .line 24
    invoke-virtual/range {p3 .. p3}, Lk4/k;->V()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    invoke-virtual {v1, v0, v15}, Lk4/h;->l(Lk4/q;Lo4/g;)V

    .line 26
    :cond_6
    new-instance v0, Ll4/c;

    invoke-direct {v0}, Ll4/c;-><init>()V

    .line 27
    invoke-interface/range {v20 .. v20}, Lk4/s;->d()I

    move-result v4
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lk4/i; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    move-object v2, v15

    move-object v3, v11

    move v5, v12

    move/from16 v6, v16

    move-object/from16 v7, v21

    move/from16 v8, v17

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v16, v15

    move-object v15, v11

    move-object/from16 v11, v24

    move/from16 v25, v12

    move-object/from16 v12, v18

    move-object/from16 v26, v13

    move-object v13, v0

    move-object v1, v14

    move-object/from16 v14, p1

    .line 28
    :try_start_4
    invoke-interface/range {v2 .. v14}, Lo4/g;->b(Lr4/b;III[BILk4/k;ZLo4/i;Lr4/b;Ll4/c;Lk4/t;)I

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    move-object/from16 v2, p3

    move-object/from16 v3, v24

    .line 29
    invoke-interface {v1, v3, v2}, Lo4/j;->a(Lo4/i;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    move-object/from16 v3, v24

    .line 30
    :goto_3
    invoke-virtual {v0}, Ll4/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lk4/i; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v2, v20

    .line 31
    :try_start_5
    invoke-virtual {v1, v2, v15, v0, v4}, Lk4/h;->u(Lk4/s;Lr4/b;[BLk4/t;)V

    return-object v3

    :cond_8
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    .line 32
    new-instance v3, Lk4/i;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message processing model "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-interface {v0}, Lo4/g;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " returned error: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {v2}, Lo4/m;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lk4/i;-><init>(Ljava/lang/String;I)V

    throw v3

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_4

    :catch_3
    move-exception v0

    move v3, v12

    move-object v4, v13

    goto/16 :goto_6

    :cond_9
    move-object v15, v11

    move/from16 v25, v12

    move-object/from16 v26, v13

    .line 35
    new-instance v0, Ls4/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported address class (transport mapping): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ls4/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    throw v0

    :cond_a
    move/from16 v25, v12

    move-object/from16 v26, v13

    .line 38
    new-instance v0, Lk4/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SNMP version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lk4/i; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    move/from16 v3, v25

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not supported by message processing model "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x6a8

    invoke-direct {v0, v2, v4}, Lk4/i;-><init>(Ljava/lang/String;I)V

    throw v0

    :catch_4
    move-exception v0

    :goto_4
    move/from16 v3, v25

    goto :goto_5

    :catch_5
    move-exception v0

    move v3, v12

    move v5, v10

    goto :goto_9

    :cond_b
    move v3, v12

    move-object/from16 v26, v13

    .line 39
    new-instance v0, Lk4/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lk4/i; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-object/from16 v4, v26

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Lk4/i; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    const/16 v5, 0x6a6

    :try_start_8
    invoke-direct {v0, v2, v5}, Lk4/i;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lk4/i; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    :goto_5
    move-object/from16 v4, v26

    :goto_6
    const/16 v5, 0x6a6

    goto :goto_a

    :catch_9
    move-exception v0

    .line 40
    :goto_7
    sget-object v2, Lk4/h;->h:Ln4/a;

    invoke-interface {v2}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :cond_c
    new-instance v2, Lk4/i;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6a5

    invoke-direct {v2, v3, v4, v0}, Lk4/i;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_a
    move-exception v0

    .line 43
    :goto_8
    sget-object v2, Lk4/h;->h:Ln4/a;

    invoke-interface {v2}, Ln4/a;->e()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    :cond_d
    throw v0

    :catch_b
    move-exception v0

    move v5, v10

    move v3, v12

    :goto_9
    move-object v4, v13

    .line 46
    :goto_a
    new-instance v2, Lk4/i;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5, v0}, Lk4/i;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method public h(II[BILk4/k;ILo4/n;Lo4/o;)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lk4/i;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v13, p1

    const-string v14, "Unsupported message processing model: "

    const/16 v15, 0x6a6

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lk4/h;->c(I)Lo4/g;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2
    invoke-virtual/range {p7 .. p7}, Lo4/n;->H()Lk4/s;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual/range {p7 .. p7}, Lo4/n;->c0()Lr4/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk4/h;->s(Lr4/b;)Lk4/s;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    .line 4
    new-instance v16, Ll4/c;

    invoke-direct/range {v16 .. v16}, Ll4/c;-><init>()V

    .line 5
    invoke-interface {v0}, Lk4/s;->d()I

    move-result v4

    move/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, v16

    .line 6
    invoke-interface/range {v2 .. v12}, Lo4/g;->c(III[BILk4/k;ILo4/n;Lo4/o;Ll4/c;)I

    move-result v2

    if-nez v2, :cond_2

    const/4 v3, 0x0

    .line 7
    invoke-virtual/range {p7 .. p7}, Lo4/n;->F()Lp4/a0;

    move-result-object v4

    instance-of v4, v4, Lp4/b0;

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual/range {p7 .. p7}, Lo4/n;->F()Lp4/a0;

    move-result-object v3

    check-cast v3, Lp4/b0;

    invoke-virtual {v3}, Lp4/b0;->a()Lk4/t;

    move-result-object v3

    .line 9
    :cond_1
    invoke-virtual/range {p7 .. p7}, Lo4/n;->c0()Lr4/b;

    move-result-object v4

    .line 10
    invoke-virtual/range {v16 .. v16}, Ll4/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 11
    invoke-virtual {v1, v0, v4, v5, v3}, Lk4/h;->u(Lk4/s;Lr4/b;[BLk4/t;)V

    :cond_2
    return v2

    .line 12
    :cond_3
    new-instance v0, Lk4/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported address class (transport mapping): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual/range {p7 .. p7}, Lo4/n;->c0()Lr4/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6a7

    invoke-direct {v0, v2, v3}, Lk4/i;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Lk4/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v15}, Lk4/i;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 15
    new-instance v2, Lk4/i;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6a5

    invoke-direct {v2, v3, v4, v0}, Lk4/i;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 16
    new-instance v2, Lk4/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v15, v0}, Lk4/i;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
.end method

.method public i()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lk4/s;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lk4/h;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lk4/h;->b:Ljava/util/Map;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lk4/h;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k(Lr4/b;ILk4/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lk4/i;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lk4/h;->g:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lk4/m;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p3}, Lk4/k;->M()I

    move-result v0

    const/16 v1, -0x5b

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_1

    .line 4
    sget-object p2, Lk4/h;->h:Ln4/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting GETBULK PDU to GETNEXT for SNMPv1 target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p2, Lk4/h;->h:Ln4/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Converting GETBULK PDU to GETNEXT for target: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ln4/a;->g(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 p1, -0x5f

    .line 6
    invoke-virtual {p3, p1}, Lk4/k;->g0(I)V

    .line 7
    instance-of p1, p3, Lk4/l;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p3, p1}, Lk4/k;->d0(I)V

    .line 9
    invoke-virtual {p3, p1}, Lk4/k;->e0(I)V

    :cond_2
    return-void
.end method

.method public l(Lk4/q;Lo4/g;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lk4/u;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lo4/e;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lk4/u;

    .line 3
    invoke-virtual {v0}, Lk4/u;->y()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lk4/u;->y()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 4
    check-cast p2, Lo4/e;

    invoke-interface {p1}, Lk4/q;->c0()Lr4/b;

    move-result-object p1

    new-instance v1, Lr4/k;

    invoke-virtual {v0}, Lk4/u;->y()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lr4/k;-><init>([B)V

    invoke-virtual {p2, p1, v1}, Lo4/e;->h(Lr4/b;Lr4/k;)Z

    :cond_0
    return-void
.end method

.method public m()Lo4/i;
    .locals 2

    new-instance v0, Lo4/i;

    invoke-virtual {p0}, Lk4/h;->r()I

    move-result v1

    invoke-direct {v0, v1}, Lo4/i;-><init>(I)V

    return-object v0
.end method

.method public n(Lk4/s;Lo4/g;Lr4/b;Ll4/b;Lk4/t;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p3

    .line 1
    new-instance v16, Lk4/j;

    invoke-direct/range {v16 .. v16}, Lk4/j;-><init>()V

    .line 2
    new-instance v17, Lr4/g;

    invoke-direct/range {v17 .. v17}, Lr4/g;-><init>()V

    .line 3
    new-instance v18, Lr4/g;

    invoke-direct/range {v18 .. v18}, Lr4/g;-><init>()V

    .line 4
    new-instance v19, Lr4/k;

    invoke-direct/range {v19 .. v19}, Lr4/k;-><init>()V

    .line 5
    new-instance v20, Lr4/g;

    invoke-direct/range {v20 .. v20}, Lr4/g;-><init>()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lk4/h;->m()Lo4/i;

    move-result-object v21

    .line 7
    new-instance v12, Lr4/g;

    .line 8
    invoke-interface/range {p1 .. p1}, Lk4/s;->d()I

    move-result v0

    invoke-direct {v12, v0}, Lr4/g;-><init>(I)V

    .line 9
    new-instance v11, Lo4/o;

    invoke-direct {v11}, Lo4/o;-><init>()V

    .line 10
    new-instance v10, Lo4/h;

    invoke-direct {v10}, Lo4/h;-><init>()V

    .line 11
    new-instance v0, Lo4/n;

    invoke-direct {v0}, Lo4/n;-><init>()V

    .line 12
    invoke-virtual {v0, v15}, Lo4/n;->h0(Lk4/s;)V

    .line 13
    invoke-virtual {v0, v13}, Lo4/n;->z(Lr4/b;)V

    .line 14
    invoke-virtual {v10, v0}, Lo4/h;->b(Lo4/n;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v16

    move-object/from16 v22, v10

    move-object/from16 v10, v21

    move-object/from16 p2, v11

    move-object v11, v12

    move-object/from16 v23, v12

    move-object/from16 v12, p2

    move-object/from16 v13, v22

    .line 15
    invoke-interface/range {v0 .. v13}, Lo4/g;->f(Lk4/g;Lr4/b;Ll4/b;Lk4/t;Lr4/g;Lr4/g;Lr4/k;Lr4/g;Lk4/j;Lo4/i;Lr4/g;Lo4/o;Lo4/h;)I

    move-result v6

    .line 16
    invoke-virtual/range {v22 .. v22}, Lo4/h;->a()Lo4/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual/range {v22 .. v22}, Lo4/h;->a()Lo4/n;

    move-result-object v0

    invoke-virtual {v0, v15}, Lo4/n;->h0(Lk4/s;)V

    :cond_0
    if-nez v6, :cond_2

    .line 18
    new-instance v12, Lk4/d;

    .line 19
    invoke-virtual/range {v17 .. v17}, Lr4/g;->H()I

    move-result v4

    .line 20
    invoke-virtual/range {v18 .. v18}, Lr4/g;->H()I

    move-result v5

    .line 21
    invoke-virtual/range {v19 .. v19}, Lr4/k;->a0()[B

    move-result-object v6

    .line 22
    invoke-virtual/range {v20 .. v20}, Lr4/g;->H()I

    move-result v7

    .line 23
    invoke-virtual/range {v16 .. v16}, Lk4/j;->b()Lk4/k;

    move-result-object v9

    .line 24
    invoke-virtual/range {v23 .. v23}, Lr4/g;->H()I

    move-result v10

    .line 25
    invoke-virtual/range {v22 .. v22}, Lo4/h;->a()Lo4/n;

    move-result-object v11

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v8, v21

    invoke-direct/range {v0 .. v11}, Lk4/d;-><init>(Lk4/g;Lk4/s;Lr4/b;II[BILo4/i;Lk4/k;ILo4/n;)V

    const/4 v0, 0x0

    .line 26
    invoke-static {}, Lk4/m;->e()Lk4/m$b;

    move-result-object v1

    sget-object v2, Lk4/m$b;->a:Lk4/m$b;

    if-eq v1, v2, :cond_1

    .line 27
    new-instance v6, Lm4/c;

    sget-object v2, Lo4/m;->F0:Lr4/j;

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;Ljava/lang/Object;J)V

    .line 29
    :cond_1
    invoke-virtual {v14, v12}, Lk4/h;->q(Lk4/d;)V

    if-eqz v0, :cond_4

    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lm4/c;->c()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 31
    invoke-virtual {v0, v1, v2}, Lm4/c;->f(J)V

    .line 32
    invoke-virtual {v14, v0}, Lk4/h;->p(Lm4/c;)V

    goto :goto_1

    :cond_2
    const/16 v0, -0x586

    if-eq v6, v0, :cond_3

    const/16 v0, -0x584

    if-eq v6, v0, :cond_3

    const/16 v0, -0x57a

    if-eq v6, v0, :cond_3

    const/16 v0, 0x643

    if-eq v6, v0, :cond_3

    const/16 v0, 0x57b

    if-eq v6, v0, :cond_3

    const/16 v0, 0x57c

    if-eq v6, v0, :cond_3

    const/16 v0, 0x57f

    if-eq v6, v0, :cond_3

    const/16 v0, 0x580

    if-eq v6, v0, :cond_3

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 33
    :cond_3
    :pswitch_0
    new-instance v7, Lm4/a;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move v4, v6

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lm4/a;-><init>(Ls4/c;Lr4/b;Lk4/s;ILl4/b;)V

    .line 34
    invoke-virtual {v14, v7}, Lk4/h;->o(Lm4/a;)V

    .line 35
    :goto_0
    sget-object v0, Lk4/h;->h:Ln4/a;

    invoke-interface {v0}, Ln4/a;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not dispatched, reason: statusInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->g(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x582
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public o(Lm4/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/h;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/b;

    .line 3
    invoke-interface {v1, p1}, Lm4/b;->f(Lm4/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(Lm4/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/h;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm4/d;

    .line 3
    invoke-interface {v1, p1}, Lm4/d;->b(Lm4/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(Lk4/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk4/h;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk4/c;

    .line 3
    invoke-interface {v1, p1}, Lk4/c;->d(Lk4/d;)V

    .line 4
    invoke-virtual {p1}, Lk4/d;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method public declared-synchronized r()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lk4/h;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lk4/h;->c:I

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lk4/h;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 3
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s(Lr4/b;)Lk4/s;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lk4/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk4/s;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Lk4/s;Lr4/b;Ll4/b;Lk4/t;)V
    .locals 8

    .line 1
    new-instance v0, Lm4/c;

    sget-object v1, Lo4/m;->v:Lr4/j;

    invoke-direct {v0, p0, v1}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    invoke-virtual {p0, v0}, Lk4/h;->p(Lm4/c;)V

    .line 2
    invoke-virtual {p3}, Ll4/b;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    .line 3
    :try_start_0
    invoke-virtual {p3, v0}, Ll4/b;->mark(I)V

    .line 4
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    const/4 v1, 0x0

    .line 5
    invoke-static {p3, v0, v1}, Ll4/a;->d(Ll4/b;Ll4/a$a;Z)I

    .line 6
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 7
    sget-object v0, Lk4/h;->h:Ln4/a;

    const-string v1, "ASN.1 parse error (message is not a sequence)"

    invoke-interface {v0, v1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 8
    new-instance v0, Lm4/c;

    sget-object v1, Lo4/m;->z:Lr4/j;

    invoke-direct {v0, p0, v1}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 9
    invoke-virtual {p0, v0}, Lk4/h;->p(Lm4/c;)V

    .line 10
    :cond_0
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    .line 11
    invoke-virtual {v0, p3}, Lr4/g;->j(Ll4/b;)V

    .line 12
    invoke-virtual {v0}, Lr4/g;->H()I

    move-result v1

    invoke-virtual {p0, v1}, Lk4/h;->c(I)Lo4/g;

    move-result-object v4

    if-nez v4, :cond_1

    .line 13
    sget-object p1, Lk4/h;->h:Ln4/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SNMP version "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not supported"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 14
    new-instance p1, Lm4/c;

    sget-object p2, Lo4/m;->w:Lr4/j;

    invoke-direct {p1, p0, p2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 15
    invoke-virtual {p0, p1}, Lk4/h;->p(Lm4/c;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p3}, Ll4/b;->reset()V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 17
    invoke-virtual/range {v2 .. v7}, Lk4/h;->n(Lk4/s;Lo4/g;Lr4/b;Ll4/b;Lk4/t;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    sget-object p2, Lk4/h;->h:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 19
    invoke-static {}, Lk4/m;->m()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    throw p1

    :catch_1
    move-exception p1

    .line 21
    sget-object p2, Lk4/h;->h:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 22
    invoke-interface {p2}, Ln4/a;->e()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_3
    invoke-static {}, Lk4/m;->m()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 25
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    sget-object p2, Lk4/h;->h:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 28
    new-instance p1, Lm4/c;

    sget-object p2, Lo4/m;->t:Lr4/j;

    invoke-direct {p1, p0, p2}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 29
    invoke-virtual {p0, p1}, Lk4/h;->p(Lm4/c;)V

    :goto_0
    return-void

    :cond_5
    const-string p1, "Message stream must support marks"

    .line 30
    sget-object p2, Lk4/h;->h:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 31
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public u(Lk4/s;Lr4/b;[BLk4/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p2, Lr4/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lr4/f;

    invoke-virtual {p2}, Lr4/f;->c0()Lr4/b;

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Lk4/s;->c(Lr4/b;[BLk4/t;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, p2, p3, p4}, Lk4/s;->c(Lr4/b;[BLk4/t;)V

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No transport mapping for address class: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object p2, Lk4/h;->h:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 7
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
