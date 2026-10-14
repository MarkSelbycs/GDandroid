.class public final Lcom/cndatacom/sdk/portal/entity/CdcErrCode;
.super Ljava/lang/Object;
.source "CdcErrCode.java"


# static fields
.field public static final ACCESS_LIMIT:Ljava/lang/String; = "105"

.field public static final ALGO_EXPIRED:Ljava/lang/String; = "200"

.field public static final AUTH_DENY:Ljava/lang/String; = "102"

.field public static final CHECK_NET_REDIRECT:Ljava/lang/String; = "10"

.field public static final CHECK_NET_TIMEOUT:Ljava/lang/String; = "11"

.field public static final CLIENT_DAMAGED:Ljava/lang/String; = "755"

.field public static final CONFIG_URL_ERROR:Ljava/lang/String; = "300309"

.field public static final DB_EXCEPTION:Ljava/lang/String; = "901"

.field public static final DECODE_ERROR:Ljava/lang/String; = "200114"

.field public static final ENCODE_ERROR:Ljava/lang/String; = "200113"

.field public static final ERR_TYPE_PORTAL:Ljava/lang/String; = "140"

.field public static final INVALID_ALGOID:Ljava/lang/String; = "13"

.field public static final INVALID_CHALLENGE:Ljava/lang/String; = "101"

.field public static final INVALID_CHECKSUM:Ljava/lang/String; = "15"

.field public static final INVALID_CLIENTID:Ljava/lang/String; = "12"

.field public static final INVALID_IP:Ljava/lang/String; = "10"

.field public static final INVALID_MAC:Ljava/lang/String; = "11"

.field public static final INVALID_TICKET:Ljava/lang/String; = "14"

.field public static final INVALID_TYPE:Ljava/lang/String; = "1"

.field public static final INVALID_USRPWD:Ljava/lang/String; = "100"

.field public static final IP_MAC_ERROR:Ljava/lang/String; = "200112"

.field public static final KEEP_TIMEOUT_ERROR:Ljava/lang/String; = "200117"

.field public static final NETWORK_ERROR:Ljava/lang/String; = "300108"

.field public static final PARSER_ERROR:Ljava/lang/String; = "200115"

.field public static final PORTAL_EXCEPTION:Ljava/lang/String; = "902"

.field public static final REVERSE_NOTIFY_ERROR:Ljava/lang/String; = "200118"

.field public static final SERVER_ERROR:Ljava/lang/String; = "300308"

.field public static final SHARED_APP_ERROR:Ljava/lang/String; = "200127"

.field public static final SHARED_ERROR:Ljava/lang/String; = "200119"

.field public static final SUCCESS:Ljava/lang/String; = "0"

.field public static final SYSTEM_EXCEPTION:Ljava/lang/String; = "990"

.field public static final TERM_REASON_EXIT:Ljava/lang/String; = "2"

.field public static final TERM_REASON_MANAGE:Ljava/lang/String; = "8"

.field public static final TERM_REASON_MANUAL:Ljava/lang/String; = "1"

.field public static final TERM_REASON_SHARE:Ljava/lang/String; = "6"

.field public static final TERM_REASON_START:Ljava/lang/String; = "5"

.field public static final TOOLMANY_CLIENT:Ljava/lang/String; = "103"

.field public static final UNKNOW_USER:Ljava/lang/String; = "104"

.field public static final UNSUPPORT_CLIENT:Ljava/lang/String; = "3"

.field public static final UNSUPPORT_OS:Ljava/lang/String; = "2"

.field public static final VPN_CLOSED_ERROR:Ljava/lang/String; = "200122"

.field public static final VPN_CREATE_ERROR:Ljava/lang/String; = "200124"

.field public static final VPN_SERVICE_KILLED_ERROR:Ljava/lang/String; = "200121"

.field public static final WAIT_CLIENT_AUTH:Ljava/lang/String; = "300"

.field public static final WAIT_SERVER_AUTH:Ljava/lang/String; = "301"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCode(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x190

    if-gt v0, p0, :cond_0

    const/16 v0, 0x258

    if-gt p0, v0, :cond_0

    const-string p0, "300308"

    return-object p0

    :cond_0
    const-string p0, "300108"

    return-object p0
.end method

.method public static isNetError(Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "300308"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "300108"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isProtocolError(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "140"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static makePortalErrorCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "140"

    invoke-static {v0, p0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeUiErrorCode(I)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 1

    .line 11
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    .line 12
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->getErrorCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeUiErrorCode(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;
    .locals 3

    .line 1
    new-instance v0, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getExtraCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getExtraCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getHttpCode()I

    move-result p0

    .line 6
    invoke-static {p0}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->getErrorCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    return-object v0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "140"

    invoke-static {v2, v1}, Lcom/cndatacom/sdk/portal/entity/CdcErrCode;->makeUiErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setErrorCode(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getSubCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;->setSubErrorCode(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeUiErrorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3

    :goto_0
    if-lez p0, :cond_0

    const/16 v1, 0x30

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
