.class Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "PortalSdkReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->registerReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$1;->this$0:Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$1;->this$0:Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->access$000(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;)Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    const-string v1, "com.cndatacom.campus.receiver.action.code.key"

    .line 2
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$1;->this$0:Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;->access$000(Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver;)Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lcom/cndatacom/sdk/portal/receiver/PortalSdkReceiver$AppReceiverListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
