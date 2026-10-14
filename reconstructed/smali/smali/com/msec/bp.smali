.class public Lcom/msec/bp;
.super Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;


# static fields
.field private static a:I = 0x2


# direct methods
.method public static $aa(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpResponse;

    check-cast p1, Lcom/msec/i;

    invoke-static {p0, p1}, Lcom/msec/bp;->b(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/i;)V

    return-void
.end method

.method public static $ab(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/msec/bq;

    check-cast p0, Lcom/msec/i;

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntity;

    invoke-direct {v0, p0, p1}, Lcom/msec/bq;-><init>(Lcom/msec/i;Lcz/msebera/android/httpclient/HttpEntity;)V

    return-object v0
.end method

.method public static $ac(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;

    check-cast p1, Lcz/msebera/android/httpclient/Header;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->setContentEncoding(Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public static $ad(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->setChunked(Z)V

    return-void
.end method

.method public static $ae(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;

    check-cast p1, Lcz/msebera/android/httpclient/Header;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;->setContentType(Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public static $af(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/msec/bp;

    check-cast p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/msec/bp;->a(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static $ag(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    check-cast p1, Lcom/msec/i;

    invoke-static {p0, p1}, Lcom/msec/bp;->a(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcom/msec/i;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    move-result-object p0

    return-object p0
.end method

.method public static $ah(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/msec/bp;

    check-cast p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/msec/bp;->b(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static $ai(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;

    check-cast p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    check-cast p2, Lcz/msebera/android/httpclient/protocol/HttpContext;

    invoke-super {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/DefaultHttpClient;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static $aj(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/msec/bp;

    check-cast p1, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/msec/bp;->c(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;)V

    return-void
.end method

.method public static $ak(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpResponse;

    check-cast p1, Lcom/msec/i;

    invoke-static {p0, p1}, Lcom/msec/bp;->a(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/i;)Lcz/msebera/android/httpclient/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/i;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/16 p0, 0x6f7

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/HttpResponse;

    return-object p0
.end method

.method public static a(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcom/msec/i;)Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/16 p0, 0x6f6

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    return-object p0
.end method

.method private a(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x6f5

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private static b(Lcz/msebera/android/httpclient/HttpResponse;Lcom/msec/i;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/16 p0, 0x6f4

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x6f3

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private c(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/msec/bp;->a(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/HttpResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcz/msebera/android/httpclient/client/ClientProtocolException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/msec/bp;->execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;Lcz/msebera/android/httpclient/protocol/HttpContext;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x6f2

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    return-object p1
.end method
