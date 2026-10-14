.class Lcom/cndatacom/topology/TeamWorkDiscover$1;
.super Ljava/lang/Object;
.source "TeamWorkDiscover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/topology/TeamWorkDiscover;-><init>(Lcom/cndatacom/sdk/portal/entity/NetInfo;Lcom/cndatacom/topology/entity/TeamWorkConInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/topology/TeamWorkDiscover;


# direct methods
.method public constructor <init>(Lcom/cndatacom/topology/TeamWorkDiscover;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/TeamWorkDiscover$1;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/TeamWorkDiscover$1;->this$0:Lcom/cndatacom/topology/TeamWorkDiscover;

    invoke-static {v0, p1}, Lcom/cndatacom/topology/TeamWorkDiscover;->access$000(Lcom/cndatacom/topology/TeamWorkDiscover;Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
