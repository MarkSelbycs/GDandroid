.class public Lb2/d;
.super Ljava/lang/Object;
.source "NamingCase.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x5f

    invoke-static {p0, v0}, Lb2/d;->b(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lb2/c;->b(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    .line 5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 6
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static c(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2
    new-instance v2, Lb2/e;

    invoke-direct {v2}, Lb2/e;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    .line 3
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 4
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    .line 5
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    .line 6
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v0

    :goto_2
    if-eqz v5, :cond_7

    .line 7
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v7

    if-ne p1, v7, :cond_4

    if-eqz v6, :cond_3

    .line 8
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 9
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 11
    invoke-virtual {v2, p1}, Lb2/e;->b(C)Lb2/e;

    if-eqz v6, :cond_5

    .line 12
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Le2/f;->e(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 13
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_9

    .line 14
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 15
    invoke-virtual {v2, p1}, Lb2/e;->b(C)Lb2/e;

    .line 16
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    .line 17
    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 18
    :cond_8
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 19
    :cond_9
    :goto_3
    invoke-virtual {v2, v4}, Lb2/e;->b(C)Lb2/e;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 20
    :cond_a
    invoke-virtual {v2}, Lb2/e;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x5f

    invoke-static {p0, v0}, Lb2/d;->c(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
