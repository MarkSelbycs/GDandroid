.class public Lcom/cndatacom/sdk/portal/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    }
.end annotation


# static fields
.field private static mHttpClientProxy:Lcom/cndatacom/sdk/portal/proxy/HttpClientProxy;


# instance fields
.field private final CONN_TIMEOUT:I

.field private final READ_TIMEOUT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/HttpClient;->CONN_TIMEOUT:I

    .line 3
    iput v0, p0, Lcom/cndatacom/sdk/portal/http/HttpClient;->READ_TIMEOUT:I

    return-void
.end method

.method private static buildUrlByParams(Ljava/lang/String;Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lc4/r;->t(Ljava/lang/String;)Lc4/r;

    move-result-object p0

    invoke-virtual {p0}, Lc4/r;->r()Lc4/r$b;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lc4/r$b;->a(Ljava/lang/String;Ljava/lang/String;)Lc4/r$b;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lc4/r$b;->b()Lc4/r;

    move-result-object p0

    invoke-virtual {p0}, Lc4/r;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doQuery(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/cndatacom/sdk/portal/http/HttpClient$Result;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 1
    sget-object v1, Lcom/cndatacom/sdk/portal/http/HttpClient;->mHttpClientProxy:Lcom/cndatacom/sdk/portal/proxy/HttpClientProxy;

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    invoke-direct {v1, p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;-><init>(Lcom/cndatacom/sdk/portal/http/HttpClient;)V

    .line 3
    sget-object v2, Lcom/cndatacom/sdk/portal/http/HttpClient;->mHttpClientProxy:Lcom/cndatacom/sdk/portal/proxy/HttpClientProxy;

    invoke-interface {v2, v1, p1, p2, p3}, Lcom/cndatacom/sdk/portal/proxy/HttpClientProxy;->doQuery(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    invoke-direct {v1, p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;-><init>(Lcom/cndatacom/sdk/portal/http/HttpClient;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 5
    :goto_0
    :try_start_0
    new-instance v6, Lc4/v$b;

    invoke-direct {v6}, Lc4/v$b;-><init>()V

    .line 6
    invoke-virtual {v6, v4}, Lc4/v$b;->j(Z)Lc4/v$b;

    .line 7
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9, v7}, Lc4/v$b;->d(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    .line 8
    invoke-virtual {v6, v8, v9, v7}, Lc4/v$b;->i(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    .line 9
    invoke-virtual {v6, v8, v9, v7}, Lc4/v$b;->l(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    .line 10
    new-instance v7, Lc4/y$b;

    invoke-direct {v7}, Lc4/y$b;-><init>()V

    .line 11
    invoke-virtual {v7, p1}, Lc4/y$b;->o(Ljava/lang/String;)Lc4/y$b;

    move-result-object v7

    const-string v8, "Connection"

    const-string v9, "close"

    .line 12
    invoke-virtual {v7, v8, v9}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    const-string v8, "Charset"

    const-string v9, "UTF-8"

    .line 13
    invoke-virtual {v7, v8, v9}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    const-string v8, "accept"

    const-string v9, "*/*"

    .line 14
    invoke-virtual {v7, v8, v9}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    if-eqz p2, :cond_2

    .line 15
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 16
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 17
    invoke-virtual {p2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    goto :goto_1

    :cond_2
    if-nez v5, :cond_4

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 19
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object p2

    goto :goto_2

    :cond_3
    const-string p2, "application/json"

    .line 20
    invoke-static {p2}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object p2

    .line 21
    :goto_2
    invoke-static {p2, p3}, Lc4/z;->d(Lc4/t;[B)Lc4/z;

    move-result-object p2

    .line 22
    invoke-virtual {v7, p2}, Lc4/y$b;->l(Lc4/z;)Lc4/y$b;

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {v7}, Lc4/y$b;->h()Lc4/y$b;

    :goto_3
    new-array p2, v3, [Ljava/lang/String;

    .line 24
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HttpClient doQuery->"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 25
    invoke-virtual {v7}, Lc4/y$b;->g()Lc4/y;

    move-result-object p1

    .line 26
    invoke-static {}, Lz2/a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc4/s;

    invoke-virtual {v6, p2}, Lc4/v$b;->a(Lc4/s;)Lc4/v$b;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lc4/v$b;->b()Lc4/v;

    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Lc4/v;->y(Lc4/y;)Lc4/e;

    move-result-object p1

    invoke-interface {p1}, Lc4/e;->a()Lc4/a0;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Lc4/a0;->y()I

    move-result p1

    invoke-static {v1, p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->access$002(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;I)I

    new-array p1, v3, [Ljava/lang/String;

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HttpClient doQuery httpCode->"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->access$000(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2}, Lc4/a0;->u()Lc4/b0;

    move-result-object p1

    invoke-virtual {p1}, Lc4/b0;->e()[B

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->access$102(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;[B)[B

    .line 32
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_5

    new-array p1, v3, [Ljava/lang/String;

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HttpClient httpcode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->access$000(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " error msg = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    .line 36
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 37
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p2, v3, [Ljava/lang/String;

    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HttpClient Exception->"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    .line 39
    :cond_5
    :goto_4
    invoke-virtual {v2}, Lc4/a0;->close()V

    :cond_6
    return-object v1

    :goto_5
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lc4/a0;->close()V

    .line 40
    :cond_7
    throw p1
.end method

.method public static setHttpClientProxy(Lcom/cndatacom/sdk/portal/proxy/HttpClientProxy;)V
    .locals 0

    sput-object p0, Lcom/cndatacom/sdk/portal/http/HttpClient;->mHttpClientProxy:Lcom/cndatacom/sdk/portal/proxy/HttpClientProxy;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cndatacom/sdk/portal/http/HttpClient$Result;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/cndatacom/sdk/portal/http/HttpClient;->get(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cndatacom/sdk/portal/http/HttpClient$Result;"
        }
    .end annotation

    .line 3
    invoke-static {p1, p3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->buildUrlByParams(Ljava/lang/String;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->doQuery(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/cndatacom/sdk/portal/http/HttpClient$Result;"
        }
    .end annotation

    .line 4
    invoke-static {p1, p3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->buildUrlByParams(Ljava/lang/String;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object p1

    if-nez p4, :cond_0

    const/4 p3, 0x0

    new-array p4, p3, [B

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/cndatacom/sdk/portal/http/HttpClient;->doQuery(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/cndatacom/sdk/portal/http/HttpClient$Result;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/cndatacom/sdk/portal/http/HttpClient;->post(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[B)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public uploadFile(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Ljava/io/File;)Lcom/cndatacom/sdk/portal/http/HttpClient$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Lcom/cndatacom/sdk/portal/http/HttpClient$Result;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 1
    new-instance v1, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;

    invoke-direct {v1, p0}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;-><init>(Lcom/cndatacom/sdk/portal/http/HttpClient;)V

    .line 2
    :try_start_0
    invoke-static {p1, p3}, Lcom/cndatacom/sdk/portal/http/HttpClient;->buildUrlByParams(Ljava/lang/String;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array v2, p3, [Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpClient doQuery->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "application/zip"

    .line 6
    invoke-static {v0}, Lc4/t;->b(Ljava/lang/String;)Lc4/t;

    move-result-object v0

    .line 7
    :goto_0
    invoke-static {v0, p4}, Lc4/z;->c(Lc4/t;Ljava/io/File;)Lc4/z;

    move-result-object v0

    .line 8
    new-instance v2, Lc4/u$a;

    invoke-direct {v2}, Lc4/u$a;-><init>()V

    sget-object v3, Lc4/u;->j:Lc4/t;

    .line 9
    invoke-virtual {v2, v3}, Lc4/u$a;->d(Lc4/t;)Lc4/u$a;

    move-result-object v2

    const-string v3, "file"

    .line 10
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, v3, p4, v0}, Lc4/u$a;->a(Ljava/lang/String;Ljava/lang/String;Lc4/z;)Lc4/u$a;

    move-result-object p4

    .line 11
    invoke-virtual {p4}, Lc4/u$a;->c()Lc4/u;

    move-result-object p4

    .line 12
    new-instance v0, Lc4/y$b;

    invoke-direct {v0}, Lc4/y$b;-><init>()V

    .line 13
    invoke-virtual {v0, p1}, Lc4/y$b;->o(Ljava/lang/String;)Lc4/y$b;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 15
    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lc4/y$b;->f(Ljava/lang/String;Ljava/lang/String;)Lc4/y$b;

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1, p4}, Lc4/y$b;->l(Lc4/z;)Lc4/y$b;

    move-result-object p1

    invoke-virtual {p1}, Lc4/y$b;->g()Lc4/y;

    move-result-object p1

    .line 18
    new-instance p2, Lc4/v$b;

    invoke-direct {p2}, Lc4/v$b;-><init>()V

    .line 19
    invoke-static {}, Lz2/a;->a()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lc4/s;

    invoke-virtual {p2, p4}, Lc4/v$b;->a(Lc4/s;)Lc4/v$b;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lc4/v$b;->b()Lc4/v;

    move-result-object p2

    .line 21
    invoke-virtual {p2, p1}, Lc4/v;->y(Lc4/y;)Lc4/e;

    move-result-object p1

    invoke-interface {p1}, Lc4/e;->a()Lc4/a0;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lc4/a0;->y()I

    move-result p2

    invoke-static {v1, p2}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->access$002(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;I)I

    new-array p2, p3, [Ljava/lang/String;

    .line 23
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HttpClient uploadFile httpCode->"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc4/a0;->y()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, v4

    invoke-static {p2}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lc4/a0;->u()Lc4/b0;

    move-result-object p1

    invoke-virtual {p1}, Lc4/b0;->e()[B

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->access$102(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;[B)[B

    .line 25
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, p3, [Ljava/lang/String;

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HttpClient uploadFile httpcode = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {v1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->access$000(Lcom/cndatacom/sdk/portal/http/HttpClient$Result;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " error msg = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Lcom/cndatacom/sdk/portal/http/HttpClient$Result;->getDataString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    .line 29
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/ExLogUtil;->i([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v1
.end method
