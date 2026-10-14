.class public Lcom/alibaba/fastjson/support/jaxrs/FastJsonAutoDiscoverable;
.super Ljava/lang/Object;
.source "FastJsonAutoDiscoverable.java"

# interfaces
.implements Lorg/glassfish/jersey/internal/spi/AutoDiscoverable;


# annotations
.annotation runtime Ljavax/annotation/Priority;
    value = 0x7cf
.end annotation


# static fields
.field public static final FASTJSON_AUTO_DISCOVERABLE:Ljava/lang/String; = "fastjson.auto.discoverable"

.field public static volatile autoDiscover:Z = true


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "fastjson.auto.discoverable"

    .line 1
    sget-boolean v1, Lcom/alibaba/fastjson/support/jaxrs/FastJsonAutoDiscoverable;->autoDiscover:Z

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonAutoDiscoverable;->autoDiscover:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Ljavax/ws/rs/core/FeatureContext;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ljavax/ws/rs/core/FeatureContext;->getConfiguration()Ljavax/ws/rs/core/Configuration;

    move-result-object v0

    .line 2
    const-class v1, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;

    invoke-interface {v0, v1}, Ljavax/ws/rs/core/Configuration;->isRegistered(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonAutoDiscoverable;->autoDiscover:Z

    if-eqz v0, :cond_0

    .line 3
    const-class v0, Lcom/alibaba/fastjson/support/jaxrs/FastJsonFeature;

    invoke-interface {p1, v0}, Ljavax/ws/rs/core/FeatureContext;->register(Ljava/lang/Class;)Ljavax/ws/rs/core/Configurable;

    :cond_0
    return-void
.end method
