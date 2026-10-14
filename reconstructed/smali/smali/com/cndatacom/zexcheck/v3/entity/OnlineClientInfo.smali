.class public Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;
.super Ljava/lang/Object;
.source "OnlineClientInfo.java"


# instance fields
.field public ip:Ljava/lang/String;

.field public ipv4:Ljava/lang/String;

.field public ipv6:Ljava/lang/String;

.field public isRecvUdp:Z

.field public tcpPort:I

.field public ticket:Ljava/lang/String;

.field public udpPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ticket:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ipv4:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ipv6:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ip:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->udpPort:I

    .line 7
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->tcpPort:I

    .line 8
    iput-boolean v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->isRecvUdp:Z

    return-void
.end method


# virtual methods
.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ipv4:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ipv6:Ljava/lang/String;

    return-object v0
.end method

.method public getTcpPort()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->tcpPort:I

    return v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getUdpPort()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->udpPort:I

    return v0
.end method

.method public isRecvUdp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->isRecvUdp:Z

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setIpv4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ipv4:Ljava/lang/String;

    return-void
.end method

.method public setIpv6(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ipv6:Ljava/lang/String;

    return-void
.end method

.method public setRecvUdp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->isRecvUdp:Z

    return-void
.end method

.method public setTcpPort(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->tcpPort:I

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->ticket:Ljava/lang/String;

    return-void
.end method

.method public setUdpPort(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/entity/OnlineClientInfo;->udpPort:I

    return-void
.end method
