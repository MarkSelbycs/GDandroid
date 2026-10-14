.class public Lh2/a;
.super Ljava/lang/Object;
.source "JSONXMLParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf2/s;Lf2/l;Ljava/lang/String;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf2/s;->o()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lf2/r;->c:Ljava/lang/Character;

    const-string v2, "content"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_8

    .line 3
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result p2

    const/16 p3, 0x2d

    if-ne p2, p3, :cond_1

    .line 4
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result p1

    if-ne p1, p3, :cond_0

    const-string p1, "-->"

    .line 5
    invoke-virtual {p0, p1}, Lf2/s;->p(Ljava/lang/String;)Z

    return v4

    .line 6
    :cond_0
    invoke-virtual {p0}, Lf2/o;->a()V

    goto :goto_0

    :cond_1
    const/16 p3, 0x5b

    if-ne p2, p3, :cond_4

    .line 7
    invoke-virtual {p0}, Lf2/s;->o()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "CDATA"

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result p2

    if-ne p2, p3, :cond_3

    .line 10
    invoke-virtual {p0}, Lf2/s;->k()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 12
    invoke-virtual {p1, v2, p0}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    :cond_2
    return v4

    :cond_3
    const-string p1, "Expected \'CDATA[\'"

    .line 13
    invoke-virtual {p0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 14
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lf2/s;->n()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 15
    sget-object p2, Lf2/r;->f:Ljava/lang/Character;

    if-ne p1, p2, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_5
    sget-object p2, Lf2/r;->e:Ljava/lang/Character;

    if-ne p1, p2, :cond_6

    add-int/lit8 v3, v3, -0x1

    :cond_6
    :goto_1
    if-gtz v3, :cond_4

    return v4

    :cond_7
    const-string p1, "Missing \'>\' after \'<!\'."

    .line 17
    invoke-virtual {p0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 18
    :cond_8
    sget-object v1, Lf2/r;->g:Ljava/lang/Character;

    if-ne v0, v1, :cond_9

    const-string p1, "?>"

    .line 19
    invoke-virtual {p0, p1}, Lf2/s;->p(Ljava/lang/String;)Z

    return v4

    .line 20
    :cond_9
    sget-object v1, Lf2/r;->i:Ljava/lang/Character;

    if-ne v0, v1, :cond_d

    .line 21
    invoke-virtual {p0}, Lf2/s;->o()Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_c

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 23
    invoke-virtual {p0}, Lf2/s;->o()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lf2/r;->e:Ljava/lang/Character;

    if-ne p1, p2, :cond_a

    return v3

    :cond_a
    const-string p1, "Misshaped close tag"

    .line 24
    invoke-virtual {p0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 25
    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Mismatched "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 26
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Mismatched close tag "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 27
    :cond_d
    instance-of p2, v0, Ljava/lang/Character;

    const-string v1, "Misshaped tag"

    if-nez p2, :cond_1e

    .line 28
    check-cast v0, Ljava/lang/String;

    .line 29
    new-instance p2, Lf2/l;

    invoke-direct {p2}, Lf2/l;-><init>()V

    const/4 v5, 0x0

    :goto_2
    move-object v6, v5

    :goto_3
    if-nez v6, :cond_e

    .line 30
    invoke-virtual {p0}, Lf2/s;->o()Ljava/lang/Object;

    move-result-object v6

    .line 31
    :cond_e
    instance-of v7, v6, Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_12

    .line 32
    check-cast v6, Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lf2/s;->o()Ljava/lang/Object;

    move-result-object v7

    .line 34
    sget-object v9, Lf2/r;->d:Ljava/lang/Character;

    if-ne v7, v9, :cond_11

    .line 35
    invoke-virtual {p0}, Lf2/s;->o()Ljava/lang/Object;

    move-result-object v7

    .line 36
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_10

    if-eqz p3, :cond_f

    goto :goto_4

    .line 37
    :cond_f
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lf2/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    :goto_4
    invoke-virtual {p2, v6, v7}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto :goto_2

    :cond_10
    const-string p1, "Missing value"

    .line 38
    invoke-virtual {p0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 39
    :cond_11
    invoke-virtual {p2, v6, v8}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    move-object v6, v7

    goto :goto_3

    .line 40
    :cond_12
    sget-object v5, Lf2/r;->i:Ljava/lang/Character;

    if-ne v6, v5, :cond_15

    .line 41
    invoke-virtual {p0}, Lf2/s;->o()Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lf2/r;->e:Ljava/lang/Character;

    if-ne p3, v2, :cond_14

    .line 42
    invoke-virtual {p2}, La2/j;->size()I

    move-result p0

    if-lez p0, :cond_13

    .line 43
    invoke-virtual {p1, v0, p2}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto :goto_5

    .line 44
    :cond_13
    invoke-virtual {p1, v0, v8}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    :goto_5
    return v4

    .line 45
    :cond_14
    invoke-virtual {p0, v1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 46
    :cond_15
    sget-object v5, Lf2/r;->e:Ljava/lang/Character;

    if-ne v6, v5, :cond_1d

    .line 47
    :cond_16
    :goto_6
    invoke-virtual {p0}, Lf2/s;->l()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    if-nez v0, :cond_17

    return v4

    .line 48
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unclosed tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 49
    :cond_18
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1a

    .line 50
    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_16

    if-eqz p3, :cond_19

    goto :goto_7

    .line 52
    :cond_19
    invoke-static {v5}, Lf2/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_7
    invoke-virtual {p2, v2, v1}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto :goto_6

    .line 53
    :cond_1a
    sget-object v5, Lf2/r;->f:Ljava/lang/Character;

    if-ne v1, v5, :cond_16

    .line 54
    invoke-static {p0, p2, v0, p3}, Lh2/a;->a(Lf2/s;Lf2/l;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 55
    invoke-virtual {p2}, La2/j;->size()I

    move-result p0

    if-nez p0, :cond_1b

    .line 56
    invoke-virtual {p1, v0, v8}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto :goto_8

    .line 57
    :cond_1b
    invoke-virtual {p2}, La2/j;->size()I

    move-result p0

    if-ne p0, v3, :cond_1c

    invoke-virtual {p2, v2}, La2/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 58
    invoke-virtual {p2, v2}, La2/j;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    goto :goto_8

    .line 59
    :cond_1c
    invoke-virtual {p1, v0, p2}, Lf2/l;->D(Ljava/lang/String;Ljava/lang/Object;)Lf2/l;

    :goto_8
    return v4

    .line 60
    :cond_1d
    invoke-virtual {p0, v1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0

    .line 61
    :cond_1e
    invoke-virtual {p0, v1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p0

    throw p0
.end method

.method public static b(Lf2/l;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    new-instance v0, Lf2/s;

    invoke-virtual {p0}, Lf2/l;->h()Lf2/f;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lf2/s;-><init>(Ljava/lang/CharSequence;Lf2/f;)V

    .line 2
    :goto_0
    invoke-virtual {v0}, Lf2/o;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "<"

    invoke-virtual {v0, p1}, Lf2/s;->p(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-static {v0, p0, p1, p2}, Lh2/a;->a(Lf2/s;Lf2/l;Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method
