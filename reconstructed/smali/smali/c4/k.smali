.class public final Lc4/k;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc4/k$b;
    }
.end annotation


# static fields
.field public static final e:[Lc4/h;

.field public static final f:Lc4/k;

.field public static final g:Lc4/k;

.field public static final h:Lc4/k;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0xd

    new-array v0, v0, [Lc4/h;

    .line 1
    sget-object v1, Lc4/h;->M0:Lc4/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lc4/h;->Q0:Lc4/h;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lc4/h;->Y:Lc4/h;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lc4/h;->o0:Lc4/h;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lc4/h;->n0:Lc4/h;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lc4/h;->x0:Lc4/h;

    const/4 v6, 0x5

    aput-object v1, v0, v6

    sget-object v1, Lc4/h;->y0:Lc4/h;

    const/4 v6, 0x6

    aput-object v1, v0, v6

    sget-object v1, Lc4/h;->H:Lc4/h;

    const/4 v6, 0x7

    aput-object v1, v0, v6

    sget-object v1, Lc4/h;->L:Lc4/h;

    const/16 v6, 0x8

    aput-object v1, v0, v6

    sget-object v1, Lc4/h;->W:Lc4/h;

    const/16 v6, 0x9

    aput-object v1, v0, v6

    sget-object v1, Lc4/h;->F:Lc4/h;

    const/16 v6, 0xa

    aput-object v1, v0, v6

    sget-object v1, Lc4/h;->J:Lc4/h;

    const/16 v6, 0xb

    aput-object v1, v0, v6

    sget-object v1, Lc4/h;->j:Lc4/h;

    const/16 v6, 0xc

    aput-object v1, v0, v6

    sput-object v0, Lc4/k;->e:[Lc4/h;

    .line 2
    new-instance v1, Lc4/k$b;

    invoke-direct {v1, v3}, Lc4/k$b;-><init>(Z)V

    .line 3
    invoke-virtual {v1, v0}, Lc4/k$b;->f([Lc4/h;)Lc4/k$b;

    move-result-object v0

    new-array v1, v5, [Lc4/d0;

    sget-object v5, Lc4/d0;->b:Lc4/d0;

    aput-object v5, v1, v2

    sget-object v5, Lc4/d0;->c:Lc4/d0;

    aput-object v5, v1, v3

    sget-object v5, Lc4/d0;->d:Lc4/d0;

    aput-object v5, v1, v4

    .line 4
    invoke-virtual {v0, v1}, Lc4/k$b;->i([Lc4/d0;)Lc4/k$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lc4/k$b;->h(Z)Lc4/k$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lc4/k$b;->e()Lc4/k;

    move-result-object v0

    sput-object v0, Lc4/k;->f:Lc4/k;

    .line 7
    new-instance v1, Lc4/k$b;

    invoke-direct {v1, v0}, Lc4/k$b;-><init>(Lc4/k;)V

    new-array v0, v3, [Lc4/d0;

    aput-object v5, v0, v2

    .line 8
    invoke-virtual {v1, v0}, Lc4/k$b;->i([Lc4/d0;)Lc4/k$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v3}, Lc4/k$b;->h(Z)Lc4/k$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lc4/k$b;->e()Lc4/k;

    move-result-object v0

    sput-object v0, Lc4/k;->g:Lc4/k;

    .line 11
    new-instance v0, Lc4/k$b;

    invoke-direct {v0, v2}, Lc4/k$b;-><init>(Z)V

    invoke-virtual {v0}, Lc4/k$b;->e()Lc4/k;

    move-result-object v0

    sput-object v0, Lc4/k;->h:Lc4/k;

    return-void
.end method

.method public constructor <init>(Lc4/k$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lc4/k$b;->a(Lc4/k$b;)Z

    move-result v0

    iput-boolean v0, p0, Lc4/k;->a:Z

    .line 4
    invoke-static {p1}, Lc4/k$b;->b(Lc4/k$b;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/k;->c:[Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lc4/k$b;->c(Lc4/k$b;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/k;->d:[Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lc4/k$b;->d(Lc4/k$b;)Z

    move-result p1

    iput-boolean p1, p0, Lc4/k;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lc4/k$b;Lc4/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc4/k;-><init>(Lc4/k$b;)V

    return-void
.end method

.method public static synthetic a(Lc4/k;)Z
    .locals 0

    iget-boolean p0, p0, Lc4/k;->a:Z

    return p0
.end method

.method public static synthetic b(Lc4/k;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc4/k;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lc4/k;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc4/k;->d:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lc4/k;)Z
    .locals 0

    iget-boolean p0, p0, Lc4/k;->b:Z

    return p0
.end method

.method public static i([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1
    array-length v1, p0

    if-eqz v1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 3
    invoke-static {p1, v3}, Ld4/c;->p([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public e(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lc4/k;->j(Ljavax/net/ssl/SSLSocket;Z)Lc4/k;

    move-result-object p2

    .line 2
    iget-object v0, p2, Lc4/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p2, Lc4/k;->c:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lc4/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lc4/k;

    .line 3
    iget-boolean v2, p0, Lc4/k;->a:Z

    iget-boolean v3, p1, Lc4/k;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    if-eqz v2, :cond_5

    .line 4
    iget-object v2, p0, Lc4/k;->c:[Ljava/lang/String;

    iget-object v3, p1, Lc4/k;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lc4/k;->d:[Ljava/lang/String;

    iget-object v3, p1, Lc4/k;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Lc4/k;->b:Z

    iget-boolean p1, p1, Lc4/k;->b:Z

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public f()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc4/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc4/k;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lc4/h;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lc4/k;->c:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4
    aget-object v2, v2, v1

    invoke-static {v2}, Lc4/h;->a(Ljava/lang/String;)Lc4/h;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ld4/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc4/k;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lc4/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc4/k;->i([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lc4/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc4/k;->i([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lc4/k;->a:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc4/k;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lc4/k;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lc4/k;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lc4/k;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    return v0
.end method

.method public final j(Ljavax/net/ssl/SSLSocket;Z)Lc4/k;
    .locals 4

    .line 1
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lc4/k;->c:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ld4/c;->r(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    iget-object v2, p0, Lc4/k;->d:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ld4/c;->r(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    const-string p2, "TLS_FALLBACK_SCSV"

    invoke-static {p1, p2}, Ld4/c;->p([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    .line 8
    invoke-static {v1, p2}, Ld4/c;->e([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_2
    new-instance p1, Lc4/k$b;

    invoke-direct {p1, p0}, Lc4/k$b;-><init>(Lc4/k;)V

    .line 10
    invoke-virtual {p1, v1}, Lc4/k$b;->g([Ljava/lang/String;)Lc4/k$b;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v0}, Lc4/k$b;->j([Ljava/lang/String;)Lc4/k$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lc4/k$b;->e()Lc4/k;

    move-result-object p1

    return-object p1
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lc4/k;->b:Z

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc4/d0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc4/k;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lc4/d0;

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lc4/k;->d:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 4
    aget-object v2, v2, v1

    invoke-static {v2}, Lc4/d0;->b(Ljava/lang/String;)Lc4/d0;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Ld4/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc4/k;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lc4/k;->c:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc4/k;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lc4/k;->d:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lc4/k;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lc4/k;->b:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
