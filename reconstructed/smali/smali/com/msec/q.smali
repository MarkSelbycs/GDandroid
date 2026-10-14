.class public Lcom/msec/q;
.super Ljava/io/BufferedInputStream;

# interfaces
.implements Lcom/msec/p;


# static fields
.field private static e:I = 0x2000

.field private static f:I = 0x2e


# instance fields
.field public a:Lcom/msec/i;

.field public b:Lcom/msec/o;

.field public c:[B

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/msec/i;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lcom/msec/o;

    sget v0, Lcom/msec/q;->e:I

    sget v1, Lcom/msec/q;->f:I

    add-int/2addr v1, v0

    invoke-direct {p1, v1, v0, p0}, Lcom/msec/o;-><init>(IILcom/msec/p;)V

    iput-object p1, p0, Lcom/msec/q;->b:Lcom/msec/o;

    iput-object p2, p0, Lcom/msec/q;->a:Lcom/msec/i;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public a([B)[B
    .locals 1

    iget-object v0, p0, Lcom/msec/q;->a:Lcom/msec/i;

    invoke-virtual {v0, p1}, Lcom/msec/i;->c([B)[B

    move-result-object p1

    return-object p1
.end method

.method public b([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/q;->c:[B

    iget v1, p0, Lcom/msec/q;->d:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/msec/q;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/msec/q;->d:I

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x6f1

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/msec/q;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/msec/q;->c:[B

    iput p2, p0, Lcom/msec/q;->d:I

    iget-object p1, p0, Lcom/msec/q;->b:Lcom/msec/o;

    invoke-virtual {p1, p3}, Lcom/msec/o;->a(I)I

    move-result p1

    return p1
.end method
