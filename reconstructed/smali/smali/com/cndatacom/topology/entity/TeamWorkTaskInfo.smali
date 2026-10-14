.class public Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;
.super Ljava/lang/Object;
.source "TeamWorkTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEAMWORK_TYPE_NEIGHBOUR:I = 0x1

.field public static final TEAMWORK_TYPE_ROUTER:I = 0x2


# instance fields
.field private extra:Ljava/lang/Object;

.field private gateway:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private mask:Ljava/lang/String;

.field private taskType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->taskType:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->gateway:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->mask:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->ip:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->taskType:I

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->gateway:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->mask:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->ip:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->key:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->taskType:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->gateway:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->mask:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->ip:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->mask:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskType()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->taskType:I

    return v0
.end method

.method public setExtra(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->extra:Ljava/lang/Object;

    return-void
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->gateway:Ljava/lang/String;

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->key:Ljava/lang/String;

    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->mask:Ljava/lang/String;

    return-void
.end method

.method public setTaskType(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->taskType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->taskType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->gateway:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->mask:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->ip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/cndatacom/topology/entity/TeamWorkTaskInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
