.class public Lo4/c;
.super Ljava/lang/Object;
.source "MPv1.java"

# interfaces
.implements Lo4/g;


# static fields
.field public static final b:Ln4/a;


# instance fields
.field public a:Lt4/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lo4/c;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lo4/c;->b:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo4/c$a;

    invoke-direct {v0, p0}, Lo4/c$a;-><init>(Lo4/c;)V

    iput-object v0, p0, Lo4/c;->a:Lt4/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lr4/b;III[BILk4/k;ZLo4/i;Lr4/b;Ll4/c;Lk4/t;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, -0x57a

    const/4 p2, 0x1

    if-ne p6, p2, :cond_3

    if-eq p4, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of p4, p7, Lk4/n;

    if-nez p4, :cond_2

    .line 2
    invoke-virtual {p0, p3}, Lo4/c;->e(I)Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    sget-object p2, Lo4/c;->b:Ln4/a;

    const-string p3, "MPv1 used with unsupported SNMP version"

    invoke-interface {p2, p3}, Ln4/a;->c(Ljava/io/Serializable;)V

    return p1

    .line 4
    :cond_1
    new-instance p1, Lr4/k;

    invoke-direct {p1, p5}, Lr4/k;-><init>([B)V

    .line 5
    new-instance p4, Lr4/g;

    invoke-direct {p4, p3}, Lr4/g;-><init>(I)V

    .line 6
    invoke-virtual {p7}, Lk4/k;->f()I

    move-result p3

    .line 7
    invoke-virtual {p1}, Lr4/k;->f()I

    move-result p5

    add-int/2addr p3, p5

    .line 8
    invoke-virtual {p4}, Lr4/g;->f()I

    move-result p5

    add-int/2addr p3, p5

    .line 9
    invoke-static {p3}, Ll4/a;->u(I)I

    move-result p5

    add-int/2addr p5, p3

    add-int/2addr p5, p2

    .line 10
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 11
    invoke-virtual {p11, p2}, Ll4/c;->f(Ljava/nio/ByteBuffer;)V

    const/16 p2, 0x30

    .line 12
    invoke-static {p11, p2, p3}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 13
    invoke-virtual {p4, p11}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 14
    invoke-virtual {p1, p11}, Lr4/k;->e(Ljava/io/OutputStream;)V

    .line 15
    invoke-virtual {p7, p11}, Lk4/k;->e(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const-string p1, "ScopedPDU must not be used with MPv1"

    .line 16
    sget-object p2, Lo4/c;->b:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_3
    :goto_0
    sget-object p2, Lo4/c;->b:Ln4/a;

    const-string p3, "MPv1 used with unsupported security model"

    invoke-interface {p2, p3}, Ln4/a;->c(Ljava/io/Serializable;)V

    return p1
.end method

.method public c(III[BILk4/k;ILo4/n;Lo4/o;Ll4/c;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p8 .. p8}, Lo4/n;->c0()Lr4/b;

    move-result-object v1

    .line 2
    invoke-virtual/range {p8 .. p8}, Lo4/n;->u()Lo4/i;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v11, p10

    .line 3
    invoke-virtual/range {v0 .. v12}, Lo4/c;->b(Lr4/b;III[BILk4/k;ZLo4/i;Lr4/b;Ll4/c;Lk4/t;)I

    move-result v0

    return v0
.end method

.method public d(Lo4/i;)V
    .locals 0

    return-void
.end method

.method public e(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lk4/g;Lr4/b;Ll4/b;Lk4/t;Lr4/g;Lr4/g;Lr4/k;Lr4/g;Lk4/j;Lo4/i;Lr4/g;Lo4/o;Lo4/h;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p6

    .line 1
    new-instance v3, Ll4/a$a;

    invoke-direct {v3}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p3, v3}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v4

    .line 3
    invoke-virtual {p3}, Ll4/b;->e()J

    move-result-wide v5

    long-to-int v5, v5

    .line 4
    invoke-virtual {v3}, Ll4/a$a;->a()B

    move-result v3

    const/16 v6, 0x30

    if-ne v3, v6, :cond_0

    .line 5
    new-instance v3, Lr4/g;

    invoke-direct {v3}, Lr4/g;-><init>()V

    .line 6
    invoke-virtual {v3, p3}, Lr4/g;->j(Ll4/b;)V

    move-object/from16 v3, p7

    .line 7
    invoke-virtual {v3, p3}, Lr4/k;->j(Ll4/b;)V

    const/4 v6, 0x1

    move-object/from16 v7, p8

    .line 8
    invoke-virtual {v7, v6}, Lr4/g;->I(I)V

    .line 9
    invoke-virtual {v2, v6}, Lr4/g;->I(I)V

    const/4 v6, 0x0

    move-object v7, p5

    .line 10
    invoke-virtual {p5, v6}, Lr4/g;->I(I)V

    .line 11
    iget-object v7, v0, Lo4/c;->a:Lt4/e;

    invoke-interface {v7, p0}, Lt4/e;->a(Lo4/g;)Lk4/k;

    move-result-object v7

    move-object/from16 v8, p9

    .line 12
    invoke-virtual {v8, v7}, Lk4/j;->c(Lk4/k;)V

    .line 13
    invoke-virtual {v7, p3}, Lk4/k;->j(Ll4/b;)V

    .line 14
    invoke-virtual {p3}, Ll4/b;->e()J

    move-result-wide v8

    long-to-int v1, v8

    sub-int/2addr v1, v5

    invoke-static {v4, v1, v7}, Ll4/a;->b(IILl4/d;)V

    .line 15
    invoke-virtual {v7}, Lk4/k;->I()Lr4/g;

    move-result-object v1

    invoke-virtual {v1}, Lr4/g;->H()I

    move-result v1

    move-object/from16 v4, p10

    invoke-virtual {v4, v1}, Lo4/i;->e(I)V

    .line 16
    new-instance v1, Lo4/n;

    const/4 v5, 0x0

    .line 17
    invoke-static {}, Lp4/x;->a()Lp4/x;

    move-result-object v7

    invoke-virtual {v7, v2}, Lp4/x;->b(Lr4/g;)Lp4/w;

    move-result-object v2

    .line 18
    invoke-virtual/range {p7 .. p7}, Lr4/k;->a0()[B

    move-result-object v3

    const/4 v7, 0x0

    move-object p3, v1

    move-object/from16 p4, p10

    move-object p5, p2

    move-object/from16 p6, v5

    move-object/from16 p7, v2

    move-object/from16 p8, v3

    move/from16 p9, v7

    invoke-direct/range {p3 .. p9}, Lo4/n;-><init>(Lo4/i;Lr4/b;Lk4/s;Lp4/w;[BI)V

    move-object/from16 v2, p13

    .line 19
    invoke-virtual {v2, v1}, Lo4/h;->b(Lo4/n;)V

    return v6

    :cond_0
    const-string v1, "SNMPv1 PDU must start with a SEQUENCE"

    .line 20
    sget-object v2, Lo4/c;->b:Ln4/a;

    invoke-interface {v2, v1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 21
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
