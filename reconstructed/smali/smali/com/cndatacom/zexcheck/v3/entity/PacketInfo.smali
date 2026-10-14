.class public Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;
.super Ljava/lang/Object;
.source "PacketInfo.java"


# instance fields
.field private ip:Ljava/lang/String;

.field private port:I

.field private tcpPort:I

.field private ticket:Ljava/lang/String;

.field private udpPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->ticket:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->udpPort:I

    .line 4
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->tcpPort:I

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->port:I

    return v0
.end method

.method public getTcpPort()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->tcpPort:I

    return v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getUdpPort()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->udpPort:I

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->port:I

    return-void
.end method

.method public setTcpPort(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->tcpPort:I

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->ticket:Ljava/lang/String;

    return-void
.end method

.method public setUdpPort(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/entity/PacketInfo;->udpPort:I

    return-void
.end method
