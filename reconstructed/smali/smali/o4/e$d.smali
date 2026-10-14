.class public Lo4/e$d;
.super Ljava/lang/Object;
.source "MPv3.java"

# interfaces
.implements Ll4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Lr4/g;

.field public b:Lr4/g;

.field public c:Lr4/k;

.field public d:Lr4/g;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr4/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/g;-><init>(I)V

    iput-object v0, p0, Lo4/e$d;->a:Lr4/g;

    .line 3
    new-instance v0, Lr4/g;

    const v2, 0x7fffffff

    invoke-direct {v0, v2}, Lr4/g;-><init>(I)V

    iput-object v0, p0, Lo4/e$d;->b:Lr4/g;

    .line 4
    new-instance v0, Lr4/k;

    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-direct {v0, v2}, Lr4/k;-><init>([B)V

    iput-object v0, p0, Lo4/e$d;->c:Lr4/k;

    .line 5
    new-instance v0, Lr4/g;

    invoke-direct {v0, v1}, Lr4/g;-><init>(I)V

    iput-object v0, p0, Lo4/e$d;->d:Lr4/g;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo4/e$d;->a:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lo4/e$d;->c:Lr4/k;

    invoke-virtual {v1}, Lr4/k;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lo4/e$d;->d:Lr4/g;

    invoke-virtual {v1}, Lr4/g;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lo4/e$d;->c:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lo4/e$d;->a()I

    move-result v0

    const/16 v1, 0x30

    invoke-static {p1, v1, v0}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 2
    iget-object v0, p0, Lo4/e$d;->a:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 3
    iget-object v0, p0, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 4
    iget-object v0, p0, Lo4/e$d;->c:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->e(Ljava/io/OutputStream;)V

    .line 5
    iget-object v0, p0, Lo4/e$d;->d:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo4/e$d;->a()I

    move-result v0

    .line 2
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lo4/e$d;->a:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->H()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->H()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lo4/e$d;->d:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->H()I

    move-result v0

    return v0
.end method

.method public j(Ll4/b;)V
    .locals 6
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
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 4
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v2

    .line 5
    iget-object v0, p0, Lo4/e$d;->a:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 6
    iget-object v0, p0, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 7
    iget-object v0, p0, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v0}, Lr4/g;->H()I

    move-result v0

    const/16 v4, 0x1e4

    if-lt v0, v4, :cond_2

    .line 8
    iget-object v0, p0, Lo4/e$d;->c:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->j(Ll4/b;)V

    .line 9
    iget-object v0, p0, Lo4/e$d;->c:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->e0()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 10
    iget-object v0, p0, Lo4/e$d;->d:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->j(Ll4/b;)V

    .line 11
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lo4/e;->g()Ln4/a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SNMPv3 header decoded: msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo4/e$d;->a:Lr4/g;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", msgMaxSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", msgFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo4/e$d;->c:Lr4/k;

    .line 13
    invoke-virtual {v5}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", secModel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lo4/e$d;->d:Lr4/g;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-interface {v0, v4}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 15
    :cond_0
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int p1, v4

    invoke-static {v1, p1, p0}, Ll4/a;->b(IILl4/d;)V

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message flags length != 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/e$d;->c:Lr4/k;

    invoke-virtual {v1}, Lr4/k;->e0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid msgMaxSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected sequence header type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(I)V
    .locals 2

    iget-object v0, p0, Lo4/e$d;->c:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object v0

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lo4/e$d;->a:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method

.method public m(I)V
    .locals 1

    iget-object v0, p0, Lo4/e$d;->b:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method

.method public n(I)V
    .locals 1

    iget-object v0, p0, Lo4/e$d;->d:Lr4/g;

    invoke-virtual {v0, p1}, Lr4/g;->I(I)V

    return-void
.end method
