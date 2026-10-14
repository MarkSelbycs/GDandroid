.class public Lt1/d;
.super Lt1/e;
.source "IoUtil.java"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lt1/d;->c(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lt1/d;->e(Ljava/io/InputStream;Ljava/io/OutputStream;ILt1/f;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(Ljava/io/InputStream;Ljava/io/OutputStream;IJLt1/f;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    new-instance v0, Lu1/b;

    invoke-direct {v0, p2, p3, p4, p5}, Lu1/b;-><init>(IJLt1/f;)V

    invoke-virtual {v0, p0, p1}, Lu1/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static e(Ljava/io/InputStream;Ljava/io/OutputStream;ILt1/f;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lt1/d;->d(Ljava/io/InputStream;Ljava/io/OutputStream;IJLt1/f;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static f(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object p1, v0

    .line 3
    :goto_0
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object p0
.end method

.method public static g(Ljava/io/InputStream;)Ljava/io/BufferedReader;
    .locals 1

    sget-object v0, Le2/g;->b:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lt1/d;->f(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    invoke-static {p0}, Lt1/d;->l(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0, p1}, Le2/b0;->h0([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lt1/d;->j(Ljava/io/Reader;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/io/Reader;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    .line 1
    invoke-static {}, Le2/b0;->c0()Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2000

    .line 2
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    :goto_0
    const/4 v2, -0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    invoke-static {p0}, Lt1/d;->a(Ljava/io/Closeable;)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    :try_start_1
    new-instance v1, Lt1/c;

    invoke-direct {v1, v0}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_2

    .line 8
    invoke-static {p0}, Lt1/d;->a(Ljava/io/Closeable;)V

    .line 9
    :cond_2
    throw v0
.end method

.method public static k(Ljava/io/InputStream;Z)Lt1/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lt1/a;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-direct {v0, v1}, Lt1/a;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lt1/c;

    invoke-direct {p1, p0}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_0
    new-instance v0, Lt1/a;

    invoke-direct {v0}, Lt1/a;-><init>()V

    .line 5
    :goto_0
    :try_start_1
    invoke-static {p0, v0}, Lt1/d;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p0}, Lt1/d;->a(Ljava/io/Closeable;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_2

    invoke-static {p0}, Lt1/d;->a(Ljava/io/Closeable;)V

    .line 7
    :cond_2
    throw v0
.end method

.method public static l(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lt1/d;->m(Ljava/io/InputStream;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/io/InputStream;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    invoke-static {p0, p1}, Lt1/d;->k(Ljava/io/InputStream;Z)Lt1/a;

    move-result-object p0

    invoke-virtual {p0}, Lt1/a;->c()[B

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;,
            Lr1/c;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lt1/d;->o(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;,
            Lr1/c;
        }
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p0, Lt1/g;

    if-eqz v0, :cond_0

    check-cast p0, Lt1/g;

    goto :goto_0

    :cond_0
    new-instance v0, Lt1/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lt1/g;-><init>(Ljava/io/InputStream;[Ljava/lang/Class;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0, p1}, Lt1/d;->p(Lt1/g;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lt1/c;

    invoke-direct {p1, p0}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static p(Lt1/g;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/g;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;,
            Lr1/c;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Lt1/g;->c([Ljava/lang/Class;)V

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Lr1/c;

    invoke-direct {p1, p0}, Lr1/c;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 4
    new-instance p1, Lt1/c;

    invoke-direct {p1, p0}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The InputStream must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q([B)Ljava/io/ByteArrayInputStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static varargs r(Ljava/io/OutputStream;Z[Ljava/io/Serializable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lt1/c;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    instance-of v1, p0, Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/io/ObjectOutputStream;

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 2
    :goto_0
    array-length p0, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, p2, v1

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 5
    invoke-static {v0}, Lt1/d;->a(Ljava/io/Closeable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 6
    :try_start_1
    new-instance p2, Lt1/c;

    invoke-direct {p2, p0}, Lt1/c;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p1, :cond_4

    .line 7
    invoke-static {v0}, Lt1/d;->a(Ljava/io/Closeable;)V

    .line 8
    :cond_4
    throw p0
.end method
