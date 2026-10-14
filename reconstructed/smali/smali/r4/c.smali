.class public Lr4/c;
.super Lr4/t;
.source "Counter32.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr4/t;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lr4/t;-><init>(J)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr4/c;

    iget-wide v1, p0, Lr4/t;->d:J

    invoke-direct {v0, v1, v2}, Lr4/c;-><init>(J)V

    return-object v0
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lr4/t;->I()J

    move-result-wide v0

    const/16 v2, 0x41

    invoke-static {p1, v2, v0, v1}, Ll4/a;->t(Ljava/io/OutputStream;BJ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lr4/c;

    if-eqz v0, :cond_0

    check-cast p1, Lr4/c;

    invoke-virtual {p1}, Lr4/t;->I()J

    move-result-wide v0

    invoke-virtual {p0}, Lr4/t;->I()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    const/16 v3, 0x41

    if-ne p1, v3, :cond_0

    .line 4
    invoke-virtual {p0, v1, v2}, Lr4/t;->M(J)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type encountered when decoding Counter: "

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
