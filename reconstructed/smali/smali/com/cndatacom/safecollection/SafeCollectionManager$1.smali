.class Lcom/cndatacom/safecollection/SafeCollectionManager$1;
.super Lcom/cndatacom/sdk/portal/work/WorkerInfo;
.source "SafeCollectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/safecollection/SafeCollectionManager;->start(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/safecollection/SafeCollectionManager;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$obtain:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;


# direct methods
.method public constructor <init>(Lcom/cndatacom/safecollection/SafeCollectionManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/safecollection/SafeCollectionManager$1;->this$0:Lcom/cndatacom/safecollection/SafeCollectionManager;

    iput-object p2, p0, Lcom/cndatacom/safecollection/SafeCollectionManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cndatacom/safecollection/SafeCollectionManager$1;->val$obtain:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/safecollection/SafeCollectionManager$1;->this$0:Lcom/cndatacom/safecollection/SafeCollectionManager;

    iget-object v1, p0, Lcom/cndatacom/safecollection/SafeCollectionManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cndatacom/safecollection/SafeCollectionManager$1;->val$obtain:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-static {v0, v1, v2}, Lcom/cndatacom/safecollection/SafeCollectionManager;->access$000(Lcom/cndatacom/safecollection/SafeCollectionManager;Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    return-void
.end method
