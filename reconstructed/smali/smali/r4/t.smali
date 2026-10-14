.class public Lr4/t;
.super Lr4/a;
.source "UnsignedInteger32.java"


# instance fields
.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lr4/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lr4/t;->d:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lr4/a;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lr4/t;->d:J

    .line 5
    invoke-virtual {p0, p1, p2}, Lr4/t;->M(J)V

    return-void
.end method

.method public static H(J)I
    .locals 2

    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const-wide/32 v0, 0x8000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const-wide/32 v0, 0x800000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const-wide v0, 0x80000000L

    cmp-long p0, p0, v0

    if-gez p0, :cond_3

    const/4 p0, 0x6

    goto :goto_0

    :cond_3
    const/4 p0, 0x7

    :goto_0
    return p0
.end method


# virtual methods
.method public I()J
    .locals 2

    iget-wide v0, p0, Lr4/t;->d:J

    return-wide v0
.end method

.method public M(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1
    iput-wide p1, p0, Lr4/t;->d:J

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument must be an unsigned 32bit value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr4/t;

    iget-wide v1, p0, Lr4/t;->d:J

    invoke-direct {v0, v1, v2}, Lr4/t;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/t;->u(Lr4/u;)I

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

    iget-wide v0, p0, Lr4/t;->d:J

    const/16 v2, 0x42

    invoke-static {p1, v2, v0, v1}, Ll4/a;->t(Ljava/io/OutputStream;BJ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lr4/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lr4/t;

    iget-wide v2, p1, Lr4/t;->d:J

    iget-wide v4, p0, Lr4/t;->d:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()I
    .locals 2

    iget-wide v0, p0, Lr4/t;->d:J

    invoke-static {v0, v1}, Lr4/t;->H(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lr4/t;->d:J

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
    invoke-static {p1, v0}, Ll4/a;->l(Ll4/b;Ll4/a$a;)J

    move-result-wide v1

    .line 3
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result p1

    const/16 v3, 0x42

    if-ne p1, v3, :cond_0

    .line 4
    invoke-virtual {p0, v1, v2}, Lr4/t;->M(J)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type encountered when decoding Gauge: "

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
    .locals 2

    iget-wide v0, p0, Lr4/t;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lr4/u;)I
    .locals 4

    iget-wide v0, p0, Lr4/t;->d:J

    check-cast p1, Lr4/t;

    invoke-virtual {p1}, Lr4/t;->I()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
