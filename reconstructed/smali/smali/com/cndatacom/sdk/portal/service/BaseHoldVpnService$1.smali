.class Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService$1;
.super Ljava/lang/Object;
.source "BaseHoldVpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService$1;->this$0:Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "BaseHoldVpnService onHandleIntent ..."

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService$1;->this$0:Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/service/BaseHoldVpnService;->onHandleIntent()V

    return-void
.end method
