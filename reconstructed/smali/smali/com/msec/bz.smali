.class public Lcom/msec/bz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/bz$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;


# direct methods
.method public static $aa(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    sput-object p0, Lcom/msec/bz;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 0

    invoke-static {p0}, Lcom/msec/bz;->b(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a()Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;
    .locals 3

    sget-object v0, Lcom/msec/bz;->a:Lcom/alipay/mobile/common/transport/http/inner/CoreHttpManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x64b

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x64a

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-object p0
.end method
