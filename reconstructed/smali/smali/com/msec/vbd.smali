.class public final Lcom/msec/vbd;
.super Ljava/lang/Object;
.source "com/msec/vbd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    return-object p0
.end method

.method public static b()Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;

    invoke-interface {p0}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    return-object p0
.end method
