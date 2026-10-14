.class Lcom/cndatacom/campus/PortalMananger$29$2;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger$29;->taskDownloading(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/download/entity/DownloadTask;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger$29;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger$29;Lcom/cndatacom/download/entity/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$29$2;->b:Lcom/cndatacom/campus/PortalMananger$29;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$29$2;->a:Lcom/cndatacom/download/entity/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "tag"

    const-string v2, "downloading"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fileSize"

    .line 3
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$29$2;->a:Lcom/cndatacom/download/entity/DownloadTask;

    invoke-virtual {v2}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "fileSizeText"

    .line 4
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$29$2;->a:Lcom/cndatacom/download/entity/DownloadTask;

    invoke-virtual {v2}, Lcom/cndatacom/download/entity/DownloadTask;->getTaskFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cndatacom/sdk/portal/util/FileUtil;->getFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "progress"

    .line 5
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$29$2;->a:Lcom/cndatacom/download/entity/DownloadTask;

    invoke-virtual {v2}, Lcom/cndatacom/download/entity/DownloadTask;->getDownloadedSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "progressText"

    .line 6
    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$29$2;->a:Lcom/cndatacom/download/entity/DownloadTask;

    invoke-virtual {v2}, Lcom/cndatacom/download/entity/DownloadTask;->getDownloadedSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/cndatacom/sdk/portal/util/FileUtil;->getFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$29$2;->b:Lcom/cndatacom/campus/PortalMananger$29;

    iget-object v1, v1, Lcom/cndatacom/campus/PortalMananger$29;->a:Lcom/cndatacom/campus/PortalMananger;

    invoke-static {v1}, Lcom/cndatacom/campus/PortalMananger;->f0(Lcom/cndatacom/campus/PortalMananger;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/cndatacom/dialog/Dialog;->refreshUpdateDialog(Landroid/view/View;Lorg/json/JSONObject;Lcom/cndatacom/dialog/Dialog$RefreshUpdateDialogEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
