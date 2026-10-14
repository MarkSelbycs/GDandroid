.class public Landroidx/work/multiprocess/RemoteWorkManagerClient$c;
.super Ljava/lang/Object;
.source "RemoteWorkManagerClient.java"

# interfaces
.implements Landroidx/work/multiprocess/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerClient;->c(Ljava/util/UUID;Landroidx/work/b;)Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/work/multiprocess/f<",
        "Landroidx/work/multiprocess/IWorkManagerImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/UUID;

.field public final synthetic b:Landroidx/work/b;

.field public final synthetic c:Landroidx/work/multiprocess/RemoteWorkManagerClient;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerClient;Ljava/util/UUID;Landroidx/work/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$c;->c:Landroidx/work/multiprocess/RemoteWorkManagerClient;

    iput-object p2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$c;->a:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$c;->b:Landroidx/work/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Landroidx/work/multiprocess/IWorkManagerImpl;

    invoke-virtual {p0, p1, p2}, Landroidx/work/multiprocess/RemoteWorkManagerClient$c;->b(Landroidx/work/multiprocess/IWorkManagerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method

.method public b(Landroidx/work/multiprocess/IWorkManagerImpl;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;

    iget-object v1, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$c;->a:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/work/multiprocess/RemoteWorkManagerClient$c;->b:Landroidx/work/b;

    invoke-direct {v0, v1, v2}, Landroidx/work/multiprocess/parcelable/ParcelableUpdateRequest;-><init>(Ljava/util/UUID;Landroidx/work/b;)V

    invoke-static {v0}, Le1/a;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    .line 2
    invoke-interface {p1, v0, p2}, Landroidx/work/multiprocess/IWorkManagerImpl;->setProgress([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method
