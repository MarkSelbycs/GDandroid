.class Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$2;
.super Ljava/util/TimerTask;
.source "ExCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->handleUploadData(Z)V
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

    iput-object p1, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$2;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager$2;->this$0:Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;->access$200(Lcom/cndatacom/zexcheck/v3/manager/ExCheckManager;Z)V

    return-void
.end method
