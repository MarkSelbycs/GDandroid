.class public interface abstract Lr0/n0;
.super Ljava/lang/Object;
.source "WorkLauncher.kt"


# virtual methods
.method public a(Lr0/a0;I)V
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lr0/n0;->c(Lr0/a0;I)V

    return-void
.end method

.method public b(Lr0/a0;)V
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x200

    invoke-interface {p0, p1, v0}, Lr0/n0;->c(Lr0/a0;I)V

    return-void
.end method

.method public abstract c(Lr0/a0;I)V
.end method

.method public abstract d(Lr0/a0;Landroidx/work/WorkerParameters$a;)V
.end method

.method public e(Lr0/a0;)V
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lr0/n0;->d(Lr0/a0;Landroidx/work/WorkerParameters$a;)V

    return-void
.end method
