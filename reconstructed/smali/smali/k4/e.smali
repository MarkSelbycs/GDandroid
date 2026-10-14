.class public Lk4/e;
.super Lk4/a;
.source "CommunityTarget.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk4/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk4/a;->C(I)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lk4/e;->h(I)V

    .line 4
    invoke-virtual {p0, v0}, Lk4/e;->j(I)V

    return-void
.end method

.method public constructor <init>(Lr4/b;Lr4/k;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lk4/a;-><init>(Lr4/b;Lr4/k;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lk4/a;->C(I)V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lk4/e;->h(I)V

    .line 8
    invoke-virtual {p0, p1}, Lk4/e;->j(I)V

    return-void
.end method


# virtual methods
.method public D(Lr4/k;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lk4/a;->u(Lr4/k;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Community must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K()Lk4/q;
    .locals 3

    .line 1
    new-instance v0, Lk4/e;

    invoke-virtual {p0}, Lk4/a;->c0()Lr4/b;

    move-result-object v1

    invoke-virtual {p0}, Lk4/e;->y()Lr4/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lk4/e;-><init>(Lr4/b;Lr4/k;)V

    .line 2
    invoke-virtual {p0}, Lk4/e;->r0()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/e;->j(I)V

    .line 3
    invoke-virtual {p0}, Lk4/a;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/e;->h(I)V

    .line 4
    invoke-virtual {p0}, Lk4/a;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/a;->l(I)V

    .line 5
    invoke-virtual {p0}, Lk4/a;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lk4/a;->R(J)V

    .line 6
    invoke-virtual {p0}, Lk4/a;->b0()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/a;->C(I)V

    .line 7
    invoke-virtual {p0}, Lk4/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lk4/a;->e(I)V

    .line 8
    invoke-virtual {p0}, Lk4/a;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk4/a;->f(Ljava/util/List;)V

    return-object v0
.end method

.method public h(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-super {p0, p1}, Lk4/a;->h(I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CommunityTarget only supports SecurityLevel.NOAUTH_NOPRIV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1
    invoke-super {p0, p1}, Lk4/a;->j(I)V

    .line 2
    invoke-super {p0, v0}, Lk4/a;->C(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "To set security model for a CommunityTarget, use setVersion"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lk4/a;->j(I)V

    const/4 p1, 0x0

    .line 5
    invoke-super {p0, p1}, Lk4/a;->C(I)V

    :goto_0
    return-void
.end method

.method public r0()I
    .locals 1

    invoke-virtual {p0}, Lk4/a;->b0()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommunityTarget["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lk4/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Lr4/k;
    .locals 1

    invoke-virtual {p0}, Lk4/a;->Z()Lr4/k;

    move-result-object v0

    return-object v0
.end method
