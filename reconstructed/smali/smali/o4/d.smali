.class public Lo4/d;
.super Ljava/lang/Object;
.source "MPv2c.java"

# interfaces
.implements Lo4/g;


# static fields
.field public static final b:Ln4/a;


# instance fields
.field public a:Lt4/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lo4/d;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lo4/d;->b:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo4/d$a;

    invoke-direct {v0, p0}, Lo4/d$a;-><init>(Lo4/d;)V

    iput-object v0, p0, Lo4/d;->a:Lt4/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

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

    const/4 p6, 0x2

    if-eq p4, p6, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of p4, p7, Lk4/n;

    if-nez p4, :cond_2

    .line 2
    invoke-virtual {p0, p3}, Lo4/d;->e(I)Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    sget-object p2, Lo4/d;->b:Ln4/a;

    const-string p3, "MPv2c used with unsupported SNMP version"

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
    const-string p1, "ScopedPDU must not be used with MPv2c"

    .line 16
    sget-object p2, Lo4/d;->b:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_3
    :goto_0
    sget-object p2, Lo4/d;->b:Ln4/a;

    const-string p3, "MPv2c used with unsupported security model"

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
    invoke-virtual/range {v0 .. v12}, Lo4/d;->b(Lr4/b;III[BILk4/k;ZLo4/i;Lr4/b;Ll4/c;Lk4/t;)I

    move-result v0

    return v0
.end method

.method public d(Lo4/i;)V
    .locals 0

    return-void
.end method

.method public e(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Lk4/g;Lr4/b;Ll4/b;Lk4/t;Lr4/g;Lr4/g;Lr4/k;Lr4/g;Lk4/j;Lo4/i;Lr4/g;Lo4/o;Lo4/h;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ll4/a$a;

    invoke-direct {p1}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p3, p1}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result p4

    .line 3
    invoke-virtual {p3}, Ll4/b;->e()J

    move-result-wide p11

    long-to-int p11, p11

    .line 4
    invoke-virtual {p1}, Ll4/a$a;->a()B

    move-result p1

    const/16 p12, 0x30

    if-ne p1, p12, :cond_0

    .line 5
    new-instance p1, Lr4/g;

    invoke-direct {p1}, Lr4/g;-><init>()V

    .line 6
    invoke-virtual {p1, p3}, Lr4/g;->j(Ll4/b;)V

    .line 7
    invoke-virtual {p7, p3}, Lr4/k;->j(Ll4/b;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p8, p1}, Lr4/g;->I(I)V

    const/4 p8, 0x2

    .line 9
    invoke-virtual {p6, p8}, Lr4/g;->I(I)V

    .line 10
    invoke-virtual {p5, p1}, Lr4/g;->I(I)V

    .line 11
    iget-object p1, p0, Lo4/d;->a:Lt4/e;

    invoke-interface {p1, p0}, Lt4/e;->a(Lo4/g;)Lk4/k;

    move-result-object p1

    .line 12
    invoke-virtual {p9, p1}, Lk4/j;->c(Lk4/k;)V

    .line 13
    invoke-virtual {p1, p3}, Lk4/k;->j(Ll4/b;)V

    .line 14
    invoke-virtual {p3}, Ll4/b;->e()J

    move-result-wide p8

    long-to-int p3, p8

    sub-int/2addr p3, p11

    .line 15
    invoke-static {p4, p3, p1}, Ll4/a;->b(IILl4/d;)V

    .line 16
    invoke-virtual {p1}, Lk4/k;->I()Lr4/g;

    move-result-object p1

    invoke-virtual {p1}, Lr4/g;->H()I

    move-result p1

    invoke-virtual {p10, p1}, Lo4/i;->e(I)V

    .line 17
    new-instance p1, Lo4/n;

    const/4 p8, 0x0

    .line 18
    invoke-static {}, Lp4/x;->a()Lp4/x;

    move-result-object p3

    invoke-virtual {p3, p6}, Lp4/x;->b(Lr4/g;)Lp4/w;

    move-result-object p9

    .line 19
    invoke-virtual {p7}, Lr4/k;->a0()[B

    move-result-object p11

    const/4 p12, 0x0

    move-object p3, p1

    move-object p4, p10

    move-object p5, p2

    move-object p6, p8

    move-object p7, p9

    move-object p8, p11

    move p9, p12

    invoke-direct/range {p3 .. p9}, Lo4/n;-><init>(Lo4/i;Lr4/b;Lk4/s;Lp4/w;[BI)V

    .line 20
    invoke-virtual {p13, p1}, Lo4/h;->b(Lo4/n;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p1, "SNMPv2c PDU must start with a SEQUENCE"

    .line 21
    sget-object p2, Lo4/d;->b:Ln4/a;

    invoke-interface {p2, p1}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 22
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
