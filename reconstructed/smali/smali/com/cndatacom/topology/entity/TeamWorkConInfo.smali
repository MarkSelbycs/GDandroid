.class public Lcom/cndatacom/topology/entity/TeamWorkConInfo;
.super Ljava/lang/Object;
.source "TeamWorkConInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/topology/entity/TeamWorkConInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private castads:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cndatacom/topology/entity/TeamWorkConInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/topology/entity/TeamWorkConInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->castads:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->castads:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->timeout:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->castads:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCastads()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->castads:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->timeout:I

    return v0
.end method

.method public setCastads(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->castads:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->timeout:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->timeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/topology/entity/TeamWorkConInfo;->castads:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
