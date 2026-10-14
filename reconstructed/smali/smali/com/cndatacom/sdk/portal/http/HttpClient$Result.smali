.class public Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/sdk/portal/http/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private data:[B

.field private httpCode:I

.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/http/HttpClient;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/http/HttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->this$0:Lcom/cndatacom/sdk/portal/http/HttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->httpCode:I

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;)I
    .locals 0

    iget p0, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->httpCode:I

    return p0
.end method

.method public static synthetic access$002(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;I)I
    .locals 0

    iput p1, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->httpCode:I

    return p1
.end method

.method public static synthetic access$102(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->data:[B

    return-object p1
.end method


# virtual methods
.method public getData()[B
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->data:[B

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
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->data:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->httpCode:I

    return v0
.end method

.method public isRedirect()Z
    .locals 2

    iget v0, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->httpCode:I

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

    iget v0, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->httpCode:I

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

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->data:[B

    return-void
.end method

.method public setHttpCode(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->httpCode:I

    return-void
.end method
