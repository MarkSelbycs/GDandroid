.class Lcom/cndatacom/topology/NeighbourDiscover$2;
.super Lcom/cndatacom/sdk/portal/work/WorkerInfo;
.source "NeighbourDiscover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/topology/NeighbourDiscover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/topology/NeighbourDiscover;


# direct methods
.method public constructor <init>(Lcom/cndatacom/topology/NeighbourDiscover;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/NeighbourDiscover$2;->this$0:Lcom/cndatacom/topology/NeighbourDiscover;

    invoke-direct {p0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover$2;->this$0:Lcom/cndatacom/topology/NeighbourDiscover;

    invoke-static {v0}, Lcom/cndatacom/topology/NeighbourDiscover;->access$100(Lcom/cndatacom/topology/NeighbourDiscover;)V

    return-void
.end method
