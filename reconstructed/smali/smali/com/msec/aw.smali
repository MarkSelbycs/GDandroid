.class public Lcom/msec/aw;
.super Ljavax/net/ssl/HttpsURLConnection;


# instance fields
.field private a:Ljavax/net/ssl/HttpsURLConnection;

.field private b:Lcom/msec/ax;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    const/16 v0, 0x1773

    invoke-static {v0}, Lcom/msec/h;->c(I)V

    iput-object p1, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    new-instance p1, Lcom/msec/ax;

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {p1, v0}, Lcom/msec/ax;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object p1, p0, Lcom/msec/aw;->b:Lcom/msec/ax;

    invoke-virtual {p1}, Lcom/msec/ax;->a()V

    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-void
.end method

.method public getAllowUserInteraction()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/msec/aw;->b:Lcom/msec/ax;

    invoke-virtual {v1, v0}, Lcom/msec/ax;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedSince()J
    .locals 2

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/msec/aw;->getResponseCode()I

    iget-object v0, p0, Lcom/msec/aw;->b:Lcom/msec/ax;

    iget-object v1, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/msec/ax;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .locals 2

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->b:Lcom/msec/ax;

    invoke-virtual {v0}, Lcom/msec/ax;->b()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x6aa

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public setDoInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public setDoOutput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->b:Lcom/msec/ax;

    invoke-virtual {v0}, Lcom/msec/ax;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_0
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->b:Lcom/msec/ax;

    invoke-virtual {v0}, Lcom/msec/ax;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(J)V

    :cond_0
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public setIfModifiedSince(J)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->b:Lcom/msec/ax;

    invoke-virtual {v0, p1, p2}, Lcom/msec/ax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p0}, Lcom/msec/aw;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/msec/an;->a(Ljava/net/URL;Ljava/net/URLConnection;)V

    return-void
.end method

.method public setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/aw;->a:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
