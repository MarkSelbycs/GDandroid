.class public Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;
.super Ljava/lang/Object;
.source "ParcelableWorkQuery.java"

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
            "Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mWorkQuery:Lq0/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_1

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v5, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Lz0/b0;->f(I)Lq0/y$c;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v0}, Lq0/a0$a;->f(Ljava/util/List;)Lq0/a0$a;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1}, Lq0/a0$a;->d(Ljava/util/List;)Lq0/a0$a;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v3}, Lq0/a0$a;->c(Ljava/util/List;)Lq0/a0$a;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v4}, Lq0/a0$a;->b(Ljava/util/List;)Lq0/a0$a;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lq0/a0$a;->e()Lq0/a0;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Lq0/a0;

    return-void
.end method


# virtual methods
.method public a()Lq0/a0;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Lq0/a0;

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
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Lq0/a0;

    invoke-virtual {p2}, Lq0/a0;->a()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Lq0/a0;

    invoke-virtual {p2}, Lq0/a0;->d()Ljava/util/List;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 8
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Lq0/a0;

    invoke-virtual {p2}, Lq0/a0;->c()Ljava/util/List;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;->mWorkQuery:Lq0/a0;

    invoke-virtual {p2}, Lq0/a0;->b()Ljava/util/List;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/y$c;

    .line 14
    invoke-static {v0}, Lz0/b0;->j(Lq0/y$c;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
