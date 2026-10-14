.class public final synthetic Ld1/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt3/h1;


# direct methods
.method public synthetic constructor <init>(Lt3/h1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/c;->a:Lt3/h1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld1/c;->a:Lt3/h1;

    invoke-static {v0}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b(Lt3/h1;)V

    return-void
.end method
