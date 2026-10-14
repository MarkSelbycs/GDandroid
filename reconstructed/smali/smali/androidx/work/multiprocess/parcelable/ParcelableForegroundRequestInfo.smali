.class public Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;
.super Ljava/lang/Object;
.source "ParcelableForegroundRequestInfo.java"

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
            "Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mForegroundInfo:Lq0/h;

.field private final mId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    .line 9
    new-instance v2, Lq0/h;

    invoke-direct {v2, v0, p1, v1}, Lq0/h;-><init>(ILandroid/app/Notification;I)V

    iput-object v2, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Lq0/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lq0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Lq0/h;

    return-void
.end method


# virtual methods
.method public a()Lq0/h;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Lq0/h;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Lq0/h;

    invoke-virtual {v0}, Lq0/h;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Lq0/h;

    invoke-virtual {v0}, Lq0/h;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;->mForegroundInfo:Lq0/h;

    invoke-virtual {v0}, Lq0/h;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
