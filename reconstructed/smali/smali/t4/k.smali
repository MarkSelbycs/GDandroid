.class public interface abstract Lt4/k;
.super Ljava/lang/Object;
.source "WorkerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public abstract interrupt()V
.end method

.method public abstract join()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract terminate()V
.end method
