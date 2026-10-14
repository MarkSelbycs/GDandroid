.class public Lcom/cndatacom/campus/PortalWebviewActivity;
.super Lcom/cndatacom/campus/BaseActivity;
.source "PortalWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/campus/PortalWebviewActivity$JavaScriptInterface;
    }
.end annotation


# instance fields
.field public A:Landroid/os/Handler;

.field public B:Landroid/os/HandlerThread;

.field public C:Landroid/os/Handler;

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public I:Z

.field public final J:I

.field public final K:I

.field public L:I

.field public final M:I

.field public v:Ljava/lang/String;

.field public w:Landroid/widget/RelativeLayout;

.field public x:Landroid/widget/RelativeLayout;

.field public y:Landroid/webkit/WebView;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cndatacom/campus/BaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->v:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->z:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->D:I

    const/4 v1, 0x1

    .line 5
    iput v1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->E:I

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->F:I

    const/4 v1, 0x3

    .line 7
    iput v1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->G:I

    const/4 v1, 0x4

    .line 8
    iput v1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->H:I

    .line 9
    iput-boolean v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->I:Z

    .line 10
    iput v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->J:I

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->K:I

    .line 12
    iput v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->L:I

    const/16 v0, 0x2710

    .line 13
    iput v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->M:I

    return-void
.end method

.method public static synthetic p(Lcom/cndatacom/campus/PortalWebviewActivity;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->y(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/cndatacom/campus/PortalWebviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/cndatacom/campus/PortalWebviewActivity;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->x(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/cndatacom/campus/PortalWebviewActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalWebviewActivity;->G()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cndatacom/campus/PortalWebviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "titleName"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic t(Lcom/cndatacom/campus/PortalWebviewActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalWebviewActivity;->E()V

    return-void
.end method

.method private synthetic x(Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->u(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic y(Landroid/os/Message;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/PortalWebviewActivity;->v(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic z(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalWebviewActivity;->B()V

    return-void
.end method


# virtual methods
.method public final A(IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->L:I

    .line 2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    .line 4
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->A:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final B()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->A:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalWebviewActivity;->D()V

    const/16 v0, 0x5dc

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/cndatacom/campus/PortalWebviewActivity;->A(IZ)V

    :cond_0
    return-void
.end method

.method public final C()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->L:I

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->A:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->A:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final E()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->L:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->A:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final F()Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->I:Z

    .line 2
    iget-object v1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->C:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->C:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v0
.end method

.method public final G()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->I:Z

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->C:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->A:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->C:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->B:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "titleName"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/campus/u;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/u;-><init>(Lcom/cndatacom/campus/PortalWebviewActivity;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->A:Landroid/os/Handler;

    .line 2
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "loadWebviewActivityData"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->B:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->B:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/cndatacom/campus/t;

    invoke-direct {v2, p0}, Lcom/cndatacom/campus/t;-><init>(Lcom/cndatacom/campus/PortalWebviewActivity;)V

    invoke-direct {p1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->C:Landroid/os/Handler;

    const p1, 0x7f070088

    .line 5
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->w:Landroid/widget/RelativeLayout;

    const p1, 0x7f07006d

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->x:Landroid/widget/RelativeLayout;

    const p1, 0x7f0700a2

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 8
    new-instance v0, Lcom/cndatacom/campus/v;

    invoke-direct {v0, p0}, Lcom/cndatacom/campus/v;-><init>(Lcom/cndatacom/campus/PortalWebviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700f5

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    .line 10
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalWebviewActivity;->w()V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    const-string v2, ""

    .line 12
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->z:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalWebviewActivity;->D()V

    const/16 p1, 0x3e8

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/cndatacom/campus/PortalWebviewActivity;->A(IZ)V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f09001d

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public u(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalWebviewActivity;->F()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_6

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public v(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->I:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->I:Z

    .line 4
    invoke-virtual {p0}, Lcom/cndatacom/campus/PortalWebviewActivity;->C()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

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
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    new-instance v1, Lcom/cndatacom/campus/PortalWebviewActivity$JavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/PortalWebviewActivity$JavaScriptInterface;-><init>(Lcom/cndatacom/campus/PortalWebviewActivity;)V

    const-string v2, "parent"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/cndatacom/campus/PortalWebviewActivity;->y:Landroid/webkit/WebView;

    new-instance v1, Lcom/cndatacom/campus/PortalWebviewActivity$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/campus/PortalWebviewActivity$1;-><init>(Lcom/cndatacom/campus/PortalWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method
