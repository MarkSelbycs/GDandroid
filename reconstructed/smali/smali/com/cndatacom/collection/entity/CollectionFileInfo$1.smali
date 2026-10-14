.class Lcom/cndatacom/collection/entity/CollectionFileInfo$1;
.super Ljava/lang/Object;
.source "CollectionFileInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/collection/entity/CollectionFileInfo;->save()Lcom/cndatacom/collection/entity/CollectionFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/collection/entity/CollectionFileInfo;


# direct methods
.method public constructor <init>(Lcom/cndatacom/collection/entity/CollectionFileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/collection/entity/CollectionFileInfo$1;->this$0:Lcom/cndatacom/collection/entity/CollectionFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/collection/entity/CollectionFileInfo$1;->this$0:Lcom/cndatacom/collection/entity/CollectionFileInfo;

    invoke-static {v0}, Lcom/cndatacom/collection/entity/CollectionFileInfo;->access$000(Lcom/cndatacom/collection/entity/CollectionFileInfo;)V

    return-void
.end method
