.class public Lt4/b$a;
.super Ljava/lang/Object;
.source "DefaultThreadFactory.java"

# interfaces
.implements Lt4/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Thread;

.field public b:Lt4/k;

.field public c:Z

.field public final synthetic d:Lt4/b;


# direct methods
.method public constructor <init>(Lt4/b;Ljava/lang/String;Lt4/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt4/b$a;->d:Lt4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lt4/b$a;->c:Z

    .line 3
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lt4/b$a;->a:Ljava/lang/Thread;

    .line 4
    iput-object p3, p0, Lt4/b$a;->b:Lt4/k;

    return-void
.end method

.method public static synthetic a(Lt4/b$a;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lt4/b$a;->a:Ljava/lang/Thread;

    return-object p0
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt4/b$a;->b:Lt4/k;

    invoke-interface {v0}, Lt4/k;->interrupt()V

    .line 2
    iget-object v0, p0, Lt4/b$a;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public join()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt4/b$a;->b:Lt4/k;

    invoke-interface {v0}, Lt4/k;->join()V

    .line 2
    iget-object v0, p0, Lt4/b$a;->a:Ljava/lang/Thread;

    iget-object v1, p0, Lt4/b$a;->d:Lt4/b;

    invoke-static {v1}, Lt4/b;->b(Lt4/b;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lt4/b$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lt4/b$a;->c:Z

    .line 3
    iget-object v0, p0, Lt4/b$a;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lt4/b$a;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    :goto_0
    return-void
.end method

.method public terminate()V
    .locals 1

    iget-object v0, p0, Lt4/b$a;->b:Lt4/k;

    invoke-interface {v0}, Lt4/k;->terminate()V

    return-void
.end method
