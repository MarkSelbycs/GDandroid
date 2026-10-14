.class Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;
.super Ljava/lang/Object;
.source "ExCheckManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;


# direct methods
.method public constructor <init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/cndatacom/zexcheck/v3/util/ExecutorUtil;->getFastExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;

    invoke-direct {v1, p0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3$1;-><init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
