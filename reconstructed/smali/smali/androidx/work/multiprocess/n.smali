.class public final synthetic Landroidx/work/multiprocess/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb1/c;

.field public final synthetic b:Landroidx/work/c;

.field public final synthetic c:Landroidx/work/multiprocess/l;


# direct methods
.method public synthetic constructor <init>(Lb1/c;Landroidx/work/c;Landroidx/work/multiprocess/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/n;->a:Lb1/c;

    iput-object p2, p0, Landroidx/work/multiprocess/n;->b:Landroidx/work/c;

    iput-object p3, p0, Landroidx/work/multiprocess/n;->c:Landroidx/work/multiprocess/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/work/multiprocess/n;->a:Lb1/c;

    iget-object v1, p0, Landroidx/work/multiprocess/n;->b:Landroidx/work/c;

    iget-object v2, p0, Landroidx/work/multiprocess/n;->c:Landroidx/work/multiprocess/l;

    invoke-static {v0, v1, v2}, Landroidx/work/multiprocess/o;->a(Lb1/c;Landroidx/work/c;Landroidx/work/multiprocess/l;)V

    return-void
.end method
