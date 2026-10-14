.class public Lb2/f;
.super Ljava/lang/Object;
.source "StrFormatter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "{}"

    invoke-static {p0, v0, p1}, Lb2/f;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {p0}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lb2/c;->q(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p2}, Le2/c;->u([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 5
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_5

    .line 6
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    if-nez v5, :cond_1

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {v2, p0, v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v7, 0x1

    if-lez v6, :cond_4

    add-int/lit8 v8, v6, -0x1

    .line 9
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_4

    if-le v6, v7, :cond_3

    add-int/lit8 v9, v6, -0x2

    .line 10
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_3

    .line 11
    invoke-virtual {v2, p0, v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 12
    aget-object v5, p2, v4

    invoke-static {v5}, Le2/b0;->l0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 13
    invoke-virtual {v2, p0, v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {v2, p0, v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 16
    aget-object v5, p2, v4

    invoke-static {v5}, Le2/b0;->l0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/2addr v6, v1

    :goto_2
    move v5, v6

    add-int/2addr v4, v7

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {v2, p0, v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_6
    :goto_3
    return-object p0
.end method
