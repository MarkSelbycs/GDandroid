.class Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;
.super Ljava/lang/Object;
.source "CdcProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/sdk/portal/http/CdcProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdcRequest"
.end annotation


# instance fields
.field public configInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

.field private sb:Ljava/lang/StringBuilder;

.field private xml:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->xml:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->sb:Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><request>"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->xml:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->sb:Ljava/lang/StringBuilder;

    .line 8
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->configInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><request>"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserAgent(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user-agent"

    invoke-virtual {p0, v1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    .line 11
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "client-id"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    .line 12
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "local-time"

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    return-void
.end method

.method private end()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->xml:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->sb:Ljava/lang/StringBuilder;

    const-string v1, "</request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->xml:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "</"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public addNetInfo()Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->configInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getNetInfo()Lcom/cndatacom/sdk/portal/entity/NetInfo;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv4()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ipv4"

    invoke-virtual {p0, v2, v1}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpv6()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ipv6"

    invoke-virtual {v1, v3, v2}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMac()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mac"

    invoke-virtual {v1, v2, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v0

    return-object v0
.end method

.method public addTicket()Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->configInfo:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getTicket()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticket"

    invoke-virtual {p0, v1, v0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->addItem(Ljava/lang/String;Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;

    move-result-object v0

    return-object v0
.end method

.method public toBytes()[B
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->end()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->xml:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CdcRequest.toBytes Exception: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->e([Ljava/lang/String;)V

    const-string v0, ""

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->end()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcProtocol$CdcRequest;->xml:Ljava/lang/String;

    return-object v0
.end method
