.class public Lt4/f;
.super Ljava/lang/Object;
.source "SimpleOIDTextFormat.java"

# interfaces
.implements Lt4/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d([I)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2e

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    .line 3
    new-array p0, p0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    move v5, v4

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\'"

    if-nez v6, :cond_1

    .line 6
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 7
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 8
    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    new-instance v7, Lr4/k;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lr4/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Lr4/k;->k0(Z)Lr4/j;

    move-result-object v6

    .line 12
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    array-length v8, p0

    add-int/2addr v7, v8

    invoke-virtual {v6}, Lr4/j;->U()I

    move-result v8

    add-int/2addr v7, v8

    new-array v7, v7, [I

    .line 13
    invoke-static {p0, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-virtual {v6}, Lr4/j;->H()[I

    move-result-object p0

    invoke-virtual {v6}, Lr4/j;->U()I

    move-result v8

    invoke-static {p0, v4, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    invoke-virtual {v6}, Lr4/j;->U()I

    move-result p0

    add-int/2addr v5, p0

    move-object v6, v3

    move-object p0, v7

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v8, v5, 0x1

    .line 18
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-int v7, v9

    aput v7, p0, v5

    move v5, v8

    goto :goto_0

    .line 19
    :cond_4
    array-length v0, p0

    if-ge v5, v0, :cond_5

    .line 20
    new-array v0, v5, [I

    .line 21
    invoke-static {p0, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :cond_5
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-static {p1}, Lt4/f;->e(Ljava/lang/String;)[I

    move-result-object p1

    return-object p1
.end method

.method public b([I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lt4/f;->d([I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c([I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lt4/f;->b([I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
