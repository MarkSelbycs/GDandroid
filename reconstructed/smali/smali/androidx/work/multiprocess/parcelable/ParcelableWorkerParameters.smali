.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;
.super Ljava/lang/Object;
.source "ParcelableWorkerParameters.java"

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
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:Landroidx/work/b;

.field private final mGeneration:I

.field private final mId:Ljava/util/UUID;

.field private final mRunAttemptCount:I

.field private final mRuntimeExtras:Landroidx/work/WorkerParameters$a;

.field private final mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    .line 11
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    .line 12
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableData;->b()Landroidx/work/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/b;

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/Set;

    .line 14
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;-><init>(Landroid/os/Parcel;)V

    .line 15
    invoke-virtual {v0}, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->a()Landroidx/work/WorkerParameters$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$a;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mGeneration:I

    return-void
.end method

.method public constructor <init>(Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroidx/work/WorkerParameters;->d()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    .line 3
    invoke-virtual {p1}, Landroidx/work/WorkerParameters;->e()Landroidx/work/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/b;

    .line 4
    invoke-virtual {p1}, Landroidx/work/WorkerParameters;->j()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/Set;

    .line 5
    invoke-virtual {p1}, Landroidx/work/WorkerParameters;->i()Landroidx/work/WorkerParameters$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$a;

    .line 6
    invoke-virtual {p1}, Landroidx/work/WorkerParameters;->h()I

    move-result v0

    iput v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    .line 7
    invoke-virtual {p1}, Landroidx/work/WorkerParameters;->c()I

    move-result p1

    iput p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mGeneration:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/work/a;Lc1/b;Lq0/u;Lq0/i;)Landroidx/work/WorkerParameters;
    .locals 14

    move-object v0, p0

    .line 1
    new-instance v13, Landroidx/work/WorkerParameters;

    iget-object v2, v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    iget-object v3, v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/b;

    iget-object v4, v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/Set;

    iget-object v5, v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$a;

    iget v6, v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    iget v7, v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mGeneration:I

    .line 2
    invoke-virtual {p1}, Landroidx/work/a;->d()Ljava/util/concurrent/Executor;

    move-result-object v8

    .line 3
    invoke-virtual {p1}, Landroidx/work/a;->n()Lq0/c0;

    move-result-object v10

    move-object v1, v13

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;IILjava/util/concurrent/Executor;Lc1/b;Lq0/c0;Lq0/u;Lq0/i;)V

    return-object v13
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableData;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mData:Landroidx/work/b;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/b;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mTags:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRuntimeExtras:Landroidx/work/WorkerParameters$a;

    invoke-direct {v0, v1}, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;-><init>(Landroidx/work/WorkerParameters$a;)V

    .line 7
    invoke-virtual {v0, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableRuntimeExtras;->writeToParcel(Landroid/os/Parcel;I)V

    .line 8
    iget p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mRunAttemptCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;->mGeneration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
