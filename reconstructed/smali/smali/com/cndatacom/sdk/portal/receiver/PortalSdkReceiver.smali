.class public Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;
.super Ljava/lang/Object;
.source "PortalSdkReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;
    }
.end annotation


# static fields
.field public static final ACTION_BUNDLEKEY:Ljava/lang/String; = "com.cndatacom.campus.receiver.action.bundle.key"

.field public static final ACTION_CODE_INTERFACE_INFO:I = 0x3e8

.field private static final ACTION_CODE_KEY:Ljava/lang/String; = "com.cndatacom.campus.receiver.action.code.key"

.field public static final ACTION_DATA_KEY:Ljava/lang/String; = "com.cndatacom.campus.receiver.action.data.key"

.field public static final RECEIVER_ACTION:Ljava/lang/String; = "com.cndatacom.campus.receiver.action"

.field public static final RECEIVER_PERMISSION:Ljava/lang/String; = "com.cndatacom.campus.permissions.PORTAL_RECEIVER"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiverListener:Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;)Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;
    .locals 0

    iget-object p0, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->mReceiverListener:Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;

    return-object p0
.end method

.method public static sendInterfaceInfoReceiver(Landroid/content/Context;Ljava/lang/String;JJI)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".cgi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "url"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "startTime"

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "endTime"

    .line 5
    invoke-virtual {v0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "status"

    .line 6
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "com.cndatacom.campus.receiver.action.data.key"

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3e8

    const-string p3, "com.cndatacom.campus.receiver.action.bundle.key"

    .line 9
    invoke-static {p0, p2, p3, p1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sendReceiver(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static sendReceiver(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 2

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.cndatacom.campus.receiver.action.data.key"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "com.cndatacom.campus.receiver.action.bundle.key"

    .line 10
    invoke-static {p0, p1, p2, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static sendReceiver(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cndatacom.campus.receiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.cndatacom.campus.receiver.action.code.key"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x20

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "com.cndatacom.campus.permissions.PORTAL_RECEIVER"

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public registerReceiver(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.cndatacom.campus.receiver.action"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    new-instance v3, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$1;

    invoke-direct {v3, p0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$1;-><init>(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;)V

    iput-object v3, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 5
    iget-object v4, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v6, 0x0

    const-string v5, "com.cndatacom.campus.permissions.PORTAL_RECEIVER"

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public setReceiverListener(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->mReceiverListener:Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;

    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
