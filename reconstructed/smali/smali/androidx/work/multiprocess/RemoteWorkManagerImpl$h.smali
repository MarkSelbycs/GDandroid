.class public Landroidx/work/multiprocess/RemoteWorkManagerImpl$h;
.super Landroidx/work/multiprocess/a;
.source "RemoteWorkManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerImpl;->queryWorkInfo([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/multiprocess/a<",
        "Ljava/util/List<",
        "Lq0/y;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Landroidx/work/multiprocess/RemoteWorkManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$h;->d:Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    invoke-direct {p0, p2, p3, p4}, Landroidx/work/multiprocess/a;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$h;->c(Ljava/util/List;)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq0/y;",
            ">;)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;

    invoke-direct {v0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkInfos;-><init>(Ljava/util/List;)V

    .line 2
    invoke-static {v0}, Le1/a;->a(Landroid/os/Parcelable;)[B

    move-result-object p1

    return-object p1
.end method
