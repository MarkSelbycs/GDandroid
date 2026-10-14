.class Lcom/cndatacom/sdk/portal/manager/WorkManager$1;
.super Ljava/lang/Object;
.source "WorkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/manager/WorkManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/manager/WorkManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/manager/WorkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$1;->this$0:Lcom/cndatacom/sdk/portal/manager/WorkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/manager/WorkManager$1;->this$0:Lcom/cndatacom/sdk/portal/manager/WorkManager;

    invoke-static {v0, p1}, Lcom/cndatacom/sdk/portal/manager/WorkManager;->access$000(Lcom/cndatacom/sdk/portal/manager/WorkManager;Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
