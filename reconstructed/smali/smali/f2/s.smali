.class public Lf2/s;
.super Lf2/o;
.source "XMLTokener.java"


# static fields
.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lf2/s;->i:Ljava/util/HashMap;

    .line 2
    sget-object v1, Lf2/r;->a:Ljava/lang/Character;

    const-string v2, "amp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lf2/r;->b:Ljava/lang/Character;

    const-string v2, "apos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lf2/r;->e:Ljava/lang/Character;

    const-string v2, "gt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lf2/r;->f:Ljava/lang/Character;

    const-string v2, "lt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lf2/r;->h:Ljava/lang/Character;

    const-string v2, "quot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lf2/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lf2/o;-><init>(Ljava/lang/CharSequence;Lf2/f;)V

    return-void
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 6
    :goto_1
    new-instance v2, Ljava/lang/String;

    new-array v3, v1, [I

    aput p0, v3, v0

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([III)V

    return-object v2

    .line 7
    :cond_3
    sget-object v0, Lf2/s;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-nez v0, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public k()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v1

    .line 3
    invoke-virtual {p0}, Lf2/o;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ltz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Unclosed CDATA"

    .line 9
    invoke-virtual {p0, v0}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object v0

    throw v0
.end method

.method public l()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 3
    sget-object v0, Lf2/r;->f:Ljava/lang/Character;

    return-object v0

    .line 4
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eq v0, v1, :cond_5

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0x26

    if-ne v0, v3, :cond_4

    .line 5
    invoke-virtual {p0, v0}, Lf2/s;->m(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v0

    goto :goto_0

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lf2/o;->a()V

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(C)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lf2/s;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing \';\' in XML entity: &"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object p1

    throw p1

    .line 6
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public n()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_7

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_4

    const/16 v3, 0x21

    if-eq v0, v3, :cond_3

    const/16 v4, 0x22

    if-eq v0, v4, :cond_5

    packed-switch v0, :pswitch_data_0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 6
    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lf2/o;->a()V

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 8
    :pswitch_1
    sget-object v0, Lf2/r;->g:Ljava/lang/Character;

    return-object v0

    .line 9
    :pswitch_2
    sget-object v0, Lf2/r;->e:Ljava/lang/Character;

    return-object v0

    .line 10
    :pswitch_3
    sget-object v0, Lf2/r;->d:Ljava/lang/Character;

    return-object v0

    .line 11
    :pswitch_4
    sget-object v0, Lf2/r;->f:Ljava/lang/Character;

    return-object v0

    .line 12
    :cond_3
    sget-object v0, Lf2/r;->c:Ljava/lang/Character;

    return-object v0

    .line 13
    :cond_4
    sget-object v0, Lf2/r;->i:Ljava/lang/Character;

    return-object v0

    .line 14
    :cond_5
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v1

    if-eqz v1, :cond_6

    if-ne v1, v0, :cond_5

    .line 15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_6
    const-string v0, "Unterminated string"

    .line 16
    invoke-virtual {p0, v0}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object v0

    throw v0

    :cond_7
    const-string v0, "Misshaped meta tag"

    .line 17
    invoke-virtual {p0, v0}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public o()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_b

    const/16 v1, 0x27

    if-eq v0, v1, :cond_7

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_6

    const/16 v3, 0x21

    if-eq v0, v3, :cond_5

    const/16 v4, 0x22

    if-eq v0, v4, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v0

    .line 6
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v6, 0x5b

    if-eq v0, v6, :cond_2

    const/16 v6, 0x5d

    if-eq v0, v6, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 8
    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lf2/o;->a()V

    .line 9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :pswitch_1
    const-string v0, "Bad character in a name"

    .line 10
    invoke-virtual {p0, v0}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object v0

    throw v0

    .line 11
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_2
    sget-object v0, Lf2/r;->g:Ljava/lang/Character;

    return-object v0

    .line 13
    :pswitch_3
    sget-object v0, Lf2/r;->e:Ljava/lang/Character;

    return-object v0

    .line 14
    :pswitch_4
    sget-object v0, Lf2/r;->d:Ljava/lang/Character;

    return-object v0

    :pswitch_5
    const-string v0, "Misplaced \'<\'"

    .line 15
    invoke-virtual {p0, v0}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object v0

    throw v0

    .line 16
    :cond_5
    sget-object v0, Lf2/r;->c:Ljava/lang/Character;

    return-object v0

    .line 17
    :cond_6
    sget-object v0, Lf2/r;->i:Ljava/lang/Character;

    return-object v0

    .line 18
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    :goto_1
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v2

    if-eqz v2, :cond_a

    if-ne v2, v0, :cond_8

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/16 v3, 0x26

    if-ne v2, v3, :cond_9

    .line 21
    invoke-virtual {p0, v2}, Lf2/s;->m(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 22
    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    const-string v0, "Unterminated string"

    .line 23
    invoke-virtual {p0, v0}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object v0

    throw v0

    :cond_b
    const-string v0, "Misshaped element"

    .line 24
    invoke-virtual {p0, v0}, Lf2/o;->j(Ljava/lang/String;)Lf2/h;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public p(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v4

    if-nez v4, :cond_0

    return v2

    .line 4
    :cond_0
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_1
    move v4, v2

    move v5, v3

    :goto_2
    const/4 v6, 0x1

    if-ge v4, v0, :cond_5

    .line 5
    aget-char v7, v1, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v0, :cond_4

    sub-int/2addr v5, v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v6

    :goto_3
    if-eqz v4, :cond_6

    return v6

    .line 6
    :cond_6
    invoke-virtual {p0}, Lf2/o;->e()C

    move-result v4

    if-nez v4, :cond_7

    return v2

    .line 7
    :cond_7
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_2

    sub-int/2addr v3, v0

    goto :goto_1
.end method
