.class public final La1/q;
.super Ljava/lang/Object;
.source "StartWorkRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr0/u;

.field public final b:Lr0/a0;

.field public final c:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Lr0/u;Lr0/a0;Landroidx/work/WorkerParameters$a;)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startStopToken"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La1/q;->a:Lr0/u;

    .line 3
    iput-object p2, p0, La1/q;->b:Lr0/a0;

    .line 4
    iput-object p3, p0, La1/q;->c:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La1/q;->a:Lr0/u;

    iget-object v1, p0, La1/q;->b:Lr0/a0;

    iget-object v2, p0, La1/q;->c:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Lr0/u;->s(Lr0/a0;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
