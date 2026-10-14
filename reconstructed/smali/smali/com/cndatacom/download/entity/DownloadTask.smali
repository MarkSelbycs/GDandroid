.class public Lcom/cndatacom/download/entity/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/download/entity/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_FILE_ZERO:I = 0x1

.field public static final ERROR_NET:I = 0x0

.field public static final ERROR_NO_WIFI:I = 0x3

.field public static final ERROR_NULL_URL:I = 0x2

.field public static final STATUS_DOWNLOADING:I = 0x2

.field public static final STATUS_ERROR:I = 0x4

.field public static final STATUS_FINISH:I = 0x5

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_PAUSE_OR_CANCEL:I = 0x3

.field public static final STATUS_WAIT:I = 0x1


# instance fields
.field private createTime:Ljava/lang/String;

.field private downloadTaskThread:Lcom/cndatacom/download/thread/DownloadTaskThread;

.field private downloadedSize:J

.field private status:I

.field private taskExt:Ljava/lang/String;

.field private taskFileSize:J

.field private taskId:Ljava/lang/String;

.field private taskInfo:Ljava/lang/String;

.field private taskName:Ljava/lang/String;

.field private taskPath:Ljava/lang/String;

.field private taskTempPath:Ljava/lang/String;

.field private taskUrl:Ljava/lang/String;

.field private threadNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cndatacom/download/entity/DownloadTask$1;

    invoke-direct {v0}, Lcom/cndatacom/download/entity/DownloadTask$1;-><init>()V

    sput-object v0, Lcom/cndatacom/download/entity/DownloadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->status:I

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskInfo:Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->threadNum:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->status:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskInfo:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskName:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskExt:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskPath:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskTempPath:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->status:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->threadNum:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskFileSize:J

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->downloadedSize:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadTaskThread()Lcom/cndatacom/download/thread/DownloadTaskThread;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->downloadTaskThread:Lcom/cndatacom/download/thread/DownloadTaskThread;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->downloadedSize:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->status:I

    return v0
.end method

.method public getTaskExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskExt:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskFileSize:J

    return-wide v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskTempPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskTempPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadNum()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->threadNum:I

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDownloadTaskThread(Lcom/cndatacom/download/thread/DownloadTaskThread;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->downloadTaskThread:Lcom/cndatacom/download/thread/DownloadTaskThread;

    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->downloadedSize:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->status:I

    return-void
.end method

.method public setTaskExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskExt:Ljava/lang/String;

    return-void
.end method

.method public setTaskFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskFileSize:J

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setTaskInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskInfo:Ljava/lang/String;

    return-void
.end method

.method public setTaskName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskName:Ljava/lang/String;

    return-void
.end method

.method public setTaskPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskPath:Ljava/lang/String;

    return-void
.end method

.method public setTaskTempPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskTempPath:Ljava/lang/String;

    return-void
.end method

.method public setTaskUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskUrl:Ljava/lang/String;

    return-void
.end method

.method public setThreadNum(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/download/entity/DownloadTask;->threadNum:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskExt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskTempPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->threadNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget-wide v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 10
    iget-wide v0, p0, Lcom/cndatacom/download/entity/DownloadTask;->downloadedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget-object p2, p0, Lcom/cndatacom/download/entity/DownloadTask;->taskInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
