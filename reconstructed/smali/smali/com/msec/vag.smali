.class public final Lcom/msec/vag;
.super Ljava/lang/Object;
.source "com/msec/vag.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/RequestBody;

    check-cast p1, Lokio/BufferedSink;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    return-void
.end method

.method public static aa(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static ab(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Response$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Response$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Interceptor$Chain;

    invoke-interface {p0}, Lcom/squareup/okhttp/Interceptor$Chain;->request()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->url()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->body()Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)J
    .locals 2

    check-cast p0, Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/RequestBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/MediaType;

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->newBuilder()Lcom/squareup/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request$Builder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request$Builder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Interceptor$Chain;

    check-cast p1, Lcom/squareup/okhttp/Request;

    invoke-interface {p0, p1}, Lcom/squareup/okhttp/Interceptor$Chain;->proceed(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Response;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Response;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Response;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Object;)J
    .locals 2

    check-cast p0, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->bytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/MediaType;

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/squareup/okhttp/ResponseBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Response$Builder;

    check-cast p1, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Response$Builder;

    invoke-virtual {p0}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Request$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/squareup/okhttp/Response$Builder;

    check-cast p1, Lcom/squareup/okhttp/Request;

    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/Response$Builder;->request(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object p0

    return-object p0
.end method
