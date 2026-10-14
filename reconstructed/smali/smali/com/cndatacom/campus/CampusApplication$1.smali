.class Lcom/cndatacom/campus/CampusApplication$1;
.super Ljava/lang/Object;
.source "CampusApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/CampusApplication;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/CampusApplication;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/CampusApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/CampusApplication$1;->a:Lcom/cndatacom/campus/CampusApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/cndatacom/campus/CampusApplication$1;->a:Lcom/cndatacom/campus/CampusApplication;

    invoke-static {p1}, Lcom/cndatacom/campus/CampusApplication;->c(Lcom/cndatacom/campus/CampusApplication;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/cndatacom/campus/CampusApplication$1;->a:Lcom/cndatacom/campus/CampusApplication;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cndatacom/campus/CampusApplication;->d(Lcom/cndatacom/campus/CampusApplication;Z)Z

    .line 3
    invoke-static {}, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->getInstance()Lcom/cndatacom/sdk/portal/notify/NotifyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/notify/NotifyManager;->clear()V

    .line 4
    iget-object p1, p0, Lcom/cndatacom/campus/CampusApplication$1;->a:Lcom/cndatacom/campus/CampusApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lcom/cndatacom/campus/CampusApplication;->a()I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/cndatacom/campus/CampusApplication;->b()I

    .line 2
    invoke-static {}, Lcom/cndatacom/campus/CampusApplication;->isRunBackground()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/cndatacom/campus/CampusApplication$1;->a:Lcom/cndatacom/campus/CampusApplication;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cndatacom/campus/CampusApplication;->d(Lcom/cndatacom/campus/CampusApplication;Z)Z

    .line 4
    iget-object p1, p0, Lcom/cndatacom/campus/CampusApplication$1;->a:Lcom/cndatacom/campus/CampusApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/stub/StubApp;->getOrigApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xb

    invoke-static {p1, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->sendReceiver(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
