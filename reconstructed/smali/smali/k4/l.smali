.class public Lk4/l;
.super Lk4/k;
.source "PDUv1.java"


# instance fields
.field public f:Lr4/j;

.field public g:Lr4/h;

.field public h:Lr4/g;

.field public i:Lr4/g;

.field public o:Lr4/p;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lk4/k;-><init>()V

    .line 2
    new-instance v0, Lr4/j;

    invoke-direct {v0}, Lr4/j;-><init>()V

    iput-object v0, p0, Lk4/l;->f:Lr4/j;

    .line 3
    new-instance v0, Lr4/h;

    const-string v1, "0.0.0.0"

    invoke-direct {v0, v1}, Lr4/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk4/l;->g:Lr4/h;

    .line 4
    new-instance v0, Lr4/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/g;-><init>(I)V

    iput-object v0, p0, Lk4/l;->h:Lr4/g;

    .line 5
    new-instance v0, Lr4/g;

    invoke-direct {v0, v1}, Lr4/g;-><init>(I)V

    iput-object v0, p0, Lk4/l;->i:Lr4/g;

    .line 6
    new-instance v0, Lr4/p;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lr4/p;-><init>(J)V

    iput-object v0, p0, Lk4/l;->o:Lr4/p;

    const/16 v0, -0x5c

    .line 7
    invoke-virtual {p0, v0}, Lk4/k;->g0(I)V

    return-void
.end method

.method public constructor <init>(Lk4/l;)V
    .locals 3

    .line 8
    invoke-direct {p0, p1}, Lk4/k;-><init>(Lk4/k;)V

    .line 9
    new-instance v0, Lr4/j;

    invoke-direct {v0}, Lr4/j;-><init>()V

    iput-object v0, p0, Lk4/l;->f:Lr4/j;

    .line 10
    new-instance v0, Lr4/h;

    const-string v1, "0.0.0.0"

    invoke-direct {v0, v1}, Lr4/h;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lk4/l;->g:Lr4/h;

    .line 11
    new-instance v0, Lr4/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/g;-><init>(I)V

    iput-object v0, p0, Lk4/l;->h:Lr4/g;

    .line 12
    new-instance v0, Lr4/g;

    invoke-direct {v0, v1}, Lr4/g;-><init>(I)V

    iput-object v0, p0, Lk4/l;->i:Lr4/g;

    .line 13
    new-instance v0, Lr4/p;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lr4/p;-><init>(J)V

    iput-object v0, p0, Lk4/l;->o:Lr4/p;

    .line 14
    iget-object v0, p1, Lk4/l;->f:Lr4/j;

    invoke-virtual {v0}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j;

    iput-object v0, p0, Lk4/l;->f:Lr4/j;

    .line 15
    iget-object v0, p1, Lk4/l;->g:Lr4/h;

    invoke-virtual {v0}, Lr4/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/h;

    iput-object v0, p0, Lk4/l;->g:Lr4/h;

    .line 16
    iget-object v0, p1, Lk4/l;->h:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/g;

    iput-object v0, p0, Lk4/l;->h:Lr4/g;

    .line 17
    iget-object v0, p1, Lk4/l;->i:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/g;

    iput-object v0, p0, Lk4/l;->i:Lr4/g;

    .line 18
    iget-object p1, p1, Lk4/l;->o:Lr4/p;

    invoke-virtual {p1}, Lr4/p;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/p;

    iput-object p1, p0, Lk4/l;->o:Lr4/p;

    return-void
.end method


# virtual methods
.method public F()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lk4/k;->M()I

    move-result v0

    const/16 v1, -0x5c

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Lk4/k;->F()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/v;

    .line 4
    invoke-virtual {v2}, Lr4/v;->f()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lk4/l;->g:Lr4/h;

    invoke-virtual {v1}, Lr4/h;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lk4/l;->f:Lr4/j;

    invoke-virtual {v1}, Lr4/j;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lk4/l;->h:Lr4/g;

    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    iget-object v1, p0, Lk4/l;->i:Lr4/g;

    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    iget-object v1, p0, Lk4/l;->o:Lr4/p;

    invoke-virtual {v1}, Lr4/t;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lk4/l;

    invoke-direct {v0, p0}, Lk4/l;-><init>(Lk4/l;)V

    return-object v0
.end method

