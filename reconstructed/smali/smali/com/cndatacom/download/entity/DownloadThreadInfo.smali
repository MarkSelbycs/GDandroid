.class public Lcom/cndatacom/download/entity/DownloadThreadInfo;
.super Ljava/lang/Object;
.source "DownloadThreadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/download/entity/DownloadThreadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadTaskRunnable:Lcom/cndatacom/download/thread/DownloadTaskRunnable;

.field private downloadedSize:J

.field private taskId:Ljava/lang/String;

.field private threadId:I

.field private threadNum:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cndatacom/download/entity/DownloadThreadInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/download/entity/DownloadThreadInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->taskId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->threadNum:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->threadId:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->downloadedSize:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadTaskRunnable()Lcom/cndatacom/download/thread/DownloadTaskRunnable;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->downloadTaskRunnable:Lcom/cndatacom/download/thread/DownloadTaskRunnable;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->downloadedSize:J

    return-wide v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->threadId:I

    return v0
.end method

.method public getThreadNum()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->threadNum:I

    return v0
.end method

.method public setDownloadTaskRunnable(Lcom/cndatacom/download/thread/DownloadTaskRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->downloadTaskRunnable:Lcom/cndatacom/download/thread/DownloadTaskRunnable;

    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->downloadedSize:J

    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->taskId:Ljava/lang/String;

    return-void
.end method

.method public setThreadId(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->threadId:I

    return-void
.end method

.method public setThreadNum(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->threadNum:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->threadNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->threadId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/cndatacom/download/entity/DownloadThreadInfo;->downloadedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
