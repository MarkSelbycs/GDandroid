.class Lcom/cndatacom/topology/NeighbourDiscover$3;
.super Landroid/os/AsyncTask;
.source "NeighbourDiscover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/topology/NeighbourDiscover;->handleNeighbourTask(Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/topology/NeighbourDiscover;

.field public final synthetic val$realNeedDiscoverIps:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/cndatacom/topology/NeighbourDiscover;Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/NeighbourDiscover$3;->this$0:Lcom/cndatacom/topology/NeighbourDiscover;

    iput-object p2, p0, Lcom/cndatacom/topology/NeighbourDiscover$3;->val$realNeedDiscoverIps:Ljava/util/Vector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cndatacom/topology/NeighbourDiscover$3;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0xfa

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/cndatacom/topology/NeighbourDiscover$3;->this$0:Lcom/cndatacom/topology/NeighbourDiscover;

    iget-object v0, p0, Lcom/cndatacom/topology/NeighbourDiscover$3;->val$realNeedDiscoverIps:Ljava/util/Vector;

    invoke-static {p1, v0}, Lcom/cndatacom/topology/NeighbourDiscover;->access$200(Lcom/cndatacom/topology/NeighbourDiscover;Ljava/util/Vector;)V

    const/4 p1, 0x0

    return-object p1
.end method
