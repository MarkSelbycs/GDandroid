.class public Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;
.super Ljava/lang/Object;
.source "ExCheckResult.java"


# static fields
.field public static final DETECT_CRC_ERR:I = 0x6

.field public static final DETECT_FAIL:I = 0x0

.field public static final DETECT_IP_ERR:I = 0x7

.field public static final DETECT_LOCAL_ERR:I = 0x2

.field public static final DETECT_MAC_ERR:I = 0x9

.field public static final DETECT_NETWORK_ERR:I = 0x3

.field public static final DETECT_PORT_ERR:I = 0x8

.field public static final DETECT_RESPONSE_ERR:I = 0x5

.field public static final DETECT_SELF_FAIL:I = -0x1

.field public static final DETECT_SUCCESS:I = 0x1

.field public static final DETECT_TIMEOUT_ERR:I = 0x4


# instance fields
.field public errType:I

.field public ip:Ljava/lang/String;

.field public isUdp:Z

.field public port:I

.field private ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->ticket:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->errType:I

    return-void
.end method


# virtual methods
.method public createKey(ZLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getErrType()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->errType:I

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->errType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "CRC\u9519\u8bef"

    goto :goto_0

    :cond_1
    const-string v0, "\u62a5\u6587\u683c\u5f0f\u9519\u8bef"

    goto :goto_0

    :cond_2
    const-string v0, "\u8d85\u65f6"

    goto :goto_0

    :cond_3
    const-string v0, "\u672c\u5730\u9519\u8bef"

    goto :goto_0

    :cond_4
    const-string v0, "\u6210\u529f"

    goto :goto_0

    :cond_5
    const-string v0, "\u68c0\u6d4b\u5931\u8d25"

    goto :goto_0

    :cond_6
    const-string v0, "\u68c0\u6d4b\u81ea\u8eab\u5931\u8d25"

    :goto_0
    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->isUdp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->port:I

    return v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public isUdp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->isUdp:Z

    return v0
.end method

.method public setErrType(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->errType:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->ip:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->port:I

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->ticket:Ljava/lang/String;

    return-void
.end method

.method public setUdp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/zexcheck/v3/entity/ExCheckResult;->isUdp:Z

    return-void
.end method
