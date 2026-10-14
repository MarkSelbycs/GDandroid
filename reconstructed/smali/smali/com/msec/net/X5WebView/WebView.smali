.class public Lcom/msec/net/X5WebView/WebView;
.super Lcom/tencent/smtt/sdk/WebView;


# instance fields
.field private a:Lcom/msec/bl;


# direct methods
.method public static $aa(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/msec/net/X5WebView/WebView;

    iget-object p0, p0, Lcom/msec/net/X5WebView/WebView;->a:Lcom/msec/bl;

    return-object p0
.end method

.method public static $ab(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/msec/net/X5WebView/WebView;

    check-cast p1, Lcom/msec/bl;

    iput-object p1, p0, Lcom/msec/net/X5WebView/WebView;->a:Lcom/msec/bl;

    return-void
.end method

.method public static $ac(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/msec/net/X5WebView/WebView;

    invoke-direct {p0}, Lcom/msec/net/X5WebView/WebView;->a()Lcom/msec/bl;

    move-result-object p0

    return-object p0
.end method

.method public static $ad(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebView;->getWebViewClient()Lcom/tencent/smtt/sdk/WebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public static $ae(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/tencent/smtt/sdk/WebView;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    check-cast p5, Ljava/lang/String;

    invoke-super/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/msec/net/X5WebView/WebView;->a:Lcom/msec/bl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/msec/net/X5WebView/WebView;->a:Lcom/msec/bl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/msec/net/X5WebView/WebView;->a:Lcom/msec/bl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/msec/net/X5WebView/WebView;->a:Lcom/msec/bl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/msec/net/X5WebView/WebView;->a:Lcom/msec/bl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/msec/net/X5WebView/WebView;->a:Lcom/msec/bl;

    return-void
.end method

.method private a()Lcom/msec/bl;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x68a

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/msec/bl;

    return-object v0
.end method


# virtual methods
.method public getWebViewClient()Lcom/tencent/smtt/sdk/WebViewClient;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x689

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/WebViewClient;

    return-object v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    aput-object p3, v0, p1

    const/4 p1, 0x4

    aput-object p4, v0, p1

    const/4 p1, 0x5

    aput-object p5, v0, p1

    const/16 p1, 0x688

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/msec/net/X5WebView/WebView;->a()Lcom/msec/bl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/msec/bi;->a(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/msec/net/X5WebView/WebView;->a()Lcom/msec/bl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/msec/bi;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V
    .locals 1

    invoke-direct {p0}, Lcom/msec/net/X5WebView/WebView;->a()Lcom/msec/bl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/msec/bi;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/smtt/sdk/WebViewClient;

    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    return-void
.end method
