.class public final synthetic Lq2/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cndatacom/campus/uni/UniJSCallback;

.field public final synthetic b:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/a;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    iput-object p2, p0, Lq2/a;->b:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lq2/a;->a:Lcom/cndatacom/campus/uni/UniJSCallback;

    iget-object v1, p0, Lq2/a;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v0, v1}, Lcom/cndatacom/campus/uni/UniJSCallback;->a(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
