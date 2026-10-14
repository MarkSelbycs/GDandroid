.class public Lcom/msec/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcz/msebera/android/httpclient/HttpEntity;


# instance fields
.field private a:Lcz/msebera/android/httpclient/HttpEntity;

.field private b:Lcom/msec/i;


# direct methods
.method public static $aa(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/msec/bq;

    iget-object p0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    return-object p0
.end method

.method public constructor <init>(Lcom/msec/i;Lcz/msebera/android/httpclient/HttpEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/msec/bq;->b:Lcom/msec/i;

    iput-object p2, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentEncoding()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 8

    iget-object v0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-wide/16 v4, 0x2000

    div-long v6, v0, v4

    rem-long v4, v0, v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    :cond_0
    const-wide/16 v2, 0x2e

    mul-long/2addr v6, v2

    add-long/2addr v0, v6

    :cond_1
    return-wide v0
.end method

.method public getContentType()Lcz/msebera/android/httpclient/Header;
    .locals 1

    iget-object v0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->getContentType()Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/bq;->a:Lcz/msebera/android/httpclient/HttpEntity;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x6d2

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
