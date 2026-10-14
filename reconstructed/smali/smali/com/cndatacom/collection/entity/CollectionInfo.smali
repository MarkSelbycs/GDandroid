.class public Lcom/cndatacom/collection/entity/CollectionInfo;
.super Ljava/lang/Object;
.source "CollectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/collection/entity/CollectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private account:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private clientid:Ljava/lang/String;

.field private exitcode:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private ostype:Ljava/lang/String;

.field private process:Ljava/lang/String;

.field private starttime:Ljava/lang/String;

.field private stoptime:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cndatacom/collection/entity/CollectionInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/collection/entity/CollectionInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/collection/entity/CollectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->id:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->account:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->clientid:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->cid:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->ostype:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->version:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->process:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->exitcode:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->starttime:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->stoptime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->id:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->account:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->clientid:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->cid:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->ostype:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->version:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->process:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->exitcode:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->starttime:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->stoptime:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->id:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->account:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->clientid:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->cid:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->ostype:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->version:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->process:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->exitcode:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->starttime:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->stoptime:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static madeDefCollectionInfo(Landroid/content/Context;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)Lcom/cndatacom/collection/entity/CollectionInfo;
    .locals 3

    .line 1
    invoke-static {}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/cndatacom/collection/entity/CollectionInfo;

    invoke-direct {v1}, Lcom/cndatacom/collection/entity/CollectionInfo;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/collection/entity/CollectionInfo;->setId(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/DateUtil;->parseDateToYMDHMSString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/cndatacom/collection/entity/CollectionInfo;->setStarttime(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/cndatacom/collection/entity/CollectionInfo;->setStoptime(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/collection/entity/CollectionInfo;->setAccount(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cndatacom/collection/entity/CollectionInfo;->setClientid(Ljava/lang/String;)V

    const-string v2, ""

    .line 9
    invoke-virtual {p1, v2}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->getSchoolId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cndatacom/collection/entity/CollectionInfo;->setCid(Ljava/lang/String;)V

    const-string p1, "1001"

    .line 10
    invoke-virtual {v1, p1}, Lcom/cndatacom/collection/entity/CollectionInfo;->setExitcode(Ljava/lang/String;)V

    const-string p1, "4"

    .line 11
    invoke-virtual {v1, p1}, Lcom/cndatacom/collection/entity/CollectionInfo;->setOstype(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Lcom/cndatacom/collection/entity/CollectionInfo;->setProcess(Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/cndatacom/sdk/portal/util/ApkUtil;->getVersionCode(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/cndatacom/collection/entity/CollectionInfo;->setVersion(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getClientid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->clientid:Ljava/lang/String;

    return-object v0
.end method

.method public getExitcode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->exitcode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOstype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->ostype:Ljava/lang/String;

    return-object v0
.end method

.method public getProcess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->process:Ljava/lang/String;

    return-object v0
.end method

.method public getStarttime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->starttime:Ljava/lang/String;

    return-object v0
.end method

.method public getStoptime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->stoptime:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->account:Ljava/lang/String;

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->cid:Ljava/lang/String;

    return-void
.end method

.method public setClientid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->clientid:Ljava/lang/String;

    return-void
.end method

.method public setExitcode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->exitcode:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setOstype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->ostype:Ljava/lang/String;

    return-void
.end method

.method public setProcess(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->process:Ljava/lang/String;

    return-void
.end method

.method public setStarttime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->starttime:Ljava/lang/String;

    return-void
.end method

.method public setStoptime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->stoptime:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->version:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->account:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->clientid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->cid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->ostype:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->process:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->exitcode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->starttime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/cndatacom/collection/entity/CollectionInfo;->stoptime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
