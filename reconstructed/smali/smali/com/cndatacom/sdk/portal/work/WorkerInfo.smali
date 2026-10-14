.class public abstract Lcom/cndatacom/sdk/portal/work/WorkerInfo;
.super Ljava/lang/Object;
.source "WorkerInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private forceStop:Z

.field private period:J

.field private taskId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->taskId:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->forceStop:Z

    return-void
.end method


# virtual methods
.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->period:J

    return-wide v0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->taskId:I

    return v0
.end method

.method public isForceStop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->forceStop:Z

    return v0
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->runTask()V

    return-void
.end method

.method public abstract runTask()V
.end method

.method public setForceStop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->forceStop:Z

    return-void
.end method

.method public setPeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cndatacom/sdk/portal/work/WorkerInfo;->period:J

    return-void
.end method
