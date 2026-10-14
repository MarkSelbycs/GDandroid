.class Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo$1;
.super Ljava/lang/Object;
.source "MultiProcessInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->save()Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;


# direct methods
.method public constructor <init>(Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo$1;->this$0:Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo$1;->this$0:Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;

    invoke-static {v0}, Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;->access$000(Lcom/cndatacom/sdk/portal/entity/MultiProcessInfo;)V

    return-void
.end method
