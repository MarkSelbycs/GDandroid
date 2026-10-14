.class Lcom/cndatacom/topology/TopologyManager$1;
.super Ljava/lang/Object;
.source "TopologyManager.java"

# interfaces
.implements Lcom/cndatacom/topology/TeamWorkDiscover$TeamWorkDiscoverEvent;


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

    iput-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doNeighbourTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {v0}, Lcom/cndatacom/topology/TopologyManager;->access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {v0}, Lcom/cndatacom/topology/TopologyManager;->access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/cndatacom/topology/NeighbourDiscover;->doNeighbourTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public doRouterTask(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {v0}, Lcom/cndatacom/topology/TopologyManager;->access$100(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/RouterDiscover;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {v0}, Lcom/cndatacom/topology/TopologyManager;->access$100(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/RouterDiscover;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/cndatacom/topology/RouterDiscover;->doRouterTask(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public giveup(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cndatacom/topology/NeighbourDiscover;->doNextDiscover()V

    :cond_0
    return-void
.end method

.method public isDiscovered(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cndatacom/topology/NeighbourDiscover;->isDiscovered(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$100(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/RouterDiscover;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$100(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/RouterDiscover;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cndatacom/topology/RouterDiscover;->isDiscovered(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public sendTeamWorkMsgFinished(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$000(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/NeighbourDiscover;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cndatacom/topology/NeighbourDiscover;->appendToDiscovered(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$100(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/RouterDiscover;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/cndatacom/topology/TopologyManager$1;->this$0:Lcom/cndatacom/topology/TopologyManager;

    invoke-static {p1}, Lcom/cndatacom/topology/TopologyManager;->access$100(Lcom/cndatacom/topology/TopologyManager;)Lcom/cndatacom/topology/RouterDiscover;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cndatacom/topology/RouterDiscover;->appendToDiscovered(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
