.class public Lcom/cndatacom/campus/uni/UniJSCallback;
.super Ljava/lang/Object;
.source "UniJSCallback.java"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Ljava/lang/String;

.field public c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->c:Landroid/webkit/WebView;

    .line 4
    iput-object p3, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->e(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private synthetic e(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandlePluginCallBack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(%s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->a:Landroid/app/Activity;

    new-instance v1, Lq2/a;

    invoke-direct {v1, p0, p1}, Lq2/a;-><init>(Lcom/cndatacom/campus/uni/UniJSCallback;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->c:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "callbackId"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->b(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public invoke(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public invoke(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/cndatacom/campus/uni/UniJSCallback;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public invokeAndKeepAlive(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "callbackId"

    .line 2
    iget-object v2, p0, Lcom/cndatacom/campus/uni/UniJSCallback;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keepAlive"

    .line 3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, v0}, Lcom/cndatacom/campus/uni/UniJSCallback;->b(Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
