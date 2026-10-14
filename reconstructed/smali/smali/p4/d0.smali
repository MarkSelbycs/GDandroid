.class public Lp4/d0;
.super Ljava/lang/Object;
.source "UsmSecurityParameters.java"

# interfaces
.implements Lp4/y;


# static fields
.field public static final t:Ln4/a;


# instance fields
.field public a:Lr4/k;

.field public b:Lr4/g;

.field public c:Lr4/g;

.field public d:Lr4/k;

.field public e:Lp4/i;

.field public f:Lp4/s;

.field public g:[B

.field public h:[B

.field public i:Lr4/k;

.field public o:Lr4/k;

.field public p:I

.field public q:I

.field public r:I

.field public s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp4/d0;

    .line 2
    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lp4/d0;->t:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lp4/d0;->a:Lr4/k;

    .line 3
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    iput-object v0, p0, Lp4/d0;->b:Lr4/g;

    .line 4
    new-instance v0, Lr4/g;

    invoke-direct {v0}, Lr4/g;-><init>()V

    iput-object v0, p0, Lp4/d0;->c:Lr4/g;

    .line 5
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lp4/d0;->d:Lr4/k;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lp4/d0;->e:Lp4/i;

    .line 7
    iput-object v0, p0, Lp4/d0;->f:Lp4/s;

    .line 8
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lp4/d0;->i:Lr4/k;

    .line 9
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lp4/d0;->o:Lr4/k;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lp4/d0;->p:I

    .line 11
    iput v0, p0, Lp4/d0;->q:I

    .line 12
    iput v0, p0, Lp4/d0;->r:I

    .line 13
    iput v0, p0, Lp4/d0;->s:I

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    iget-object v0, p0, Lp4/d0;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method

.method public B([B)V
    .locals 1

    const-string v0, "Authoritative engine ID must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lp4/d0;->a:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->f0([B)V

    return-void
.end method

.method public C(I)V
    .locals 1

    iget-object v0, p0, Lp4/d0;->c:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method

.method public D([B)V
    .locals 0

    iput-object p1, p0, Lp4/d0;->h:[B

    return-void
.end method

.method public E(Lr4/k;)V
    .locals 0

    iput-object p1, p0, Lp4/d0;->i:Lr4/k;

    return-void
.end method

.method public F(Lp4/s;)V
    .locals 0

    iput-object p1, p0, Lp4/d0;->f:Lp4/s;

    return-void
.end method

.method public G(Lr4/k;)V
    .locals 0

    iput-object p1, p0, Lp4/d0;->d:Lr4/k;

    return-void
.end method

.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lp4/d0;->q:I

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lp4/d0;->m()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lp4/d0;->p:I

    return-void
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lp4/d0;->g:[B

    return-object v0
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp4/d0;->o()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 2
    invoke-virtual {p0}, Lp4/d0;->p()I

    move-result v0

    const/16 v1, 0x30

    invoke-static {p1, v1, v0}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 3
    iget-object v0, p0, Lp4/d0;->a:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->e(Ljava/io/OutputStream;)V

    .line 4
    iget-object v0, p0, Lp4/d0;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 5
    iget-object v0, p0, Lp4/d0;->c:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 6
    iget-object v0, p0, Lp4/d0;->d:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->e(Ljava/io/OutputStream;)V

    .line 7
    iget-object v0, p0, Lp4/d0;->o:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->e(Ljava/io/OutputStream;)V

    .line 8
    iget-object v0, p0, Lp4/d0;->i:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp4/d0;->o()I

    move-result v0

    .line 2
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public g()Lr4/k;
    .locals 1

    iget-object v0, p0, Lp4/d0;->o:Lr4/k;

    return-object v0
.end method

.method public h()Lp4/i;
    .locals 1

    iget-object v0, p0, Lp4/d0;->e:Lp4/i;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lp4/d0;->b:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->H()I

    move-result v0

    return v0
.end method

.method public j(Ll4/b;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2
    iput v0, p0, Lp4/d0;->r:I

    .line 3
    new-instance v1, Ll4/a$a;

    invoke-direct {v1}, Ll4/a$a;-><init>()V

    .line 4
    invoke-static {p1, v1}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v2

    .line 5
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v3

    .line 6
    invoke-virtual {v1}, Ll4/a$a;->a()B

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 7
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v5

    long-to-int v5, v5

    iput v5, p0, Lp4/d0;->s:I

    .line 8
    invoke-static {p1, v1}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v5

    .line 9
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v6

    .line 10
    invoke-virtual {v1}, Ll4/a$a;->a()B

    move-result v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_1

    .line 11
    iget-object v1, p0, Lp4/d0;->a:Lr4/k;

    invoke-virtual {v1, p1}, Lr4/k;->j(Ll4/b;)V

    .line 12
    iget-object v1, p0, Lp4/d0;->b:Lr4/g;

    invoke-virtual {v1, p1}, Lr4/g;->j(Ll4/b;)V

    .line 13
    iget-object v1, p0, Lp4/d0;->c:Lr4/g;

    invoke-virtual {v1, p1}, Lr4/g;->j(Ll4/b;)V

    .line 14
    iget-object v1, p0, Lp4/d0;->d:Lr4/k;

    invoke-virtual {v1, p1}, Lr4/k;->j(Ll4/b;)V

    .line 15
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v8

    int-to-long v0, v0

    sub-long/2addr v8, v0

    long-to-int v0, v8

    iput v0, p0, Lp4/d0;->q:I

    .line 16
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v0

    long-to-int v0, v0

    .line 17
    iget-object v1, p0, Lp4/d0;->o:Lr4/k;

    invoke-virtual {v1, p1}, Lr4/k;->j(Ll4/b;)V

    .line 18
    iget v1, p0, Lp4/d0;->q:I

    int-to-long v8, v1

    .line 19
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v10

    int-to-long v0, v0

    sub-long/2addr v10, v0

    iget-object v0, p0, Lp4/d0;->o:Lr4/k;

    .line 20
    invoke-virtual {v0}, Lr4/k;->X()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v10, v0

    add-long/2addr v8, v10

    long-to-int v0, v8

    iput v0, p0, Lp4/d0;->q:I

    .line 21
    iget-object v0, p0, Lp4/d0;->i:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->j(Ll4/b;)V

    .line 22
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v0

    iget v8, p0, Lp4/d0;->r:I

    int-to-long v8, v8

    sub-long/2addr v0, v8

    long-to-int v0, v0

    iput v0, p0, Lp4/d0;->r:I

    .line 23
    invoke-static {}, Ll4/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v0

    sub-long/2addr v0, v6

    long-to-int v0, v0

    .line 25
    invoke-static {v5, v0, p0}, Ll4/a;->b(IILl4/d;)V

    .line 26
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v0

    sub-long/2addr v0, v3

    long-to-int p1, v0

    .line 27
    invoke-static {v2, p1, p0}, Ll4/a;->b(IILl4/d;)V

    :cond_0
    return-void

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BER decoding error: Expected BER SEQUENCE but found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    sget-object v0, Lp4/d0;->t:Ln4/a;

    invoke-interface {v0, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 31
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BER decoding error: Expected BER OCTETSTRING but found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    sget-object v0, Lp4/d0;->t:Ln4/a;

    invoke-interface {v0, p1}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 35
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()[B
    .locals 1

    iget-object v0, p0, Lp4/d0;->a:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lp4/d0;->c:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->H()I

    move-result v0

    return v0
.end method

.method public final m()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp4/d0;->f()I

    move-result v0

    iget-object v1, p0, Lp4/d0;->o:Lr4/k;

    .line 2
    invoke-virtual {v1}, Lr4/k;->X()I

    move-result v1

    iget-object v2, p0, Lp4/d0;->i:Lr4/k;

    .line 3
    invoke-virtual {v2}, Lr4/k;->f()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public n(I)I
    .locals 4

    .line 1
    invoke-static {}, Lp4/z;->h()Lp4/z;

    move-result-object v0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lp4/z;->j()I

    move-result v2

    .line 3
    invoke-virtual {v0}, Lp4/z;->j()I

    move-result v3

    invoke-static {v3}, Ll4/a;->u(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 4
    invoke-virtual {v0}, Lp4/z;->q()I

    move-result p1

    .line 5
    invoke-virtual {v0}, Lp4/z;->q()I

    move-result v0

    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :cond_1
    :goto_0
    add-int/lit8 v2, v2, 0x50

    .line 6
    invoke-static {v2}, Ll4/a;->u(I)I

    move-result p1

    add-int/2addr v2, p1

    add-int/2addr v2, v1

    return v2
.end method

.method public o()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp4/d0;->p()I

    move-result v0

    .line 2
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public p()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/d0;->a:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Lp4/d0;->b:Lr4/g;

    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lp4/d0;->c:Lr4/g;

    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lp4/d0;->d:Lr4/k;

    invoke-virtual {v1}, Lr4/k;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lp4/d0;->o:Lr4/k;

    invoke-virtual {v1}, Lr4/k;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lp4/d0;->i:Lr4/k;

    invoke-virtual {v1}, Lr4/k;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public r()[B
    .locals 1

    iget-object v0, p0, Lp4/d0;->h:[B

    return-object v0
.end method

.method public s()Lr4/k;
    .locals 1

    iget-object v0, p0, Lp4/d0;->i:Lr4/k;

    return-object v0
.end method

.method public t()Lp4/s;
    .locals 1

    iget-object v0, p0, Lp4/d0;->f:Lp4/s;

    return-object v0
.end method

.method public u()I
    .locals 2

    .line 1
    iget v0, p0, Lp4/d0;->r:I

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp4/d0;->v()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lp4/d0;->v()I

    move-result v0

    invoke-virtual {p0}, Lp4/d0;->f()I

    move-result v1

    goto :goto_0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lp4/d0;->p:I

    return v0
.end method

.method public w()Lr4/k;
    .locals 1

    iget-object v0, p0, Lp4/d0;->d:Lr4/k;

    return-object v0
.end method

.method public x([B)V
    .locals 0

    iput-object p1, p0, Lp4/d0;->g:[B

    return-void
.end method

.method public y(Lr4/k;)V
    .locals 0

    iput-object p1, p0, Lp4/d0;->o:Lr4/k;

    return-void
.end method

.method public z(Lp4/i;)V
    .locals 0

    iput-object p1, p0, Lp4/d0;->e:Lp4/i;

    return-void
.end method
