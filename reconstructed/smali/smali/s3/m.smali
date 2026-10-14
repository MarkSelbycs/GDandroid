.class public Ls3/m;
.super Ls3/l;
.source "Strings.kt"


# direct methods
.method public static final A(Ljava/lang/CharSequence;[CIZ)I
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1
    array-length v1, p1

    if-ne v1, v0, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p1}, Lb3/k;->q([C)C

    move-result p1

    .line 3
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance v1, Lp3/h;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lp3/m;->a(II)I

    move-result p2

    invoke-static {p0}, Ls3/m;->t(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-direct {v1, p2, v3}, Lp3/h;-><init>(II)V

    invoke-virtual {v1}, Lp3/f;->d()Lb3/c0;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lb3/c0;->a()I

    move-result v1

    .line 5
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 6
    array-length v4, p1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-char v6, p1, v5

    .line 7
    invoke-static {v6, v3, p3}, Ls3/b;->d(CCZ)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_1

    return v1

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public static final B(Ljava/lang/CharSequence;CIZ)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 3
    invoke-static {p0, v0, p2, p3}, Ls3/m;->F(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final C(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 3
    invoke-static/range {v0 .. v5}, Ls3/m;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static synthetic D(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-static {p0}, Ls3/m;->t(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ls3/m;->B(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic E(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-static {p0}, Ls3/m;->t(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ls3/m;->C(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static final F(Ljava/lang/CharSequence;[CIZ)I
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 1
    array-length v1, p1

    if-ne v1, v0, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p1}, Lb3/k;->q([C)C

    move-result p1

    .line 3
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-static {p0}, Ls3/m;->t(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p2, v1}, Lp3/m;->c(II)I

    move-result p2

    :goto_0
    const/4 v1, -0x1

    if-ge v1, p2, :cond_4

    .line 5
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 6
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-char v5, p1, v4

    .line 7
    invoke-static {v5, v1, p3}, Ls3/b;->d(CCZ)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static final G(Ljava/lang/CharSequence;)Lr3/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lr3/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\r\n"

    const-string v1, "\n"

    const-string v2, "\r"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls3/m;->N(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Lr3/b;

    move-result-object p0

    return-object p0
.end method

.method public static final H(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ls3/m;->G(Ljava/lang/CharSequence;)Lr3/b;

    move-result-object p0

    invoke-static {p0}, Lr3/g;->e(Lr3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final I(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lr3/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "IZI)",
            "Lr3/b<",
            "Lp3/h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Ls3/m;->L(I)V

    .line 2
    invoke-static {p1}, Lb3/j;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    new-instance v0, Ls3/c;

    new-instance v1, Ls3/m$a;

    invoke-direct {v1, p1, p3}, Ls3/m$a;-><init>(Ljava/util/List;Z)V

    invoke-direct {v0, p0, p2, p4, v1}, Ls3/c;-><init>(Ljava/lang/CharSequence;IILl3/p;)V

    return-object v0
.end method

.method public static synthetic J(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lr3/b;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Ls3/m;->I(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lr3/b;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p3, :cond_3

    if-ltz p1, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    add-int v2, p1, v1

    .line 2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Ls3/b;->d(CCZ)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static final L(I)V
    .locals 2

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Limit must be non-negative, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final M(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lr3/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Lr3/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Ls3/m;->J(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lr3/b;

    move-result-object p1

    new-instance p2, Ls3/m$b;

    invoke-direct {p2, p0}, Ls3/m$b;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2}, Lr3/g;->c(Lr3/b;Ll3/l;)Lr3/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Lr3/b;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ls3/m;->M(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lr3/b;

    move-result-object p0

    return-object p0
.end method

.method public static final O(Ljava/lang/CharSequence;Lp3/h;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lp3/h;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lp3/h;->g()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final P(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 1
    invoke-static/range {v1 .. v6}, Ls3/m;->y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static final Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-static/range {v1 .. v6}, Ls3/m;->z(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static synthetic R(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ls3/m;->P(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ls3/m;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final T(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 1
    invoke-static/range {v1 .. v6}, Ls3/m;->D(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static synthetic U(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ls3/m;->T(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final V(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    .line 1
    invoke-static/range {v1 .. v6}, Ls3/m;->y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static final W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-static/range {v1 .. v6}, Ls3/m;->z(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lm3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static synthetic X(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ls3/m;->V(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ls3/m;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final Z(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v2, v0, :cond_4

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v0

    .line 2
    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 3
    invoke-static {v4}, Ls3/a;->c(C)Z

    move-result v4

    if-nez v3, :cond_2

    if-nez v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/2addr v0, v1

    .line 4
    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)La3/h;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ls3/m;->r(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)La3/h;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p2

    invoke-static/range {v3 .. v8}, Ls3/m;->z(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-static/range {v3 .. v10}, Ls3/m;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static synthetic q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Ls3/m;->p(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static final r(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)La3/h;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;IZZ)",
            "La3/h<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2
    invoke-static {p1}, Lb3/w;->w(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    if-nez p4, :cond_0

    .line 3
    invoke-static/range {v1 .. v6}, Ls3/m;->z(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static/range {v1 .. v6}, Ls3/m;->E(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    :goto_0
    if-gez p0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, La3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)La3/h;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    if-nez p4, :cond_3

    .line 5
    new-instance p4, Lp3/h;

    invoke-static {p2, v1}, Lp3/m;->a(II)I

    move-result p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p4, p2, v1}, Lp3/h;-><init>(II)V

    goto :goto_2

    :cond_3
    invoke-static {p0}, Ls3/m;->t(Ljava/lang/CharSequence;)I

    move-result p4

    invoke-static {p2, p4}, Lp3/m;->c(II)I

    move-result p2

    invoke-static {p2, v1}, Lp3/m;->g(II)Lp3/f;

    move-result-object p4

    .line 6
    :goto_2
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 7
    invoke-virtual {p4}, Lp3/f;->a()I

    move-result p2

    invoke-virtual {p4}, Lp3/f;->b()I

    move-result v1

    invoke-virtual {p4}, Lp3/f;->c()I

    move-result p4

    if-lez p4, :cond_4

    if-le p2, v1, :cond_5

    :cond_4
    if-gez p4, :cond_f

    if-gt v1, p2, :cond_f

    .line 8
    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 9
    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Ls3/l;->j(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_7
    move-object v9, v0

    :goto_4
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v9}, La3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)La3/h;

    move-result-object p0

    return-object p0

    :cond_8
    if-eq p2, v1, :cond_f

    add-int/2addr p2, p4

    goto :goto_3

    .line 11
    :cond_9
    invoke-virtual {p4}, Lp3/f;->a()I

    move-result p2

    invoke-virtual {p4}, Lp3/f;->b()I

    move-result v1

    invoke-virtual {p4}, Lp3/f;->c()I

    move-result p4

    if-lez p4, :cond_a

    if-le p2, v1, :cond_b

    :cond_a
    if-gez p4, :cond_f

    if-gt v1, p2, :cond_f

    .line 12
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move-object v4, p0

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Ls3/m;->K(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_d
    move-object v9, v0

    :goto_6
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_e

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v9}, La3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)La3/h;

    move-result-object p0

    return-object p0

    :cond_e
    if-eq p2, v1, :cond_f

    add-int/2addr p2, p4

    goto :goto_5

    :cond_f
    return-object v0
.end method

.method public static final s(Ljava/lang/CharSequence;)Lp3/h;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lp3/h;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lp3/h;-><init>(II)V

    return-object v0
.end method

.method public static final t(Ljava/lang/CharSequence;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final u(Ljava/lang/CharSequence;CIZ)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    .line 3
    invoke-static {p0, v0, p2, p3}, Ls3/m;->A(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final v(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Ls3/m;->x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 1
    new-instance p5, Lp3/h;

    invoke-static {p2, v0}, Lp3/m;->a(II)I

    move-result p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Lp3/m;->c(II)I

    move-result p3

    invoke-direct {p5, p2, p3}, Lp3/h;-><init>(II)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Ls3/m;->t(Ljava/lang/CharSequence;)I

    move-result p5

    invoke-static {p2, p5}, Lp3/m;->c(II)I

    move-result p2

    invoke-static {p3, v0}, Lp3/m;->a(II)I

    move-result p3

    invoke-static {p2, p3}, Lp3/m;->g(II)Lp3/f;

    move-result-object p5

    .line 3
    :goto_0
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_4

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p5}, Lp3/f;->a()I

    move-result p2

    invoke-virtual {p5}, Lp3/f;->b()I

    move-result p3

    invoke-virtual {p5}, Lp3/f;->c()I

    move-result p5

    if-lez p5, :cond_1

    if-le p2, p3, :cond_2

    :cond_1
    if-gez p5, :cond_8

    if-gt p3, p2, :cond_8

    .line 5
    :cond_2
    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Ls3/l;->j(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return p2

    :cond_3
    if-eq p2, p3, :cond_8

    add-int/2addr p2, p5

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {p5}, Lp3/f;->a()I

    move-result p2

    invoke-virtual {p5}, Lp3/f;->b()I

    move-result p3

    invoke-virtual {p5}, Lp3/f;->c()I

    move-result p5

    if-lez p5, :cond_5

    if-le p2, p3, :cond_6

    :cond_5
    if-gez p5, :cond_8

    if-gt p3, p2, :cond_8

    :cond_6
    :goto_2
    const/4 v1, 0x0

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p1

    move-object v2, p0

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Ls3/m;->K(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    return p2

    :cond_7
    if-eq p2, p3, :cond_8

    add-int/2addr p2, p5

    goto :goto_2

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Ls3/m;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    return p0
.end method

.method public static synthetic y(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ls3/m;->u(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic z(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ls3/m;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method
