.class public final Lcom/msec/vaw;
.super Ljava/lang/Object;
.source "com/msec/vaw.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    sput-object p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;->DEFAULT_HTTP_MANAGER:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    return-void
.end method

.method public static d()Ljava/lang/Object;
    .locals 3

    const-class v0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-object v0
.end method
