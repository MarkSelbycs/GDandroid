.class public Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/campus/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/MainActivity;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-static {v0}, Lcom/cndatacom/campus/MainActivity;->p(Lcom/cndatacom/campus/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public coolMethodReturnBool(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 p2, -0x1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xc2e114d

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "hasSplashscreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-static {p1}, Lcom/cndatacom/campus/MainActivity;->p(Lcom/cndatacom/campus/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return v0
.end method

.method public coolNativeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coolNativeMethod->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x4d29c055

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "closeSplashscreen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;->a:Lcom/cndatacom/campus/MainActivity;

    invoke-static {v0}, Lcom/cndatacom/campus/MainActivity;->q(Lcom/cndatacom/campus/MainActivity;)Lcom/cndatacom/campus/PortalMananger;

    move-result-object v0

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/cndatacom/campus/PortalMananger;->coolMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;->a:Lcom/cndatacom/campus/MainActivity;

    new-instance p2, Lcom/cndatacom/campus/c;

    invoke-direct {p2, p0}, Lcom/cndatacom/campus/c;-><init>(Lcom/cndatacom/campus/MainActivity$JavaScriptInterface;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
