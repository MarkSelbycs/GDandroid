.class public Lu1/b;
.super Lu1/a;
.source "StreamCopier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu1/a<",
        "Ljava/io/InputStream;",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IJLt1/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lu1/a;-><init>(IJLt1/f;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "InputStream is null !"

    .line 1
    invoke-static {p1, v2, v1}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OutputStream is null !"

    .line 2
    invoke-static {p2, v1, v0}, Lv1/e;->q(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lu1/a;->c:Lt1/f;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lt1/f;->start()V

    .line 5
    :cond_0
    :try_start_0
    iget-wide v1, p0, Lu1/a;->b:J

    invoke-virtual {p0, v1, v2}, Lu1/a;->a(J)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, p1, p2, v1, v0}, Lu1/b;->c(Ljava/io/InputStream;Ljava/io/OutputStream;[BLt1/f;)J

    move-result-wide v1

    .line 6
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lt1/f;->b()V

    :cond_1
    return-wide v1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lt1/c;

    invoke-direct {p2, p1}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final c(Ljava/io/InputStream;Ljava/io/OutputStream;[BLt1/f;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lu1/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    move-wide v4, v2

    :cond_1
    :goto_1
    cmp-long v6, v0, v2

    if-lez v6, :cond_4

    .line 2
    invoke-virtual {p0, v0, v1}, Lu1/a;->a(J)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, p3, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-virtual {p2, p3, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-boolean v7, p0, Lu1/a;->d:Z

    if-eqz v7, :cond_3

    .line 5
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    :cond_3
    int-to-long v6, v6

    sub-long/2addr v0, v6

    add-long/2addr v4, v6

    if-eqz p4, :cond_1

    .line 6
    iget-wide v6, p0, Lu1/a;->b:J

    invoke-interface {p4, v6, v7, v4, v5}, Lt1/f;->a(JJ)V

    goto :goto_1

    :cond_4
    :goto_2
    return-wide v4
.end method
