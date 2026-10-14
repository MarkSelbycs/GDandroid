.class Lcom/cndatacom/sdk/portal/service/BaseHoldService$1;
.super Ljava/lang/Object;
.source "BaseHoldService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/service/BaseHoldService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/service/BaseHoldService;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/service/BaseHoldService;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/service/BaseHoldService$1;->this$0:Lcom/cndatacom/sdk/portal/service/BaseHoldService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "BaseHoldService onHandleIntent->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/service/BaseHoldService$1;->this$0:Lcom/cndatacom/sdk/portal/service/BaseHoldService;

    invoke-virtual {v0}, Lcom/cndatacom/sdk/portal/service/BaseHoldService;->onHandleIntent()V

    return-void
.end method
