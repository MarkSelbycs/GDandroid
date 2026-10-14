.class Lcom/cndatacom/collection/CollectionManager$1;
.super Lcom/cndatacom/sdk/portal/work/WorkerInfo;
.source "CollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/collection/CollectionManager;->start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/collection/CollectionManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/collection/CollectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/CollectionManager$1;->this$0:Lcom/cndatacom/collection/CollectionManager;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/collection/CollectionManager$1;->this$0:Lcom/cndatacom/collection/CollectionManager;

    invoke-static {v0}, Lcom/cndatacom/collection/CollectionManager;->access$000(Lcom/cndatacom/collection/CollectionManager;)Lcom/cndatacom/collection/entity/CollectionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/collection/CollectionManager$1;->this$0:Lcom/cndatacom/collection/CollectionManager;

    invoke-static {v0}, Lcom/cndatacom/collection/CollectionManager;->access$000(Lcom/cndatacom/collection/CollectionManager;)Lcom/cndatacom/collection/entity/CollectionInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cndatacom/collection/CollectionManager;->access$100(Lcom/cndatacom/collection/CollectionManager;Lcom/cndatacom/collection/entity/CollectionInfo;)V

    :cond_0
    return-void
.end method
