.class public Lr4/v;
.super Ljava/lang/Object;
.source "VariableBinding.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ll4/d;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lr4/j;

.field public b:Lr4/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr4/j;

    invoke-direct {v0}, Lr4/j;-><init>()V

    iput-object v0, p0, Lr4/v;->a:Lr4/j;

    .line 3
    sget-object v0, Lr4/i;->h:Lr4/i;

    iput-object v0, p0, Lr4/v;->b:Lr4/u;

    return-void
.end method

.method public constructor <init>(Lr4/j;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0, p1}, Lr4/v;->y(Lr4/j;)V

    .line 6
    sget-object p1, Lr4/i;->h:Lr4/i;

    iput-object p1, p0, Lr4/v;->b:Lr4/u;

    return-void
.end method

.method public constructor <init>(Lr4/j;Lr4/u;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lr4/v;->y(Lr4/j;)V

    .line 9
    invoke-virtual {p0, p2}, Lr4/v;->D(Lr4/u;)V

    return-void
.end method


# virtual methods
.method public D(Lr4/u;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lr4/u;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/u;

    iput-object p1, p0, Lr4/v;->b:Lr4/u;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Variable of a VariableBinding must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr4/v;

    iget-object v1, p0, Lr4/v;->a:Lr4/j;

    iget-object v2, p0, Lr4/v;->b:Lr4/u;

    invoke-direct {v0, v1, v2}, Lr4/v;-><init>(Lr4/j;Lr4/u;)V

    return-object v0
.end method

.method public final e(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr4/v;->h()I

    move-result v0

    const/16 v1, 0x30

    .line 2
    invoke-static {p1, v1, v0}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 3
    iget-object v0, p0, Lr4/v;->a:Lr4/j;

    invoke-virtual {v0, p1}, Lr4/j;->e(Ljava/io/OutputStream;)V

    .line 4
    iget-object v0, p0, Lr4/v;->b:Lr4/u;

    invoke-interface {v0, p1}, Ll4/d;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lr4/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lr4/v;

    .line 3
    iget-object v0, p0, Lr4/v;->a:Lr4/j;

    invoke-virtual {p1}, Lr4/v;->u()Lr4/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr4/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/v;->b:Lr4/u;

    .line 4
    invoke-virtual {p1}, Lr4/v;->x()Lr4/u;

    move-result-object p1

    invoke-interface {v0, p1}, Lr4/u;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr4/v;->h()I

    move-result v0

    .line 2
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 2

    iget-object v0, p0, Lr4/v;->a:Lr4/j;

    invoke-virtual {v0}, Lr4/j;->f()I

    move-result v0

    iget-object v1, p0, Lr4/v;->b:Lr4/u;

    invoke-interface {v1}, Ll4/d;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lr4/v;->a:Lr4/j;

    invoke-virtual {v0}, Lr4/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j(Ll4/b;)V
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
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v2

    .line 4
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    .line 5
    iget-object v0, p0, Lr4/v;->a:Lr4/j;

    invoke-virtual {v0, p1}, Lr4/j;->j(Ll4/b;)V

    .line 6
    invoke-static {p1}, Lr4/a;->x(Ll4/b;)Lr4/u;

    move-result-object v0

    iput-object v0, p0, Lr4/v;->b:Lr4/u;

    .line 7
    invoke-static {}, Ll4/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Ll4/b;->e()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int p1, v4

    .line 9
    invoke-static {v1, p1, p0}, Ll4/a;->b(IILl4/d;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sequence encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lk4/m;->i()Lt4/j;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lr4/v;->a:Lr4/j;

    iget-object v2, p0, Lr4/v;->b:Lr4/u;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lt4/j;->a(Lr4/j;Lr4/u;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lr4/j;
    .locals 1

    iget-object v0, p0, Lr4/v;->a:Lr4/j;

    return-object v0
.end method

.method public x()Lr4/u;
    .locals 1

    iget-object v0, p0, Lr4/v;->b:Lr4/u;

    return-object v0
.end method

.method public y(Lr4/j;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/j;

    iput-object p1, p0, Lr4/v;->a:Lr4/j;

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OID of a VariableBinding must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
