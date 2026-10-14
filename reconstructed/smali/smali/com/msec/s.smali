.class public Lcom/msec/s;
.super Ljava/io/BufferedOutputStream;

# interfaces
.implements Lcom/msec/p;


# static fields
.field private static h:I = 0x2000

.field private static i:I = 0x2e


# instance fields
.field public a:Lcom/msec/o;

.field public b:[B

.field public c:I

.field public d:I

.field public e:Z

.field private f:Lcom/msec/i;

.field private g:Ljava/io/OutputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/msec/i;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/msec/s;->g:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/msec/s;->f:Lcom/msec/i;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/msec/s;->e:Z

    new-instance p1, Lcom/msec/o;

    sget p2, Lcom/msec/s;->h:I

    sget v0, Lcom/msec/s;->i:I

    add-int/2addr v0, p2

    invoke-direct {p1, p2, v0, p0}, Lcom/msec/o;-><init>(IILcom/msec/p;)V

    iput-object p1, p0, Lcom/msec/s;->a:Lcom/msec/o;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/16 p1, 0x6df

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/msec/s;->e:Z

    iget-object v0, p0, Lcom/msec/s;->a:Lcom/msec/o;

    sget v1, Lcom/msec/s;->h:I

    sget v2, Lcom/msec/s;->i:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/msec/o;->a(I)I

    invoke-super {p0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method

.method public a([B)[B
    .locals 1

    iget-object v0, p0, Lcom/msec/s;->f:Lcom/msec/i;

    invoke-virtual {v0, p1}, Lcom/msec/i;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method public b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/msec/s;->a()V

    invoke-super {p0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/msec/s;->a:Lcom/msec/o;

    invoke-virtual {v0}, Lcom/msec/o;->b()V

    invoke-super {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/msec/s;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/msec/s;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/16 p1, 0x6de

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
