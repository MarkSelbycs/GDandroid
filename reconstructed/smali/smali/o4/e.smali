.class public Lo4/e;
.super Ljava/lang/Object;
.source "MPv3.java"

# interfaces
.implements Lo4/g;
.implements Lo4/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/e$e;,
        Lo4/e$c;,
        Lo4/e$d;,
        Lo4/e$b;
    }
.end annotation


# static fields
.field public static final l:Lr4/k;

.field public static final m:I

.field public static final n:I

.field public static final o:Ln4/a;


# instance fields
.field public a:Lp4/z;

.field public b:Lp4/x;

.field public c:Lo4/e$b;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr4/b;",
            "Lr4/k;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:[B

.field public g:I

.field public h:Lo4/a;

.field public i:Lo4/e$c;

.field public transient j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm4/h;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lt4/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "80:00:00:00:06"

    .line 1
    invoke-static {v0}, Lr4/k;->T(Ljava/lang/String;)Lr4/k;

    move-result-object v0

    sput-object v0, Lo4/e;->l:Lr4/k;

    .line 2
    new-instance v0, Lr4/k;

    const-string v1, "\u0000"

    invoke-direct {v0, v1}, Lr4/k;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lr4/k;->f()I

    move-result v0

    new-instance v1, Lr4/g;

    const v2, 0x7fffffff

    invoke-direct {v1, v2}, Lr4/g;-><init>(I)V

    .line 4
    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sput v0, Lo4/e;->m:I

    .line 5
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sput v0, Lo4/e;->n:I

    .line 6
    const-class v0, Lo4/e;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lo4/e;->o:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lo4/e;->j()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo4/e;-><init>([BLt4/e;)V

    return-void
.end method

.method public constructor <init>([BLt4/e;)V
    .locals 6

    .line 2
    invoke-static {}, Lp4/z;->h()Lp4/z;

    move-result-object v3

    .line 3
    invoke-static {}, Lp4/x;->a()Lp4/x;

    move-result-object v4

    invoke-static {}, Lo4/a;->b()Lo4/a;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lo4/e;-><init>([BLt4/e;Lp4/z;Lp4/x;Lo4/a;)V

    return-void
.end method

.method public constructor <init>([BLt4/e;Lp4/z;Lp4/x;Lo4/a;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Lk4/m;->b()I

    move-result v0

    iput v0, p0, Lo4/e;->e:I

    .line 7
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lo4/e;->g:I

    .line 8
    new-instance v0, Lo4/e$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo4/e$e;-><init>(Lo4/e$a;)V

    iput-object v0, p0, Lo4/e;->i:Lo4/e$c;

    .line 9
    new-instance v0, Lo4/e$a;

    invoke-direct {v0, p0}, Lo4/e$a;-><init>(Lo4/e;)V

    iput-object v0, p0, Lo4/e;->k:Lt4/e;

    if-eqz p2, :cond_0

    .line 10
    iput-object p2, p0, Lo4/e;->k:Lt4/e;

    .line 11
    :cond_0
    iget-object p2, p0, Lo4/e;->i:Lo4/e$c;

    invoke-interface {p2, p0}, Lo4/e$c;->a(Lo4/b;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lo4/e;->d:Ljava/util/Map;

    .line 12
    new-instance p2, Lo4/e$b;

    invoke-direct {p2}, Lo4/e$b;-><init>()V

    iput-object p2, p0, Lo4/e;->c:Lo4/e$b;

    .line 13
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object p3, p0, Lo4/e;->a:Lp4/z;

    .line 15
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput-object p4, p0, Lo4/e;->b:Lp4/x;

    .line 17
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iput-object p5, p0, Lo4/e;->h:Lo4/a;

    .line 19
    invoke-virtual {p0, p1}, Lo4/e;->u([B)V

    .line 20
    new-instance p1, Lr4/g;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lr4/g;-><init>(I)V

    invoke-virtual {p4, p1}, Lp4/x;->b(Lr4/g;)Lp4/w;

    move-result-object p1

    .line 21
    instance-of p2, p1, Lp4/c0;

    if-eqz p2, :cond_1

    .line 22
    check-cast p1, Lp4/c0;

    invoke-virtual {p1}, Lp4/c0;->n()I

    move-result p1

    invoke-static {p1}, Lo4/e;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lo4/e;->t(I)V

    :cond_1
    return-void
.end method

.method public static synthetic g()Ln4/a;
    .locals 1

    sget-object v0, Lo4/e;->o:Ln4/a;

    return-object v0
.end method

.method public static j()[B
    .locals 7

    .line 1
    invoke-static {}, Lk4/m;->a()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [B

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/4 v0, 0x4

    aput-byte v4, v1, v0

    .line 2
    new-instance v2, Lr4/k;

    invoke-direct {v2}, Lr4/k;-><init>()V

    .line 3
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 4
    array-length v5, v4

    if-ne v5, v0, :cond_0

    aput-byte v3, v1, v0

    .line 5
    :cond_0
    invoke-virtual {v2, v4}, Lr4/k;->f0([B)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    sget-object v3, Lo4/e;->o:Ln4/a;

    const-string v4, "Local host cannot be determined for creation of local engine ID"

    invoke-interface {v3, v4}, Ln4/a;->f(Ljava/io/Serializable;)V

    aput-byte v0, v1, v0

    const-string v3, "SNMP4J"

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/k;->f0([B)V

    .line 8
    :goto_0
    new-instance v3, Lr4/k;

    invoke-direct {v3, v1}, Lr4/k;-><init>([B)V

    .line 9
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    new-array v0, v0, [B

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 11
    invoke-virtual {v3, v2}, Lr4/k;->H(Lr4/k;)V

    .line 12
    invoke-virtual {v3, v0}, Lr4/k;->I([B)V

    .line 13
    invoke-virtual {v3}, Lr4/k;->a0()[B

    move-result-object v0

    return-object v0
.end method

.method public static k(Lr4/k;)[B
    .locals 4

    .line 1
    invoke-static {}, Lk4/m;->a()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [B

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/4 v0, 0x4

    aput-byte v0, v1, v0

    .line 2
    new-instance v0, Lr4/k;

    invoke-direct {v0, v1}, Lr4/k;-><init>([B)V

    .line 3
    invoke-virtual {v0, p0}, Lr4/k;->H(Lr4/k;)V

    .line 4
    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object p0

    return-object p0
.end method

.method public static r(I)I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/2addr p0, v1

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public b(Lr4/b;III[BILk4/k;ZLo4/i;Lr4/b;Ll4/c;Lk4/t;)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v1, p4

    move-object/from16 v2, p7

    .line 1
    instance-of v3, v2, Lk4/n;

    if-eqz v3, :cond_12

    .line 2
    move-object v3, v2

    check-cast v3, Lk4/n;

    .line 3
    iget-object v4, v0, Lo4/e;->b:Lp4/x;

    new-instance v5, Lr4/g;

    invoke-direct {v5, v1}, Lr4/g;-><init>(I)V

    .line 4
    invoke-virtual {v4, v5}, Lp4/x;->b(Lr4/g;)Lp4/w;

    move-result-object v19

    if-nez v19, :cond_0

    const/16 v1, -0x57a

    return v1

    .line 5
    :cond_0
    invoke-interface/range {v19 .. v19}, Lp4/w;->c()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 6
    iget-object v4, v0, Lo4/e;->d:Ljava/util/Map;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/k;

    if-eqz v4, :cond_4

    .line 7
    invoke-virtual {v4}, Lr4/k;->a0()[B

    move-result-object v7

    .line 8
    invoke-virtual {v3}, Lk4/n;->j0()Lr4/k;

    move-result-object v8

    invoke-virtual {v8}, Lr4/k;->e0()I

    move-result v8

    if-nez v8, :cond_6

    .line 9
    invoke-virtual/range {p7 .. p7}, Lk4/k;->M()I

    move-result v8

    const/16 v9, -0x5a

    if-eq v8, v9, :cond_2

    const/16 v9, -0x59

    if-eq v8, v9, :cond_2

    .line 10
    sget-object v8, Lo4/e;->o:Ln4/a;

    invoke-interface {v8}, Ln4/a;->e()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Context engine ID of scoped PDU is empty! Setting it to authoritative engine ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v4}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-interface {v8, v4}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 14
    :cond_1
    new-instance v4, Lr4/k;

    invoke-direct {v4, v7}, Lr4/k;-><init>([B)V

    invoke-virtual {v3, v4}, Lk4/n;->l0(Lr4/k;)V

    goto :goto_0

    .line 15
    :cond_2
    new-instance v4, Lr4/k;

    invoke-virtual/range {p0 .. p0}, Lo4/e;->o()[B

    move-result-object v8

    invoke-direct {v4, v8}, Lr4/k;-><init>([B)V

    .line 16
    sget-object v8, Lo4/e;->o:Ln4/a;

    invoke-interface {v8}, Ln4/a;->e()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 17
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Context engine ID of scoped PDU is empty! Setting it to local engine ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v4}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-interface {v8, v9}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 20
    :cond_3
    invoke-virtual {v3, v4}, Lk4/n;->l0(Lr4/k;)V

    goto :goto_0

    :cond_4
    new-array v7, v5, [B

    goto :goto_0

    :cond_5
    new-array v7, v5, [B

    .line 21
    :cond_6
    :goto_0
    invoke-virtual/range {p7 .. p7}, Lk4/k;->V()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    .line 22
    array-length v2, v7

    if-nez v2, :cond_c

    .line 23
    invoke-interface/range {v19 .. v19}, Lp4/w;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    invoke-virtual {v3}, Lk4/n;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lk4/n;

    .line 25
    invoke-virtual {v3}, Lk4/k;->u()V

    move v2, v4

    goto :goto_3

    .line 26
    :cond_7
    invoke-virtual {v3}, Lk4/n;->j0()Lr4/k;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 27
    invoke-virtual {v3}, Lk4/n;->j0()Lr4/k;

    move-result-object v2

    invoke-virtual {v2}, Lr4/k;->e0()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    .line 28
    :cond_8
    sget-object v2, Lo4/e;->l:Lr4/k;

    invoke-virtual {v3}, Lk4/n;->j0()Lr4/k;

    move-result-object v8

    invoke-virtual {v2, v8}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 29
    invoke-virtual/range {p0 .. p1}, Lo4/e;->n(Lr4/b;)Lr4/k;

    move-result-object v2

    if-nez v2, :cond_c

    .line 30
    invoke-virtual {v3}, Lk4/n;->j0()Lr4/k;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lo4/e;->h(Lr4/b;Lr4/k;)Z

    goto :goto_2

    .line 31
    :cond_9
    :goto_1
    sget-object v2, Lo4/e;->o:Ln4/a;

    const-string v8, "ScopedPDU with empty context engine ID"

    invoke-interface {v2, v8}, Ln4/a;->i(Ljava/io/Serializable;)V

    goto :goto_2

    .line 32
    :cond_a
    invoke-virtual {v3}, Lk4/n;->j0()Lr4/k;

    move-result-object v2

    invoke-virtual {v2}, Lr4/k;->e0()I

    move-result v2

    if-nez v2, :cond_c

    .line 33
    sget-object v2, Lo4/e;->o:Ln4/a;

    invoke-interface {v2}, Ln4/a;->e()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "Context engine ID of unconfirmed scoped PDU is empty! Setting it to local engine ID"

    .line 34
    invoke-interface {v2, v8}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 35
    :cond_b
    new-instance v2, Lr4/k;

    iget-object v8, v0, Lo4/e;->f:[B

    invoke-direct {v2, v8}, Lr4/k;-><init>([B)V

    invoke-virtual {v3, v2}, Lk4/n;->l0(Lr4/k;)V

    :cond_c
    :goto_2
    move/from16 v2, p6

    .line 36
    :goto_3
    invoke-virtual {v3}, Lk4/n;->f()I

    move-result v8

    .line 37
    new-instance v9, Ll4/c;

    .line 38
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v9, v8}, Ll4/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 39
    invoke-virtual {v3, v9}, Lk4/n;->e(Ljava/io/OutputStream;)V

    .line 40
    new-instance v8, Lo4/e$d;

    invoke-direct {v8}, Lo4/e$d;-><init>()V

    const/4 v10, 0x3

    if-eq v2, v4, :cond_f

    const/4 v11, 0x2

    if-eq v2, v11, :cond_e

    if-eq v2, v10, :cond_d

    goto :goto_4

    :cond_d
    move v5, v10

    goto :goto_4

    :cond_e
    move v5, v4

    .line 41
    :cond_f
    :goto_4
    invoke-virtual {v3}, Lk4/k;->V()Z

    move-result v4

    if-eqz v4, :cond_10

    or-int/lit8 v4, v5, 0x4

    move-object/from16 v20, v7

    goto :goto_5

    .line 42
    :cond_10
    iget-object v4, v0, Lo4/e;->f:[B

    move-object/from16 v20, v4

    move v4, v5

    .line 43
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lo4/e;->p()I

    move-result v5

    .line 44
    invoke-virtual {v8, v4}, Lo4/e$d;->k(I)V

    .line 45
    invoke-virtual {v8, v5}, Lo4/e$d;->l(I)V

    move/from16 v15, p2

    .line 46
    invoke-virtual {v8, v15}, Lo4/e$d;->m(I)V

    .line 47
    invoke-virtual {v8, v1}, Lo4/e$d;->n(I)V

    .line 48
    invoke-virtual {v8}, Lo4/e$d;->f()I

    move-result v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 49
    new-instance v10, Ll4/c;

    invoke-direct {v10, v7}, Ll4/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 50
    invoke-virtual {v8, v10}, Lo4/e$d;->e(Ljava/io/OutputStream;)V

    .line 51
    new-instance v14, Ll4/b;

    invoke-virtual {v9}, Ll4/c;->e()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {v14, v8}, Ll4/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 52
    invoke-interface/range {v19 .. v19}, Lp4/w;->e()Lp4/y;

    move-result-object v16

    .line 53
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    move-object/from16 v7, v19

    move/from16 v8, p3

    move/from16 v10, p2

    move/from16 v11, p4

    move-object/from16 v12, v20

    move-object/from16 v13, p5

    move-object v1, v14

    move v14, v2

    move-object v15, v1

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    .line 54
    invoke-interface/range {v7 .. v18}, Lp4/w;->b(I[BII[B[BILl4/b;Lp4/y;Ll4/c;Lk4/t;)I

    move-result v16

    if-nez v16, :cond_11

    if-eqz p8, :cond_11

    .line 55
    iget-object v15, v0, Lo4/e;->c:Lo4/e$b;

    new-instance v14, Lo4/n;

    const/4 v7, 0x0

    .line 56
    invoke-virtual {v3}, Lk4/n;->j0()Lr4/k;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lr4/k;->a0()[B

    move-result-object v12

    .line 58
    invoke-virtual {v3}, Lk4/n;->k0()Lr4/k;

    move-result-object v1

    invoke-virtual {v1}, Lr4/k;->a0()[B

    move-result-object v13

    const/16 v17, 0x0

    move-object v1, v14

    move v11, v2

    move v2, v5

    move v3, v4

    move/from16 v4, p2

    move-object/from16 v5, p9

    move-object/from16 v6, p1

    move-object/from16 v8, v20

    move-object/from16 v9, v19

    move-object/from16 v10, p5

    move-object/from16 v21, v14

    move-object/from16 v14, v17

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lo4/n;-><init>(IIILo4/i;Lr4/b;Lk4/s;[BLp4/w;[BI[B[BLp4/a0;I)V

    move-object/from16 v1, v21

    .line 59
    invoke-virtual {v0, v1}, Lo4/e$b;->a(Lo4/n;)I

    :cond_11
    return v16

    .line 60
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MPv3 only accepts ScopedPDU instances as pdu parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(III[BILk4/k;ILo4/n;Lo4/o;Ll4/c;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v5, p3

    move/from16 v8, p5

    move-object/from16 v1, p6

    .line 1
    iget-object v2, v0, Lo4/e;->c:Lo4/e$b;

    invoke-virtual/range {p8 .. p8}, Lo4/n;->q()Lo4/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo4/e$b;->c(Lo4/f;)Lo4/n;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v1, -0x581

    return v1

    .line 2
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lk4/k;->f()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move/from16 v7, p7

    if-le v3, v7, :cond_1

    .line 3
    new-instance v3, Lk4/n;

    move-object v7, v1

    check-cast v7, Lk4/n;

    invoke-direct {v3, v7}, Lk4/n;-><init>(Lk4/n;)V

    .line 4
    invoke-virtual {v3}, Lk4/k;->u()V

    .line 5
    invoke-virtual/range {p6 .. p6}, Lk4/k;->I()Lr4/g;

    move-result-object v7

    invoke-virtual {v3, v7}, Lk4/k;->f0(Lr4/g;)V

    .line 6
    invoke-virtual {v3, v6}, Lk4/k;->a0(I)V

    .line 7
    invoke-virtual {v3, v4}, Lk4/k;->X(I)V

    .line 8
    invoke-virtual {v3}, Lk4/k;->f()I

    move-result v7

    .line 9
    new-instance v9, Ll4/c;

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v9, v7}, Ll4/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 10
    invoke-virtual {v3, v9}, Lk4/k;->e(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v9, Ll4/c;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v9, v3}, Ll4/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 12
    invoke-virtual {v1, v9}, Lk4/k;->e(Ljava/io/OutputStream;)V

    .line 13
    :goto_0
    new-instance v3, Lo4/e$d;

    invoke-direct {v3}, Lo4/e$d;-><init>()V

    const/4 v7, 0x3

    if-eq v8, v6, :cond_4

    const/4 v10, 0x2

    if-eq v8, v10, :cond_3

    if-eq v8, v7, :cond_2

    goto :goto_1

    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    move v4, v6

    .line 14
    :cond_4
    :goto_1
    invoke-virtual {v3, v4}, Lo4/e$d;->k(I)V

    .line 15
    invoke-virtual/range {p8 .. p8}, Lo4/n;->q()Lo4/f;

    move-result-object v4

    invoke-interface {v4}, Lo4/f;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lo4/e$d;->l(I)V

    move v4, p2

    .line 16
    invoke-virtual {v3, p2}, Lo4/e$d;->m(I)V

    .line 17
    invoke-virtual {v3, v5}, Lo4/e$d;->n(I)V

    .line 18
    invoke-virtual {v3}, Lo4/e$d;->f()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 19
    new-instance v7, Ll4/c;

    invoke-direct {v7, v6}, Ll4/c;-><init>(Ljava/nio/ByteBuffer;)V

    .line 20
    invoke-virtual {v3, v7}, Lo4/e$d;->e(Ljava/io/OutputStream;)V

    .line 21
    invoke-virtual/range {p6 .. p6}, Lk4/k;->M()I

    move-result v1

    const/16 v3, -0x5e

    if-eq v1, v3, :cond_5

    const/16 v3, -0x5c

    if-eq v1, v3, :cond_5

    const/16 v3, -0x59

    if-eq v1, v3, :cond_5

    const/16 v3, -0x58

    if-eq v1, v3, :cond_5

    .line 22
    new-instance v1, Lr4/k;

    invoke-virtual {v2}, Lo4/n;->x()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lr4/k;-><init>([B)V

    goto :goto_2

    .line 23
    :cond_5
    new-instance v1, Lr4/k;

    iget-object v3, v0, Lo4/e;->f:[B

    invoke-direct {v1, v3}, Lr4/k;-><init>([B)V

    .line 24
    :goto_2
    new-instance v10, Ll4/b;

    invoke-virtual {v9}, Ll4/c;->e()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v10, v3}, Ll4/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 25
    iget-object v3, v0, Lo4/e;->b:Lp4/x;

    new-instance v7, Lr4/g;

    invoke-direct {v7, v5}, Lr4/g;-><init>(I)V

    .line 26
    invoke-virtual {v3, v7}, Lp4/x;->b(Lr4/g;)Lp4/w;

    move-result-object v3

    .line 27
    invoke-interface {v3}, Lp4/w;->e()Lp4/y;

    move-result-object v11

    .line 28
    invoke-virtual {p0}, Lo4/e;->a()I

    move-result v7

    .line 29
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 30
    invoke-virtual {v1}, Lr4/k;->a0()[B

    move-result-object v9

    .line 31
    invoke-virtual {v2}, Lo4/n;->F()Lp4/a0;

    move-result-object v12

    move-object v1, v3

    move v2, v7

    move-object v3, v6

    move v4, p2

    move/from16 v5, p3

    move-object v6, v9

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v10

    move-object v10, v12

    move-object/from16 v12, p10

    .line 32
    invoke-interface/range {v1 .. v12}, Lp4/w;->h(I[BII[B[BILl4/b;Lp4/a0;Lp4/y;Ll4/c;)I

    move-result v1

    return v1
.end method

.method public d(Lo4/i;)V
    .locals 1

    iget-object v0, p0, Lo4/e;->c:Lo4/e$b;

    invoke-virtual {v0, p1}, Lo4/e$b;->b(Lo4/i;)Z

    return-void
.end method

.method public e(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lk4/g;Lr4/b;Ll4/b;Lk4/t;Lr4/g;Lr4/g;Lr4/k;Lr4/g;Lk4/j;Lo4/i;Lr4/g;Lo4/o;Lo4/h;)I
    .locals 29

    move-object/from16 v10, p0

    move-object/from16 v1, p2

    move-object/from16 v0, p3

    move-object/from16 v2, p6

    move-object/from16 v6, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move-object/from16 v7, p13

    const/16 v26, -0x580

    .line 1
    :try_start_0
    new-instance v8, Lo4/n;

    invoke-direct {v8}, Lo4/n;-><init>()V

    .line 2
    invoke-virtual/range {p13 .. p13}, Lo4/h;->a()Lo4/n;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3
    invoke-virtual/range {p13 .. p13}, Lo4/h;->a()Lo4/n;

    move-result-object v9

    invoke-virtual {v9}, Lo4/n;->H()Lk4/s;

    move-result-object v9

    .line 4
    invoke-virtual {v8, v9}, Lo4/n;->h0(Lk4/s;)V

    :cond_0
    const/4 v9, 0x3

    move-object/from16 v11, p5

    .line 5
    invoke-virtual {v11, v9}, Lr4/g;->I(I)V

    const/16 v11, 0x10

    .line 6
    invoke-virtual {v0, v11}, Ll4/b;->mark(I)V

    .line 7
    new-instance v11, Ll4/a$a;

    invoke-direct {v11}, Ll4/a$a;-><init>()V

    .line 8
    invoke-static {v0, v11}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v12

    .line 9
    invoke-virtual {v11}, Ll4/a$a;->a()B

    move-result v11

    const/16 v13, 0x30

    if-eq v11, v13, :cond_1

    return v26

    .line 10
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ll4/b;->e()J

    move-result-wide v13

    .line 11
    invoke-virtual/range {p3 .. p3}, Ll4/b;->reset()V

    .line 12
    invoke-virtual {v0, v12}, Ll4/b;->mark(I)V

    .line 13
    invoke-virtual {v0, v13, v14}, Ll4/b;->skip(J)J

    move-result-wide v11

    cmp-long v11, v11, v13

    if-eqz v11, :cond_2

    return v26

    .line 14
    :cond_2
    new-instance v11, Lr4/g;

    invoke-direct {v11}, Lr4/g;-><init>()V

    .line 15
    invoke-virtual {v11, v0}, Lr4/g;->j(Ll4/b;)V

    .line 16
    invoke-virtual {v11}, Lr4/g;->H()I

    move-result v12

    if-ne v12, v9, :cond_26

    .line 17
    new-instance v15, Lo4/e$d;

    invoke-direct {v15}, Lo4/e$d;-><init>()V

    .line 18
    invoke-virtual {v15, v0}, Lo4/e$d;->j(Ll4/b;)V

    .line 19
    invoke-virtual {v15}, Lo4/e$d;->i()I

    move-result v12

    invoke-virtual {v2, v12}, Lr4/g;->I(I)V

    .line 20
    invoke-virtual {v15}, Lo4/e$d;->g()I

    move-result v12

    invoke-virtual {v8, v12}, Lo4/n;->W(I)V

    .line 21
    invoke-virtual {v15}, Lo4/e$d;->d()I

    move-result v12

    invoke-virtual {v8, v12}, Lo4/n;->V(I)V

    .line 22
    invoke-virtual {v8, v1}, Lo4/n;->z(Lr4/b;)V

    .line 23
    invoke-virtual {v7, v8}, Lo4/h;->b(Lo4/n;)V

    .line 24
    iget-object v12, v15, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v12}, Lr4/g;->H()I

    move-result v12

    sget v13, Lo4/e;->n:I

    sub-int/2addr v12, v13

    move-object/from16 v14, p11

    invoke-virtual {v14, v12}, Lr4/g;->I(I)V

    .line 25
    iget-object v12, v10, Lo4/e;->k:Lt4/e;

    invoke-interface {v12, v10}, Lt4/e;->a(Lo4/g;)Lk4/k;

    move-result-object v12

    check-cast v12, Lk4/n;

    move-object/from16 v9, p9

    .line 26
    invoke-virtual {v9, v12}, Lk4/j;->c(Lk4/k;)V

    .line 27
    iget-object v9, v10, Lo4/e;->b:Lp4/x;

    invoke-virtual {v9, v2}, Lp4/x;->b(Lr4/g;)Lp4/w;

    move-result-object v9

    if-nez v9, :cond_3

    .line 28
    sget-object v0, Lo4/e;->o:Ln4/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RFC3412 \u00a77.2.4 - Unsupported security model: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 29
    new-instance v0, Lm4/c;

    sget-object v1, Lo4/m;->s:Lr4/j;

    invoke-direct {v0, v10, v1}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 30
    invoke-virtual {v10, v0}, Lo4/e;->m(Lm4/c;)V

    const/16 v0, -0x57a

    return v0

    .line 31
    :cond_3
    invoke-virtual {v15}, Lo4/e$d;->d()I

    move-result v2

    move-object/from16 p5, v12

    const/4 v12, 0x3

    and-int/2addr v2, v12

    const/4 v12, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v12, :cond_5

    const/4 v14, 0x3

    if-eq v2, v14, :cond_4

    .line 32
    invoke-virtual {v3, v12}, Lr4/g;->I(I)V

    .line 33
    sget-object v0, Lo4/e;->o:Ln4/a;

    const-string v1, "RFC3412 \u00a77.2.5 - Invalid message (illegal msgFlags)"

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 34
    new-instance v0, Lm4/c;

    sget-object v1, Lo4/m;->t:Lr4/j;

    invoke-direct {v0, v10, v1}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 35
    invoke-virtual {v10, v0}, Lo4/e;->m(Lm4/c;)V

    const/16 v0, -0x57d

    return v0

    :cond_4
    move v2, v14

    .line 36
    invoke-virtual {v3, v2}, Lr4/g;->I(I)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    .line 37
    invoke-virtual {v3, v2}, Lr4/g;->I(I)V

    goto :goto_0

    .line 38
    :cond_6
    invoke-virtual {v3, v12}, Lr4/g;->I(I)V

    .line 39
    :goto_0
    invoke-virtual {v5, v3}, Lo4/o;->j(Lr4/g;)V

    move v2, v13

    .line 40
    invoke-virtual/range {p3 .. p3}, Ll4/b;->e()J

    move-result-wide v12

    long-to-int v12, v12

    .line 41
    invoke-interface {v9}, Lp4/w;->e()Lp4/y;

    move-result-object v14

    .line 42
    invoke-interface {v14, v0}, Ll4/d;->j(Ll4/b;)V

    .line 43
    invoke-interface {v14, v12}, Lp4/y;->b(I)V

    .line 44
    invoke-virtual {v15}, Lo4/e$d;->d()I

    move-result v12

    and-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    if-lez v12, :cond_7

    const/16 v25, 0x1

    goto :goto_1

    :cond_7
    move/from16 v25, v13

    .line 45
    :goto_1
    new-instance v12, Lr4/k;

    invoke-direct {v12}, Lr4/k;-><init>()V

    .line 46
    invoke-interface {v9}, Lp4/w;->g()Lp4/a0;

    move-result-object v7

    .line 47
    invoke-virtual/range {p3 .. p3}, Ll4/b;->reset()V

    .line 48
    new-instance v27, Ll4/c;

    invoke-direct/range {v27 .. v27}, Ll4/c;-><init>()V

    .line 49
    invoke-virtual {v11}, Lr4/g;->H()I

    move-result v16

    .line 50
    invoke-virtual {v15}, Lo4/e$d;->h()I

    move-result v11

    sub-int v2, v11, v2

    .line 51
    invoke-virtual/range {p8 .. p8}, Lr4/g;->H()I

    move-result v17

    move-object v11, v9

    move-object/from16 v0, p5

    move-object/from16 p5, v12

    move/from16 v12, v16

    move v6, v13

    move v13, v2

    move-object v2, v15

    move-object v15, v9

    move/from16 v16, v17

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p7

    move-object/from16 v21, v27

    move-object/from16 v22, p11

    move-object/from16 v23, v7

    move-object/from16 v24, p12

    .line 52
    invoke-interface/range {v11 .. v24}, Lp4/w;->d(IILp4/y;Lp4/w;ILl4/b;Lk4/t;Lr4/k;Lr4/k;Ll4/c;Lr4/g;Lp4/a0;Lo4/o;)I

    move-result v11

    .line 53
    invoke-virtual/range {p3 .. p3}, Ll4/b;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v12, -0x58

    const/16 v13, -0x5e

    if-nez v11, :cond_b

    .line 54
    :try_start_1
    new-instance v14, Ll4/b;

    .line 55
    invoke-virtual/range {v27 .. v27}, Ll4/c;->e()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-direct {v14, v15}, Ll4/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 56
    invoke-virtual {v0, v14}, Lk4/n;->j(Ll4/b;)V

    .line 57
    invoke-virtual {v0}, Lk4/k;->I()Lr4/g;

    move-result-object v14

    invoke-virtual {v14}, Lr4/g;->H()I

    move-result v14

    invoke-virtual {v4, v14}, Lo4/i;->e(I)V

    .line 58
    invoke-virtual/range {p5 .. p5}, Lr4/k;->e0()I

    move-result v14

    if-lez v14, :cond_8

    invoke-virtual {v0}, Lk4/k;->W()Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v14, p5

    .line 59
    invoke-virtual {v10, v1, v14}, Lo4/e;->h(Lr4/b;Lr4/k;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_8
    move-object/from16 v14, p5

    .line 60
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lk4/n;->j0()Lr4/k;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 61
    invoke-virtual {v0}, Lk4/n;->j0()Lr4/k;

    move-result-object v15

    invoke-virtual {v15}, Lr4/k;->e0()I

    move-result v15

    if-nez v15, :cond_c

    .line 62
    :cond_9
    invoke-virtual {v0}, Lk4/k;->M()I

    move-result v15

    if-eq v15, v13, :cond_c

    .line 63
    invoke-virtual {v0}, Lk4/k;->M()I

    move-result v15

    if-eq v15, v12, :cond_c

    .line 64
    new-instance v11, Lm4/c;

    sget-object v15, Lo4/m;->u:Lr4/j;

    invoke-direct {v11, v10, v15}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 65
    invoke-virtual {v10, v11}, Lo4/e;->m(Lm4/c;)V

    .line 66
    new-instance v15, Lr4/v;

    .line 67
    invoke-virtual {v11}, Lm4/c;->e()Lr4/j;

    move-result-object v12

    invoke-virtual {v11}, Lm4/c;->b()Lr4/u;

    move-result-object v11

    invoke-direct {v15, v12, v11}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    .line 68
    invoke-virtual {v5, v15}, Lo4/o;->h(Lr4/v;)V

    const/16 v11, -0x587

    goto :goto_3

    :catch_0
    move-exception v0

    .line 69
    sget-object v1, Lo4/e;->o:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASN.1 parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 70
    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 71
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 72
    :cond_a
    new-instance v0, Lm4/c;

    sget-object v1, Lo4/m;->z:Lr4/j;

    invoke-direct {v0, v10, v1}, Lm4/c;-><init>(Ljava/lang/Object;Lr4/j;)V

    .line 73
    invoke-virtual {v10, v0}, Lo4/e;->m(Lm4/c;)V

    return v26

    :cond_b
    move-object/from16 v14, p5

    :cond_c
    :goto_3
    move/from16 v28, v11

    .line 74
    invoke-virtual/range {p7 .. p7}, Lr4/k;->a0()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Lo4/n;->f0([B)V

    .line 75
    invoke-virtual {v14}, Lr4/k;->a0()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Lo4/n;->a0([B)V

    .line 76
    invoke-virtual/range {p8 .. p8}, Lr4/g;->H()I

    move-result v11

    invoke-virtual {v8, v11}, Lo4/n;->d0(I)V

    .line 77
    invoke-virtual {v8, v9}, Lo4/n;->e0(Lp4/w;)V

    .line 78
    invoke-virtual {v8, v7}, Lo4/n;->g0(Lp4/a0;)V

    .line 79
    invoke-virtual {v8, v4}, Lo4/n;->X(Lo4/i;)V

    const/4 v12, 0x0

    if-eqz v28, :cond_11

    if-eqz v25, :cond_10

    .line 80
    invoke-virtual/range {p12 .. p12}, Lo4/o;->b()Lr4/v;

    move-result-object v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v11, :cond_10

    .line 81
    :try_start_3
    invoke-virtual/range {v27 .. v27}, Ll4/c;->c()Ljava/nio/ByteBuffer;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 82
    new-instance v11, Ll4/b;

    .line 83
    invoke-virtual/range {v27 .. v27}, Ll4/c;->e()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-direct {v11, v13}, Ll4/b;-><init>(Ljava/nio/ByteBuffer;)V

    .line 84
    invoke-virtual {v0, v11}, Lk4/n;->j(Ll4/b;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v12, v0

    :cond_d
    :goto_4
    move-object v0, v12

    goto :goto_5

    :catch_1
    move-exception v0

    .line 85
    :try_start_4
    sget-object v11, Lo4/e;->o:Ln4/a;

    invoke-interface {v11, v0}, Ln4/a;->i(Ljava/io/Serializable;)V

    goto :goto_4

    .line 86
    :goto_5
    new-instance v15, Lo4/n;

    .line 87
    invoke-virtual {v2}, Lo4/e$d;->g()I

    move-result v12

    .line 88
    invoke-virtual {v2}, Lo4/e$d;->d()I

    move-result v13

    .line 89
    invoke-virtual/range {p11 .. p11}, Lr4/g;->H()I

    move-result v2

    const/16 v17, 0x0

    .line 90
    invoke-virtual {v14}, Lr4/k;->a0()[B

    move-result-object v18

    .line 91
    invoke-virtual/range {p7 .. p7}, Lr4/k;->a0()[B

    move-result-object v20

    .line 92
    invoke-virtual/range {p8 .. p8}, Lr4/g;->H()I

    move-result v21

    if-nez v0, :cond_e

    new-array v3, v6, [B

    goto :goto_6

    .line 93
    :cond_e
    invoke-virtual {v0}, Lk4/n;->j0()Lr4/k;

    move-result-object v3

    invoke-virtual {v3}, Lr4/k;->a0()[B

    move-result-object v3

    :goto_6
    move-object/from16 v22, v3

    if-nez v0, :cond_f

    new-array v3, v6, [B

    goto :goto_7

    .line 94
    :cond_f
    invoke-virtual {v0}, Lk4/n;->k0()Lr4/k;

    move-result-object v3

    invoke-virtual {v3}, Lr4/k;->a0()[B

    move-result-object v3

    :goto_7
    move-object/from16 v23, v3

    move-object v11, v15

    move v14, v2

    move-object v2, v15

    move-object/from16 v15, p10

    move-object/from16 v16, p2

    move-object/from16 v19, v9

    move-object/from16 v24, v7

    move/from16 v25, v28

    invoke-direct/range {v11 .. v25}, Lo4/n;-><init>(IIILo4/i;Lr4/b;Lk4/s;[BLp4/w;[BI[B[BLp4/a0;I)V

    .line 95
    iget-object v1, v10, Lo4/e;->c:Lo4/e$b;

    invoke-virtual {v1, v2}, Lo4/e$b;->a(Lo4/n;)I

    .line 96
    invoke-virtual/range {p12 .. p12}, Lo4/o;->c()Lr4/g;

    move-result-object v1

    invoke-virtual {v1}, Lr4/g;->H()I

    move-result v4

    .line 97
    invoke-interface {v9}, Lp4/w;->a()I

    move-result v6

    .line 98
    invoke-virtual/range {p11 .. p11}, Lr4/g;->H()I

    move-result v7

    .line 99
    invoke-virtual/range {p12 .. p12}, Lo4/o;->b()Lr4/v;

    move-result-object v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v0

    move v5, v6

    move-object/from16 v6, p7

    .line 100
    invoke-virtual/range {v1 .. v9}, Lo4/e;->s(Lk4/g;Lk4/n;IILr4/k;ILo4/n;Lr4/v;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 101
    sget-object v1, Lo4/e;->o:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending report failed with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ln4/a;->i(Ljava/io/Serializable;)V

    :cond_10
    return v28

    .line 102
    :cond_11
    invoke-virtual {v0}, Lk4/n;->j0()Lr4/k;

    move-result-object v1

    invoke-virtual {v1}, Lr4/k;->a0()[B

    move-result-object v1

    invoke-virtual {v8, v1}, Lo4/n;->P([B)V

    .line 103
    invoke-virtual {v0}, Lk4/n;->k0()Lr4/k;

    move-result-object v1

    invoke-virtual {v1}, Lr4/k;->a0()[B

    move-result-object v1

    invoke-virtual {v8, v1}, Lo4/n;->T([B)V

    .line 104
    invoke-virtual/range {p11 .. p11}, Lr4/g;->H()I

    move-result v1

    .line 105
    invoke-virtual {v8, v1}, Lo4/n;->U(I)V

    .line 106
    invoke-virtual {v0}, Lk4/k;->M()I

    move-result v1

    if-eq v1, v13, :cond_13

    .line 107
    invoke-virtual {v0}, Lk4/k;->M()I

    move-result v1

    const/16 v7, -0x58

    if-ne v1, v7, :cond_12

    goto :goto_8

    .line 108
    :cond_12
    sget-object v1, Lo4/e;->o:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RFC3412 \u00a77.2.10 - Received PDU is NOT a response or internal class message -> unchanged PduHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    move v5, v6

    move-object/from16 v6, p13

    goto/16 :goto_d

    .line 109
    :cond_13
    :goto_8
    iget-object v1, v10, Lo4/e;->c:Lo4/e$b;

    invoke-virtual {v2}, Lo4/e$d;->g()I

    move-result v7

    invoke-static {v7}, Lo4/n;->c(I)Lo4/f;

    move-result-object v7

    invoke-virtual {v1, v7}, Lo4/e$b;->c(Lo4/f;)Lo4/n;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v7, "RFC3412 \u00a77.2.10 - Received PDU (msgID="

    if-eqz v1, :cond_24

    .line 110
    :try_start_5
    sget-object v11, Lo4/e;->o:Ln4/a;

    invoke-interface {v11}, Ln4/a;->e()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 111
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v2}, Lo4/e$d;->g()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is a response or an internal class message. PduHandle.transactionID = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Lo4/n;->u()Lo4/i;

    move-result-object v2

    invoke-virtual {v2}, Lo4/i;->c()I

    move-result v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {v11, v2}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 115
    :cond_14
    invoke-virtual {v1}, Lo4/n;->u()Lo4/i;

    move-result-object v2

    invoke-virtual {v4, v2}, Lo4/i;->b(Lo4/i;)V

    .line 116
    invoke-virtual {v0}, Lk4/k;->M()I

    move-result v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const-string v4, "MPv3 finished"

    const/16 v7, -0x582

    const/16 v15, -0x58

    if-ne v2, v15, :cond_1a

    .line 117
    :try_start_6
    invoke-virtual {v0}, Lk4/n;->j0()Lr4/k;

    move-result-object v2

    invoke-virtual {v2}, Lr4/k;->a0()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lo4/o;->e([B)V

    .line 118
    invoke-virtual {v0}, Lk4/n;->k0()Lr4/k;

    move-result-object v0

    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lo4/o;->f([B)V

    .line 119
    invoke-virtual {v5, v3}, Lo4/o;->j(Lr4/g;)V

    .line 120
    invoke-virtual {v1}, Lo4/n;->x()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_16

    .line 121
    invoke-virtual {v1}, Lo4/n;->x()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lr4/k;->M([B)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_a

    :cond_15
    move-object/from16 v2, p7

    :goto_9
    move-object/from16 v6, p13

    goto :goto_b

    .line 122
    :cond_16
    :goto_a
    invoke-interface {v9}, Lp4/w;->a()I

    move-result v0

    invoke-virtual {v1}, Lo4/n;->y()Lp4/w;

    move-result-object v2

    invoke-interface {v2}, Lp4/w;->a()I

    move-result v2

    if-ne v0, v2, :cond_15

    .line 123
    invoke-virtual {v1}, Lo4/n;->D()[B

    move-result-object v0

    move-object/from16 v2, p7

    move v5, v6

    invoke-virtual {v2, v0}, Lr4/k;->M([B)Z

    move-result v0

    if-nez v0, :cond_17

    .line 124
    invoke-virtual/range {p7 .. p7}, Lr4/k;->e0()I

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_9

    .line 125
    :cond_17
    invoke-virtual {v1}, Lo4/n;->c0()Lr4/b;

    move-result-object v0

    invoke-virtual {v10, v0, v14}, Lo4/e;->h(Lr4/b;Lr4/k;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 126
    invoke-interface {v11}, Ln4/a;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine ID \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' could not be added to engine ID cache for target address \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v1}, Lo4/n;->c0()Lr4/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' because engine ID matches local engine ID or cache size limit is reached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-interface {v11, v0}, Ln4/a;->i(Ljava/io/Serializable;)V

    :cond_18
    move-object/from16 v6, p13

    .line 130
    invoke-virtual {v6, v12}, Lo4/h;->b(Lo4/n;)V

    .line 131
    invoke-interface {v11, v4}, Ln4/a;->f(Ljava/io/Serializable;)V

    return v5

    .line 132
    :goto_b
    invoke-interface {v11}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RFC 3412 \u00a77.2.11 - Received report message does not match sent message. Cache entry is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", received secName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",secModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",secEngineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 134
    :cond_19
    invoke-virtual {v6, v12}, Lo4/h;->b(Lo4/n;)V

    return v7

    :cond_1a
    move-object/from16 v2, p7

    move v5, v6

    move-object/from16 v6, p13

    .line 135
    invoke-virtual {v0}, Lk4/k;->M()I

    move-result v15

    if-ne v15, v13, :cond_1f

    .line 136
    invoke-virtual {v1}, Lo4/n;->x()[B

    move-result-object v8

    invoke-virtual {v14, v8}, Lr4/k;->M([B)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 137
    invoke-virtual {v1}, Lo4/n;->x()[B

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_1e

    .line 138
    :cond_1b
    invoke-interface {v9}, Lp4/w;->a()I

    move-result v8

    invoke-virtual {v1}, Lo4/n;->y()Lp4/w;

    move-result-object v9

    invoke-interface {v9}, Lp4/w;->a()I

    move-result v9

    if-ne v8, v9, :cond_1e

    .line 139
    invoke-virtual {v1}, Lo4/n;->D()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Lr4/k;->M([B)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 140
    invoke-virtual/range {p8 .. p8}, Lr4/g;->H()I

    move-result v2

    invoke-virtual {v1}, Lo4/n;->o()I

    move-result v3

    if-ne v2, v3, :cond_1e

    .line 141
    invoke-virtual {v0}, Lk4/n;->j0()Lr4/k;

    move-result-object v2

    invoke-virtual {v1}, Lo4/n;->f()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lr4/k;->M([B)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 142
    invoke-virtual {v1}, Lo4/n;->f()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1e

    .line 143
    :cond_1c
    invoke-virtual {v0}, Lk4/n;->k0()Lr4/k;

    move-result-object v0

    invoke-virtual {v1}, Lo4/n;->h()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lr4/k;->M([B)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 144
    invoke-virtual {v1}, Lo4/n;->h()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_1d

    goto :goto_c

    .line 145
    :cond_1d
    invoke-virtual {v6, v12}, Lo4/h;->b(Lo4/n;)V

    .line 146
    invoke-interface {v11, v4}, Ln4/a;->f(Ljava/io/Serializable;)V

    return v5

    :cond_1e
    :goto_c
    const-string v0, "RFC 3412 \u00a77.2.12.b - Received response message does not match sent message"

    .line 147
    invoke-interface {v11, v0}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 148
    invoke-virtual {v6, v12}, Lo4/h;->b(Lo4/n;)V

    return v7

    .line 149
    :cond_1f
    :goto_d
    invoke-virtual {v0}, Lk4/k;->M()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, -0x578

    return v0

    .line 150
    :pswitch_1
    invoke-virtual {v6, v12}, Lo4/h;->b(Lo4/n;)V

    return v5

    .line 151
    :pswitch_2
    invoke-virtual {v14}, Lr4/k;->e0()I

    move-result v0

    if-nez v0, :cond_20

    .line 152
    sget-object v0, Lo4/e;->o:Ln4/a;

    const-string v1, "Received confirmed message with 0 length security engine ID"

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    goto :goto_e

    .line 153
    :cond_20
    iget-object v0, v10, Lo4/e;->f:[B

    invoke-virtual {v14, v0}, Lr4/k;->M([B)Z

    move-result v0

    if-nez v0, :cond_22

    .line 154
    sget-object v0, Lo4/e;->o:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RFC3412 \u00a77.2.13.a - Security engine ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v14}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not match local engine ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lr4/k;

    iget-object v3, v10, Lo4/e;->f:[B

    invoke-direct {v2, v3}, Lr4/k;-><init>([B)V

    .line 157
    invoke-virtual {v2}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 159
    :cond_21
    invoke-virtual {v6, v12}, Lo4/h;->b(Lo4/n;)V

    const/16 v0, -0x57e

    return v0

    .line 160
    :cond_22
    :goto_e
    iget-object v0, v10, Lo4/e;->c:Lo4/e$b;

    invoke-virtual {v0, v8}, Lo4/e$b;->a(Lo4/n;)I

    move-result v0

    const/16 v1, -0x57c

    if-ne v0, v1, :cond_23

    .line 161
    invoke-virtual {v6, v12}, Lo4/h;->b(Lo4/n;)V

    :cond_23
    return v5

    .line 162
    :cond_24
    sget-object v0, Lo4/e;->o:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2}, Lo4/e$d;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is a response or internal class message, but cached information for the msgID could not be found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_25
    const/16 v0, -0x581

    return v0

    .line 166
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error unexpected SNMP version read"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 167
    sget-object v1, Lo4/e;->o:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MPv3 parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 168
    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 169
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_27
    return v26

    :pswitch_data_0
    .packed-switch -0x60
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public h(Lr4/b;Lr4/k;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lo4/e;->f:[B

    invoke-virtual {p2}, Lr4/k;->a0()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lo4/e;->i(Lr4/b;Lr4/k;)Lr4/k;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lo4/e;->j:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    new-instance v0, Lm4/g;

    invoke-direct {v0, p0, v3, p2, p1}, Lm4/g;-><init>(Lo4/e;ILr4/k;Lr4/b;)V

    invoke-virtual {p0, v0}, Lo4/e;->l(Lm4/g;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v3

    .line 5
    :catch_0
    new-instance v0, Lm4/g;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, p2, p1}, Lm4/g;-><init>(Lo4/e;ILr4/k;Lr4/b;)V

    invoke-virtual {p0, v0}, Lo4/e;->l(Lm4/g;)V

    :cond_2
    return v1
.end method

.method public i(Lr4/b;Lr4/k;)Lr4/k;
    .locals 2

    .line 1
    iget v0, p0, Lo4/e;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lo4/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lo4/e;->e:I

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lo4/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lo4/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/k;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MPv3: Failed to add engineID \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' for address \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to local cache because its size limit of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lo4/e;->e:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "has been reached"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p2, Lo4/e;->o:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_1
    iget-object v0, p0, Lo4/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/k;

    return-object p1
.end method

.method public l(Lm4/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo4/e;->j:Ljava/util/List;

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

    check-cast v1, Lm4/h;

    .line 3
    invoke-interface {v1, p1}, Lm4/h;->a(Lm4/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m(Lm4/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo4/e;->h:Lo4/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lo4/a;->a(Lm4/c;)V

    :cond_0
    return-void
.end method

.method public n(Lr4/b;)Lr4/k;
    .locals 1

    iget-object v0, p0, Lo4/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/k;

    return-object p1
.end method

.method public o()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lo4/e;->f:[B

    array-length v1, v0

    new-array v1, v1, [B

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public declared-synchronized p()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lo4/e;->g:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo4/e;->g:I

    .line 3
    :cond_0
    iget v0, p0, Lo4/e;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo4/e;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q(I)Lp4/w;
    .locals 2

    iget-object v0, p0, Lo4/e;->b:Lp4/x;

    new-instance v1, Lr4/g;

    invoke-direct {v1, p1}, Lr4/g;-><init>(I)V

    invoke-virtual {v0, v1}, Lp4/x;->b(Lr4/g;)Lp4/w;

    move-result-object p1

    return-object p1
.end method

.method public s(Lk4/g;Lk4/n;IILr4/k;ILo4/n;Lr4/v;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/g;",
            "Lk4/n;",
            "II",
            "Lr4/k;",
            "I",
            "Lo4/n<",
            "*>;",
            "Lr4/v;",
            ")I"
        }
    .end annotation

    const-string v1, "Error while sending report: "

    .line 1
    new-instance v7, Lk4/n;

    invoke-direct {v7}, Lk4/n;-><init>()V

    const/16 v0, -0x58

    .line 2
    invoke-virtual {v7, v0}, Lk4/k;->g0(I)V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lk4/n;->j0()Lr4/k;

    move-result-object v0

    invoke-virtual {v7, v0}, Lk4/n;->l0(Lr4/k;)V

    .line 4
    invoke-virtual {p2}, Lk4/n;->k0()Lr4/k;

    move-result-object v0

    invoke-virtual {v7, v0}, Lk4/n;->m0(Lr4/k;)V

    .line 5
    invoke-virtual {p2}, Lk4/k;->I()Lr4/g;

    move-result-object v0

    invoke-virtual {v7, v0}, Lk4/k;->f0(Lr4/g;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lr4/k;

    invoke-virtual {p0}, Lo4/e;->o()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lr4/k;-><init>([B)V

    invoke-virtual {v7, v0}, Lk4/n;->l0(Lr4/k;)V

    :goto_0
    move-object/from16 v0, p8

    .line 7
    invoke-virtual {v7, v0}, Lk4/k;->h(Lr4/v;)V

    .line 8
    new-instance v10, Lo4/o;

    invoke-direct {v10}, Lo4/o;-><init>()V

    const/16 v11, -0x578

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lo4/e;->a()I

    move-result v3

    .line 10
    invoke-virtual/range {p5 .. p5}, Lr4/k;->a0()[B

    move-result-object v5

    move-object v2, p1

    move/from16 v4, p4

    move v6, p3

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 11
    invoke-interface/range {v2 .. v10}, Lk4/g;->h(II[BILk4/k;ILo4/n;Lo4/o;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    sget-object v2, Lo4/e;->o:Ln4/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ln4/a;->i(Ljava/io/Serializable;)V
    :try_end_0
    .catch Lk4/i; {:try_start_0 .. :try_end_0} :catch_0

    return v11

    :cond_1
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 13
    sget-object v2, Lo4/e;->o:Ln4/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ln4/a;->c(Ljava/io/Serializable;)V

    return v11
.end method

.method public t(I)V
    .locals 0

    iput p1, p0, Lo4/e;->g:I

    return-void
.end method

.method public u([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    array-length v0, p1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lo4/e;->f:[B

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal (local) engine ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
