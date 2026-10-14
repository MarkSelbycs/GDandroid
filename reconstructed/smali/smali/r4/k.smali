.class public Lr4/k;
.super Lr4/a;
.source "OctetString.java"


# instance fields
.field public d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/a;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lr4/k;->d:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lr4/a;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 9
    iput-object v0, p0, Lr4/k;->d:[B

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lr4/k;->d:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lr4/k;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lr4/a;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 5
    iput-object v1, p0, Lr4/k;->d:[B

    .line 6
    new-array v1, p3, [B

    iput-object v1, p0, Lr4/k;->d:[B

    .line 7
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static P([B)Lr4/k;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lr4/k;

    invoke-direct {v0, p0}, Lr4/k;-><init>([B)V

    return-object v0
.end method

.method public static T(Ljava/lang/String;)Lr4/k;
    .locals 1

    const/16 v0, 0x3a

    invoke-static {p0, v0}, Lr4/k;->U(Ljava/lang/String;C)Lr4/k;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/lang/String;C)Lr4/k;
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lr4/k;->V(Ljava/lang/String;CI)Lr4/k;

    move-result-object p0

    return-object p0
.end method

.method public static V(Ljava/lang/String;CI)Lr4/k;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [B

    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lr4/k;

    invoke-direct {p1, p0}, Lr4/k;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public H(Lr4/k;)V
    .locals 0

    invoke-virtual {p1}, Lr4/k;->a0()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lr4/k;->I([B)V

    return-void
.end method

.method public I([B)V
    .locals 4

    .line 1
    iget-object v0, p0, Lr4/k;->d:[B

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 2
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget-object v0, p0, Lr4/k;->d:[B

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iput-object v1, p0, Lr4/k;->d:[B

    return-void
.end method

.method public M([B)Z
    .locals 1

    iget-object v0, p0, Lr4/k;->d:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final W(I)B
    .locals 1

    iget-object v0, p0, Lr4/k;->d:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public X()I
    .locals 1

    iget-object v0, p0, Lr4/k;->d:[B

    array-length v0, v0

    return v0
.end method

.method public a0()[B
    .locals 1

    iget-object v0, p0, Lr4/k;->d:[B

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/k;

    iget-object v1, p0, Lr4/k;->d:[B

    invoke-direct {v0, v1}, Lr4/k;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/k;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public d0()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lr4/k;->d:[B

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-byte v4, v0, v3

    int-to-char v4, v4

    .line 2
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-nez v5, :cond_0

    and-int/lit16 v5, v4, 0xff

    const/16 v6, 0x80

    if-lt v5, v6, :cond_1

    .line 3
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lr4/k;->a0()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ll4/a;->q(Ljava/io/OutputStream;B[B)V

    return-void
.end method

.method public final e0()I
    .locals 1

    iget-object v0, p0, Lr4/k;->d:[B

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lr4/k;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lr4/k;

    .line 3
    iget-object v0, p0, Lr4/k;->d:[B

    iget-object p1, p1, Lr4/k;->d:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lr4/k;->d:[B

    array-length v1, v0

    array-length v0, v0

    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public f0([B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lr4/k;->d:[B

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OctetString must not be assigned a null value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g0(II)Lr4/k;
    .locals 3

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lr4/k;->e0()I

    move-result v0

    if-gt p2, v0, :cond_0

    sub-int/2addr p2, p1

    .line 2
    new-array v0, p2, [B

    .line 3
    iget-object v1, p0, Lr4/k;->d:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    new-instance p1, Lr4/k;

    invoke-direct {p1, v0}, Lr4/k;-><init>([B)V

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public h0()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Lr4/k;->i0(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lr4/k;->a0()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public i0(C)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lr4/k;->j0(CI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ll4/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p1, v0}, Ll4/a;->j(Ll4/b;Ll4/a$a;)[B

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lr4/k;->f0([B)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type encountered when decoding OctetString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j0(CI)Ljava/lang/String;
    .locals 7

    const-wide/high16 v0, 0x4070000000000000L    # 256.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lr4/k;->d:[B

    array-length v2, v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    iget-object v4, p0, Lr4/k;->d:[B

    array-length v4, v4

    if-ge v3, v4, :cond_2

    if-lez v3, :cond_0

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v4, p0, Lr4/k;->d:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    .line 6
    invoke-static {v4, p2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    move v5, v2

    .line 7
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v0, v6

    if-ge v5, v6, :cond_1

    const/16 v6, 0x30

    .line 8
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k0(Z)Lr4/j;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lr4/k;->e0()I

    move-result p1

    add-int/2addr p1, v1

    new-array p1, p1, [I

    .line 2
    invoke-virtual {p0}, Lr4/k;->e0()I

    move-result v2

    aput v2, p1, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lr4/k;->e0()I

    move-result p1

    new-array p1, p1, [I

    move v1, v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lr4/k;->e0()I

    move-result v2

    if-ge v0, v2, :cond_1

    add-int v2, v1, v0

    .line 5
    invoke-virtual {p0, v0}, Lr4/k;->W(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lr4/j;

    invoke-direct {v0, p1}, Lr4/j;-><init>([I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lr4/k;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lr4/k;->d:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lr4/u;)I
    .locals 6

    .line 1
    instance-of v0, p1, Lr4/k;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lr4/k;

    .line 3
    iget-object v0, p0, Lr4/k;->d:[B

    array-length v0, v0

    iget-object v1, p1, Lr4/k;->d:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lr4/k;->d:[B

    aget-byte v3, v2, v1

    iget-object v4, p1, Lr4/k;->d:[B

    aget-byte v5, v4, v1

    if-eq v3, v5, :cond_1

    .line 5
    aget-byte p1, v2, v1

    and-int/lit16 p1, p1, 0xff

    aget-byte v0, v4, v1

    and-int/lit16 v0, v0, 0xff

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lr4/k;->d:[B

    array-length v0, v0

    iget-object p1, p1, Lr4/k;->d:[B

    array-length p1, p1

    sub-int/2addr v0, p1

    return v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
