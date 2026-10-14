.class public Lr4/l;
.super Lr4/k;
.source "Opaque.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr4/k;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lr4/k;-><init>([B)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    const/16 v0, 0x44

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/l;

    invoke-super {p0}, Lr4/k;->a0()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/l;-><init>([B)V

    return-object v0
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

    const/16 v1, 0x44

    invoke-static {p1, v1, v0}, Ll4/a;->q(Ljava/io/OutputStream;B[B)V

    return-void
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

    const/16 v2, 0x44

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

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
