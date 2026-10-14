.class public abstract Lr4/r;
.super Lr4/h;
.source "TransportIpAddress.java"


# static fields
.field public static final i:Ln4/a;


# instance fields
.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lr4/r;

    .line 2
    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lr4/r;->i:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lr4/r;->h:I

    return-void
.end method


# virtual methods
.method public P()I
    .locals 1

    iget v0, p0, Lr4/r;->h:I

    return v0
.end method

.method public T()[B
    .locals 6

    .line 1
    invoke-virtual {p0}, Lr4/h;->I()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lr4/h;->I()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lr4/h;->I()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 4
    const-class v3, Ljava/net/Inet6Address;

    const-string v4, "getScopeId"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x4

    goto :goto_0

    :catch_0
    :cond_0
    move v1, v2

    move v3, v1

    .line 7
    :goto_0
    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    new-array v4, v4, [B

    .line 8
    array-length v5, v0

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    array-length v0, v0

    if-lez v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    .line 10
    aput-byte v3, v4, v0

    add-int/lit8 v0, v2, 0x1

    const/high16 v3, 0xff0000

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    .line 11
    aput-byte v3, v4, v2

    add-int/lit8 v2, v0, 0x1

    const v3, 0xff00

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    .line 12
    aput-byte v3, v4, v0

    add-int/lit8 v0, v2, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 13
    aput-byte v1, v4, v2

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 14
    iget v2, p0, Lr4/r;->h:I

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v0

    and-int/lit16 v0, v2, 0xff

    int-to-byte v0, v0

    .line 15
    aput-byte v0, v4, v1

    return-object v4
.end method

.method public U(I)V
    .locals 3

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lr4/r;->h:I

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal port specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public V(Lr4/k;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lr4/k;->e0()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lr4/k;->g0(II)Lr4/k;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lr4/k;->a0()[B

    move-result-object v0

    .line 3
    array-length v3, v0

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    array-length v3, v0

    const/16 v6, 0x14

    if-ne v3, v6, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/h;->M(Ljava/net/InetAddress;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    new-array v6, v3, [B

    .line 6
    invoke-static {v0, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    aget-byte v7, v0, v3

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v4

    add-int/2addr v7, v8

    const/4 v8, 0x3

    add-int/2addr v3, v8

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v7, v0

    :try_start_0
    new-array v0, v8, [Ljava/lang/Class;

    .line 8
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const-class v3, [B

    aput-object v3, v0, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    .line 9
    const-class v3, Ljava/net/Inet6Address;

    const-string v9, "getByAddress"

    invoke-virtual {v3, v9, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v8, v3, v2

    aput-object v6, v3, v5

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 11
    const-class v2, Ljava/net/Inet6Address;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Lr4/h;->M(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    sget-object v0, Lr4/r;->i:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java < 1.5 does not support scoped IPv6 addresses, ignoring scope ID for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 14
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr4/h;->M(Ljava/net/InetAddress;)V

    .line 15
    :goto_1
    invoke-virtual {p1}, Lr4/k;->e0()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lr4/k;->W(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v4

    iput v0, p0, Lr4/r;->h:I

    .line 16
    invoke-virtual {p1}, Lr4/k;->e0()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p1, v1}, Lr4/k;->W(I)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    iput v0, p0, Lr4/r;->h:I

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/r;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lr4/k;

    invoke-virtual {p0}, Lr4/r;->T()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/k;-><init>([B)V

    .line 2
    invoke-virtual {v0, p1}, Lr4/k;->e(Ljava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr4/r;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lr4/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lr4/r;

    invoke-virtual {p1}, Lr4/r;->P()I

    move-result p1

    iget v0, p0, Lr4/r;->h:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lr4/r;->T()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-super {p0, p1}, Lr4/h;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lr4/r;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lr4/h;->hashCode()I

    move-result v0

    iget v1, p0, Lr4/r;->h:I

    add-int/lit8 v1, v1, 0x2

    xor-int/2addr v0, v1

    return v0
.end method

.method public j(Ll4/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lr4/k;

    invoke-direct {v0}, Lr4/k;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lr4/k;->j(Ll4/b;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lr4/r;->V(Lr4/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Wrong encoding of TransportAddress"

    .line 4
    sget-object v1, Lr4/r;->i:Ln4/a;

    invoke-interface {v1, v0}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lr4/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr4/r;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lr4/u;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lr4/h;->u(Lr4/u;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lr4/r;->h:I

    check-cast p1, Lr4/r;

    invoke-virtual {p1}, Lr4/r;->P()I

    move-result p1

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method
