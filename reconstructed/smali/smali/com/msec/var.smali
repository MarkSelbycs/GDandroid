.class public final Lcom/msec/var;
.super Ljava/lang/Object;
.source "com/msec/var.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 4

    const-class v0, Ldc/squareup/okhttp3/OkHttpClient;

    const-string v1, "networkInterceptors"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static aa(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/ResponseBody;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static ab(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/ResponseBody;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->contentType()Ldc/squareup/okhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public static ac(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/MediaType;

    check-cast p1, [B

    invoke-static {p0, p1}, Ldc/squareup/okhttp3/ResponseBody;->create(Ldc/squareup/okhttp3/MediaType;[B)Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static ad(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Response$Builder;

    check-cast p1, Ldc/squareup/okhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Response$Builder;->body(Ldc/squareup/okhttp3/ResponseBody;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static ae(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Response$Builder;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response$Builder;->build()Ldc/squareup/okhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static af(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/ResponseBody;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static ag(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Response$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Interceptor;

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/OkHttpClient;

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;->request()Ldc/squareup/okhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request;->url()Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/HttpUrl;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request;->body()Ldc/squareup/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)J
    .locals 2

    check-cast p0, Ldc/squareup/okhttp3/RequestBody;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/RequestBody;

    check-cast p1, Ldc/squareup/okio/BufferedSink;

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/RequestBody;->writeTo(Ldc/squareup/okio/BufferedSink;)V

    return-void
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/RequestBody;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/RequestBody;->contentType()Ldc/squareup/okhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/MediaType;

    check-cast p1, [B

    invoke-static {p0, p1}, Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;[B)Ldc/squareup/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request;->newBuilder()Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request$Builder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ldc/squareup/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request$Builder;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ldc/squareup/okhttp3/RequestBody;

    invoke-virtual {p0, p1, p2}, Ldc/squareup/okhttp3/Request$Builder;->method(Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request$Builder;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Request$Builder;->build()Ldc/squareup/okhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ldc/squareup/okhttp3/HttpUrl;->parse(Ljava/lang/String;)Ldc/squareup/okhttp3/HttpUrl;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Request$Builder;

    check-cast p1, Ldc/squareup/okhttp3/HttpUrl;

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Request$Builder;->url(Ldc/squareup/okhttp3/HttpUrl;)Ldc/squareup/okhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;

    check-cast p1, Ldc/squareup/okhttp3/Request;

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/internal/http/RealInterceptorChain;->proceed(Ldc/squareup/okhttp3/Request;)Ldc/squareup/okhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Response;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Response;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->body()Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Ldc/squareup/okhttp3/Response;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/Response;->newBuilder()Ldc/squareup/okhttp3/Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Object;)J
    .locals 2

    check-cast p0, Ldc/squareup/okhttp3/ResponseBody;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method
