.class public Lc4/v;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/v$b;
    }
.end annotation


# static fields
.field public static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/w;",
            ">;"
        }
    .end annotation
.end field

.field public static final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final a:Lc4/n;

.field public final b:Ljava/net/Proxy;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc4/w;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
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

.field public final g:Ljava/net/ProxySelector;

.field public final h:Lc4/m;

.field public final i:Le4/d;

.field public final o:Ljavax/net/SocketFactory;

.field public final p:Ljavax/net/ssl/SSLSocketFactory;

.field public final q:Lj4/b;

.field public final r:Ljavax/net/ssl/HostnameVerifier;

.field public final s:Lc4/g;

.field public final t:Lc4/b;

.field public final u:Lc4/b;

.field public final v:Lc4/j;

.field public final w:Lc4/o;

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [Lc4/w;

    .line 1
    sget-object v2, Lc4/w;->e:Lc4/w;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lc4/w;->d:Lc4/w;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lc4/w;->c:Lc4/w;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Ld4/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lc4/v;->D:Ljava/util/List;

    new-array v0, v0, [Lc4/k;

    .line 2
    sget-object v1, Lc4/k;->f:Lc4/k;

    aput-object v1, v0, v3

    sget-object v1, Lc4/k;->g:Lc4/k;

    aput-object v1, v0, v4

    sget-object v1, Lc4/k;->h:Lc4/k;

    aput-object v1, v0, v5

    invoke-static {v0}, Ld4/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc4/v;->E:Ljava/util/List;

    .line 3
    new-instance v0, Lc4/v$a;

    invoke-direct {v0}, Lc4/v$a;-><init>()V

    sput-object v0, Ld4/a;->a:Ld4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lc4/v$b;

    invoke-direct {v0}, Lc4/v$b;-><init>()V

    invoke-direct {p0, v0}, Lc4/v;-><init>(Lc4/v$b;)V

    return-void
.end method

.method public constructor <init>(Lc4/v$b;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lc4/v$b;->a:Lc4/n;

    iput-object v0, p0, Lc4/v;->a:Lc4/n;

    .line 5
    iget-object v0, p1, Lc4/v$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lc4/v;->b:Ljava/net/Proxy;

    .line 6
    iget-object v0, p1, Lc4/v$b;->c:Ljava/util/List;

    iput-object v0, p0, Lc4/v;->c:Ljava/util/List;

    .line 7
    iget-object v0, p1, Lc4/v$b;->d:Ljava/util/List;

    iput-object v0, p0, Lc4/v;->d:Ljava/util/List;

    .line 8
    iget-object v1, p1, Lc4/v$b;->e:Ljava/util/List;

    invoke-static {v1}, Ld4/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc4/v;->e:Ljava/util/List;

    .line 9
    iget-object v1, p1, Lc4/v$b;->f:Ljava/util/List;

    invoke-static {v1}, Ld4/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lc4/v;->f:Ljava/util/List;

    .line 10
    iget-object v1, p1, Lc4/v$b;->g:Ljava/net/ProxySelector;

    iput-object v1, p0, Lc4/v;->g:Ljava/net/ProxySelector;

    .line 11
    iget-object v1, p1, Lc4/v$b;->h:Lc4/m;

    iput-object v1, p0, Lc4/v;->h:Lc4/m;

    .line 12
    iget-object v1, p1, Lc4/v$b;->i:Le4/d;

    iput-object v1, p0, Lc4/v;->i:Le4/d;

    .line 13
    iget-object v1, p1, Lc4/v$b;->j:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lc4/v;->o:Ljavax/net/SocketFactory;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc4/k;

    if-nez v2, :cond_1

    .line 15
    invoke-virtual {v3}, Lc4/k;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p1, Lc4/v$b;->k:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p0}, Lc4/v;->L()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lc4/v;->J(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lc4/v;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 19
    invoke-static {v0}, Lj4/b;->b(Ljavax/net/ssl/X509TrustManager;)Lj4/b;

    move-result-object v0

    iput-object v0, p0, Lc4/v;->q:Lj4/b;

    goto :goto_2

    .line 20
    :cond_4
    :goto_1
    iput-object v0, p0, Lc4/v;->p:Ljavax/net/ssl/SSLSocketFactory;

    .line 21
    iget-object v0, p1, Lc4/v$b;->l:Lj4/b;

    iput-object v0, p0, Lc4/v;->q:Lj4/b;

    .line 22
    :goto_2
    iget-object v0, p1, Lc4/v$b;->m:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lc4/v;->r:Ljavax/net/ssl/HostnameVerifier;

    .line 23
    iget-object v0, p1, Lc4/v$b;->n:Lc4/g;

    iget-object v1, p0, Lc4/v;->q:Lj4/b;

    invoke-virtual {v0, v1}, Lc4/g;->withCertificateChainCleaner(Lj4/b;)Lc4/g;

    move-result-object v0

    iput-object v0, p0, Lc4/v;->s:Lc4/g;

    .line 24
    iget-object v0, p1, Lc4/v$b;->o:Lc4/b;

    iput-object v0, p0, Lc4/v;->t:Lc4/b;

    .line 25
    iget-object v0, p1, Lc4/v$b;->p:Lc4/b;

    iput-object v0, p0, Lc4/v;->u:Lc4/b;

    .line 26
    iget-object v0, p1, Lc4/v$b;->q:Lc4/j;

    iput-object v0, p0, Lc4/v;->v:Lc4/j;

    .line 27
    iget-object v0, p1, Lc4/v$b;->r:Lc4/o;

    iput-object v0, p0, Lc4/v;->w:Lc4/o;

    .line 28
    iget-boolean v0, p1, Lc4/v$b;->s:Z

    iput-boolean v0, p0, Lc4/v;->x:Z

    .line 29
    iget-boolean v0, p1, Lc4/v$b;->t:Z

    iput-boolean v0, p0, Lc4/v;->y:Z

    .line 30
    iget-boolean v0, p1, Lc4/v$b;->u:Z

    iput-boolean v0, p0, Lc4/v;->z:Z

    .line 31
    iget v0, p1, Lc4/v$b;->v:I

    iput v0, p0, Lc4/v;->A:I

    .line 32
    iget v0, p1, Lc4/v$b;->w:I

    iput v0, p0, Lc4/v;->B:I

    .line 33
    iget p1, p1, Lc4/v$b;->x:I

    iput p1, p0, Lc4/v;->C:I

    return-void
.end method

.method public synthetic constructor <init>(Lc4/v$b;Lc4/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc4/v;-><init>(Lc4/v$b;)V

    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 2

    sget-object v0, Lc4/v;->D:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 3

    sget-object v0, Lc4/v;->E:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc4/w;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc4/v;->c:Ljava/util/List;

    return-object v0
.end method

.method public B()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lc4/v;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public D()Lc4/b;
    .locals 1

    iget-object v0, p0, Lc4/v;->t:Lc4/b;

    return-object v0
.end method

.method public E()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lc4/v;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lc4/v;->B:I

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lc4/v;->z:Z

    return v0
.end method

.method public H()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lc4/v;->o:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public I()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lc4/v;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final J(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    :try_start_0
    const-string v0, "TLS"

    .line 1
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final L()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    .line 6
    aget-object v0, v0, v1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected default trust managers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lc4/v;->C:I

    return v0
.end method

.method public d()Lc4/b;
    .locals 1

    iget-object v0, p0, Lc4/v;->u:Lc4/b;

    return-object v0
.end method

.method public e()Lc4/g;
    .locals 1

    iget-object v0, p0, Lc4/v;->s:Lc4/g;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lc4/v;->A:I

    return v0
.end method

.method public g()Lc4/j;
    .locals 1

    iget-object v0, p0, Lc4/v;->v:Lc4/j;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc4/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc4/v;->d:Ljava/util/List;

    return-object v0
.end method

.method public j()Lc4/m;
    .locals 1

    iget-object v0, p0, Lc4/v;->h:Lc4/m;

    return-object v0
.end method

.method public k()Lc4/n;
    .locals 1

    iget-object v0, p0, Lc4/v;->a:Lc4/n;

    return-object v0
.end method

.method public m()Lc4/o;
    .locals 1

    iget-object v0, p0, Lc4/v;->w:Lc4/o;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lc4/v;->y:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lc4/v;->x:Z

    return v0
.end method

.method public u()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lc4/v;->r:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc4/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc4/v;->e:Ljava/util/List;

    return-object v0
.end method

.method public w()Le4/d;
    .locals 1

    iget-object v0, p0, Lc4/v;->i:Le4/d;

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc4/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc4/v;->f:Ljava/util/List;

    return-object v0
.end method

.method public y(Lc4/y;)Lc4/e;
    .locals 1

    new-instance v0, Lc4/x;

    invoke-direct {v0, p0, p1}, Lc4/x;-><init>(Lc4/v;Lc4/y;)V

    return-object v0
.end method
