.class public Lcom/cndatacom/topology/entity/ArpInfo;
.super Ljava/lang/Object;
.source "ArpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/topology/entity/ArpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ip:Ljava/lang/String;

.field public mac:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cndatacom/topology/entity/ArpInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/topology/entity/ArpInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/topology/entity/ArpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/topology/entity/ArpInfo;->ip:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/cndatacom/topology/entity/ArpInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/cndatacom/topology/entity/ArpInfo;->ip:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cndatacom/topology/entity/ArpInfo;->mac:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/topology/entity/ArpInfo;->ip:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/topology/entity/ArpInfo;->mac:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cndatacom/topology/entity/ArpInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/ArpInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/topology/entity/ArpInfo;->mac:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/ArpInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/ArpInfo;->mac:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/cndatacom/topology/entity/ArpInfo;->ip:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/topology/entity/ArpInfo;->mac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
