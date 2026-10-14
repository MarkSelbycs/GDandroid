.class public final Lr0/o0;
.super Ljava/lang/Object;
.source "WorkLauncher.kt"

# interfaces
.implements Lr0/n0;


# instance fields
.field public final a:Lr0/u;

.field public final b:Lc1/b;


# direct methods
.method public constructor <init>(Lr0/u;Lc1/b;)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTaskExecutor"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr0/o0;->a:Lr0/u;

    .line 3
    iput-object p2, p0, Lr0/o0;->b:Lc1/b;

    return-void
.end method


# virtual methods
.method public c(Lr0/a0;I)V
    .locals 4

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lr0/o0;->b:Lc1/b;

    .line 2
    new-instance v1, La1/s;

    iget-object v2, p0, Lr0/o0;->a:Lr0/u;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, p2}, La1/s;-><init>(Lr0/u;Lr0/a0;ZI)V

    .line 3
    invoke-interface {v0, v1}, Lc1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lr0/a0;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, La1/q;

    iget-object v1, p0, Lr0/o0;->a:Lr0/u;

    invoke-direct {v0, v1, p1, p2}, La1/q;-><init>(Lr0/u;Lr0/a0;Landroidx/work/WorkerParameters$a;)V

    .line 2
    iget-object p1, p0, Lr0/o0;->b:Lc1/b;

    invoke-interface {p1, v0}, Lc1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
