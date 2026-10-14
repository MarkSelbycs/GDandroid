.class public Landroidx/work/multiprocess/parcelable/ParcelableConstraints$a;
.super Ljava/lang/Object;
.source "ParcelableConstraints.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/parcelable/ParcelableConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/work/multiprocess/parcelable/ParcelableConstraints;",
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
.method public a(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableConstraints;
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Landroidx/work/multiprocess/parcelable/ParcelableConstraints;
    .locals 0

    new-array p1, p1, [Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints$a;->a(Landroid/os/Parcel;)Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints$a;->b(I)[Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    move-result-object p1

    return-object p1
.end method
