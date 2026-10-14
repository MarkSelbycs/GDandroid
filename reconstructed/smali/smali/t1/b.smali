.class public Lt1/b;
.super Ljava/lang/Object;
.source "FastByteBuffer.java"


# instance fields
.field public a:[[B

.field public b:I

.field public c:I

.field public d:[B

.field public e:I

.field public f:I

.field public final g:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [[B

    .line 2
    iput-object v0, p0, Lt1/b;->a:[[B

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lt1/b;->c:I

    if-gtz p1, :cond_0

    const/16 p1, 0x400

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lt1/b;->g:I

    return-void
.end method


# virtual methods
.method public a(B)Lt1/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/b;->d:[B

    if-eqz v0, :cond_0

    iget v1, p0, Lt1/b;->e:I

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lt1/b;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lt1/b;->c(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lt1/b;->d:[B

    iget v1, p0, Lt1/b;->e:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iput v1, p0, Lt1/b;->e:I

    .line 5
    iget p1, p0, Lt1/b;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt1/b;->f:I

    return-object p0
.end method

.method public b([BII)Lt1/b;
    .locals 5

    add-int v0, p2, p3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    .line 1
    array-length p2, p1

    if-gt v0, p2, :cond_3

    if-nez p3, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget p2, p0, Lt1/b;->f:I

    add-int/2addr p2, p3

    .line 3
    iget-object v1, p0, Lt1/b;->d:[B

    if-eqz v1, :cond_1

    .line 4
    array-length v1, v1

    iget v2, p0, Lt1/b;->e:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v0, p3

    .line 5
    iget-object v3, p0, Lt1/b;->d:[B

    iget v4, p0, Lt1/b;->e:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v1

    .line 6
    iget v2, p0, Lt1/b;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lt1/b;->e:I

    .line 7
    iget v2, p0, Lt1/b;->f:I

    add-int/2addr v2, v1

    iput v2, p0, Lt1/b;->f:I

    :cond_1
    if-lez p3, :cond_2

    .line 8
    invoke-virtual {p0, p2}, Lt1/b;->c(I)V

    .line 9
    iget-object p2, p0, Lt1/b;->d:[B

    array-length p2, p2

    iget v1, p0, Lt1/b;->e:I

    sub-int/2addr p2, v1

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr v0, p3

    .line 10
    iget-object p3, p0, Lt1/b;->d:[B

    iget v1, p0, Lt1/b;->e:I

    invoke-static {p1, v0, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget p1, p0, Lt1/b;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lt1/b;->e:I

    .line 12
    iget p1, p0, Lt1/b;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Lt1/b;->f:I

    :cond_2
    return-object p0

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget v0, p0, Lt1/b;->f:I

    sub-int/2addr p1, v0

    .line 2
    iget v0, p0, Lt1/b;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    iget v0, p0, Lt1/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt1/b;->c:I

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lt1/b;->d:[B

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lt1/b;->e:I

    .line 6
    iget-object v1, p0, Lt1/b;->a:[[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 7
    array-length v0, v1

    shl-int/lit8 v0, v0, 0x1

    .line 8
    new-array v0, v0, [[B

    .line 9
    array-length v2, v1

    invoke-static {v1, p1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iput-object v0, p0, Lt1/b;->a:[[B

    .line 11
    :cond_0
    iget-object p1, p0, Lt1/b;->a:[[B

    iget v0, p0, Lt1/b;->c:I

    iget-object v1, p0, Lt1/b;->d:[B

    aput-object v1, p1, v0

    .line 12
    iget p1, p0, Lt1/b;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lt1/b;->b:I

    return-void
.end method

.method public d()[B
    .locals 6

    .line 1
    iget v0, p0, Lt1/b;->f:I

    new-array v0, v0, [B

    .line 2
    iget v1, p0, Lt1/b;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 3
    :goto_0
    iget v4, p0, Lt1/b;->c:I

    if-ge v2, v4, :cond_1

    .line 4
    iget-object v4, p0, Lt1/b;->a:[[B

    aget-object v5, v4, v2

    array-length v5, v5

    .line 5
    aget-object v4, v4, v2

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lt1/b;->a:[[B

    aget-object v2, v2, v4

    iget v4, p0, Lt1/b;->e:I

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
