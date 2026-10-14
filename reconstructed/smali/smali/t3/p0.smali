.class public final Lt3/p0;
.super Ljava/lang/Object;
.source "Executors.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lt3/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt3/p0;->a:Lt3/b0;

    sget-object v1, Ld3/h;->a:Ld3/h;

    invoke-virtual {v0, v1}, Lt3/b0;->n(Ld3/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lt3/p0;->a:Lt3/b0;

    invoke-virtual {v0, v1, p1}, Lt3/b0;->i(Ld3/g;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt3/p0;->a:Lt3/b0;

    invoke-virtual {v0}, Lt3/b0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
