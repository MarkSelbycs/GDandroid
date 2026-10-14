.class public final Lc4/v$b;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lc4/n;

.field public b:Ljava/net/Proxy;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/w;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/k;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/s;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/s;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/net/ProxySelector;

.field public h:Lc4/m;

.field public i:Le4/d;

.field public j:Ljavax/net/SocketFactory;

.field public k:Ljavax/net/ssl/SSLSocketFactory;

.field public l:Lj4/b;

.field public m:Ljavax/net/ssl/HostnameVerifier;

.field public n:Lc4/g;

.field public o:Lc4/b;

.field public p:Lc4/b;

.field public q:Lc4/j;

.field public r:Lc4/o;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc4/v$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc4/v$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lc4/n;

    invoke-direct {v0}, Lc4/n;-><init>()V

    iput-object v0, p0, Lc4/v$b;->a:Lc4/n;

    .line 5
    invoke-static {}, Lc4/v;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc4/v$b;->c:Ljava/util/List;

    .line 6
    invoke-static {}, Lc4/v;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc4/v$b;->d:Ljava/util/List;

    .line 7
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lc4/v$b;->g:Ljava/net/ProxySelector;

    .line 8
    sget-object v0, Lc4/m;->a:Lc4/m;

    iput-object v0, p0, Lc4/v$b;->h:Lc4/m;

    .line 9
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lc4/v$b;->j:Ljavax/net/SocketFactory;

    .line 10
    sget-object v0, Lj4/d;->a:Lj4/d;

    iput-object v0, p0, Lc4/v$b;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 11
    sget-object v0, Lc4/g;->c:Lc4/g;

    iput-object v0, p0, Lc4/v$b;->n:Lc4/g;

    .line 12
    sget-object v0, Lc4/b;->a:Lc4/b;

    iput-object v0, p0, Lc4/v$b;->o:Lc4/b;

    .line 13
    iput-object v0, p0, Lc4/v$b;->p:Lc4/b;

    .line 14
    new-instance v0, Lc4/j;

    invoke-direct {v0}, Lc4/j;-><init>()V

    iput-object v0, p0, Lc4/v$b;->q:Lc4/j;

    .line 15
    sget-object v0, Lc4/o;->a:Lc4/o;

    iput-object v0, p0, Lc4/v$b;->r:Lc4/o;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lc4/v$b;->s:Z

    .line 17
    iput-boolean v0, p0, Lc4/v$b;->t:Z

    .line 18
    iput-boolean v0, p0, Lc4/v$b;->u:Z

    const/16 v0, 0x2710

    .line 19
    iput v0, p0, Lc4/v$b;->v:I

    .line 20
    iput v0, p0, Lc4/v$b;->w:I

    .line 21
    iput v0, p0, Lc4/v$b;->x:I

    return-void
.end method


# virtual methods
.method public a(Lc4/s;)Lc4/v$b;
    .locals 1

    iget-object v0, p0, Lc4/v$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lc4/v;
    .locals 2

    new-instance v0, Lc4/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/v;-><init>(Lc4/v$b;Lc4/v$a;)V

    return-object v0
.end method

.method public c(Lc4/c;)Lc4/v$b;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lc4/v$b;->i:Le4/d;

    return-object p0
.end method

.method public d(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-string v3, "unit == null"

    .line 1
    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p1, p1

    .line 4
    iput p1, p0, Lc4/v$b;->v:I

    return-object p0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/util/List;)Lc4/v$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc4/k;",
            ">;)",
            "Lc4/v$b;"
        }
    .end annotation

    invoke-static {p1}, Ld4/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc4/v$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public f(Lc4/m;)Lc4/v$b;
    .locals 1

    const-string v0, "cookieJar == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc4/v$b;->h:Lc4/m;

    return-object p0
.end method

.method public g(Lc4/o;)Lc4/v$b;
    .locals 1

    const-string v0, "dns == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc4/v$b;->r:Lc4/o;

    return-object p0
.end method

.method public h(Z)Lc4/v$b;
    .locals 0

    iput-boolean p1, p0, Lc4/v$b;->t:Z

    return-object p0
.end method

.method public i(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-string v3, "unit == null"

    .line 1
    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p1, p1

    .line 4
    iput p1, p0, Lc4/v$b;->w:I

    return-object p0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Z)Lc4/v$b;
    .locals 0

    iput-boolean p1, p0, Lc4/v$b;->u:Z

    return-object p0
.end method

.method public k(Ljavax/net/ssl/SSLSocketFactory;)Lc4/v$b;
    .locals 3

    const-string v0, "sslSocketFactory == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Li4/e;->m(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lc4/v$b;->k:Ljavax/net/ssl/SSLSocketFactory;

    .line 4
    invoke-static {v0}, Lj4/b;->b(Ljavax/net/ssl/X509TrustManager;)Lj4/b;

    move-result-object p1

    iput-object p1, p0, Lc4/v$b;->l:Lj4/b;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to extract the trust manager on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Li4/e;->h()Li4/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sslSocketFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    const-string v3, "unit == null"

    .line 1
    invoke-static {p3, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too small."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p1, p1

    .line 4
    iput p1, p0, Lc4/v$b;->x:I

    return-object p0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Timeout too large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
