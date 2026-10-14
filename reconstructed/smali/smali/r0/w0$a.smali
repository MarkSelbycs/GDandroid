.class public Lr0/w0$a;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/w0;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr2/a;

.field public final synthetic b:Lr0/w0;


# direct methods
.method public constructor <init>(Lr0/w0;Lr2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lr0/w0$a;->b:Lr0/w0;

    iput-object p2, p0, Lr0/w0$a;->a:Lr2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lr0/w0$a;->b:Lr0/w0;

    iget-object v0, v0, Lr0/w0;->v:Lb1/c;

    invoke-virtual {v0}, Lb1/a;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lr0/w0$a;->a:Lr2/a;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 3
    invoke-static {}, Lq0/n;->e()Lq0/n;

    move-result-object v0

    sget-object v1, Lr0/w0;->x:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting work for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lr0/w0$a;->b:Lr0/w0;

    iget-object v3, v3, Lr0/w0;->d:Lz0/u;

    iget-object v3, v3, Lz0/u;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lq0/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lr0/w0$a;->b:Lr0/w0;

    iget-object v1, v0, Lr0/w0;->v:Lb1/c;

    iget-object v0, v0, Lr0/w0;->e:Landroidx/work/c;

    invoke-virtual {v0}, Landroidx/work/c;->startWork()Lr2/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb1/c;->r(Lr2/a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lr0/w0$a;->b:Lr0/w0;

    iget-object v1, v1, Lr0/w0;->v:Lb1/c;

    invoke-virtual {v1, v0}, Lb1/c;->q(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
