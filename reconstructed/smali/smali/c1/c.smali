.class public Lc1/c;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Lc1/b;


# instance fields
.field public final a:La1/p;

.field public final b:Lt3/b0;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc1/c;->c:Landroid/os/Handler;

    .line 3
    new-instance v0, Lc1/c$a;

    invoke-direct {v0, p0}, Lc1/c$a;-><init>(Lc1/c;)V

    iput-object v0, p0, Lc1/c;->d:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v0, La1/p;

    invoke-direct {v0, p1}, La1/p;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lc1/c;->a:La1/p;

    .line 5
    invoke-static {v0}, Lt3/b1;->a(Ljava/util/concurrent/Executor;)Lt3/b0;

    move-result-object p1

    iput-object p1, p0, Lc1/c;->b:Lt3/b0;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lc1/c;->d:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public bridge synthetic c()Lc1/a;
    .locals 1

    invoke-virtual {p0}, Lc1/c;->e()La1/p;

    move-result-object v0

    return-object v0
.end method

.method public d()Lt3/b0;
    .locals 1

    iget-object v0, p0, Lc1/c;->b:Lt3/b0;

    return-object v0
.end method

.method public e()La1/p;
    .locals 1

    iget-object v0, p0, Lc1/c;->a:La1/p;

    return-object v0
.end method
