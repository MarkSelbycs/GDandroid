.class Lcom/cndatacom/sdk/portal/entity/ConfigInfo$2;
.super Ljava/lang/Object;
.source "ConfigInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->save()Lcom/cndatacom/sdk/portal/entity/ConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$2;->this$0:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/ConfigInfo$2;->this$0:Lcom/cndatacom/sdk/portal/entity/ConfigInfo;

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/entity/ConfigInfo;->access$000(Lcom/cndatacom/sdk/portal/entity/ConfigInfo;)V

    return-void
.end method
