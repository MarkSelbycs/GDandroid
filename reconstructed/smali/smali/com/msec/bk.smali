.class public Lcom/msec/bk;
.super Lcom/tencent/smtt/sdk/WebViewClient;

# interfaces
.implements Lcom/msec/be;


# instance fields
.field private a:Lcom/tencent/smtt/sdk/WebViewClient;


# direct methods
.method public static $aa(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/msec/bk;

    iget-object p0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    return-object p0
.end method

.method public static $ab(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Lcom/tencent/smtt/sdk/WebViewClient$RenderProcessGoneDetail;

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onRenderProcessGone(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebViewClient$RenderProcessGoneDetail;)Z

    move-result p0

    return p0
.end method

.method public static $ac(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static $ad(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    check-cast p3, Landroid/os/Bundle;

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static $ae(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static $af(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Landroid/view/KeyEvent;

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static $ag(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public static $ah(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Ljava/lang/String;

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/msec/bk;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/smtt/sdk/WebViewClient;

    iput-object p1, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    return-void
.end method

.method public doUpdateVisitedHistory(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->doUpdateVisitedHistory(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->doUpdateVisitedHistory(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onDetectedBlankScreen(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onDetectedBlankScreen(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onDetectedBlankScreen(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onFormResubmission(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onFormResubmission(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onFormResubmission(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public onLoadResource(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onLoadResource(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onLoadResource(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageCommitVisible(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageCommitVisible(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageCommitVisible(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public onReceivedClientCertRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/ClientCertRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedClientCertRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/ClientCertRequest;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedClientCertRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/ClientCertRequest;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceError;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceError;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceError;)V

    :goto_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedHttpAuthRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedHttpAuthRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedHttpError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;)V

    :goto_0
    return-void
.end method

.method public onReceivedLoginRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedLoginRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedLoginRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedSslError(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/SslErrorHandler;Lcom/tencent/smtt/export/external/interfaces/SslError;)V

    :goto_0
    return-void
.end method

.method public onRenderProcessGone(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebViewClient$RenderProcessGoneDetail;)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x635

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public onScaleChanged(Lcom/tencent/smtt/sdk/WebView;FF)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onScaleChanged(Lcom/tencent/smtt/sdk/WebView;FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onScaleChanged(Lcom/tencent/smtt/sdk/WebView;FF)V

    :goto_0
    return-void
.end method

.method public onTooManyRedirects(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onTooManyRedirects(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onTooManyRedirects(Lcom/tencent/smtt/sdk/WebView;Landroid/os/Message;Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/bk;->a:Lcom/tencent/smtt/sdk/WebViewClient;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onUnhandledKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onUnhandledKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x634

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const/16 p1, 0x633

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    return-object p1
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x632

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x631

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x630

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x63f

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
