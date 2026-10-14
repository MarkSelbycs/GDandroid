.class public Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;
.super Ljava/lang/Object;
.source "CdcHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/sdk/portal/http/CdcHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private cdcCode:Ljava/lang/String;

.field private data:[B

.field private extraCode:Ljava/lang/String;

.field private httpCode:I

.field private subCode:Ljava/lang/String;

.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/http/CdcHttpClient;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->this$0:Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->httpCode:I

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->cdcCode:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->subCode:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->extraCode:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->cdcCode:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->cdcCode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->subCode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->extraCode:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->httpCode:I

    return p0
.end method

.method public static synthetic access$402(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;I)I
    .locals 0

    iput p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->httpCode:I

    return p1
.end method

.method public static synthetic access$500(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;)[B
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->data:[B

    return-object p0
.end method

.method public static synthetic access$502(Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->data:[B

    return-object p1
.end method


# virtual methods
.method public getCdcCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->cdcCode:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->data:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->data:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getExtraCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->extraCode:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->httpCode:I

    return v0
.end method

.method public getSubCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->subCode:Ljava/lang/String;

    return-object v0
.end method

.method public isHttpOk()Z
    .locals 2

    iget v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->httpCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRedirect()Z
    .locals 2

    iget v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->httpCode:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->isHttpOk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->getCdcCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCdcCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->cdcCode:Ljava/lang/String;

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->data:[B

    return-void
.end method

.method public setHttpCode(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;->httpCode:I

    return-void
.end method
