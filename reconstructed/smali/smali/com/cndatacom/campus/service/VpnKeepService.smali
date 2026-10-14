.class public Lcom/cndatacom/campus/service/VpnKeepService;
.super Lcom/cndatacom/sdk/portal/service/BaseIntentService;
.source "VpnKeepService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/service/BaseIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public doNextKeep(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;JLcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 0

    const-class p2, Lcom/cndatacom/campus/service/VpnKeepService;

    invoke-static {p1, p2, p3, p4}, Lcom/cndatacom/sdk/portal/service/BaseIntentService;->startOneTimeWork(Landroid/content/Context;Ljava/lang/Class;J)V

    return-void
.end method

.method public getKeepExtraParam(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/cndatacom/sdk/portal/entity/ConfigInfo;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    return-object p1
.end method

.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cndatacom/sdk/portal/service/BaseIntentService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public sendChange(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;ILcom/cndatacom/sdk/portal/entity/ReturnUIResult;)V

    return-void
.end method
