.class public Landroidx/work/multiprocess/parcelable/ParcelableResult$a;
.super Ljava/lang/Object;
.source "ParcelableResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/parcelable/ParcelableResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/work/multiprocess/parcelable/ParcelableResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableResult;
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Landroidx/work/multiprocess/parcelable/ParcelableResult;
    .locals 0

    new-array p1, p1, [Landroidx/work/multiprocess/parcelable/ParcelableResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableResult$a;->a(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableResult$a;->b(I)[Landroidx/work/multiprocess/parcelable/ParcelableResult;

    move-result-object p1

    return-object p1
.end method
