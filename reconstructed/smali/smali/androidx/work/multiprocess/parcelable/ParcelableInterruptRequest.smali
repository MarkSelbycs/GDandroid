.class public final Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;
.super Ljava/lang/Object;
.source "ParcelableInterruptRequest.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest$b;


# instance fields
.field private final id:Ljava/lang/String;

.field private final stopReason:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest$b;-><init>(Lm3/g;)V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->Companion:Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest$b;

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm3/k;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->id:Ljava/lang/String;

    iput p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->stopReason:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->stopReason:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->stopReason:I

    iget p1, p1, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->stopReason:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->stopReason:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParcelableInterruptRequest(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->stopReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableInterruptRequest;->stopReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
