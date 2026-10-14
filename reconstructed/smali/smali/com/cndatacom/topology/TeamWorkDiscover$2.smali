.class Lcom/cndatacom/topology/TeamWorkDiscover$2;
.super Landroid/os/AsyncTask;
.source "TeamWorkDiscover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/topology/TeamWorkDiscover;->handleWorkerMessage(Landroid/os/Message;)V
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
.field public final synthetic this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

.field public final synthetic val$teamWorkTaskInfo:Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;


# direct methods
.method public constructor <init>(Lcom/cndatacom/topology/TeamWorkDiscover;Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover$2;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    iput-object p2, p0, Lcom/cndatacom/topology/TeamWorkDiscover$2;->val$teamWorkTaskInfo:Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cndatacom/topology/TeamWorkDiscover$2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover$2;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover$2;->val$teamWorkTaskInfo:Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;

    invoke-static {p1, v0}, Lcom/cndatacom/topology/TeamWorkDiscover;->access$100(Lcom/cndatacom/topology/TeamWorkDiscover;Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;)V

    const/4 p1, 0x0

    return-object p1
.end method
