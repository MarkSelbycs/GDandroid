.class public Lb2/c;
.super Ljava/lang/Object;
.source "CharSequenceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p0, v0}, Lb2/c;->S(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    .line 5
    :cond_2
    :goto_0
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    if-gtz p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    .line 3
    invoke-static {p2}, Lb2/c;->t(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_2

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move p1, v2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CIZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lb2/h;->c(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static D(Ljava/lang/CharSequence;C)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lb2/c;->E(Ljava/lang/CharSequence;CI)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static E(Ljava/lang/CharSequence;CI)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Text must be not null!"

    .line 1
    invoke-static {p0, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, v0, v0}, Lb2/h;->f(Ljava/lang/CharSequence;CIZZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/lang/CharSequence;C)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lb2/c;->G(Ljava/lang/CharSequence;CI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/CharSequence;CI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "CI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, v0}, Lb2/c;->C(Ljava/lang/CharSequence;CIZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static H(Ljava/lang/CharSequence;C)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lb2/c;->J(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result p0

    return p0
.end method

.method public static J(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    .line 3
    invoke-static {p0, p1, p2}, Lb2/c;->h(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    return v1

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    return v1

    :cond_5
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    return v0
.end method

.method public static K(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lb2/c;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static L(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static M(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    if-gez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    if-gez p2, :cond_3

    add-int/2addr p2, v0

    if-gez p2, :cond_4

    goto :goto_1

    :cond_3
    if-le p2, v0, :cond_4

    :goto_1
    move p2, v0

    :cond_4
    if-ge p2, p1, :cond_5

    move v1, p2

    move p2, p1

    move p1, v1

    :cond_5
    if-ne p1, p2, :cond_6

    const-string p0, ""

    return-object p0

    .line 4
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static N(Ljava/lang/CharSequence;CZ)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 2
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    :goto_0
    const/4 p2, -0x1

    if-ne p2, p1, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    if-nez p1, :cond_2

    return-object v1

    .line 2
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    :goto_0
    const/4 v2, -0x1

    if-eq v2, p2, :cond_5

    .line 5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p0, p2, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/2addr p2, p0

    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static P(Ljava/lang/CharSequence;CZ)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 2
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    :goto_0
    const/4 p2, -0x1

    if-ne p2, p1, :cond_3

    return-object p0

    :cond_3
    if-nez p1, :cond_4

    return-object v1

    :cond_4
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    :goto_0
    const/4 p2, -0x1

    if-ne p2, p1, :cond_3

    return-object p0

    :cond_3
    if-nez p1, :cond_4

    return-object v1

    :cond_4
    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_2

    .line 7
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static R(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static S(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lb2/c;->M(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static T(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lb2/c;->M(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lb2/d;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lb2/d;->d(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static W(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lb2/c;->X(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static X(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lb2/b;->a:Lb2/b;

    invoke-static {p0, p1, v0}, Lb2/c;->Y(Ljava/lang/CharSequence;ILjava/util/function/Predicate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static Y(Ljava/lang/CharSequence;ILjava/util/function/Predicate;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_3

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz p1, :cond_1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    move p1, v0

    :goto_1
    if-ge v1, p1, :cond_3

    add-int/lit8 v2, p1, -0x1

    .line 3
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    move p1, v0

    :cond_3
    if-gtz v1, :cond_5

    if-ge p1, v0, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 5
    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static Z(Ljava/lang/CharSequence;CC)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    if-ne p1, p2, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-static {p0, v0, p1}, Lb2/c;->M(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a0(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lb2/c;->T(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/CharSequence;C)Z
    .locals 0

    invoke-static {p0, p1}, Lb2/c;->k(Ljava/lang/CharSequence;C)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b0(Ljava/lang/CharSequence;)[B
    .locals 1

    sget-object v0, Le2/g;->b:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lb2/c;->a(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs d(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0, p1}, Lb2/c;->j(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lb2/c;->o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public static f(Ljava/lang/CharSequence;C)I
    .locals 4

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne p1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lb2/c;->h(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static h(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    return v0

    :cond_2
    if-eqz p2, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static varargs i(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Le2/c;->u([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lb2/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs j(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Le2/c;->u([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 3
    invoke-static {p0, v3}, Lb2/c;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static k(Ljava/lang/CharSequence;C)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lb2/c;->l(Ljava/lang/CharSequence;CI)I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/CharSequence;CI)I
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, -0x1

    .line 3
    invoke-static {p0, p1, p2, v0}, Lb2/c;->m(Ljava/lang/CharSequence;CII)I

    move-result p0

    return p0
.end method

.method public static m(Ljava/lang/CharSequence;CII)I
    .locals 1

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    new-instance v0, Lc2/a;

    invoke-direct {v0, p1}, Lc2/a;-><init>(C)V

    invoke-virtual {v0, p0}, Lc2/d;->h(Ljava/lang/CharSequence;)Lc2/d;

    move-result-object p0

    invoke-virtual {p0, p3}, Lc2/d;->f(I)Lc2/d;

    move-result-object p0

    invoke-interface {p0, p2}, Lc2/b;->c(I)I

    move-result p0

    return p0
.end method

.method public static n(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .locals 1

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lc2/c;

    invoke-direct {v0, p1, p3}, Lc2/c;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, p0}, Lc2/d;->h(Ljava/lang/CharSequence;)Lc2/d;

    move-result-object p0

    invoke-interface {p0, p2}, Lc2/b;->c(I)I

    move-result p0

    return p0

    .line 3
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lb2/c;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static o(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lb2/c;->p(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static p(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lb2/c;->n(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result p0

    return p0
.end method

.method public static q(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Le2/f;->b(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static r(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static s(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static t(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static u(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 6

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, p5

    move v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static v(Ljava/lang/CharSequence;CC)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-ne v1, p1, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-ne p0, p2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public static w(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static varargs x(Ljava/lang/CharSequence;[C)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_4

    .line 1
    invoke-static {p1}, Le2/q;->d([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 5
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 6
    invoke-static {p1, v3}, Le2/q;->a([CC)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_4
    :goto_1
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    if-le v1, p1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lb2/c;->r(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p0, p1}, Lb2/c;->T(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    .line 5
    :cond_2
    :goto_0
    invoke-static {p0}, Lb2/c;->L(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
