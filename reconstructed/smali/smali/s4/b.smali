.class public Ls4/b;
.super Ls4/d;
.source "DefaultUdpTransportMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls4/b$a;
    }
.end annotation


# static fields
.field public static final j:Ln4/a;


# instance fields
.field public e:Ljava/net/DatagramSocket;

.field public f:Lt4/k;

.field public g:Ls4/b$a;

.field public h:I

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Ls4/b;

    .line 2
    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Ls4/b;->j:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lr4/s;

    const-string v1, "0.0.0.0/0"

    invoke-direct {v0, v1}, Lr4/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ls4/d;-><init>(Lr4/s;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ls4/b;->e:Ljava/net/DatagramSocket;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ls4/b;->h:I

    .line 4
    iput v0, p0, Ls4/b;->i:I

    .line 5
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Ls4/d;->d:Lr4/s;

    invoke-virtual {v1}, Lr4/r;->P()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v0, p0, Ls4/b;->e:Ljava/net/DatagramSocket;

    return-void
.end method

.method public static synthetic j(Ls4/b;)I
    .locals 0

    iget p0, p0, Ls4/b;->i:I

    return p0
.end method

.method public static synthetic k()Ln4/a;
    .locals 1

    sget-object v0, Ls4/b;->j:Ln4/a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ls4/b;->f:Lt4/k;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls4/b;->l()Ljava/net/DatagramSocket;

    .line 3
    new-instance v0, Ls4/b$a;

    invoke-direct {v0, p0}, Ls4/b$a;-><init>(Ls4/b;)V

    iput-object v0, p0, Ls4/b;->g:Ls4/b$a;

    .line 4
    invoke-static {}, Lk4/m;->f()Lt4/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultUDPTransportMapping_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Ls4/d;->i()Lr4/s;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ls4/b;->g:Ls4/b$a;

    const/4 v3, 0x1

    .line 6
    invoke-interface {v0, v1, v2, v3}, Lt4/h;->a(Ljava/lang/String;Lt4/k;Z)Lt4/k;

    move-result-object v0

    iput-object v0, p0, Ls4/b;->f:Lt4/k;

    .line 7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Port already listening"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Ls4/b;->f:Lt4/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic c(Lr4/b;[BLk4/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lr4/s;

    invoke-virtual {p0, p1, p2, p3}, Ls4/b;->o(Lr4/s;[BLk4/t;)V

    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls4/b;->f:Lt4/k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lt4/k;->terminate()V

    .line 3
    invoke-interface {v0}, Lt4/k;->interrupt()V

    .line 4
    iget v4, p0, Ls4/b;->h:I

    if-lez v4, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v0}, Lt4/k;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 6
    sget-object v4, Ls4/b;->j:Ln4/a;

    invoke-interface {v4, v3}, Ln4/a;->i(Ljava/io/Serializable;)V

    move v3, v1

    .line 7
    :cond_0
    :goto_0
    iput-object v2, p0, Ls4/b;->f:Lt4/k;

    .line 8
    :cond_1
    iget-object v4, p0, Ls4/b;->e:Ljava/net/DatagramSocket;

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 10
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 11
    :cond_2
    iput-object v2, p0, Ls4/b;->e:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_3

    .line 12
    iget v2, p0, Ls4/b;->h:I

    if-gtz v2, :cond_3

    .line 13
    :try_start_1
    invoke-interface {v0}, Lt4/k;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 14
    sget-object v2, Ls4/b;->j:Ln4/a;

    invoke-interface {v2, v0}, Ln4/a;->i(Ljava/io/Serializable;)V

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_4

    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return-void
.end method

.method public final declared-synchronized l()Ljava/net/DatagramSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ls4/b;->e:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, Ls4/d;->d:Lr4/s;

    invoke-virtual {v1}, Lr4/r;->P()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 3
    iget v1, p0, Ls4/b;->h:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 4
    iput-object v0, p0, Ls4/b;->e:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Ls4/b;->h:I

    return v0
.end method

.method public n(Ljava/net/SocketException;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/net/DatagramSocket;->close()V

    .line 3
    :cond_0
    new-instance p1, Ljava/net/DatagramSocket;

    iget-object p2, p0, Ls4/d;->d:Lr4/s;

    invoke-virtual {p2}, Lr4/r;->P()I

    move-result p2

    iget-object v0, p0, Ls4/d;->d:Lr4/s;

    invoke-virtual {v0}, Lr4/h;->I()Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 4
    iget p2, p0, Ls4/b;->h:I

    invoke-virtual {p1, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    return-object p1
.end method

.method public o(Lr4/s;[BLk4/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/net/InetSocketAddress;

    .line 2
    invoke-virtual {p1}, Lr4/h;->I()Ljava/net/InetAddress;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lr4/r;->P()I

    move-result v1

    invoke-direct {p3, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 4
    sget-object v0, Ls4/b;->j:Ln4/a;

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending message to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with length "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lr4/k;

    invoke-direct {p1, p2}, Lr4/k;-><init>([B)V

    .line 6
    invoke-virtual {p1}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ls4/b;->l()Ljava/net/DatagramSocket;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p2

    invoke-direct {v0, p2, v1, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method

.method public p(I)V
    .locals 1

    .line 1
    iput p1, p0, Ls4/b;->h:I

    .line 2
    iget-object v0, p0, Ls4/b;->e:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
