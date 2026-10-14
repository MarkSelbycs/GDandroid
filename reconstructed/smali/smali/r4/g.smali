.class public Lr4/g;
.super Lr4/a;
.source "Integer32.java"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr4/g;->d:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lr4/a;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lr4/g;->d:I

    .line 5
    invoke-virtual {p0, p1}, Lr4/g;->I(I)V

    return-void
.end method


# virtual methods
.method public final H()I
    .locals 1

    iget v0, p0, Lr4/g;->d:I

    return v0
.end method

.method public final I(I)V
    .locals 0

    iput p1, p0, Lr4/g;->d:I

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/g;

    iget v1, p0, Lr4/g;->d:I

    invoke-direct {v0, v1}, Lr4/g;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/g;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lr4/g;->d:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ll4/a;->n(Ljava/io/OutputStream;BI)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr4/g;

    if-eqz v0, :cond_0

    check-cast p1, Lr4/g;

    iget p1, p1, Lr4/g;->d:I

    iget v0, p0, Lr4/g;->d:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lr4/g;->d:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const v1, 0x8000

    if-ge v0, v1, :cond_1

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const/high16 v1, 0x800000

    if-ge v0, v1, :cond_2

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    if-lt v0, v1, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    const/4 v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lr4/g;->d:I

    return v0
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
    invoke-static {p1, v0}, Ll4/a;->e(Ll4/b;Ll4/a$a;)I

    move-result p1

    .line 3
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lr4/g;->I(I)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type encountered when decoding Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Lr4/g;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lr4/u;)I
    .locals 1

    iget v0, p0, Lr4/g;->d:I

    check-cast p1, Lr4/g;

    iget p1, p1, Lr4/g;->d:I

    sub-int/2addr v0, p1

    return v0
.end method
