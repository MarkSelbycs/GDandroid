.class public Lp4/h0;
.super Ljava/lang/Object;
.source "UsmUser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Lr4/k;

.field public b:Lr4/k;

.field public c:Lr4/k;

.field public d:Lr4/j;

.field public e:Lr4/j;

.field public f:Lr4/k;


# direct methods
.method public constructor <init>(Lr4/k;Lr4/j;Lr4/k;Lr4/j;Lr4/k;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lk4/m;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "USM passphrases must be at least 8 bytes long (RFC3414 \u00a711.2)"

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Lr4/k;->e0()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    .line 6
    invoke-virtual {p5}, Lr4/k;->e0()I

    move-result v2

    if-lt v2, v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    :goto_1
    iput-object p1, p0, Lp4/h0;->a:Lr4/k;

    .line 9
    iput-object p2, p0, Lp4/h0;->d:Lr4/j;

    .line 10
    iput-object p3, p0, Lp4/h0;->b:Lr4/k;

    .line 11
    iput-object p4, p0, Lp4/h0;->e:Lr4/j;

    .line 12
    iput-object p5, p0, Lp4/h0;->c:Lr4/k;

    return-void
.end method

.method public constructor <init>(Lr4/k;Lr4/j;Lr4/k;Lr4/j;Lr4/k;Lr4/k;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p5}, Lp4/h0;-><init>(Lr4/k;Lr4/j;Lr4/k;Lr4/j;Lr4/k;)V

    .line 14
    iput-object p6, p0, Lp4/h0;->f:Lr4/k;

    return-void
.end method


# virtual methods
.method public Z()Lr4/k;
    .locals 1

    iget-object v0, p0, Lp4/h0;->a:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/k;

    return-object v0
.end method

.method public b()Lr4/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/h0;->b:Lr4/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lr4/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/k;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 8

    new-instance v7, Lp4/h0;

    iget-object v1, p0, Lp4/h0;->a:Lr4/k;

    iget-object v2, p0, Lp4/h0;->d:Lr4/j;

    iget-object v3, p0, Lp4/h0;->b:Lr4/k;

    iget-object v4, p0, Lp4/h0;->e:Lr4/j;

    iget-object v5, p0, Lp4/h0;->c:Lr4/k;

    iget-object v6, p0, Lp4/h0;->f:Lr4/k;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lp4/h0;-><init>(Lr4/k;Lr4/j;Lr4/k;Lr4/j;Lr4/k;Lr4/k;)V

    return-object v7
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lp4/h0;

    .line 2
    iget-object v0, p0, Lp4/h0;->a:Lr4/k;

    iget-object p1, p1, Lp4/h0;->a:Lr4/k;

    invoke-virtual {v0, p1}, Lr4/k;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public e()Lr4/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/h0;->d:Lr4/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    .line 2
    :cond_1
    check-cast p1, Lp4/h0;

    .line 3
    iget-object v2, p0, Lp4/h0;->a:Lr4/k;

    iget-object v3, p1, Lp4/h0;->a:Lr4/k;

    invoke-virtual {v2, v3}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lp4/h0;->b:Lr4/k;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lp4/h0;->b:Lr4/k;

    invoke-virtual {v2, v3}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lp4/h0;->b:Lr4/k;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 5
    :cond_4
    iget-object v2, p0, Lp4/h0;->c:Lr4/k;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lp4/h0;->c:Lr4/k;

    invoke-virtual {v2, v3}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lp4/h0;->c:Lr4/k;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 6
    :cond_6
    iget-object v2, p0, Lp4/h0;->d:Lr4/j;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lp4/h0;->d:Lr4/j;

    invoke-virtual {v2, v3}, Lr4/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lp4/h0;->d:Lr4/j;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 7
    :cond_8
    iget-object v2, p0, Lp4/h0;->e:Lr4/j;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lp4/h0;->e:Lr4/j;

    invoke-virtual {v2, v3}, Lr4/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lp4/h0;->e:Lr4/j;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 8
    :cond_a
    iget-object v2, p0, Lp4/h0;->f:Lr4/k;

    iget-object p1, p1, Lp4/h0;->f:Lr4/k;

    if-eqz v2, :cond_b

    invoke-virtual {v2, p1}, Lr4/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_b
    if-eqz p1, :cond_c

    :goto_4
    return v1

    :cond_c
    return v0

    :cond_d
    :goto_5
    return v1
.end method

.method public f()Lr4/k;
    .locals 1

    iget-object v0, p0, Lp4/h0;->f:Lr4/k;

    return-object v0
.end method

.method public h()Lr4/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/h0;->c:Lr4/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lr4/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/k;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lp4/h0;->a:Lr4/k;

    invoke-virtual {v0}, Lr4/k;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Lr4/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/h0;->e:Lr4/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lr4/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/j;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsmUser[secName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/h0;->a:Lr4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",authProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/h0;->d:Lr4/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",authPassphrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/h0;->b:Lr4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",privProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/h0;->e:Lr4/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",privPassphrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp4/h0;->c:Lr4/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",localizationEngineID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lp4/h0;->f()Lr4/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lp4/h0;->f:Lr4/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
