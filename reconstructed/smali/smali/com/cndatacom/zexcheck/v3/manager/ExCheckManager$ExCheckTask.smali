.class Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$ExCheckTask;
.super Ljava/util/TimerTask;
.source "ExCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExCheckTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;


# direct methods
.method private constructor <init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$ExCheckTask;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$ExCheckTask;-><init>(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$ExCheckTask;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-static {v0}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$1200(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
