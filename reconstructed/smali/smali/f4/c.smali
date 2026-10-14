.class public final Lf4/c;
.super Lg4/d$i;
.source "RealConnection.java"

# interfaces
.implements Lc4/i;


# instance fields
.field public final b:Lc4/c0;

.field public c:Ljava/net/Socket;

.field public d:Ljava/net/Socket;

.field public e:Lc4/p;

.field public f:Lc4/w;

.field public volatile g:Lg4/d;

.field public h:I

.field public i:Lokio/BufferedSource;

.field public j:Lokio/BufferedSink;

.field public k:I

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lf4/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public m:Z

.field public n:J


# direct methods
.method public constructor <init>(Lc4/c0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lg4/d$i;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf4/c;->l:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 3
    iput-wide v0, p0, Lf4/c;->n:J

    .line 4
    iput-object p1, p0, Lf4/c;->b:Lc4/c0;

    return-void
.end method


# virtual methods
.method public a()Lc4/c0;
    .locals 1

    iget-object v0, p0, Lf4/c;->b:Lc4/c0;

    return-object v0
.end method

.method public b(Lg4/d;)V
    .locals 0

    invoke-virtual {p1}, Lg4/d;->Z()I

    move-result p1

    iput p1, p0, Lf4/c;->k:I

    return-void
.end method

.method public c(Lg4/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lg4/a;->s:Lg4/a;

    invoke-virtual {p1, v0}, Lg4/e;->l(Lg4/a;)V

    return-void
.end method

.method public final d(IIILf4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lf4/c;->g(II)V

    .line 2
    invoke-virtual {p0, p2, p3, p4}, Lf4/c;->k(IILf4/b;)V

    return-void
.end method

.method public final e(IIILf4/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf4/c;->j()Lc4/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x15

    if-gt v2, v3, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lf4/c;->g(II)V

    .line 4
    invoke-virtual {p0, p2, p3, v0, v1}, Lf4/c;->i(IILc4/y;Lc4/r;)Lc4/y;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p2, p3, p4}, Lf4/c;->k(IILf4/b;)V

    return-void

    .line 6
    :cond_0
    iget-object v3, p0, Lf4/c;->c:Ljava/net/Socket;

    invoke-static {v3}, Ld4/c;->d(Ljava/net/Socket;)V

    const/4 v3, 0x0

    .line 7
    iput-object v3, p0, Lf4/c;->c:Ljava/net/Socket;

    .line 8
    iput-object v3, p0, Lf4/c;->j:Lokio/BufferedSink;

    .line 9
    iput-object v3, p0, Lf4/c;->i:Lokio/BufferedSource;

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Too many tunnel connections attempted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(IIILjava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lc4/k;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf4/c;->f:Lc4/w;

    if-nez v0, :cond_7

    .line 2
    new-instance v0, Lf4/b;

    invoke-direct {v0, p4}, Lf4/b;-><init>(Ljava/util/List;)V

    .line 3
    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v1}, Lc4/c0;->a()Lc4/a;

    move-result-object v1

    invoke-virtual {v1}, Lc4/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    sget-object v1, Lc4/k;->h:Lc4/k;

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 5
    iget-object p4, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {p4}, Lc4/c0;->a()Lc4/a;

    move-result-object p4

    invoke-virtual {p4}, Lc4/a;->k()Lc4/r;

    move-result-object p4

    invoke-virtual {p4}, Lc4/r;->o()Ljava/lang/String;

    move-result-object p4

    .line 6
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object v1

    invoke-virtual {v1, p4}, Li4/e;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lf4/e;

    new-instance p2, Ljava/net/UnknownServiceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "CLEARTEXT communication to "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not permitted by network security policy"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lf4/e;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Lf4/e;

    new-instance p2, Ljava/net/UnknownServiceException;

    const-string p3, "CLEARTEXT communication not enabled for client"

    invoke-direct {p2, p3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lf4/e;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p4, 0x0

    move-object v1, p4

    .line 9
    :goto_1
    iget-object v2, p0, Lf4/c;->f:Lc4/w;

    if-nez v2, :cond_6

    .line 10
    :try_start_0
    iget-object v2, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v2}, Lc4/c0;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lf4/c;->e(IIILf4/b;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Lf4/c;->d(IIILf4/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 13
    iget-object v3, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-static {v3}, Ld4/c;->d(Ljava/net/Socket;)V

    .line 14
    iget-object v3, p0, Lf4/c;->c:Ljava/net/Socket;

    invoke-static {v3}, Ld4/c;->d(Ljava/net/Socket;)V

    .line 15
    iput-object p4, p0, Lf4/c;->d:Ljava/net/Socket;

    .line 16
    iput-object p4, p0, Lf4/c;->c:Ljava/net/Socket;

    .line 17
    iput-object p4, p0, Lf4/c;->i:Lokio/BufferedSource;

    .line 18
    iput-object p4, p0, Lf4/c;->j:Lokio/BufferedSink;

    .line 19
    iput-object p4, p0, Lf4/c;->e:Lc4/p;

    .line 20
    iput-object p4, p0, Lf4/c;->f:Lc4/w;

    if-nez v1, :cond_4

    .line 21
    new-instance v1, Lf4/e;

    invoke-direct {v1, v2}, Lf4/e;-><init>(Ljava/io/IOException;)V

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {v1, v2}, Lf4/e;->b(Ljava/io/IOException;)V

    :goto_2
    if-eqz p5, :cond_5

    .line 23
    invoke-virtual {v0, v2}, Lf4/b;->b(Ljava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 24
    :cond_5
    throw v1

    :cond_6
    return-void

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v0}, Lc4/c0;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v1}, Lc4/c0;->a()Lc4/a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lc4/a;->i()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lf4/c;->c:Ljava/net/Socket;

    .line 5
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 6
    :try_start_0
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object p2

    iget-object v0, p0, Lf4/c;->c:Ljava/net/Socket;

    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v1}, Lc4/c0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p2, v0, v1, p1}, Li4/e;->f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object p1, p0, Lf4/c;->c:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lf4/c;->i:Lokio/BufferedSource;

    .line 8
    iget-object p1, p0, Lf4/c;->c:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lf4/c;->j:Lokio/BufferedSink;

    return-void

    .line 9
    :catch_0
    new-instance p1, Ljava/net/ConnectException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to connect to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v0}, Lc4/c0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(IILf4/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {p1}, Lc4/c0;->a()Lc4/a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lc4/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lf4/c;->c:Ljava/net/Socket;

    .line 4
    invoke-virtual {p1}, Lc4/a;->k()Lc4/r;

    move-result-object v2

    invoke-virtual {v2}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc4/a;->k()Lc4/r;

    move-result-object v3

    invoke-virtual {v3}, Lc4/r;->A()I

    move-result v3

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p2, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p2

    check-cast p2, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p3, p2}, Lf4/b;->a(Ljavax/net/ssl/SSLSocket;)Lc4/k;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Lc4/k;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lc4/a;->k()Lc4/r;

    move-result-object v2

    invoke-virtual {v2}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc4/a;->e()Ljava/util/List;

    move-result-object v3

    .line 10
    invoke-virtual {v1, p2, v2, v3}, Li4/e;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 12
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-static {v1}, Lc4/p;->b(Ljavax/net/ssl/SSLSession;)Lc4/p;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lc4/a;->d()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {p1}, Lc4/a;->k()Lc4/r;

    move-result-object v3

    invoke-virtual {v3}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {p1}, Lc4/a;->a()Lc4/g;

    move-result-object v2

    invoke-virtual {p1}, Lc4/a;->k()Lc4/r;

    move-result-object p1

    invoke-virtual {p1}, Lc4/r;->o()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v1}, Lc4/p;->c()Ljava/util/List;

    move-result-object v3

    .line 16
    invoke-virtual {v2, p1, v3}, Lc4/g;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 17
    invoke-virtual {p3}, Lc4/k;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Li4/e;->i(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_1
    iput-object p2, p0, Lf4/c;->d:Ljava/net/Socket;

    .line 20
    invoke-static {p2}, Lokio/Okio;->source(Ljava/net/Socket;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lf4/c;->i:Lokio/BufferedSource;

    .line 21
    iget-object p1, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/net/Socket;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lf4/c;->j:Lokio/BufferedSink;

    .line 22
    iput-object v1, p0, Lf4/c;->e:Lc4/p;

    if-eqz v0, :cond_2

    .line 23
    invoke-static {v0}, Lc4/w;->b(Ljava/lang/String;)Lc4/w;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lc4/w;->c:Lc4/w;

    :goto_0
    iput-object p1, p0, Lf4/c;->f:Lc4/w;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Li4/e;->a(Ljavax/net/ssl/SSLSocket;)V

    return-void

    .line 25
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lc4/p;->c()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 26
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc4/a;->k()Lc4/r;

    move-result-object p1

    invoke-virtual {p1}, Lc4/r;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not verified:\n    certificate: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {p3}, Lc4/g;->c(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    DN: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n    subjectAltNames: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {p3}, Lj4/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 30
    :goto_1
    :try_start_3
    invoke-static {p1}, Ld4/c;->s(Ljava/lang/AssertionError;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 31
    :cond_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v0, :cond_5

    .line 32
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object p2

    invoke-virtual {p2, v0}, Li4/e;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 33
    :cond_5
    invoke-static {v0}, Ld4/c;->d(Ljava/net/Socket;)V

    throw p1
.end method

.method public final i(IILc4/y;Lc4/r;)Lc4/y;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Ld4/c;->m(Lc4/r;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2
    :goto_0
    new-instance v0, Lh4/c;

    iget-object v1, p0, Lf4/c;->i:Lokio/BufferedSource;

    iget-object v2, p0, Lf4/c;->j:Lokio/BufferedSink;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lh4/c;-><init>(Lc4/v;Lf4/g;Lokio/BufferedSource;Lokio/BufferedSink;)V

    .line 3
    iget-object v1, p0, Lf4/c;->i:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 4
    iget-object v1, p0, Lf4/c;->j:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 5
    invoke-virtual {p3}, Lc4/y;->i()Lc4/q;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lh4/c;->v(Lc4/q;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lh4/c;->c()V

    .line 7
    invoke-virtual {v0}, Lh4/c;->u()Lc4/a0$b;

    move-result-object v1

    invoke-virtual {v1, p3}, Lc4/a0$b;->B(Lc4/y;)Lc4/a0$b;

    move-result-object p3

    invoke-virtual {p3}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object p3

    .line 8
    invoke-static {p3}, Lh4/f;->b(Lc4/a0;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    .line 9
    :cond_0
    invoke-virtual {v0, v4, v5}, Lh4/c;->r(J)Lokio/Source;

    move-result-object v0

    const v1, 0x7fffffff

    .line 10
    invoke-static {v0, v1, v2}, Ld4/c;->v(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 11
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 12
    invoke-virtual {p3}, Lc4/a0;->y()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v0}, Lc4/c0;->a()Lc4/a;

    move-result-object v0

    invoke-virtual {v0}, Lc4/a;->g()Lc4/b;

    move-result-object v0

    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    invoke-interface {v0, v1, p3}, Lc4/b;->a(Lc4/c0;Lc4/a0;)Lc4/y;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    .line 14
    invoke-virtual {p3, v1}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto :goto_0

    .line 15
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p3}, Lc4/a0;->y()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    iget-object p1, p0, Lf4/c;->i:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lf4/c;->j:Lokio/BufferedSink;

    invoke-interface {p1}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 19
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j()Lc4/y;
    .locals 3

    .line 1
    new-instance v0, Lc4/y$b;

    invoke-direct {v0}, Lc4/y$b;-><init>()V

    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    .line 2
    invoke-virtual {v1}, Lc4/c0;->a()Lc4/a;

    move-result-object v1

    invoke-virtual {v1}, Lc4/a;->k()Lc4/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc4/y$b;->n(Lc4/r;)Lc4/y$b;

    move-result-object v0

    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    .line 3
    invoke-virtual {v1}, Lc4/c0;->a()Lc4/a;

    move-result-object v1

    invoke-virtual {v1}, Lc4/a;->k()Lc4/r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ld4/c;->m(Lc4/r;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 4
    invoke-virtual {v0, v1, v2}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    move-result-object v0

    .line 5
    invoke-static {}, Ld4/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lc4/y$b;->i(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lc4/y$b;->g()Lc4/y;

    move-result-object v0

    return-object v0
.end method

.method public final k(IILf4/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v0}, Lc4/c0;->a()Lc4/a;

    move-result-object v0

    invoke-virtual {v0}, Lc4/a;->j()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lf4/c;->h(IILf4/b;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lc4/w;->c:Lc4/w;

    iput-object p1, p0, Lf4/c;->f:Lc4/w;

    .line 4
    iget-object p1, p0, Lf4/c;->c:Ljava/net/Socket;

    iput-object p1, p0, Lf4/c;->d:Ljava/net/Socket;

    .line 5
    :goto_0
    iget-object p1, p0, Lf4/c;->f:Lc4/w;

    sget-object p2, Lc4/w;->d:Lc4/w;

    const/4 p3, 0x1

    if-eq p1, p2, :cond_2

    sget-object p2, Lc4/w;->e:Lc4/w;

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iput p3, p0, Lf4/c;->k:I

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lf4/c;->d:Ljava/net/Socket;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 8
    new-instance p1, Lg4/d$h;

    invoke-direct {p1, p3}, Lg4/d$h;-><init>(Z)V

    iget-object p2, p0, Lf4/c;->d:Ljava/net/Socket;

    iget-object p3, p0, Lf4/c;->b:Lc4/c0;

    .line 9
    invoke-virtual {p3}, Lc4/c0;->a()Lc4/a;

    move-result-object p3

    invoke-virtual {p3}, Lc4/a;->k()Lc4/r;

    move-result-object p3

    invoke-virtual {p3}, Lc4/r;->o()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lf4/c;->i:Lokio/BufferedSource;

    iget-object v1, p0, Lf4/c;->j:Lokio/BufferedSink;

    invoke-virtual {p1, p2, p3, v0, v1}, Lg4/d$h;->l(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lg4/d$h;

    move-result-object p1

    iget-object p2, p0, Lf4/c;->f:Lc4/w;

    .line 10
    invoke-virtual {p1, p2}, Lg4/d$h;->k(Lc4/w;)Lg4/d$h;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p0}, Lg4/d$h;->j(Lg4/d$i;)Lg4/d$h;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lg4/d$h;->i()Lg4/d;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lg4/d;->w0()V

    .line 14
    invoke-virtual {p1}, Lg4/d;->Z()I

    move-result p2

    iput p2, p0, Lf4/c;->k:I

    .line 15
    iput-object p1, p0, Lf4/c;->g:Lg4/d;

    :goto_2
    return-void
.end method

.method public l()Lc4/p;
    .locals 1

    iget-object v0, p0, Lf4/c;->e:Lc4/p;

    return-object v0
.end method

.method public m(Z)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf4/c;->g:Lg4/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_3

    .line 3
    :try_start_0
    iget-object p1, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    iget-object v0, p0, Lf4/c;->i:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 6
    :try_start_2
    iget-object v0, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lf4/c;->d:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lf4/c;->g:Lg4/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lf4/c;->d:Ljava/net/Socket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    .line 2
    invoke-virtual {v1}, Lc4/c0;->a()Lc4/a;

    move-result-object v1

    invoke-virtual {v1}, Lc4/a;->k()Lc4/r;

    move-result-object v1

    invoke-virtual {v1}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    invoke-virtual {v1}, Lc4/c0;->a()Lc4/a;

    move-result-object v1

    invoke-virtual {v1}, Lc4/a;->k()Lc4/r;

    move-result-object v1

    invoke-virtual {v1}, Lc4/r;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    .line 3
    invoke-virtual {v1}, Lc4/c0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf4/c;->b:Lc4/c0;

    .line 4
    invoke-virtual {v1}, Lc4/c0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf4/c;->e:Lc4/p;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lc4/p;->a()Lc4/h;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf4/c;->f:Lc4/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
