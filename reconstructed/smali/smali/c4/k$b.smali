.class public final Lc4/k$b;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Lc4/k;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lc4/k;->a(Lc4/k;)Z

    move-result v0

    iput-boolean v0, p0, Lc4/k$b;->a:Z

    .line 5
    invoke-static {p1}, Lc4/k;->b(Lc4/k;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/k$b;->b:[Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lc4/k;->c(Lc4/k;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc4/k$b;->c:[Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lc4/k;->d(Lc4/k;)Z

    move-result p1

    iput-boolean p1, p0, Lc4/k$b;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lc4/k$b;->a:Z

    return-void
.end method

.method public static synthetic a(Lc4/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc4/k$b;->a:Z

    return p0
.end method

.method public static synthetic b(Lc4/k$b;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc4/k$b;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lc4/k$b;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc4/k$b;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lc4/k$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc4/k$b;->d:Z

    return p0
.end method


# virtual methods
.method public e()Lc4/k;
    .locals 2

    new-instance v0, Lc4/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc4/k;-><init>(Lc4/k$b;Lc4/k$a;)V

    return-object v0
.end method

.method public varargs f([Lc4/h;)Lc4/k$b;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc4/k$b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p1, v1

    iget-object v2, v2, Lc4/h;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lc4/k$b;->g([Ljava/lang/String;)Lc4/k$b;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs g([Ljava/lang/String;)Lc4/k$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc4/k$b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lc4/k$b;->b:[Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Z)Lc4/k$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc4/k$b;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lc4/k$b;->d:Z

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs i([Lc4/d0;)Lc4/k$b;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc4/k$b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 4
    aget-object v2, p1, v1

    iget-object v2, v2, Lc4/d0;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Lc4/k$b;->j([Ljava/lang/String;)Lc4/k$b;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs j([Ljava/lang/String;)Lc4/k$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc4/k$b;->a:Z

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lc4/k$b;->c:[Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
