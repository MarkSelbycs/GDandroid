.class Lcom/alibaba/fastjson/JSONPath$Context;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field public final eval:Z

.field public object:Ljava/lang/Object;

.field public final parent:Lcom/alibaba/fastjson/JSONPath$Context;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Context;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$Context;->parent:Lcom/alibaba/fastjson/JSONPath$Context;

    .line 3
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$Context;->eval:Z

    return-void
.end method
