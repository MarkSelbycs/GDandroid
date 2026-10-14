.class public Lcom/cndatacom/topology/SnmpManager;
.super Ljava/lang/Object;
.source "SnmpManager.java"


# instance fields
.field private mSnmp:Lk4/p;

.field private mTransportMapping:Lk4/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk4/s<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ls4/b;

    invoke-direct {v0}, Ls4/b;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/topology/SnmpManager;->mTransportMapping:Lk4/s;

    .line 3
    new-instance v0, Lk4/p;

    iget-object v1, p0, Lcom/cndatacom/topology/SnmpManager;->mTransportMapping:Lk4/s;

    invoke-direct {v0, v1}, Lk4/p;-><init>(Lk4/s;)V

    iput-object v0, p0, Lcom/cndatacom/topology/SnmpManager;->mSnmp:Lk4/p;

    .line 4
    iget-object v0, p0, Lcom/cndatacom/topology/SnmpManager;->mTransportMapping:Lk4/s;

    invoke-interface {v0}, Lk4/s;->a()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/SnmpManager;->mTransportMapping:Lk4/s;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lk4/s;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cndatacom/topology/SnmpManager;->mSnmp:Lk4/p;

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {v0}, Lk4/p;->p()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public sendMsg(Ljava/lang/String;IIILjava/util/List;[Ljava/lang/String;)Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Lr4/v;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "+",
            "Lr4/v;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/SnmpManager;->mSnmp:Lk4/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lk4/k;

    invoke-direct {v0}, Lk4/k;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr4/v;

    invoke-virtual {v0, v4}, Lk4/k;->h(Lr4/v;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 p5, -0x60

    .line 5
    invoke-virtual {v0, p5}, Lk4/k;->g0(I)V

    .line 6
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "udp:"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lr4/f;->H(Ljava/lang/String;)Lr4/b;

    move-result-object p1

    .line 7
    new-instance p2, Lk4/e;

    invoke-direct {p2}, Lk4/e;-><init>()V

    const/4 p5, 0x1

    .line 8
    invoke-interface {p2, p5}, Lk4/q;->C(I)V

    .line 9
    :goto_1
    array-length p5, p6

    if-ge v2, p5, :cond_2

    .line 10
    new-instance p5, Lr4/k;

    aget-object v3, p6, v2

    invoke-direct {p5, v3}, Lr4/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Lk4/e;->D(Lr4/k;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p2, p1}, Lk4/q;->z(Lr4/b;)V

    .line 12
    invoke-interface {p2, p3}, Lk4/q;->l(I)V

    int-to-long p3, p4

    .line 13
    invoke-interface {p2, p3, p4}, Lk4/q;->R(J)V

    .line 14
    iget-object p1, p0, Lcom/cndatacom/topology/SnmpManager;->mSnmp:Lk4/p;

    invoke-virtual {p1, v0, p2}, Lk4/p;->y(Lk4/k;Lk4/q;)Lm4/e;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lm4/e;->b()Lk4/k;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p1}, Lm4/e;->b()Lk4/k;

    move-result-object p1

    invoke-virtual {p1}, Lk4/k;->U()Ljava/util/Vector;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    return-object v1
.end method
