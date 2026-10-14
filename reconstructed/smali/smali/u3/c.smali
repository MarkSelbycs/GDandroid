.class public final Lu3/c;
.super Lu3/d;
.source "HandlerDispatcher.kt"


# instance fields
.field private volatile _immediate:Lu3/c;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lu3/c;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lu3/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;ILm3/g;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lu3/c;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lu3/d;-><init>(Lm3/g;)V

    .line 2
    iput-object p1, p0, Lu3/c;->c:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lu3/c;->d:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lu3/c;->e:Z

    if-eqz p3, :cond_0

    move-object v0, p0

    .line 5
    :cond_0
    iput-object v0, p0, Lu3/c;->_immediate:Lu3/c;

    .line 6
    iget-object p3, p0, Lu3/c;->_immediate:Lu3/c;

    if-nez p3, :cond_1

    .line 7
    new-instance p3, Lu3/c;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lu3/c;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lu3/c;->_immediate:Lu3/c;

    .line 8
    :cond_1
    iput-object p3, p0, Lu3/c;->f:Lu3/c;

    return-void
.end method


# virtual methods
.method public C()Lu3/c;
    .locals 1

    iget-object v0, p0, Lu3/c;->f:Lu3/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lu3/c;

    if-eqz v0, :cond_0

    check-cast p1, Lu3/c;

    iget-object p1, p1, Lu3/c;->c:Landroid/os/Handler;

    iget-object v0, p0, Lu3/c;->c:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lu3/c;->c:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(Ld3/g;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lu3/c;->z(Ld3/g;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public n(Ld3/g;)Z
    .locals 1

    iget-boolean p1, p0, Lu3/c;->e:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lu3/c;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lm3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic r()Lt3/r1;
    .locals 1

    invoke-virtual {p0}, Lu3/c;->C()Lu3/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt3/r1;->s()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lu3/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lu3/c;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lu3/c;->e:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".immediate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final z(Ld3/g;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' was closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lt3/l1;->c(Ld3/g;Ljava/util/concurrent/CancellationException;)V

    .line 2
    invoke-static {}, Lt3/q0;->b()Lt3/b0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lt3/b0;->i(Ld3/g;Ljava/lang/Runnable;)V

    return-void
.end method
