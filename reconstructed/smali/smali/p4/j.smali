.class public Lp4/j;
.super Ljava/lang/Object;
.source "ByteArrayWindow.java"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/j;->a:[B

    .line 3
    iput p2, p0, Lp4/j;->b:I

    .line 4
    iput p3, p0, Lp4/j;->c:I

    return-void
.end method


# virtual methods
.method public a(Lp4/j;I)Z
    .locals 5

    .line 1
    iget v0, p1, Lp4/j;->c:I

    const/4 v1, 0x0

    if-lt v0, p2, :cond_3

    iget v0, p0, Lp4/j;->c:I

    if-ge v0, p2, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 2
    iget-object v2, p0, Lp4/j;->a:[B

    iget v3, p0, Lp4/j;->b:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p1, Lp4/j;->a:[B

    iget v4, p1, Lp4/j;->b:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lp4/j;->b:I

    return v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lp4/j;->a:[B

    return-object v0
.end method

.method public d(IB)V
    .locals 2

    .line 1
    iget v0, p0, Lp4/j;->c:I

    const-string v1, ""

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lp4/j;->a:[B

    iget v1, p0, Lp4/j;->b:I

    add-int/2addr p1, v1

    aput-byte p2, v0, p1

    return-void

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lp4/j;->c:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lp4/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lp4/j;

    .line 3
    iget v0, p1, Lp4/j;->c:I

    iget v2, p0, Lp4/j;->c:I

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    iget v2, p0, Lp4/j;->c:I

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p1, Lp4/j;->a:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lp4/j;->a:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method
