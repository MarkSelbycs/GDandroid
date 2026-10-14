.class public final Lcom/msec/vaa;
.super Ljava/lang/Object;
.source "com/msec/vaa.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 4

    const-class v0, Lcz/msebera/android/httpclient/message/BasicLineFormatter;

    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static aa(Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result p0

    return p0
.end method

.method public static ab(Ljava/lang/Object;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/msec/bp;->$ad(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static ac(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/msec/bp;->$ae(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static ad(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpResponse;

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {p0, p1}, Lcz/msebera/android/httpclient/HttpResponse;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method

.method public static ae(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static af(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bp;->$ai(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    return-object p0
.end method

.method public static ah(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bo$a;->$aa(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static ai(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static aj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    return-object p0
.end method

.method public static ak(Ljava/lang/Object;)I
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->length()I

    move-result p0

    return p0
.end method

.method public static al(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-direct {v0, p0}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;-><init>(I)V

    return-object v0
.end method

.method public static am(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    check-cast p1, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Lcz/msebera/android/httpclient/util/CharArrayBuffer;)V

    return-void
.end method

.method public static an(Ljava/lang/Object;C)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(C)V

    return-void
.end method

.method public static ao(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/util/CharArrayBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public static ap(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bo$a;->$ab(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static aq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/RequestLine;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntity;

    check-cast p1, Ljava/io/OutputStream;

    invoke-interface {p0, p1}, Lcz/msebera/android/httpclient/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpMessage;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcz/msebera/android/httpclient/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/Header;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpMessage;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcz/msebera/android/httpclient/HttpMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    return p0
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    return-object p0
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpMessage;

    check-cast p1, Lcz/msebera/android/httpclient/Header;

    invoke-interface {p0, p1}, Lcz/msebera/android/httpclient/HttpMessage;->setHeader(Lcz/msebera/android/httpclient/Header;)V

    return-void
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    return p0
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    return-object p0
.end method

.method public static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/client/methods/HttpEntityEnclosingRequestBase;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/client/methods/HttpUriRequest;

    return-object p0
.end method

.method public static o(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;

    return p0
.end method

.method public static p()Ljava/lang/Object;
    .locals 2

    const-class v0, Lcz/msebera/android/httpclient/entity/HttpEntityWrapper;

    const-string v1, "wrappedEntity"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static q(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntity;

    return-object p0
.end method

.method public static r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;

    check-cast p1, Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {p0, p1}, Lcz/msebera/android/httpclient/HttpEntityEnclosingRequest;->setEntity(Lcz/msebera/android/httpclient/HttpEntity;)V

    return-void
.end method

.method public static s(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p0, Lcz/msebera/android/httpclient/impl/client/RequestWrapper;

    return p0
.end method

.method public static t(Ljava/lang/Object;)J
    .locals 2

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public static u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpResponse;->getEntity()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpMessage;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcz/msebera/android/httpclient/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    return-void
.end method

.method public static x(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/entity/InputStreamEntity;

    check-cast p0, Ljava/io/InputStream;

    invoke-direct {v0, p0, p1, p2}, Lcz/msebera/android/httpclient/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {p0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/msec/bp;->$ac(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
