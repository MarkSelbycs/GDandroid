.class public Landroidx/work/multiprocess/RemoteListenableWorker$b;
.super Ljava/lang/Object;
.source "RemoteListenableWorker.java"

# interfaces
.implements Li/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteListenableWorker;->startWork()Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/a<",
        "[B",
        "Landroidx/work/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/work/multiprocess/RemoteListenableWorker;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteListenableWorker;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteListenableWorker$b;->a:Landroidx/work/multiprocess/RemoteListenableWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Landroidx/work/c$a;
    .locals 3

    .line 1
    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Le1/a;->b([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    .line 2
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteListenableWorker;->i:Ljava/lang/String;

    const-string v2, "Cleaning up"

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Landroidx/work/multiprocess/RemoteListenableWorker$b;->a:Landroidx/work/multiprocess/RemoteListenableWorker;

    iget-object v0, v0, Landroidx/work/multiprocess/RemoteListenableWorker;->f:Landroidx/work/multiprocess/c;

    invoke-virtual {v0}, Landroidx/work/multiprocess/c;->e()V

    .line 4
    invoke-virtual {p1}, Landroidx/work/multiprocess/parcelable/ParcelableResult;->a()Landroidx/work/c$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteListenableWorker$b;->a([B)Landroidx/work/c$a;

    move-result-object p1

    return-object p1
.end method
