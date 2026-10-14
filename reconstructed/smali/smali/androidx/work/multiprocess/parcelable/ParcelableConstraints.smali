.class public Landroidx/work/multiprocess/parcelable/ParcelableConstraints;
.super Ljava/lang/Object;
.source "ParcelableConstraints.java"

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
            "Landroidx/work/multiprocess/parcelable/ParcelableConstraints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConstraints:Lq0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints$a;

    invoke-direct {v0}, Landroidx/work/multiprocess/parcelable/ParcelableConstraints$a;-><init>()V

    sput-object v0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lq0/d$a;

    invoke-direct {v0}, Lq0/d$a;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Lz0/b0;->d(I)Lq0/o;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lq0/d$a;->c(Lq0/o;)Lq0/d$a;

    .line 7
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Lq0/d$a;->d(Z)Lq0/d$a;

    .line 9
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lq0/d$a;->e(Z)Lq0/d$a;

    .line 11
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lq0/d$a;->g(Z)Lq0/d$a;

    .line 13
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lq0/d$a;->f(Z)Lq0/d$a;

    .line 15
    invoke-static {p1}, Le1/b;->a(Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 17
    invoke-static {v1}, Lz0/b0;->b([B)Ljava/util/Set;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq0/d$c;

    .line 19
    invoke-virtual {v2}, Lq0/d$c;->a()Landroid/net/Uri;

    move-result-object v3

    .line 20
    invoke-virtual {v2}, Lq0/d$c;->b()Z

    move-result v2

    .line 21
    invoke-virtual {v0, v3, v2}, Lq0/d$a;->a(Landroid/net/Uri;Z)Lq0/d$a;

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 23
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lq0/d$a;->h(JLjava/util/concurrent/TimeUnit;)Lq0/d$a;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lq0/d$a;->i(JLjava/util/concurrent/TimeUnit;)Lq0/d$a;

    .line 26
    invoke-virtual {v0}, Lq0/d$a;->b()Lq0/d;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    return-void
.end method

.method public constructor <init>(Lq0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    return-void
.end method


# virtual methods
.method public a()Lq0/d;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

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
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    invoke-virtual {p2}, Lq0/d;->d()Lq0/o;

    move-result-object p2

    invoke-static {p2}, Lz0/b0;->g(Lq0/o;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    invoke-virtual {p2}, Lq0/d;->f()Z

    move-result p2

    invoke-static {p1, p2}, Le1/b;->b(Landroid/os/Parcel;Z)V

    .line 3
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    invoke-virtual {p2}, Lq0/d;->g()Z

    move-result p2

    invoke-static {p1, p2}, Le1/b;->b(Landroid/os/Parcel;Z)V

    .line 4
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    invoke-virtual {p2}, Lq0/d;->i()Z

    move-result p2

    invoke-static {p1, p2}, Le1/b;->b(Landroid/os/Parcel;Z)V

    .line 5
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    invoke-virtual {p2}, Lq0/d;->h()Z

    move-result p2

    invoke-static {p1, p2}, Le1/b;->b(Landroid/os/Parcel;Z)V

    .line 6
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    invoke-virtual {p2}, Lq0/d;->e()Z

    move-result p2

    .line 7
    invoke-static {p1, p2}, Le1/b;->b(Landroid/os/Parcel;Z)V

    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    .line 9
    invoke-virtual {p2}, Lq0/d;->c()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2}, Lz0/b0;->i(Ljava/util/Set;)[B

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 11
    :cond_0
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    invoke-virtual {p2}, Lq0/d;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    iget-object p2, p0, Landroidx/work/multiprocess/parcelable/ParcelableConstraints;->mConstraints:Lq0/d;

    invoke-virtual {p2}, Lq0/d;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
