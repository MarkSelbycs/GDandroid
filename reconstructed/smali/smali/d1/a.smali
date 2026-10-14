.class public final synthetic Ld1/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/a;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld1/a;->a:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-static {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d(Landroidx/work/impl/workers/ConstraintTrackingWorker;)V

    return-void
.end method
