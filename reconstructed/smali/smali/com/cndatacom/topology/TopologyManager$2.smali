.class Lcom/cndatacom/topology/TopologyManager$2;
.super Ljava/lang/Object;
.source "TopologyManager.java"

# interfaces
.implements Lcom/cndatacom/topology/NeighbourDiscover$NeighbourDiscoverEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/topology/TopologyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/topology/TopologyManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/topology/TopologyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/TopologyManager$2;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNeighbourTeamWorkMsg(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager$2;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {v0}, Lcom/cndatacom/topology/TopologyManager;->access$200(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/TeamWorkDiscover;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager$2;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {v0}, Lcom/cndatacom/topology/TopologyManager;->access$200(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/TeamWorkDiscover;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cndatacom/topology/TeamWorkDiscover;->sendNeighbourTeamWorkMsg(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
