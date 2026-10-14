.class public Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;
.super Ljava/lang/Object;
.source "ExCheckInfo.java"


# instance fields
.field private account:Ljava/lang/String;

.field private clientId:Ljava/lang/String;

.field private delay:Ljava/lang/String;

.field private getUrl:Ljava/lang/String;

.field private interval:Ljava/lang/String;

.field private ipv6First:Z

.field private netInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

.field private port:Ljava/lang/String;

.field private schoolId:Ljava/lang/String;

.field private tcpPort:Ljava/lang/String;

.field private ticket:Ljava/lang/String;

.field private timeout:Ljava/lang/String;

.field private udpPort:Ljava/lang/String;

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->clientId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->schoolId:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->account:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->ticket:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->interval:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->uploadUrl:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getUrl:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->port:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->timeout:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->delay:Ljava/lang/String;

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->ipv6First:Z

    .line 13
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->udpPort:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->tcpPort:Ljava/lang/String;

    return-void
.end method

.method private toInt(Ljava/lang/String;I)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getDelay()I
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->delay:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->toInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getGetUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()I
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->interval:Ljava/lang/String;

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->toInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->netInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->obtain()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->port:Ljava/lang/String;

    const/16 v1, 0x34cc

    invoke-direct {p0, v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSchoolId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->schoolId:Ljava/lang/String;

    return-object v0
.end method

.method public getTcpPort()I
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->tcpPort:Ljava/lang/String;

    const/16 v1, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->timeout:Ljava/lang/String;

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->toInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getUdpPort()I
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->udpPort:Ljava/lang/String;

    const/16 v1, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->uploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isIpv4()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->netInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->netInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->ipv6First:Z

    const/4 v3, 0x1

    const-string v4, ""

    if-nez v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->ipv6First:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    return v3
.end method

.method public isIpv6First()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->ipv6First:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->account:Ljava/lang/String;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setDelay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->delay:Ljava/lang/String;

    return-void
.end method

.method public setGetUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->getUrl:Ljava/lang/String;

    return-void
.end method

.method public setInterval(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->interval:Ljava/lang/String;

    return-void
.end method

.method public setIpv6First(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->ipv6First:Z

    return-void
.end method

.method public setNetInfo(Lcom/cndatacom/sdk/portal/entity/NetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->netInfo:Lcom/cndatacom/sdk/portal/entity/NetInfo;

    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->port:Ljava/lang/String;

    return-void
.end method

.method public setSchoolId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->schoolId:Ljava/lang/String;

    return-void
.end method

.method public setTcpPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->tcpPort:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->ticket:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->timeout:Ljava/lang/String;

    return-void
.end method

.method public setUdpPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->udpPort:Ljava/lang/String;

    return-void
.end method

.method public setUploadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckInfo;->uploadUrl:Ljava/lang/String;

    return-void
.end method
