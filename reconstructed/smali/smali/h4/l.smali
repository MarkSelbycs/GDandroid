.class public final Lh4/l;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lc4/s;


# instance fields
.field public final a:Lc4/v;

.field public b:Lf4/g;

.field public c:Z

.field public volatile d:Z


# direct methods
.method public constructor <init>(Lc4/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh4/l;->a:Lc4/v;

    return-void
.end method


# virtual methods
.method public a(Lc4/s$a;)Lc4/a0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc4/s$a;->b()Lc4/y;

    move-result-object v0

    .line 2
    new-instance v1, Lf4/g;

    iget-object v2, p0, Lh4/l;->a:Lc4/v;

    .line 3
    invoke-virtual {v2}, Lc4/v;->g()Lc4/j;

    move-result-object v2

    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v3

    invoke-virtual {p0, v3}, Lh4/l;->b(Lc4/r;)Lc4/a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lf4/g;-><init>(Lc4/j;Lc4/a;)V

    iput-object v1, p0, Lh4/l;->b:Lf4/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    .line 4
    :goto_0
    iget-boolean v5, p0, Lh4/l;->d:Z

    if-nez v5, :cond_8

    .line 5
    :try_start_0
    move-object v5, p1

    check-cast v5, Lh4/i;

    iget-object v6, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {v5, v0, v6, v2, v2}, Lh4/i;->d(Lc4/y;Lf4/g;Lh4/h;Lc4/i;)Lc4/a0;

    move-result-object v0
    :try_end_0
    .catch Lf4/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object v0

    .line 7
    invoke-virtual {v3}, Lc4/a0;->K()Lc4/a0$b;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v2}, Lc4/a0$b;->n(Lc4/b0;)Lc4/a0$b;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object v3

    .line 10
    invoke-virtual {v0, v3}, Lc4/a0$b;->x(Lc4/a0;)Lc4/a0$b;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lc4/a0$b;->o()Lc4/a0;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 12
    invoke-virtual {p0, v3}, Lh4/l;->c(Lc4/a0;)Lc4/y;

    move-result-object v0

    if-nez v0, :cond_2

    .line 13
    iget-boolean p1, p0, Lh4/l;->c:Z

    if-nez p1, :cond_1

    .line 14
    iget-object p1, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {p1}, Lf4/g;->i()V

    :cond_1
    return-object v3

    .line 15
    :cond_2
    invoke-virtual {v3}, Lc4/a0;->u()Lc4/b0;

    move-result-object v5

    invoke-static {v5}, Ld4/c;->c(Ljava/io/Closeable;)V

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    if-gt v4, v5, :cond_5

    .line 16
    invoke-virtual {v0}, Lc4/y;->f()Lc4/z;

    .line 17
    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lh4/l;->h(Lc4/a0;Lc4/r;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 18
    iget-object v5, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {v5}, Lf4/g;->i()V

    .line 19
    new-instance v5, Lf4/g;

    iget-object v6, p0, Lh4/l;->a:Lc4/v;

    .line 20
    invoke-virtual {v6}, Lc4/v;->g()Lc4/j;

    move-result-object v6

    invoke-virtual {v0}, Lc4/y;->m()Lc4/r;

    move-result-object v7

    invoke-virtual {p0, v7}, Lh4/l;->b(Lc4/r;)Lc4/a;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lf4/g;-><init>(Lc4/j;Lc4/a;)V

    iput-object v5, p0, Lh4/l;->b:Lf4/g;

    goto :goto_0

    .line 21
    :cond_3
    iget-object v5, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {v5}, Lf4/g;->l()Lh4/h;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing the body of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    iget-object p1, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {p1}, Lf4/g;->i()V

    .line 24
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v5

    .line 25
    :try_start_1
    invoke-virtual {p0, v5, v1, v0}, Lh4/l;->g(Ljava/io/IOException;ZLc4/y;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_0

    :cond_6
    throw v5

    :catch_1
    move-exception v5

    .line 26
    invoke-virtual {v5}, Lf4/e;->e()Ljava/io/IOException;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7, v0}, Lh4/l;->g(Ljava/io/IOException;ZLc4/y;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Lf4/e;->e()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :goto_1
    iget-object v0, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {v0, v2}, Lf4/g;->m(Ljava/io/IOException;)V

    .line 28
    iget-object v0, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {v0}, Lf4/g;->i()V

    throw p1

    .line 29
    :cond_8
    iget-object p1, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {p1}, Lf4/g;->i()V

    .line 30
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lc4/r;)Lc4/a;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Lc4/r;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v1}, Lc4/v;->I()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 3
    iget-object v1, v0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v1}, Lc4/v;->u()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    .line 4
    iget-object v3, v0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v3}, Lc4/v;->e()Lc4/g;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    .line 5
    :goto_0
    new-instance v1, Lc4/a;

    invoke-virtual/range {p1 .. p1}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lc4/r;->A()I

    move-result v6

    iget-object v2, v0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v2}, Lc4/v;->m()Lc4/o;

    move-result-object v7

    iget-object v2, v0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v2}, Lc4/v;->H()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lh4/l;->a:Lc4/v;

    .line 6
    invoke-virtual {v2}, Lc4/v;->D()Lc4/b;

    move-result-object v12

    iget-object v2, v0, Lh4/l;->a:Lc4/v;

    .line 7
    invoke-virtual {v2}, Lc4/v;->B()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v2}, Lc4/v;->A()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v2}, Lc4/v;->h()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v2}, Lc4/v;->E()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lc4/a;-><init>(Ljava/lang/String;ILc4/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lc4/g;Lc4/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method public final c(Lc4/a0;)Lc4/y;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 1
    iget-object v0, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {v0}, Lf4/g;->b()Lf4/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc4/i;->a()Lc4/c0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lc4/a0;->y()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object v3

    invoke-virtual {v3}, Lc4/y;->k()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x133

    const-string v5, "GET"

    if-eq v2, v4, :cond_6

    const/16 v4, 0x134

    if-eq v2, v4, :cond_6

    const/16 v4, 0x191

    if-eq v2, v4, :cond_5

    const/16 v4, 0x197

    if-eq v2, v4, :cond_2

    const/16 v0, 0x198

    if-eq v2, v0, :cond_1

    packed-switch v2, :pswitch_data_0

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object v0

    invoke-virtual {v0}, Lc4/y;->f()Lc4/z;

    .line 6
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lc4/c0;->b()Ljava/net/Proxy;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lh4/l;->a:Lc4/v;

    .line 8
    invoke-virtual {v1}, Lc4/v;->B()Ljava/net/Proxy;

    move-result-object v1

    .line 9
    :goto_1
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_4

    .line 10
    iget-object v1, p0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v1}, Lc4/v;->D()Lc4/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lc4/b;->a(Lc4/c0;Lc4/a0;)Lc4/y;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    iget-object v1, p0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v1}, Lc4/v;->d()Lc4/b;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lc4/b;->a(Lc4/c0;Lc4/a0;)Lc4/y;

    move-result-object p1

    return-object p1

    .line 13
    :cond_6
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "HEAD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object v1

    .line 14
    :cond_7
    :pswitch_0
    iget-object v0, p0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v0}, Lc4/v;->p()Z

    move-result v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "Location"

    .line 15
    invoke-virtual {p1, v0}, Lc4/a0;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    return-object v1

    .line 16
    :cond_9
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object v2

    invoke-virtual {v2}, Lc4/y;->m()Lc4/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc4/r;->D(Ljava/lang/String;)Lc4/r;

    move-result-object v0

    if-nez v0, :cond_a

    return-object v1

    .line 17
    :cond_a
    invoke-virtual {v0}, Lc4/r;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object v4

    invoke-virtual {v4}, Lc4/y;->m()Lc4/r;

    move-result-object v4

    invoke-virtual {v4}, Lc4/r;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 18
    iget-object v2, p0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v2}, Lc4/v;->t()Z

    move-result v2

    if-nez v2, :cond_b

    return-object v1

    .line 19
    :cond_b
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object v2

    invoke-virtual {v2}, Lc4/y;->l()Lc4/y$b;

    move-result-object v2

    .line 20
    invoke-static {v3}, Lh4/g;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 21
    invoke-static {v3}, Lh4/g;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 22
    invoke-virtual {v2, v5, v1}, Lc4/y$b;->k(Ljava/lang/String;Lc4/z;)Lc4/y$b;

    goto :goto_2

    .line 23
    :cond_c
    invoke-virtual {v2, v3, v1}, Lc4/y$b;->k(Ljava/lang/String;Lc4/z;)Lc4/y$b;

    :goto_2
    const-string v1, "Transfer-Encoding"

    .line 24
    invoke-virtual {v2, v1}, Lc4/y$b;->m(Ljava/lang/String;)Lc4/y$b;

    const-string v1, "Content-Length"

    .line 25
    invoke-virtual {v2, v1}, Lc4/y$b;->m(Ljava/lang/String;)Lc4/y$b;

    const-string v1, "Content-Type"

    .line 26
    invoke-virtual {v2, v1}, Lc4/y$b;->m(Ljava/lang/String;)Lc4/y$b;

    .line 27
    :cond_d
    invoke-virtual {p0, p1, v0}, Lh4/l;->h(Lc4/a0;Lc4/r;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "Authorization"

    .line 28
    invoke-virtual {v2, p1}, Lc4/y$b;->m(Ljava/lang/String;)Lc4/y$b;

    .line 29
    :cond_e
    invoke-virtual {v2, v0}, Lc4/y$b;->n(Lc4/r;)Lc4/y$b;

    move-result-object p1

    invoke-virtual {p1}, Lc4/y$b;->g()Lc4/y;

    move-result-object p1

    return-object p1

    .line 30
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lh4/l;->d:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lh4/l;->c:Z

    return v0
.end method

.method public final f(Ljava/io/IOException;Z)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 4
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    .line 6
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final g(Ljava/io/IOException;ZLc4/y;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {v0, p1}, Lf4/g;->m(Ljava/io/IOException;)V

    .line 2
    iget-object v0, p0, Lh4/l;->a:Lc4/v;

    invoke-virtual {v0}, Lc4/v;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p3}, Lc4/y;->f()Lc4/z;

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Lh4/l;->f(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p1, p0, Lh4/l;->b:Lf4/g;

    invoke-virtual {p1}, Lf4/g;->f()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public final h(Lc4/a0;Lc4/r;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lc4/a0;->P()Lc4/y;

    move-result-object p1

    invoke-virtual {p1}, Lc4/y;->m()Lc4/r;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lc4/r;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lc4/r;->A()I

    move-result v0

    invoke-virtual {p2}, Lc4/r;->A()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lc4/r;->E()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lc4/r;->E()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
