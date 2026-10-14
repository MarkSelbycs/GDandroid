.class public final Lcom/msec/van;
.super Ljava/lang/Object;
.source "com/msec/van.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/msec/net/X5WebView/WebView;->$ad(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/msec/net/X5WebView/WebView;->$ae(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    check-cast p1, Lcom/tencent/smtt/sdk/WebViewClient;

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bk;->$ab(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Lcom/tencent/smtt/sdk/WebViewClient$RenderProcessGoneDetail;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onRenderProcessGone(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebViewClient$RenderProcessGoneDetail;)Z

    move-result p0

    return p0
.end method

.method public static k(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bk;->$ac(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/msec/bk;->$ad(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    check-cast p3, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bk;->$ae(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bk;->$af(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideKeyEvent(Lcom/tencent/smtt/sdk/WebView;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bk;->$ag(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static t(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Z

    move-result p0

    return p0
.end method

.method public static u(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/bk;->$ah(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebViewClient;

    check-cast p1, Lcom/tencent/smtt/sdk/WebView;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
