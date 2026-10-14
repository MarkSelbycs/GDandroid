.class public final synthetic Landroidx/work/multiprocess/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb1/c;

.field public final synthetic b:Landroidx/work/a;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/work/WorkerParameters;

.field public final synthetic f:Lc1/b;

.field public final synthetic g:Landroidx/work/multiprocess/l;


# direct methods
.method public synthetic constructor <init>(Lb1/c;Landroidx/work/a;Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;Lc1/b;Landroidx/work/multiprocess/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/m;->a:Lb1/c;

    iput-object p2, p0, Landroidx/work/multiprocess/m;->b:Landroidx/work/a;

    iput-object p3, p0, Landroidx/work/multiprocess/m;->c:Landroid/content/Context;

    iput-object p4, p0, Landroidx/work/multiprocess/m;->d:Ljava/lang/String;

    iput-object p5, p0, Landroidx/work/multiprocess/m;->e:Landroidx/work/WorkerParameters;

    iput-object p6, p0, Landroidx/work/multiprocess/m;->f:Lc1/b;

    iput-object p7, p0, Landroidx/work/multiprocess/m;->g:Landroidx/work/multiprocess/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroidx/work/multiprocess/m;->a:Lb1/c;

    iget-object v1, p0, Landroidx/work/multiprocess/m;->b:Landroidx/work/a;

    iget-object v2, p0, Landroidx/work/multiprocess/m;->c:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/multiprocess/m;->d:Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/multiprocess/m;->e:Landroidx/work/WorkerParameters;

    iget-object v5, p0, Landroidx/work/multiprocess/m;->f:Lc1/b;

    iget-object v6, p0, Landroidx/work/multiprocess/m;->g:Landroidx/work/multiprocess/l;

    invoke-static/range {v0 .. v6}, Landroidx/work/multiprocess/o;->b(Lb1/c;Landroidx/work/a;Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;Lc1/b;Landroidx/work/multiprocess/l;)V

    return-void
.end method
