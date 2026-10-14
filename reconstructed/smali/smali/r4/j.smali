.class public Lr4/j;
.super Lr4/a;
.source "OID.java"


# static fields
.field public static e:Lt4/d;

.field public static final f:[I


# instance fields
.field public d:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lt4/f;

    invoke-direct {v0}, Lt4/f;-><init>()V

    sput-object v0, Lr4/j;->e:Lt4/d;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 2
    sput-object v0, Lr4/j;->f:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/a;-><init>()V

    .line 2
    sget-object v0, Lr4/j;->f:[I

    iput-object v0, p0, Lr4/j;->d:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lr4/a;-><init>()V

    .line 4
    sget-object v0, Lr4/j;->f:[I

    iput-object v0, p0, Lr4/j;->d:[I

    .line 5
    invoke-static {p1}, Lr4/j;->M(Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lr4/j;->d:[I

    return-void
.end method

.method public constructor <init>(Lr4/j;)V
    .locals 0

    .line 10
    invoke-virtual {p1}, Lr4/j;->H()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lr4/j;-><init>([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 2

    .line 6
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lr4/j;-><init>([III)V

    return-void
.end method

.method public constructor <init>([III)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lr4/a;-><init>()V

    .line 8
    sget-object v0, Lr4/j;->f:[I

    iput-object v0, p0, Lr4/j;->d:[I

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lr4/j;->T([III)V

    return-void
.end method

.method public static M(Ljava/lang/String;)[I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lk4/m;->c()Lt4/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lt4/d;->a(Ljava/lang/String;)[I

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OID \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' cannot be parsed"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final H()[I
    .locals 1

    iget-object v0, p0, Lr4/j;->d:[I

    return-object v0
.end method

.method public I(ILr4/j;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, p1, :cond_2

    .line 1
    iget-object v4, p0, Lr4/j;->d:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p2}, Lr4/j;->U()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2
    iget-object v4, p0, Lr4/j;->d:[I

    aget v5, v4, v1

    iget-object v6, p2, Lr4/j;->d:[I

    aget v7, v6, v1

    if-eq v5, v7, :cond_1

    .line 3
    aget p1, v4, v1

    int-to-long p1, p1

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    aget v0, v6, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v1, p0, Lr4/j;->d:[I

    array-length v1, v1

    if-le p1, v1, :cond_3

    return v2

    .line 5
    :cond_3
    invoke-virtual {p2}, Lr4/j;->U()I

    move-result p2

    if-le p1, p2, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method public final P([I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lr4/j;->d:[I

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OID value must not be set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final T([III)V
    .locals 2

    .line 1
    new-array v0, p3, [I

    iput-object v0, p0, Lr4/j;->d:[I

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final U()I
    .locals 1

    iget-object v0, p0, Lr4/j;->d:[I

    array-length v0, v0

    return v0
.end method

.method public V(Lr4/j;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lr4/j;->d:[I

    array-length v1, v0

    iget-object v2, p0, Lr4/j;->d:[I

    array-length v3, v2

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    return v4

    .line 2
    :cond_0
    array-length v1, v2

    array-length v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    invoke-virtual {p0, v0, p1}, Lr4/j;->I(ILr4/j;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/j;

    iget-object v1, p0, Lr4/j;->d:[I

    invoke-direct {v0, v1}, Lr4/j;-><init>([I)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/j;->u(Lr4/u;)I

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

    iget-object v0, p0, Lr4/j;->d:[I

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Ll4/a;->p(Ljava/io/OutputStream;B[I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lr4/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lr4/j;

    .line 3
    iget-object v0, p1, Lr4/j;->d:[I

    array-length v0, v0

    iget-object v2, p0, Lr4/j;->d:[I

    array-length v2, v2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lr4/j;->d:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 5
    aget v2, v2, v0

    iget-object v3, p1, Lr4/j;->d:[I

    aget v3, v3, v0

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

.method public f()I
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/j;->d:[I

    invoke-static {v0}, Ll4/a;->v([I)I

    move-result v0

    .line 2
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lr4/j;->H()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

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
    invoke-static {p1, v0}, Ll4/a;->i(Ll4/b;Ll4/a$a;)[I

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lr4/j;->P([I)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type encountered when decoding OID: "

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

    invoke-static {}, Lk4/m;->c()Lt4/d;

    move-result-object v0

    iget-object v1, p0, Lr4/j;->d:[I

    invoke-interface {v0, v1}, Lt4/d;->c([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lr4/u;)I
    .locals 2

    .line 1
    instance-of v0, p1, Lr4/j;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lr4/j;

    .line 3
    iget-object v0, p0, Lr4/j;->d:[I

    array-length v0, v0

    iget-object v1, p1, Lr4/j;->d:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0, p1}, Lr4/j;->I(ILr4/j;)I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lr4/j;->d:[I

    array-length v0, v0

    iget-object p1, p1, Lr4/j;->d:[I

    array-length p1, p1

    sub-int/2addr v0, p1

    :cond_0
    return v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
