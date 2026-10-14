.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;
.super Ljava/lang/Object;
.source "ParcelableWorkRequest.java"

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
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mWorkRequest:Lq0/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Lz0/u;

    invoke-direct {v3, v0, v2}, Lz0/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lz0/u;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lz0/b0;->f(I)Lq0/y$c;

    move-result-object v2

    iput-object v2, v3, Lz0/u;->b:Lq0/y$c;

    .line 10
    new-instance v2, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v2, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    .line 11
    invoke-virtual {v2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->b()Landroidx/work/b;

    move-result-object v2

    iput-object v2, v3, Lz0/u;->e:Landroidx/work/b;

    .line 12
    new-instance v2, Landroidx/work/multiprocess/parcelable/ParcelableData;

    invoke-direct {v2, p1}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroid/os/Parcel;)V

    .line 13
    invoke-virtual {v2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->b()Landroidx/work/b;

    move-result-object v2

    iput-object v2, v3, Lz0/u;->f:Landroidx/work/b;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lz0/u;->g:J

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lz0/u;->h:J

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lz0/u;->i:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v3, Lz0/u;->k:I

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    .line 19
    invoke-virtual {v2}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->a()Lq0/d;

    move-result-object v2

    iput-object v2, v3, Lz0/u;->j:Lq0/d;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lz0/b0;->c(I)Lq0/a;

    move-result-object v2

    iput-object v2, v3, Lz0/u;->l:Lq0/a;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lz0/u;->m:J

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lz0/u;->o:J

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lz0/u;->p:J

    .line 24
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v2

    iput-boolean v2, v3, Lz0/u;->q:Z

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Lz0/b0;->e(I)Lq0/s;

    move-result-object p1

    iput-object p1, v3, Lz0/u;->r:Lq0/s;

    .line 26
    new-instance p1, Lr0/r0;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p1, v0, v3, v1}, Lr0/r0;-><init>(Ljava/util/UUID;Lz0/u;Ljava/util/Set;)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Lq0/b0;

    return-void
.end method

.method public constructor <init>(Lq0/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Lq0/b0;

    return-void
.end method


# virtual methods
.method public a()Lq0/b0;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Lq0/b0;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Lq0/b0;

    invoke-virtual {v0}, Lq0/b0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Lq0/b0;

    invoke-virtual {v1}, Lq0/b0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->mWorkRequest:Lq0/b0;

    invoke-virtual {v0}, Lq0/b0;->d()Lz0/u;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lz0/u;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lz0/u;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object v1, v0, Lz0/u;->b:Lq0/y$c;

    invoke-static {v1}, Lz0/b0;->j(Lq0/y$c;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableData;

    iget-object v2, v0, Lz0/u;->e:Landroidx/work/b;

    invoke-direct {v1, v2}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/b;)V

    .line 9
    invoke-virtual {v1, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 10
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableData;

    iget-object v2, v0, Lz0/u;->f:Landroidx/work/b;

    invoke-direct {v1, v2}, Landroidx/work/multiprocess/parcelable/ParcelableData;-><init>(Landroidx/work/b;)V

    .line 11
    invoke-virtual {v1, p1, p2}, Landroidx/work/multiprocess/parcelable/ParcelableData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 12
    iget-wide v1, v0, Lz0/u;->g:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 13
    iget-wide v1, v0, Lz0/u;->h:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    iget-wide v1, v0, Lz0/u;->i:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 15
    iget v1, v0, Lz0/u;->k:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    new-instance v1, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;

    iget-object v2, v0, Lz0/u;->j:Lq0/d;

    invoke-direct {v1, v2}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;-><init>(Lq0/d;)V

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 17
    iget-object p2, v0, Lz0/u;->l:Lq0/a;

    invoke-static {p2}, Lz0/b0;->a(Lq0/a;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget-wide v1, v0, Lz0/u;->m:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    iget-wide v1, v0, Lz0/u;->o:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 20
    iget-wide v1, v0, Lz0/u;->p:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 21
    iget-boolean p2, v0, Lz0/u;->q:Z

    invoke-static {p1, p2}, Le1/b;->b(Landroid/os/Parcel;Z)V

    .line 22
    iget-object p2, v0, Lz0/u;->r:Lq0/s;

    invoke-static {p2}, Lz0/b0;->h(Lq0/s;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
