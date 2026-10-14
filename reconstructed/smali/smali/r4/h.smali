.class public Lr4/h;
.super Lr4/m;
.source "IpAddress.java"


# static fields
.field public static final e:Ln4/a;

.field public static final f:[B

.field public static final g:Ljava/net/InetAddress;


# instance fields
.field public d:Ljava/net/InetAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lr4/a;

    .line 2
    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lr4/h;->e:Ln4/a;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lr4/h;->f:[B

    .line 4
    invoke-static {}, Lr4/h;->H()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lr4/h;->g:Ljava/net/InetAddress;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr4/m;-><init>()V

    .line 2
    sget-object v0, Lr4/h;->g:Ljava/net/InetAddress;

    iput-object v0, p0, Lr4/h;->d:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lr4/m;-><init>()V

    .line 7
    invoke-virtual {p0, p1}, Lr4/h;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lr4/m;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lr4/h;->d:Ljava/net/InetAddress;

    return-void
.end method

.method public static H()Ljava/net/InetAddress;
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lr4/h;->f:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lr4/h;->e:Ln4/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create any IpAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ln4/a;->h(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public I()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lr4/h;->d:Ljava/net/InetAddress;

    return-object v0
.end method

.method public M(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lr4/h;->d:Ljava/net/InetAddress;

    return-void
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/h;

    iget-object v1, p0, Lr4/h;->d:Ljava/net/InetAddress;

    invoke-direct {v0, v1}, Lr4/h;-><init>(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lr4/u;

    invoke-virtual {p0, p1}, Lr4/h;->u(Lr4/u;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1
    iget-object v2, p0, Lr4/h;->d:Ljava/net/InetAddress;

    instance-of v3, v2, Ljava/net/Inet6Address;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    check-cast v2, Ljava/net/Inet6Address;

    .line 3
    invoke-virtual {v2}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lr4/h;->d:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 5
    array-length v3, v2

    add-int/lit8 v3, v3, -0x5

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    const/16 v0, 0x40

    .line 7
    invoke-static {p1, v0, v1}, Ll4/a;->q(Ljava/io/OutputStream;B[B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr4/h;

    if-eqz v0, :cond_0

    check-cast p1, Lr4/h;

    invoke-virtual {p0, p1}, Lr4/h;->u(Lr4/u;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lr4/h;->d:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lr4/h;->d:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

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
    new-instance v0, Ll4/a$a;

    invoke-direct {v0}, Ll4/a$a;-><init>()V

    .line 2
    invoke-static {p1, v0}, Ll4/a;->j(Ll4/b;Ll4/a$a;)[B

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 4
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lr4/h;->d:Ljava/net/InetAddress;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpAddress encoding error, wrong length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong type encountered when decoding Counter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ll4/a$a;->a()B

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/h;->d:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "0.0.0.0"

    return-object v0
.end method

.method public u(Lr4/u;)I
    .locals 2

    .line 1
    new-instance v0, Lr4/k;

    iget-object v1, p0, Lr4/h;->d:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lr4/k;-><init>([B)V

    .line 2
    new-instance v1, Lr4/k;

    check-cast p1, Lr4/h;

    invoke-virtual {p1}, Lr4/h;->I()Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lr4/k;-><init>([B)V

    invoke-virtual {v0, v1}, Lr4/k;->u(Lr4/u;)I

    move-result p1

    return p1
.end method
