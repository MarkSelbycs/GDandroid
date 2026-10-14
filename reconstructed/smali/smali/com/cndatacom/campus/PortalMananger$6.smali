.class Lcom/cndatacom/campus/PortalMananger$6;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->G2(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/alibaba/fastjson/JSONArray;

.field public final synthetic c:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic d:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$6;->d:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/cndatacom/campus/PortalMananger$6;->b:Lcom/alibaba/fastjson/JSONArray;

    iput-object p4, p0, Lcom/cndatacom/campus/PortalMananger$6;->c:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cndatacom/campus/PortalMananger$6;->d:Lcom/cndatacom/campus/PortalMananger;

    iget-object v1, p0, Lcom/cndatacom/campus/PortalMananger$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/cndatacom/campus/PortalMananger$6;->b:Lcom/alibaba/fastjson/JSONArray;

    iget-object v3, p0, Lcom/cndatacom/campus/PortalMananger$6;->c:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/cndatacom/campus/PortalMananger;->O(Lcom/cndatacom/campus/PortalMananger;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V

    return-void
.end method
