.class public Lr4/d;
.super Lr4/a;
.source "Counter64.java"


# instance fields
.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lr4/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lr4/d;->d:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lr4/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lr4/d;->d:J

    .line 5
    invoke-virtual {p0, p1, p2}, Lr4/d;->H(J)V

    return-void
.end method


# virtual methods
.method public H(J)V
    .locals 0

    iput-wide p1, p0, Lr4/d;->d:J

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr4/d;

    iget-wide v1, p0, Lr4/d;->d:J

    invoke-direct {v0, v1, v2}, Lr4/d;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/d;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lr4/d;->d:J

    const/16 v2, 0x46

    invoke-static {p1, v2, v0, v1}, Ll4/a;->s(Ljava/io/OutputStream;BJ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lr4/d;

    if-eqz v0, :cond_0

    check-cast p1, Lr4/d;

    iget-wide v0, p1, Lr4/d;->d:J

    iget-wide v2, p0, Lr4/d;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()I
    .locals 4

    iget-wide v0, p0, Lr4/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/16 v0, 0xb

    return v0

    :cond_0
    const-wide v2, 0x80000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    const-wide/32 v2, 0x8000

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_2
    const-wide/32 v2, 0x800000

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    :goto_1
    return v0

    :cond_4
    const-wide v2, 0x800000000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    const-wide v2, 0x8000000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    const/4 v0, 0x7

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    return v0

    :cond_6
    const-wide/high16 v2, 0x80000000000000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    const/16 v0, 0x9

    goto :goto_3

    :cond_7
    const/16 v0, 0xa

    :goto_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lr4/d;->d:J

    long-to-int v0, v0

    return v0
.end method

.method public j(Ll4/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p1, v0}, Ll4/a;->k(Ll4/b;Ll4/a$a;)J

    move-result-wide v1

    .line 3
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result p1

    const/16 v3, 0x46

    if-ne p1, v3, :cond_0

    .line 4
    invoke-virtual {p0, v1, v2}, Lr4/d;->H(J)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type encountered when decoding Counter64: "

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

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-wide v0, p0, Lr4/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    iget-wide v3, p0, Lr4/d;->d:J

    rsub-int/lit8 v5, v2, 0x7

    mul-int/2addr v5, v0

    shr-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 5
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lr4/u;)I
    .locals 10

    .line 1
    check-cast p1, Lr4/d;

    iget-wide v0, p1, Lr4/d;->d:J

    const/16 p1, 0x3f

    :goto_0
    if-ltz p1, :cond_2

    .line 2
    iget-wide v2, p0, Lr4/d;->d:J

    shr-long v4, v2, p1

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    shr-long v8, v0, p1

    and-long/2addr v8, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    shr-long v0, v2, p1

    and-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
