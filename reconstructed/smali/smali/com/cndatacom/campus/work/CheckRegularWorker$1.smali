.class Lcom/cndatacom/campus/work/CheckRegularWorker$1;
.super Ljava/util/TimerTask;
.source "CheckRegularWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/work/CheckRegularWorker;->startCheckNetRegularly(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/util/CheckRegularlyUtil;

.field public final synthetic b:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

.field public final synthetic c:Lcom/cndatacom/campus/work/CheckRegularWorker;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/work/CheckRegularWorker;Lcom/cndatacom/campus/util/CheckRegularlyUtil;Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/work/CheckRegularWorker$1;->c:Lcom/cndatacom/campus/work/CheckRegularWorker;

    iput-object p2, p0, Lcom/cndatacom/campus/work/CheckRegularWorker$1;->a:Lcom/cndatacom/campus/util/CheckRegularlyUtil;

    iput-object p3, p0, Lcom/cndatacom/campus/work/CheckRegularWorker$1;->b:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "CheckRegularWorker  \u5f00\u59cb\u63a2\u6d4b -->"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/work/CheckRegularWorker$1;->a:Lcom/cndatacom/campus/util/CheckRegularlyUtil;

    iget-object v1, p0, Lcom/cndatacom/campus/work/CheckRegularWorker$1;->b:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-virtual {v0, v1}, Lcom/cndatacom/campus/util/CheckRegularlyUtil;->startCheck(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    return-void
.end method
