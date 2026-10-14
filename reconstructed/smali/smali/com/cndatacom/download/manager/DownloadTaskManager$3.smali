.class Lcom/cndatacom/download/manager/DownloadTaskManager$3;
.super Ljava/lang/Object;
.source "DownloadTaskManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/download/manager/DownloadTaskManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/download/manager/DownloadTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$3;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/manager/DownloadTaskManager$3;->this$0:Lcom/cndatacom/download/manager/DownloadTaskManager;

    invoke-static {v0, p1}, Lcom/cndatacom/download/manager/DownloadTaskManager;->access$400(Lcom/cndatacom/download/manager/DownloadTaskManager;Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
