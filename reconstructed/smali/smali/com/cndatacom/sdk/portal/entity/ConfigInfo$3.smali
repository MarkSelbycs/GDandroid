.class Lcom/cndatacom/sdk/portal/entity/ConfigInfo$3;
.super Ljava/lang/Object;
.source "ConfigInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->setDaMod([B)Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

.field public final synthetic val$data:[B


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;[B)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$3;->this$0:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$3;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$3;->this$0:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    iget-object v1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$3;->val$data:[B

    invoke-static {v0, v1}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->access$100(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;[B)V

    return-void
.end method
