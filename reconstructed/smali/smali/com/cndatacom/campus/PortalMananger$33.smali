.class Lcom/cndatacom/campus/PortalMananger$33;
.super Ljava/lang/Object;
.source "PortalMananger.java"

# interfaces
.implements Lcom/cndatacom/dialog/Dialog$DialogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cndatacom/campus/PortalMananger;->Q2(Lcom/alibaba/fastjson/JSONArray;Lcom/cndatacom/campus/uni/UniJSCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic b:Lcom/cndatacom/campus/PortalMananger;


# direct methods
.method public constructor <init>(Lcom/cndatacom/campus/PortalMananger;Lcom/cndatacom/campus/uni/UniJSCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cndatacom/campus/PortalMananger$33;->b:Lcom/cndatacom/campus/PortalMananger;

    iput-object p2, p0, Lcom/cndatacom/campus/PortalMananger$33;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public btnClick(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "cancel"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "confirm"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/cndatacom/campus/PortalMananger$33;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    invoke-virtual {p1, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->invoke(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
