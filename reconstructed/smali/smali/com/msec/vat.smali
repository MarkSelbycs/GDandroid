.class public final Lcom/msec/vat;
.super Ljava/lang/Object;
.source "com/msec/vat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 3

    const-class v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;

    return-object v0
.end method

.method public static b()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/facebook/react/modules/network/TLSSocketFactory;

    invoke-direct {v0}, Lcom/facebook/react/modules/network/TLSSocketFactory;-><init>()V

    return-object v0
.end method

.method public static c()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/facebook/react/modules/network/ReactCookieJarContainer;

    invoke-direct {v0}, Lcom/facebook/react/modules/network/ReactCookieJarContainer;-><init>()V

    return-object v0
.end method
