.class public final Landroidx/work/multiprocess/l;
.super Ljava/lang/Object;
.source "RemoteWorkerWrapper.kt"


# instance fields
.field public final a:Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lr2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "future"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/multiprocess/l;->a:Lr2/a;

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, -0x100

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/work/multiprocess/l;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()Lr2/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Landroidx/work/c$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/multiprocess/l;->a:Lr2/a;

    return-object v0
.end method

.method public final b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Landroidx/work/multiprocess/l;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/multiprocess/l;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2
    iget-object p1, p0, Landroidx/work/multiprocess/l;->a:Lr2/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
