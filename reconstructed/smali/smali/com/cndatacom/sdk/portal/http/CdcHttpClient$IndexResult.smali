.class public Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;
.super Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;
.source "CdcHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/sdk/portal/http/CdcHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndexResult"
.end annotation


# instance fields
.field private finalUrl:Ljava/lang/String;

.field private hasIndexPage:Z

.field private redirectUrl:Ljava/lang/String;

.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/http/CdcHttpClient;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->this$0:Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {p0, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$Result;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->hasIndexPage:Z

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->finalUrl:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->redirectUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFinalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->finalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHasIndexPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->hasIndexPage:Z

    return v0
.end method

.method public setFinalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->finalUrl:Ljava/lang/String;

    return-void
.end method

.method public setHasIndexPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->hasIndexPage:Z

    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$IndexResult;->redirectUrl:Ljava/lang/String;

    return-void
.end method