.method public d0(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported for SNMPv1 PDUs"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lk4/k;->e:I

    invoke-virtual {p0}, Lk4/k;->D()I

    move-result v1

    invoke-static {p1, v0, v1}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 2
    iget v0, p0, Lk4/k;->e:I

    const/16 v1, -0x5c

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lk4/l;->f:Lr4/j;

    invoke-virtual {v0, p1}, Lr4/j;->e(Ljava/io/OutputStream;)V

    .line 4
    iget-object v0, p0, Lk4/l;->g:Lr4/h;

    invoke-virtual {v0, p1}, Lr4/h;->e(Ljava/io/OutputStream;)V

    .line 5
    iget-object v0, p0, Lk4/l;->h:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 6
    iget-object v0, p0, Lk4/l;->i:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 7
    iget-object v0, p0, Lk4/l;->o:Lr4/p;

    invoke-virtual {v0, p1}, Lr4/p;->e(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lk4/k;->d:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 9
    iget-object v0, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 10
    iget-object v0, p0, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    :goto_0
    const/4 v0, 0x0

    .line 11
    iget-object v1, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/v;

    .line 12
    invoke-virtual {v2}, Lr4/v;->f()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x30

    .line 13
    invoke-static {p1, v1, v0}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 14
    iget-object v0, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr4/v;

    .line 15
    invoke-virtual {v1}, Lr4/v;->x()Lr4/u;

    move-result-object v2

    invoke-virtual {p0, v2}, Lk4/l;->j0(Lr4/u;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v1, p1}, Lr4/v;->e(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 17
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot encode Counter64 into a SNMPv1 PDU"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public e0(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported for SNMPv1 PDUs"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lk4/l;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lk4/l;

    .line 3
    invoke-super {p0, p1}, Lk4/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk4/l;->f:Lr4/j;

    iget-object v1, v0, Lk4/l;->f:Lr4/j;

    .line 4
    invoke-static {p1, v1}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk4/l;->g:Lr4/h;

    iget-object v1, v0, Lk4/l;->g:Lr4/h;

    .line 5
    invoke-static {p1, v1}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk4/l;->h:Lr4/g;

    iget-object v1, v0, Lk4/l;->h:Lr4/g;

    .line 6
    invoke-static {p1, v1}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk4/l;->i:Lr4/g;

    iget-object v1, v0, Lk4/l;->i:Lr4/g;

    .line 7
    invoke-static {p1, v1}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk4/l;->o:Lr4/p;

    iget-object v0, v0, Lk4/l;->o:Lr4/p;

    .line 8
    invoke-static {p1, v0}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 9
    :cond_1
    invoke-super {p0, p1}, Lk4/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public j(Ll4/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p1, v0}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v2

    long-to-int v2, v2

    .line 4
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 5
    :pswitch_1
    invoke-static {}, Lk4/m;->j()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6
    :pswitch_2
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {p0, v0}, Lk4/k;->g0(I)V

    .line 7
    invoke-virtual {p0}, Lk4/k;->M()I

    move-result v0

    const/16 v3, -0x5c

    if-ne v0, v3, :cond_0

    .line 8
    iget-object v0, p0, Lk4/l;->f:Lr4/j;

    invoke-virtual {v0, p1}, Lr4/j;->j(Ll4/b;)V

    .line 9
    iget-object v0, p0, Lk4/l;->g:Lr4/h;

    invoke-virtual {v0, p1}, Lr4/h;->j(Ll4/b;)V

    .line 10
    iget-object v0, p0, Lk4/l;->h:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 11
    iget-object v0, p0, Lk4/l;->i:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 12
    iget-object v0, p0, Lk4/l;->o:Lr4/p;

    invoke-virtual {v0, p1}, Lr4/p;->j(Ll4/b;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lk4/k;->d:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 14
    iget-object v0, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 15
    iget-object v0, p0, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 16
    :goto_0
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 17
    invoke-static {p1, v0}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v3

    .line 18
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_4

    .line 19
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v4

    long-to-int v0, v4

    .line 20
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lk4/k;->a:Ljava/util/Vector;

    .line 21
    :goto_1
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v4

    int-to-long v6, v0

    sub-long/2addr v4, v6

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 22
    new-instance v4, Lr4/v;

    invoke-direct {v4}, Lr4/v;-><init>()V

    .line 23
    invoke-virtual {v4, p1}, Lr4/v;->j(Ll4/b;)V

    .line 24
    invoke-virtual {v4}, Lr4/v;->x()Lr4/u;

    move-result-object v5

    invoke-virtual {p0, v5}, Lk4/l;->j0(Lr4/u;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 25
    iget-object v5, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Lk4/i;

    const-string v0, "Counter64 encountered in SNMPv1 PDU (RFC 2576 \u00a74.1.2.1)"

    invoke-direct {p1, v0}, Lk4/i;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    invoke-static {}, Ll4/a;->y()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v4

    long-to-int v4, v4

    sub-int/2addr v4, v0

    .line 29
    invoke-static {v3, v4, p0}, Ll4/a;->b(IILl4/d;)V

    .line 30
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v3

    long-to-int p1, v3

    sub-int/2addr p1, v2

    .line 31
    invoke-static {v1, p1, p0}, Ll4/a;->b(IILl4/d;)V

    :cond_3
    return-void

    .line 32
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered invalid tag, SEQUENCE expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_5
    :goto_2
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported PDU type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch -0x60
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public j0(Lr4/u;)Z
    .locals 0

    instance-of p1, p1, Lr4/d;

    if-eqz p1, :cond_1

    invoke-static {}, Lk4/m;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lk4/k;->e:I

    const/16 v1, -0x5c

    if-ne v0, v1, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget v1, p0, Lk4/k;->e:I

    invoke-static {v1}, Lk4/k;->P(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[reqestID="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lk4/k;->d:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",timestamp="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lk4/l;->o:Lr4/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",enterprise="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lk4/l;->f:Lr4/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",genericTrap="

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lk4/l;->h:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",specificTrap="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lk4/l;->i:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VBS["

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 15
    :cond_0
    :goto_0
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 16
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 17
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "; "

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]]"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 21
    :cond_2
    invoke-super {p0}, Lk4/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
