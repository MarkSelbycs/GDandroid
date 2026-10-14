.class public final Lcom/msec/vae;
.super Ljava/lang/Object;
.source "com/msec/vae.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/io/OutputStream;

    invoke-static {p0}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lokio/Sink;

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lokio/Sink;

    invoke-interface {p0}, Lokio/Sink;->close()V

    return-void
.end method

.method public static e()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method
