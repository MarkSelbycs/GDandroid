.class public Lb2/e;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;


# instance fields
.field public a:[C

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lb2/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [C

    iput-object p1, p0, Lb2/e;->a:[C

    return-void
.end method


# virtual methods
.method public D()Lb2/e;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb2/e;->b:I

    return-object p0
.end method

.method public F(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb2/e;->a:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public H(Z)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lb2/e;->b:I

    if-lez v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lb2/e;->a:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lb2/e;->D()Lb2/e;

    :cond_0
    return-object v1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lb2/e;->b(C)Lb2/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lb2/e;->c(Ljava/lang/CharSequence;)Lb2/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lb2/e;->e(Ljava/lang/CharSequence;II)Lb2/e;

    move-result-object p1

    return-object p1
.end method

.method public b(C)Lb2/e;
    .locals 1

    iget v0, p0, Lb2/e;->b:I

    invoke-virtual {p0, v0, p1}, Lb2/e;->q(IC)Lb2/e;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/CharSequence;)Lb2/e;
    .locals 1

    iget v0, p0, Lb2/e;->b:I

    invoke-virtual {p0, v0, p1}, Lb2/e;->u(ILjava/lang/CharSequence;)Lb2/e;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    if-gez p1, :cond_0

    .line 1
    iget v0, p0, Lb2/e;->b:I

    add-int/2addr p1, v0

    :cond_0
    if-ltz p1, :cond_1

    .line 2
    iget v0, p0, Lb2/e;->b:I

    if-gt p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lb2/e;->a:[C

    aget-char p1, v0, p1

    return p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public e(Ljava/lang/CharSequence;II)Lb2/e;
    .locals 1

    iget v0, p0, Lb2/e;->b:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lb2/e;->x(ILjava/lang/CharSequence;II)Lb2/e;

    move-result-object p1

    return-object p1
.end method

.method public final f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb2/e;->a:[C

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lb2/e;->h(I)V

    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb2/e;->a:[C

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    sub-int v2, v1, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ltz p1, :cond_1

    .line 2
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lb2/e;->a:[C

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    const-string v0, "Capacity is too long and max than Integer.MAX"

    invoke-direct {p1, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(II[CI)Lb2/e;
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    if-gez p2, :cond_1

    :goto_0
    move p2, v0

    goto :goto_1

    .line 1
    :cond_1
    iget v0, p0, Lb2/e;->b:I

    if-le p2, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-gt p1, p2, :cond_3

    .line 2
    iget-object v0, p0, Lb2/e;->a:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "srcBegin > srcEnd"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lb2/e;->b:I

    return v0
.end method

.method public q(IC)Lb2/e;
    .locals 2

    if-gez p1, :cond_0

    .line 1
    iget v0, p0, Lb2/e;->b:I

    add-int/2addr p1, v0

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lb2/e;->y(II)V

    .line 3
    iget-object v1, p0, Lb2/e;->a:[C

    aput-char p2, v1, p1

    .line 4
    iget p2, p0, Lb2/e;->b:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lb2/e;->b:I

    return-object p0

    .line 5
    :cond_1
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/e;->F(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb2/e;->H(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(ILjava/lang/CharSequence;)Lb2/e;
    .locals 5

    if-gez p1, :cond_0

    .line 1
    iget v0, p0, Lb2/e;->b:I

    add-int/2addr p1, v0

    :cond_0
    if-ltz p1, :cond_7

    if-nez p2, :cond_1

    const-string p2, ""

    .line 2
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lb2/e;->y(II)V

    .line 4
    instance-of v1, p2, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lb2/e;->a:[C

    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 6
    :cond_2
    instance-of v1, p2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    .line 7
    check-cast p2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb2/e;->a:[C

    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_1

    .line 8
    :cond_3
    instance-of v1, p2, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_4

    .line 9
    check-cast p2, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lb2/e;->a:[C

    invoke-virtual {p2, v2, v0, v1, p1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_1

    .line 10
    :cond_4
    instance-of v1, p2, Lb2/e;

    if-eqz v1, :cond_5

    .line 11
    check-cast p2, Lb2/e;

    iget-object v1, p0, Lb2/e;->a:[C

    invoke-virtual {p2, v2, v0, v1, p1}, Lb2/e;->j(II[CI)Lb2/e;

    goto :goto_1

    .line 12
    :cond_5
    iget v1, p0, Lb2/e;->b:I

    :goto_0
    if-ge v2, v0, :cond_6

    .line 13
    iget-object v3, p0, Lb2/e;->a:[C

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_6
    :goto_1
    iget p2, p0, Lb2/e;->b:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lb2/e;->b:I

    return-object p0

    .line 15
    :cond_7
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public x(ILjava/lang/CharSequence;II)Lb2/e;
    .locals 4

    if-nez p2, :cond_0

    const-string p2, "null"

    .line 1
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    return-object p0

    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    :cond_2
    if-le p4, v0, :cond_3

    move p4, v0

    :cond_3
    if-lt p3, p4, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_5

    .line 2
    iget v0, p0, Lb2/e;->b:I

    add-int/2addr p1, v0

    :cond_5
    if-ltz p1, :cond_7

    sub-int v0, p4, p3

    .line 3
    invoke-virtual {p0, p1, v0}, Lb2/e;->y(II)V

    .line 4
    iget v1, p0, Lb2/e;->b:I

    :goto_0
    if-ge p3, p4, :cond_6

    .line 5
    iget-object v2, p0, Lb2/e;->a:[C

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v2, v1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_6
    iget p2, p0, Lb2/e;->b:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lb2/e;->b:I

    return-object p0

    .line 7
    :cond_7
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public final y(II)V
    .locals 2

    .line 1
    iget v0, p0, Lb2/e;->b:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lb2/e;->f(I)V

    .line 2
    iget v0, p0, Lb2/e;->b:I

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v1, p0, Lb2/e;->a:[C

    add-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    .line 4
    iget-object p2, p0, Lb2/e;->a:[C

    const/16 v1, 0x20

    invoke-static {p2, v0, p1, v1}, Ljava/util/Arrays;->fill([CIIC)V

    :cond_1
    :goto_0
    return-void
.end method
