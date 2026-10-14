.class public final Lc4/a;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field public final a:Lc4/r;

.field public final b:Lc4/o;

.field public final c:Ljavax/net/SocketFactory;

.field public final d:Lc4/b;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/w;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/k;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/net/ProxySelector;

.field public final h:Ljava/net/Proxy;

.field public final i:Ljavax/net/ssl/SSLSocketFactory;

.field public final j:Ljavax/net/ssl/HostnameVerifier;

.field public final k:Lc4/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILc4/o;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lc4/g;Lc4/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lc4/o;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lc4/g;",
            "Lc4/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lc4/w;",
            ">;",
            "Ljava/util/List<",
            "Lc4/k;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc4/r$b;

    invoke-direct {v0}, Lc4/r$b;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lc4/r$b;->t(Ljava/lang/String;)Lc4/r$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lc4/r$b;->h(Ljava/lang/String;)Lc4/r$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lc4/r$b;->o(I)Lc4/r$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lc4/r$b;->b()Lc4/r;

    move-result-object p1

    iput-object p1, p0, Lc4/a;->a:Lc4/r;

    const-string p1, "dns == null"

    .line 7
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lc4/a;->b:Lc4/o;

    const-string p1, "socketFactory == null"

    .line 9
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object p4, p0, Lc4/a;->c:Ljavax/net/SocketFactory;

    const-string p1, "proxyAuthenticator == null"

    .line 11
    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iput-object p8, p0, Lc4/a;->d:Lc4/b;

    const-string p1, "protocols == null"

    .line 13
    invoke-static {p10, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-static {p10}, Ld4/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc4/a;->e:Ljava/util/List;

    const-string p1, "connectionSpecs == null"

    .line 15
    invoke-static {p11, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-static {p11}, Ld4/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc4/a;->f:Ljava/util/List;

    const-string p1, "proxySelector == null"

    .line 17
    invoke-static {p12, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iput-object p12, p0, Lc4/a;->g:Ljava/net/ProxySelector;

    .line 19
    iput-object p9, p0, Lc4/a;->h:Ljava/net/Proxy;

    .line 20
    iput-object p5, p0, Lc4/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 21
    iput-object p6, p0, Lc4/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 22
    iput-object p7, p0, Lc4/a;->k:Lc4/g;

    return-void
.end method


# virtual methods
.method public a()Lc4/g;
    .locals 1

    iget-object v0, p0, Lc4/a;->k:Lc4/g;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc4/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc4/a;->f:Ljava/util/List;

    return-object v0
.end method

.method public c()Lc4/o;
    .locals 1

    iget-object v0, p0, Lc4/a;->b:Lc4/o;

    return-object v0
.end method

.method public d()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lc4/a;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc4/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc4/a;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lc4/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lc4/a;

    .line 3
    iget-object v0, p0, Lc4/a;->a:Lc4/r;

    iget-object v2, p1, Lc4/a;->a:Lc4/r;

    invoke-virtual {v0, v2}, Lc4/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->b:Lc4/o;

    iget-object v2, p1, Lc4/a;->b:Lc4/o;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->d:Lc4/b;

    iget-object v2, p1, Lc4/a;->d:Lc4/b;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->e:Ljava/util/List;

    iget-object v2, p1, Lc4/a;->e:Ljava/util/List;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->f:Ljava/util/List;

    iget-object v2, p1, Lc4/a;->f:Ljava/util/List;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->g:Ljava/net/ProxySelector;

    iget-object v2, p1, Lc4/a;->g:Ljava/net/ProxySelector;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->h:Ljava/net/Proxy;

    iget-object v2, p1, Lc4/a;->h:Ljava/net/Proxy;

    .line 9
    invoke-static {v0, v2}, Ld4/c;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Lc4/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 10
    invoke-static {v0, v2}, Ld4/c;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Lc4/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 11
    invoke-static {v0, v2}, Ld4/c;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc4/a;->k:Lc4/g;

    iget-object p1, p1, Lc4/a;->k:Lc4/g;

    .line 12
    invoke-static {v0, p1}, Ld4/c;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lc4/a;->h:Ljava/net/Proxy;

    return-object v0
.end method

.method public g()Lc4/b;
    .locals 1

    iget-object v0, p0, Lc4/a;->d:Lc4/b;

    return-object v0
.end method

.method public h()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lc4/a;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/a;->a:Lc4/r;

    invoke-virtual {v0}, Lc4/r;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Lc4/a;->b:Lc4/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lc4/a;->d:Lc4/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lc4/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lc4/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v0, p0, Lc4/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lc4/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-object v0, p0, Lc4/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Lc4/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-object v0, p0, Lc4/a;->k:Lc4/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method

.method public i()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lc4/a;->c:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lc4/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Lc4/r;
    .locals 1

    iget-object v0, p0, Lc4/a;->a:Lc4/r;

    return-object v0
.end method
