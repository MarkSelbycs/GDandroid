.class public Lcom/cndatacom/personal/entity/PersonalInfo;
.super Ljava/lang/Object;
.source "PersonalInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cndatacom/personal/entity/PersonalInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ACCOUNT:I = 0x0

.field public static final TYPE_APP:I = 0x6

.field public static final TYPE_DEVICE:I = 0x4

.field public static final TYPE_IP:I = 0x3

.field public static final TYPE_MAC:I = 0x2

.field public static final TYPE_SYSTEM_VERSION:I = 0x5

.field public static final TYPE_WIFI:I = 0x1


# instance fields
.field private createTime:Ljava/lang/String;

.field private cryptoText:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cndatacom/personal/entity/PersonalInfo$1;

    invoke-direct {v0}, Lcom/cndatacom/personal/entity/PersonalInfo$1;-><init>()V

    sput-object v0, Lcom/cndatacom/personal/entity/PersonalInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->type:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->text:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->createTime:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->cryptoText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->type:I

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->text:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->createTime:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->cryptoText:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->type:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->text:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->createTime:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCryptoText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->cryptoText:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->type:I

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setCryptoText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->cryptoText:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/cndatacom/personal/entity/PersonalInfo;->createTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
