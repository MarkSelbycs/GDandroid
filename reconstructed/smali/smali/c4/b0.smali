.class public abstract Lc4/b0;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j(Lc4/t;JLokio/BufferedSource;)Lc4/b0;
    .locals 1

    const-string v0, "source == null"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lc4/b0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lc4/b0$a;-><init>(Lc4/t;JLokio/BufferedSource;)V

    return-object v0
.end method

.method public static l(Lc4/t;[B)Lc4/b0;
    .locals 3

    .line 1
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    .line 2
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lc4/b0;->j(Lc4/t;JLokio/BufferedSource;)Lc4/b0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lc4/b0;->n()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lc4/b0;->n()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Ld4/c;->c(Ljava/io/Closeable;)V

    return-void
.end method

.method public final e()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc4/b0;->h()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 2
    invoke-virtual {p0}, Lc4/b0;->n()Lokio/BufferedSource;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-interface {v2}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v2}, Ld4/c;->c(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 5
    array-length v2, v3

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v2}, Ld4/c;->c(Ljava/io/Closeable;)V

    throw v0

    .line 8
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final f()Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc4/b0;->i()Lc4/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Ld4/c;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lc4/t;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ld4/c;->c:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public abstract h()J
.end method

.method public abstract i()Lc4/t;
.end method

.method public abstract n()Lokio/BufferedSource;
.end method

.method public final o()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lc4/b0;->e()[B

    move-result-object v1

    invoke-virtual {p0}, Lc4/b0;->f()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
