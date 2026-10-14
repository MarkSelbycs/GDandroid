.class Lcom/cndatacom/campus/util/CheckRegularlyUtil$1;
.super Ljava/util/TimerTask;
.source "CheckRegularlyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/util/CheckRegularlyUtil;->startCheck(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/util/CheckRegularlyUtil;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/util/CheckRegularlyUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/util/CheckRegularlyUtil$1;->a:Lcom/cndatacom/campus/util/CheckRegularlyUtil;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/util/CheckRegularlyUtil$1;->a:Lcom/cndatacom/campus/util/CheckRegularlyUtil;

    iget-object v1, v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->urlArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->doIcmpCheck(Ljava/util/ArrayList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "startCheck ping \u5931\u8d25-->"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    sget-object v0, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->m_timeTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 5
    invoke-static {}, Lcom/cndatacom/campus/work/CheckRegularWorker;->getInstance()Lcom/cndatacom/campus/work/CheckRegularWorker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cndatacom/campus/work/CheckRegularWorker;->handleCheckResult()V

    :cond_0
    return-void
.end method
