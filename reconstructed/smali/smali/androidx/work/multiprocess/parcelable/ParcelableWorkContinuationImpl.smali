.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;
.super Ljava/lang/Object;
.source "ParcelableWorkContinuationImpl.java"

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
        Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sValues:[Lq0/g;


# instance fields
.field private mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lq0/g;->values()[Lq0/g;

    move-result-object v0

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->sValues:[Lq0/g;

    .line 2
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 7
    sget-object v3, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->sValues:[Lq0/g;

    aget-object v2, v3, v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v3, :cond_1

    .line 11
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    .line 12
    invoke-virtual {v8}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->a()Lq0/b0;

    move-result-object v8

    check-cast v8, Lr0/r0;

    .line 13
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v6, v1, :cond_2

    .line 17
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    .line 18
    invoke-virtual {v7}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->a()Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object v1, v3

    .line 19
    :cond_3
    new-instance p1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    invoke-direct {p1, v0, v2, v4, v1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;-><init>(Ljava/lang/String;Lq0/g;Ljava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    return-void
.end method

.method public constructor <init>(Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    return-object v0
.end method

.method public b(Lr0/p0;)Lr0/c0;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    invoke-virtual {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->f(Lr0/p0;)Lr0/c0;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 3
    invoke-static {p1, v1}, Le1/b;->b(Landroid/os/Parcel;Z)V

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->a()Lq0/g;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->d()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v3

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq0/b0;

    .line 12
    new-instance v5, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    invoke-direct {v5, v4}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;-><init>(Lq0/b0;)V

    .line 13
    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->mInfo:Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 16
    :goto_1
    invoke-static {p1, v2}, Le1/b;->b(Landroid/os/Parcel;Z)V

    if-eqz v2, :cond_3

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 19
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    .line 20
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;

    invoke-direct {v1, v2}, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;-><init>(Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl$b;)V

    .line 21
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
