.class public Ls4/b$a;
.super Ljava/lang/Object;
.source "DefaultUdpTransportMapping.java"

# interfaces
.implements Lt4/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public volatile b:Z

.field public final synthetic c:Ls4/b;


# direct methods
.method public constructor <init>(Ls4/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls4/b$a;->c:Ls4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls4/b$a;->b:Z

    .line 3
    invoke-virtual {p1}, Ls4/a;->d()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Ls4/b$a;->a:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls4/b$a;->b:Z

    return-void
.end method

.method public interrupt()V
    .locals 3

    .line 1
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupting worker task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ls4/b$a;->a()V

    return-void
.end method

.method public join()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Joining worker task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Ls4/b$a;->c:Ls4/b;

    iget-object v1, v0, Ls4/b;->e:Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ls4/b;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 3
    iget-object v0, p0, Ls4/b$a;->c:Ls4/b;

    invoke-static {v0}, Ls4/b;->j(Ls4/b;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Ls4/b$a;->c:Ls4/b;

    invoke-static {v0}, Ls4/b;->j(Ls4/b;)I

    move-result v0

    iget-object v3, p0, Ls4/b$a;->c:Ls4/b;

    iget v3, v3, Ls4/a;->b:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V

    .line 5
    :cond_0
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UDP receive buffer size for socket "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ls4/b$a;->c:Ls4/b;

    .line 7
    invoke-virtual {v4}, Ls4/d;->i()Lr4/s;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is set to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-interface {v0, v3}, Ln4/a;->f(Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v3

    invoke-interface {v3, v0}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 11
    iget-object v0, p0, Ls4/b$a;->c:Ls4/b;

    invoke-virtual {v0, v2}, Ls4/b;->p(I)V

    .line 12
    :catch_1
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ls4/b$a;->b:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_e

    .line 13
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v5, p0, Ls4/b$a;->a:[B

    array-length v6, v5

    iget-object v7, p0, Ls4/b$a;->c:Ls4/b;

    iget-object v7, v7, Ls4/d;->d:Lr4/s;

    .line 14
    invoke-virtual {v7}, Lr4/h;->I()Ljava/net/InetAddress;

    move-result-object v7

    iget-object v8, p0, Ls4/b$a;->c:Ls4/b;

    iget-object v8, v8, Ls4/d;->d:Lr4/s;

    .line 15
    invoke-virtual {v8}, Lr4/r;->P()I

    move-result v8

    invoke-direct {v0, v5, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 16
    :try_start_1
    iget-object v5, p0, Ls4/b$a;->c:Ls4/b;

    iget-object v1, v5, Ls4/b;->e:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/PortUnreachableException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v1, :cond_2

    .line 17
    :try_start_2
    iput-boolean v3, p0, Ls4/b$a;->b:Z
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/PortUnreachableException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 18
    :cond_2
    :try_start_3
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/PortUnreachableException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception v5

    .line 19
    :try_start_4
    iget v5, v5, Ljava/io/InterruptedIOException;->bytesTransferred:I

    if-gtz v5, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    :goto_1
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v5

    invoke-interface {v5}, Ln4/a;->e()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 21
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received message from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Lr4/k;

    .line 24
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v8

    .line 25
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v9

    invoke-direct {v7, v8, v2, v9}, Lr4/k;-><init>([BII)V

    invoke-virtual {v7}, Lr4/k;->h0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-interface {v5, v6}, Ln4/a;->f(Ljava/io/Serializable;)V

    .line 27
    :cond_4
    iget-object v5, p0, Ls4/b$a;->c:Ls4/b;

    invoke-virtual {v5}, Ls4/a;->h()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 28
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    new-array v6, v5, [B

    .line 29
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v7

    invoke-static {v7, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_2

    .line 31
    :cond_5
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 32
    :goto_2
    new-instance v14, Lk4/t;

    iget-object v7, p0, Ls4/b$a;->c:Ls4/b;

    iget-object v8, v7, Ls4/d;->d:Lr4/s;

    const/4 v9, 0x0

    sget-object v11, Lp4/v;->b:Lp4/v;

    const/4 v12, 0x0

    move-object v6, v14

    move-object v10, v11

    move-object v13, v1

    invoke-direct/range {v6 .. v13}, Lk4/t;-><init>(Lk4/s;Lr4/b;Lr4/k;Lp4/v;Lp4/v;ZLjava/lang/Object;)V

    .line 33
    iget-object v6, p0, Ls4/b$a;->c:Ls4/b;

    new-instance v7, Lr4/s;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 34
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    invoke-direct {v7, v8, v0}, Lr4/s;-><init>(Ljava/net/InetAddress;I)V

    .line 35
    invoke-virtual {v6, v7, v5, v14}, Ls4/a;->g(Lr4/b;Ljava/nio/ByteBuffer;Lk4/t;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/PortUnreachableException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 36
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v3

    invoke-interface {v3, v0}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 37
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v3

    invoke-interface {v3}, Ln4/a;->e()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 38
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 39
    :cond_6
    iget-boolean v3, p0, Ls4/b$a;->b:Z

    if-nez v3, :cond_1

    invoke-static {}, Lk4/m;->m()Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 40
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    .line 41
    iget-boolean v5, p0, Ls4/b$a;->b:Z

    if-nez v5, :cond_8

    .line 42
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Socket for transport mapping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ln4/a;->i(Ljava/io/Serializable;)V

    .line 43
    :cond_8
    iget-boolean v5, p0, Ls4/b$a;->b:Z

    if-nez v5, :cond_a

    invoke-static {}, Lk4/m;->m()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_3

    .line 44
    :cond_9
    iput-boolean v3, p0, Ls4/b$a;->b:Z

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 46
    :cond_a
    :goto_3
    iget-boolean v5, p0, Ls4/b$a;->b:Z

    if-nez v5, :cond_1

    .line 47
    :try_start_5
    iget-object v5, p0, Ls4/b$a;->c:Ls4/b;

    invoke-virtual {v5, v0, v1}, Ls4/b;->n(Ljava/net/SocketException;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 48
    iget-object v0, p0, Ls4/b$a;->c:Ls4/b;

    iput-object v5, v0, Ls4/b;->e:Ljava/net/DatagramSocket;

    goto/16 :goto_0

    .line 49
    :cond_b
    throw v0
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    move-exception v0

    .line 50
    iput-boolean v3, p0, Ls4/b$a;->b:Z

    .line 51
    iget-object v3, p0, Ls4/b$a;->c:Ls4/b;

    iput-object v4, v3, Ls4/b;->e:Ljava/net/DatagramSocket;

    .line 52
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket renewal for transport mapping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " failed with: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-interface {v3, v4, v0}, Ln4/a;->h(Ljava/lang/CharSequence;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    .line 55
    iget-object v5, p0, Ls4/b$a;->c:Ls4/b;

    monitor-enter v5

    .line 56
    :try_start_6
    iget-object v1, p0, Ls4/b$a;->c:Ls4/b;

    iput-object v4, v1, Ls4/b;->f:Lt4/k;

    .line 57
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 58
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v1

    invoke-interface {v1, v0}, Ln4/a;->c(Ljava/io/Serializable;)V

    .line 59
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v1

    invoke-interface {v1}, Ln4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 60
    invoke-virtual {v0}, Ljava/net/PortUnreachableException;->printStackTrace()V

    .line 61
    :cond_c
    iget-boolean v1, p0, Ls4/b$a;->b:Z

    if-nez v1, :cond_e

    invoke-static {}, Lk4/m;->m()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    .line 62
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 63
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 64
    :cond_e
    :goto_4
    iget-object v0, p0, Ls4/b$a;->c:Ls4/b;

    monitor-enter v0

    .line 65
    :try_start_8
    iget-object v1, p0, Ls4/b$a;->c:Ls4/b;

    iput-object v4, v1, Ls4/b;->f:Lt4/k;

    .line 66
    iput-boolean v3, p0, Ls4/b$a;->b:Z

    .line 67
    iget-object v1, p0, Ls4/b$a;->c:Ls4/b;

    iget-object v1, v1, Ls4/b;->e:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_f

    .line 68
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_f

    .line 69
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 70
    :cond_f
    iget-object v1, p0, Ls4/b$a;->c:Ls4/b;

    iput-object v4, v1, Ls4/b;->e:Ljava/net/DatagramSocket;

    .line 71
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 72
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 73
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker task stopped:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_10
    return-void

    :catchall_1
    move-exception v1

    .line 74
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1
.end method

.method public terminate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ls4/b$a;->a()V

    .line 2
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    invoke-interface {v0}, Ln4/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ls4/b;->k()Ln4/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Terminated worker task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ln4/a;->f(Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
