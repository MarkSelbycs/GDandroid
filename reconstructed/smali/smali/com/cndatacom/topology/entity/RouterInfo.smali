.class public Lcom/cndatacom/topology/entity/RouterInfo;
.super Ljava/lang/Object;
.source "RouterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/topology/entity/RouterInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ip:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private ttl:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cndatacom/topology/entity/RouterInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/topology/entity/RouterInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/topology/entity/RouterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ip:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->model:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->os:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ttl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ip:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->model:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->os:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ttl:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ip:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->model:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->os:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ttl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ttl:Ljava/lang/String;

    return-object v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterInfo;->model:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterInfo;->os:Ljava/lang/String;

    return-void
.end method

.method public setTtl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ttl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/topology/entity/RouterInfo;->model:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/cndatacom/topology/entity/RouterInfo;->os:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/cndatacom/topology/entity/RouterInfo;->ttl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
