.class public Landroidx/work/multiprocess/parcelable/ParcelableResult;
.super Ljava/lang/Object;
.source "ParcelableResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mResult:Landroidx/work/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableResult$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableResult$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v1, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    .line 6
    invoke-virtual {v1}, Landroidx/work/multiprocess/parcelable/ParcelableData;->b()Landroidx/work/b;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableResult;->b(ILandroidx/work/b;)Landroidx/work/c$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/c$a;

    return-void
.end method

.method public constructor <init>(Landroidx/work/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/c$a;

    return-void
.end method

.method public static b(ILandroidx/work/b;)Landroidx/work/c$a;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {}, Landroidx/work/c$a;->d()Landroidx/work/c$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 2
    invoke-static {p1}, Landroidx/work/c$a;->f(Landroidx/work/b;)Landroidx/work/c$a;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 3
    invoke-static {p1}, Landroidx/work/c$a;->b(Landroidx/work/b;)Landroidx/work/c$a;

    move-result-object p0

    :goto_0
    return-object p0

    .line 4
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown result type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static c(Landroidx/work/c$a;)I
    .locals 3

    .line 1
    instance-of v0, p0, Landroidx/work/c$a$b;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    instance-of v0, p0, Landroidx/work/c$a$c;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 3
    :cond_1
    instance-of v0, p0, Landroidx/work/c$a$a;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Landroidx/work/c$a;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/c$a;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/c$a;

    invoke-static {v0}, Landroidx/work/multiprocess/parcelable/ParcelableResult;->c(Landroidx/work/c$a;)I

    move-result v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->mResult:Landroidx/work/c$a;

    invoke-virtual {v0}, Landroidx/work/c$a;->c()Landroidx/work/b;

    move-result-object v0

    .line 4
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v1, v0}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/b;)V

    .line 5
    invoke-virtual {v1, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
