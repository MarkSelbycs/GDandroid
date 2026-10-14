.class public Lcom/cndatacom/topology/entity/SnmpConInfo;
.super Ljava/lang/Object;
.source "SnmpConInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/topology/entity/SnmpConInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isOpen:Z

.field private name:Ljava/lang/String;

.field private retryCount:I

.field private timeout:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cndatacom/topology/entity/SnmpConInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/topology/entity/SnmpConInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/topology/entity/SnmpConInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->isOpen:Z

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->isOpen:Z

    const-string v1, ""

    .line 6
    iput-object v1, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->isOpen:Z

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->retryCount:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->timeout:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->retryCount:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->timeout:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->isOpen:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->isOpen:Z

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->retryCount:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->timeout:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->isOpen:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget p2, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->retryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->timeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/cndatacom/topology/entity/SnmpConInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
