.class public Lk4/n;
.super Lk4/k;
.source "ScopedPDU.java"


# instance fields
.field public f:Lr4/k;

.field public g:Lr4/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk4/k;-><init>()V

    .line 2
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lk4/n;->f:Lr4/k;

    .line 3
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lk4/n;->g:Lr4/k;

    return-void
.end method

.method public constructor <init>(Lk4/n;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lk4/k;-><init>(Lk4/k;)V

    .line 5
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lk4/n;->f:Lr4/k;

    .line 6
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lk4/n;->g:Lr4/k;

    .line 7
    iget-object v0, p1, Lk4/n;->f:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/k;

    iput-object v0, p0, Lk4/n;->f:Lr4/k;

    .line 8
    iget-object p1, p1, Lk4/n;->g:Lr4/k;

    invoke-virtual {p1}, Lr4/k;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/k;

    iput-object p1, p0, Lk4/n;->g:Lr4/k;

    return-void
.end method


# virtual methods
.method public D()I
    .locals 4

    .line 1
    invoke-super {p0}, Lk4/k;->f()I

    move-result v0

    .line 2
    iget-object v1, p0, Lk4/n;->f:Lr4/k;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lr4/k;->e0()I

    move-result v1

    .line 3
    :goto_0
    iget-object v3, p0, Lk4/n;->g:Lr4/k;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lr4/k;->e0()I

    move-result v2

    .line 4
    :goto_1
    invoke-static {v1}, Ll4/a;->u(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 5
    invoke-static {v2}, Ll4/a;->u(I)I

    move-result v1

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lk4/n;

    invoke-direct {v0, p0}, Lk4/n;-><init>(Lk4/n;)V

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
    invoke-virtual {p0}, Lk4/n;->D()I

    move-result v0

    const/16 v1, 0x30

    invoke-static {p1, v1, v0}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 2
    iget-object v0, p0, Lk4/n;->f:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->e(Ljava/io/OutputStream;)V

    .line 3
    iget-object v0, p0, Lk4/n;->g:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->e(Ljava/io/OutputStream;)V

    .line 4
    invoke-super {p0, p1}, Lk4/k;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lk4/n;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lk4/n;

    .line 3
    invoke-super {p0, p1}, Lk4/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk4/n;->f:Lr4/k;

    iget-object v1, v0, Lk4/n;->f:Lr4/k;

    .line 4
    invoke-static {p1, v1}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk4/n;->g:Lr4/k;

    iget-object v0, v0, Lk4/n;->g:Lr4/k;

    .line 5
    invoke-static {p1, v0}, Lr4/a;->D(Lr4/a;Lr4/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lk4/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lk4/n;->D()I

    move-result v0

    .line 2
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public j(Ll4/b;)V
    .locals 5
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

    move-result v0

    .line 3
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v1

    .line 4
    iget-object v3, p0, Lk4/n;->f:Lr4/k;

    invoke-virtual {v3, p1}, Lr4/k;->j(Ll4/b;)V

    .line 5
    iget-object v3, p0, Lk4/n;->g:Lr4/k;

    invoke-virtual {v3, p1}, Lr4/k;->j(Ll4/b;)V

    .line 6
    invoke-super {p0, p1}, Lk4/k;->j(Ll4/b;)V

    .line 7
    invoke-static {}, Ll4/a;->y()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-int p1, v3

    .line 9
    invoke-static {v0, p1, p0}, Ll4/a;->b(IILl4/d;)V

    :cond_0
    return-void
.end method

.method public j0()Lr4/k;
    .locals 1

    iget-object v0, p0, Lk4/n;->f:Lr4/k;

    return-object v0
.end method

.method public k0()Lr4/k;
    .locals 1

    iget-object v0, p0, Lk4/n;->g:Lr4/k;

    return-object v0
.end method

.method public l0(Lr4/k;)V
    .locals 1

    const-string v0, "Context engine ID must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lk4/n;->f:Lr4/k;

    return-void
.end method

.method public m0(Lr4/k;)V
    .locals 1

    const-string v0, "Context name must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lk4/n;->g:Lr4/k;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget v1, p0, Lk4/k;->e:I

    invoke-static {v1}, Lk4/k;->P(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[{contextEngineID="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/n;->f:Lr4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contextName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/n;->g:Lr4/k;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}, requestID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lk4/k;->d:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorStatus="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, Lk4/k;->b:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorIndex="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Lk4/k;->c:Lr4/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VBS["

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 11
    :cond_0
    :goto_0
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 12
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 13
    iget-object v2, p0, Lk4/k;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "; "

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]]"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
