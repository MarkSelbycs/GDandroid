.class public Lk4/u;
.super Lk4/o;
.source "UserTarget.java"


# instance fields
.field public o:Lr4/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk4/o;-><init>()V

    .line 2
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    iput-object v0, p0, Lk4/u;->o:Lr4/k;

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lk4/a;->j(I)V

    return-void
.end method

.method public constructor <init>(Lr4/b;Lr4/k;[BI)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lk4/o;-><init>(Lr4/b;Lr4/k;)V

    .line 5
    new-instance p1, Lr4/k;

    invoke-direct {p1}, Lr4/k;-><init>()V

    iput-object p1, p0, Lk4/u;->o:Lr4/k;

    .line 6
    invoke-virtual {p0, p3}, Lk4/u;->D([B)V

    .line 7
    invoke-virtual {p0, p4}, Lk4/a;->h(I)V

    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lk4/a;->j(I)V

    return-void
.end method


# virtual methods
.method public D([B)V
    .locals 1

    iget-object v0, p0, Lk4/u;->o:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->f0([B)V

    return-void
.end method

.method public K()Lk4/q;
    .locals 5

    .line 1
    new-instance v0, Lk4/u;

    .line 2
    invoke-virtual {p0}, Lk4/a;->c0()Lr4/b;

    move-result-object v1

    iget-object v2, p0, Lk4/a;->i:Lr4/k;

    iget-object v3, p0, Lk4/u;->o:Lr4/k;

    invoke-virtual {v3}, Lr4/k;->a0()[B

    move-result-object v3

    iget v4, p0, Lk4/a;->g:I

    invoke-direct {v0, v1, v2, v3, v4}, Lk4/u;-><init>(Lr4/b;Lr4/k;[BI)V

    .line 3
    invoke-virtual {p0}, Lk4/a;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/a;->l(I)V

    .line 4
    invoke-virtual {p0}, Lk4/a;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk4/a;->R(J)V

    .line 5
    invoke-virtual {p0}, Lk4/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/a;->e(I)V

    .line 6
    invoke-virtual {p0}, Lk4/a;->r0()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/a;->j(I)V

    .line 7
    invoke-virtual {p0}, Lk4/a;->b0()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/a;->C(I)V

    .line 8
    invoke-virtual {p0}, Lk4/a;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk4/a;->f(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lk4/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lk4/u;

    .line 4
    iget-object v2, p0, Lk4/u;->o:Lr4/k;

    iget-object p1, p1, Lk4/u;->o:Lr4/k;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    :goto_0
    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lk4/a;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lk4/u;->o:Lr4/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lr4/k;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserTarget["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk4/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authoritativeEngineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk4/u;->o:Lr4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, Lk4/u;->o:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object v0

    return-object v0
.end method
