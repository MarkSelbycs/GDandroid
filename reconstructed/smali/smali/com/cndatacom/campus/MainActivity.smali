.class public Lcom/cndatacom/campus/MainActivity;
.super Lcom/cndatacom/campus/BaseActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;
    }
.end annotation


# instance fields
.field public v:Landroid/webkit/WebView;

.field public w:Landroid/widget/ImageView;

.field public x:Lcom/cndatacom/campus/receiver/AppReceiver;

.field public y:Lcom/cndatacom/campus/PortalMananger;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x674

    invoke-static {v0}, Lcom/stub/StubApp;->interface11(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/campus/BaseActivity;-><init>()V

    const-string v0, "file:///android_asset/index.html"

    .line 2
    iput-object v0, p0, Lcom/cndatacom/campus/MainActivity;->z:Ljava/lang/String;

    return-void
.end method

.method public static synthetic p(Lcom/cndatacom/campus/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/MainActivity;->w:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic q(Lcom/cndatacom/campus/MainActivity;)Lcom/cndatacom/campus/PortalMananger;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/MainActivity;->y:Lcom/cndatacom/campus/PortalMananger;

    return-object p0
.end method

.method public static synthetic r(Lcom/cndatacom/campus/MainActivity;Lcom/cndatacom/campus/PortalMananger;)Lcom/cndatacom/campus/PortalMananger;
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/MainActivity;->y:Lcom/cndatacom/campus/PortalMananger;

    return-object p1
.end method

.method public static synthetic s(Lcom/cndatacom/campus/MainActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static synthetic t(Lcom/cndatacom/campus/MainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/campus/MainActivity;->z:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/cndatacom/campus/receiver/AppReceiver;

    invoke-direct {p1}, Lcom/cndatacom/campus/receiver/AppReceiver;-><init>()V

    iput-object p1, p0, Lcom/cndatacom/campus/MainActivity;->x:Lcom/cndatacom/campus/receiver/AppReceiver;

    .line 2
    new-instance v0, Lcom/cndatacom/campus/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/MainActivity$1;-><init>(Lcom/cndatacom/campus/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->setReceiverListener(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;)V

    .line 3
    iget-object p1, p0, Lcom/cndatacom/campus/MainActivity;->x:Lcom/cndatacom/campus/receiver/AppReceiver;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->registerReceiver(Landroid/content/Context;)V

    const p1, 0x7f0700be

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cndatacom/campus/MainActivity;->w:Landroid/widget/ImageView;

    const p1, 0x7f0700f5

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    .line 6
    invoke-virtual {p0}, Lcom/cndatacom/campus/MainActivity;->u()V

    .line 7
    new-instance p1, Lcom/cndatacom/campus/PortalMananger;

    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    invoke-direct {p1, p0, v0}, Lcom/cndatacom/campus/PortalMananger;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/cndatacom/campus/MainActivity;->y:Lcom/cndatacom/campus/PortalMananger;

    .line 8
    iget-object p1, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f09001c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->y:Lcom/cndatacom/campus/PortalMananger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "var customEvent = new CustomEvent(\'backbutton\',"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "document.dispatchEvent(customEvent);"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/cndatacom/campus/MainActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/cndatacom/campus/MainActivity$3;-><init>(Lcom/cndatacom/campus/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/stub/StubApp;->mark()V

    invoke-super {p0, p1}, Lcom/cndatacom/campus/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->x:Lcom/cndatacom/campus/receiver/AppReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->unregisterReceiver(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 5
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public native onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 9
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    new-instance v1, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;-><init>(Lcom/cndatacom/campus/MainActivity;)V

    const-string v2, "PortalMananger"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity;->v:Landroid/webkit/WebView;

    new-instance v1, Lcom/cndatacom/campus/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/MainActivity$2;-><init>(Lcom/cndatacom/campus/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
