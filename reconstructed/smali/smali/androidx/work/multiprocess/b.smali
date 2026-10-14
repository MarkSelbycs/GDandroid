.class public final synthetic Landroidx/work/multiprocess/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/multiprocess/l;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/work/multiprocess/IWorkManagerImplCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/multiprocess/l;ILandroidx/work/multiprocess/IWorkManagerImplCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/b;->a:Landroidx/work/multiprocess/l;

    iput p2, p0, Landroidx/work/multiprocess/b;->b:I

    iput-object p3, p0, Landroidx/work/multiprocess/b;->c:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/multiprocess/b;->a:Landroidx/work/multiprocess/l;

    iget v1, p0, Landroidx/work/multiprocess/b;->b:I

    iget-object v2, p0, Landroidx/work/multiprocess/b;->c:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    invoke-static {v0, v1, v2}, Landroidx/work/multiprocess/ListenableWorkerImpl;->a(Landroidx/work/multiprocess/l;ILandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    return-void
.end method
