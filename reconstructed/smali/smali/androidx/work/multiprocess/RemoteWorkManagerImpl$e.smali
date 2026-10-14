.class public Landroidx/work/multiprocess/RemoteWorkManagerImpl$e;
.super Landroidx/work/multiprocess/a;
.source "RemoteWorkManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/RemoteWorkManagerImpl;->cancelAllWorkByTag(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/multiprocess/a<",
        "Lq0/r$b$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Landroidx/work/multiprocess/RemoteWorkManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteWorkManagerImpl;Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/multiprocess/RemoteWorkManagerImpl$e;->d:Landroidx/work/multiprocess/RemoteWorkManagerImpl;

    invoke-direct {p0, p2, p3, p4}, Landroidx/work/multiprocess/a;-><init>(Ljava/util/concurrent/Executor;Landroidx/work/multiprocess/IWorkManagerImplCallback;Lr2/a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)[B
    .locals 0

    check-cast p1, Lq0/r$b$c;

    invoke-virtual {p0, p1}, Landroidx/work/multiprocess/RemoteWorkManagerImpl$e;->c(Lq0/r$b$c;)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Lq0/r$b$c;)[B
    .locals 0

    sget-object p1, Landroidx/work/multiprocess/RemoteWorkManagerImpl;->e:[B

    return-object p1
.end method
