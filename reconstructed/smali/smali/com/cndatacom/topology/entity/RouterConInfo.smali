.class public Lcom/cndatacom/topology/entity/RouterConInfo;
.super Ljava/lang/Object;
.source "RouterConInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/topology/entity/RouterConInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private interval:I

.field private maxTTL:I

.field private publicIp:Ljava/lang/String;

.field private retryCount:I

.field private retryInterval:I

.field private snmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

.field private url:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cndatacom/topology/entity/RouterConInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/topology/entity/RouterConInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/topology/entity/RouterConInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->url:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->publicIp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->url:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->publicIp:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->interval:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->url:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->publicIp:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->maxTTL:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->retryCount:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->retryInterval:I

    .line 13
    const-class v0, Lcom/cndatacom/topology/entity/SnmpConInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cndatacom/topology/entity/SnmpConInfo;

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->snmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInterval()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->interval:I

    return v0
.end method

.method public getMaxTTL()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->maxTTL:I

    return v0
.end method

.method public getPublicIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->publicIp:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->retryCount:I

    return v0
.end method

.method public getRetryInterval()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->retryInterval:I

    return v0
.end method

.method public getSnmpConInfo()Lcom/cndatacom/topology/entity/SnmpConInfo;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->snmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setInterval(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->interval:I

    return-void
.end method

.method public setMaxTTL(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->maxTTL:I

    return-void
.end method

.method public setPublicIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->publicIp:Ljava/lang/String;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->retryCount:I

    return-void
.end method

.method public setRetryInterval(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->retryInterval:I

    return-void
.end method

.method public setSnmpConInfo(Lcom/cndatacom/topology/entity/SnmpConInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->snmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->publicIp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->maxTTL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->retryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->retryInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterConInfo;->snmpConInfo:Lcom/cndatacom/topology/entity/SnmpConInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
