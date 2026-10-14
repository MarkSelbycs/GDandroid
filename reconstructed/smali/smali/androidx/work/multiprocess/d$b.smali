.class public Landroidx/work/multiprocess/d$b;
.super Ljava/lang/Object;
.source "RemoteClientUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/multiprocess/d;->a(Lr2/a;Li/a;Ljava/util/concurrent/Executor;)Lr2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr2/a;

.field public final synthetic b:Li/a;

.field public final synthetic c:Lb1/c;


# direct methods
.method public constructor <init>(Lr2/a;Li/a;Lb1/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/multiprocess/d$b;->a:Lr2/a;

    iput-object p2, p0, Landroidx/work/multiprocess/d$b;->b:Li/a;

    iput-object p3, p0, Landroidx/work/multiprocess/d$b;->c:Lb1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/work/multiprocess/d$b;->a:Lr2/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/work/multiprocess/d$b;->b:Li/a;

    invoke-interface {v1, v0}, Li/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/work/multiprocess/d$b;->c:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->p(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    iget-object v1, p0, Landroidx/work/multiprocess/d$b;->c:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_1
    return-void
.end method
