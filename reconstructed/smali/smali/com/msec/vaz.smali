.class public final Lcom/msec/vaz;
.super Ljava/lang/Object;
.source "com/msec/vaz.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okio/Buffer;

    invoke-virtual {p0}, Ldc/squareup/okio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okio/BufferedSink;

    invoke-interface {p0}, Ldc/squareup/okio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/io/OutputStream;

    invoke-static {p0}, Ldc/squareup/okio/Okio;->sink(Ljava/io/OutputStream;)Ldc/squareup/okio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okio/Sink;

    invoke-static {p0}, Ldc/squareup/okio/Okio;->buffer(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Ldc/squareup/okio/Sink;

    invoke-interface {p0}, Ldc/squareup/okio/Sink;->close()V

    return-void
.end method
