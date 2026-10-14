.class Lcom/cndatacom/sdk/portal/http/CdcHttpClient$PriorityIPv4Dns;
.super Ljava/lang/Object;
.source "CdcHttpClient.java"

# interfaces
.implements Lc4/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cndatacom/sdk/portal/http/CdcHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PriorityIPv4Dns"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cndatacom/sdk/portal/http/CdcHttpClient;


# direct methods
.method private constructor <init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$PriorityIPv4Dns;->this$0:Lcom/cndatacom/sdk/portal/http/CdcHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;Lcom/cndatacom/sdk/portal/http/CdcHttpClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cndatacom/sdk/portal/http/CdcHttpClient$PriorityIPv4Dns;-><init>(Lcom/cndatacom/sdk/portal/http/CdcHttpClient;)V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 5
    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method
