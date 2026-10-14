.class public final Lcom/msec/vab;
.super Ljava/lang/Object;
.source "com/msec/vab.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {p0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->headers()Lcom/koushikdutta/async/http/Headers;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/Headers;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;

    iget-object p0, p0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;->request:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    return-object p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/AsyncHttpRequest;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public static f()Ljava/lang/Object;
    .locals 3

    const-class v0, Lcom/koushikdutta/async/AsyncServer;

    const-string v1, "threadServer"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/Object;
    .locals 4

    const-class v0, Lcom/koushikdutta/async/AsyncServer;

    const-string v1, "mQueue"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/Object;
    .locals 5

    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getMiddleware"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/Object;
    .locals 2

    const-class v0, Lcom/koushikdutta/async/AsyncServer;

    const-string v1, "mServers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    return-object p0
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    check-cast p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->insertMiddleware(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    return-void
.end method

.method public static l()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object p0
.end method
