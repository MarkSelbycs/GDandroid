.class public Lcom/cndatacom/campus/PortalWebviewActivity$JavaScriptInterface;
.super Ljava/lang/Object;
.source "PortalWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/campus/PortalWebviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavaScriptInterface"
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/PortalWebviewActivity;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalWebviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalWebviewActivity$JavaScriptInterface;->a:Lcom/cndatacom/campus/PortalWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.cndatacom.campus.receiver.action.data.key"

    .line 4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/cndatacom/campus/PortalWebviewActivity$JavaScriptInterface;->a:Lcom/cndatacom/campus/PortalWebviewActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0xd

    const-string v1, "com.cndatacom.campus.receiver.action.bundle.key"

    invoke-static {p2, v0, v1, p1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
