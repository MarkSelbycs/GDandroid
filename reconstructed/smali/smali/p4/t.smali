.class public abstract Lp4/t;
.super Ljava/lang/Object;
.source "SNMPv3SecurityModel.java"

# interfaces
.implements Lp4/w;


# instance fields
.field public a:Lr4/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ll4/b;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Ll4/b;->mark(I)V

    .line 2
    invoke-virtual {p0}, Ll4/b;->e()J

    move-result-wide v0

    long-to-int v0, v0

    .line 3
    new-instance v1, Ll4/a$a;

    invoke-direct {v1}, Ll4/a$a;-><init>()V

    .line 4
    invoke-static {p0, v1}, Ll4/a;->c(Ll4/b;Ll4/a$a;)I

    move-result v1

    .line 5
    invoke-virtual {p0}, Ll4/b;->e()J

    move-result-wide v2

    long-to-int v2, v2

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 6
    new-array v0, v1, [B

    .line 7
    invoke-virtual {p0}, Ll4/b;->reset()V

    .line 8
    invoke-virtual {p0}, Ll4/b;->available()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-lez v2, :cond_1

    sub-int v4, v1, v3

    .line 9
    invoke-virtual {p0, v0, v3, v4}, Ll4/b;->read([BII)I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static j(Lr4/g;[B[BLp4/y;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lr4/g;->f()I

    move-result v0

    array-length v1, p2

    add-int/2addr v0, v1

    .line 2
    invoke-interface {p3}, Ll4/d;->f()I

    move-result v1

    add-int/2addr v0, v1

    array-length v1, p1

    add-int/2addr v0, v1

    .line 3
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 4
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x30

    .line 5
    invoke-static {v2, v1, v0}, Ll4/a;->m(Ljava/io/OutputStream;II)V

    .line 6
    invoke-virtual {p0, v2}, Lr4/g;->e(Ljava/io/OutputStream;)V

    .line 7
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 8
    invoke-interface {p3, v2}, Ll4/d;->e(Ljava/io/OutputStream;)V

    .line 9
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 10
    invoke-virtual {p0}, Lr4/g;->f()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 11
    invoke-static {v0}, Ll4/a;->u(I)I

    move-result p1

    add-int/2addr p0, p1

    array-length p1, p2

    add-int/2addr p0, p1

    .line 12
    invoke-interface {p3, p0}, Lp4/y;->b(I)V

    .line 13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
