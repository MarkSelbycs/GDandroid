.class public Lcom/cndatacom/sdk/portal/entity/NetInfo;
.super Ljava/lang/Object;
.source "NetInfo.java"


# static fields
.field public static final INVALID_RSSI:I = -0x7f

.field public static final LOW_RSSI:I = -0x4c

.field public static final MAX_RSSI:I = 0xc8

.field public static final MIN_RSSI:I = -0x7e


# instance fields
.field private dns1:Ljava/lang/String;

.field private dns2:Ljava/lang/String;

.field private gateway:Ljava/lang/String;

.field private ipv4:Ljava/lang/String;

.field private ipv4MaskPrefixLength:Ljava/lang/String;

.field private ipv6:Ljava/lang/String;

.field private ipv6MaskPrefixLength:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private netObject:Lorg/json/JSONObject;

.field private networkInterfaceName:Ljava/lang/String;

.field private rssi:I

.field private ssid:Ljava/lang/String;

.field private unknown:Ljava/lang/String;

.field private wifiMac:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x7f

    .line 2
    iput v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->rssi:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->networkInterfaceName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->gateway:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->mac:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->wifiMac:Ljava/lang/String;

    const-string v0, "<unknown ssid>"

    .line 10
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->unknown:Ljava/lang/String;

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x7f

    .line 13
    iput v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->rssi:I

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->networkInterfaceName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->gateway:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->mac:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->wifiMac:Ljava/lang/String;

    const-string v0, "<unknown ssid>"

    .line 21
    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->unknown:Ljava/lang/String;

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string v0, "wifi"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    .line 25
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    .line 26
    :goto_0
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    const-string v4, "\""

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 27
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_0
    :goto_1
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    iget-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p2

    .line 31
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iput v4, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->rssi:I

    .line 32
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->wifiMac:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move p2, v2

    .line 33
    :goto_2
    iget-object v3, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    iget-object v3, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->unknown:Ljava/lang/String;

    iput-object v3, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    .line 35
    :cond_3
    invoke-static {p1}, Lcom/cndatacom/sdk/portal/util/NetUtil;->getNetworkInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 36
    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->mac:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 37
    invoke-direct {p0, p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpByInt(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    aget-object p2, p1, v1

    :goto_3
    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    const/4 p2, 0x2

    .line 38
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    const/4 p2, 0x3

    .line 39
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4MaskPrefixLength:Ljava/lang/String;

    const/4 p2, 0x4

    .line 40
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6MaskPrefixLength:Ljava/lang/String;

    const/4 p2, 0x5

    .line 41
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->networkInterfaceName:Ljava/lang/String;

    const/4 p2, 0x6

    .line 42
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->gateway:Ljava/lang/String;

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 45
    iget p2, p2, Landroid/net/DhcpInfo;->gateway:I

    invoke-direct {p0, p2}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getIpByInt(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->gateway:Ljava/lang/String;

    :cond_5
    const/4 p2, 0x7

    .line 46
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->dns1:Ljava/lang/String;

    const/16 p2, 0x8

    .line 47
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->dns2:Ljava/lang/String;

    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "rssi"

    iget v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->rssi:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "isLowRSSI"

    invoke-virtual {p0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->isLowRSSI()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 50
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "ssid"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "gateway"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->gateway:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "dns1"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->dns1:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "dns2"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->dns2:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "ipv4"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "ipv6"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "ipv4MaskPrefixLength"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4MaskPrefixLength:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "ipv6MaskPrefixLength"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6MaskPrefixLength:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "networkInterfaceName"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->networkInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "mac"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->mac:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object p1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    const-string p2, "wifiMac"

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->wifiMac:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private getIpByInt(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 1
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method private getMaskMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "128.0.0.0"

    return-object p1

    :cond_0
    const-string v0, "2"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "192.0.0.0"

    return-object p1

    :cond_1
    const-string v0, "3"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "224.0.0.0"

    return-object p1

    :cond_2
    const-string v0, "4"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "240.0.0.0"

    return-object p1

    :cond_3
    const-string v0, "5"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "248.0.0.0"

    return-object p1

    :cond_4
    const-string v0, "6"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "252.0.0.0"

    return-object p1

    :cond_5
    const-string v0, "7"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "254.0.0.0"

    return-object p1

    :cond_6
    const-string v0, "8"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "255.0.0.0"

    return-object p1

    :cond_7
    const-string v0, "9"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "255.128.0.0"

    return-object p1

    :cond_8
    const-string v0, "10"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "255.192.0.0"

    return-object p1

    :cond_9
    const-string v0, "11"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "255.224.0.0"

    return-object p1

    :cond_a
    const-string v0, "12"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "255.240.0.0"

    return-object p1

    :cond_b
    const-string v0, "13"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "255.248.0.0"

    return-object p1

    :cond_c
    const-string v0, "14"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "255.252.0.0"

    return-object p1

    :cond_d
    const-string v0, "15"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "255.254.0.0"

    return-object p1

    :cond_e
    const-string v0, "16"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "255.255.0.0"

    return-object p1

    :cond_f
    const-string v0, "17"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p1, "255.255.128.0"

    return-object p1

    :cond_10
    const-string v0, "18"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p1, "255.255.192.0"

    return-object p1

    :cond_11
    const-string v0, "19"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p1, "255.255.224.0"

    return-object p1

    :cond_12
    const-string v0, "20"

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p1, "255.255.240.0"

    return-object p1

    :cond_13
    const-string v0, "21"

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "255.255.248.0"

    return-object p1

    :cond_14
    const-string v0, "22"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p1, "255.255.252.0"

    return-object p1

    :cond_15
    const-string v0, "23"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p1, "255.255.254.0"

    return-object p1

    :cond_16
    const-string v0, "24"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p1, "255.255.255.0"

    return-object p1

    :cond_17
    const-string v0, "25"

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p1, "255.255.255.128"

    return-object p1

    :cond_18
    const-string v0, "26"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "255.255.255.192"

    return-object p1

    :cond_19
    const-string v0, "27"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p1, "255.255.255.224"

    return-object p1

    :cond_1a
    const-string v0, "28"

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p1, "255.255.255.240"

    return-object p1

    :cond_1b
    const-string v0, "29"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p1, "255.255.255.248"

    return-object p1

    :cond_1c
    const-string v0, "30"

    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string p1, "255.255.255.252"

    return-object p1

    :cond_1d
    const-string v0, "31"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p1, "255.255.255.254"

    return-object p1

    :cond_1e
    const-string v0, "32"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "255.255.255.255"

    return-object p1

    :cond_1f
    const-string p1, "-1"

    return-object p1
.end method

.method public static obtain()Lcom/cndatacom/sdk/portal/entity/NetInfo;
    .locals 1

    new-instance v0, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-direct {v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>()V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/cndatacom/sdk/portal/entity/NetInfo;
    .locals 4

    const-string v0, ""

    .line 1
    new-instance v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;

    invoke-direct {v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;-><init>()V

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "ssid"

    .line 3
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    const-string p0, "rssi"

    const/16 v3, -0x7f

    .line 4
    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->rssi:I

    const-string p0, "mac"

    .line 5
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->mac:Ljava/lang/String;

    const-string p0, "dns1"

    .line 6
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->dns1:Ljava/lang/String;

    const-string p0, "dns2"

    .line 7
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->dns2:Ljava/lang/String;

    const-string p0, "gateway"

    .line 8
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->gateway:Ljava/lang/String;

    const-string p0, "ipv4"

    .line 9
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    const-string p0, "ipv6"

    .line 10
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    const-string p0, "ipv4MaskPrefixLength"

    .line 11
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4MaskPrefixLength:Ljava/lang/String;

    const-string p0, "ipv6MaskPrefixLength"

    .line 12
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6MaskPrefixLength:Ljava/lang/String;

    const-string p0, "networkInterfaceName"

    .line 13
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->networkInterfaceName:Ljava/lang/String;

    const-string p0, "wifiMac"

    .line 14
    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->wifiMac:Ljava/lang/String;

    .line 15
    iput-object v2, v1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private toInt(Ljava/lang/String;I)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method


# virtual methods
.method public equals(Lcom/cndatacom/sdk/portal/entity/NetInfo;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    iget-object v2, p1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    iget-object p1, p1, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public getDns1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->dns1:Ljava/lang/String;

    return-object v0
.end method

.method public getDns2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->dns2:Ljava/lang/String;

    return-object v0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->gateway:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4MaskPrefixLength()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4MaskPrefixLength:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6MaskPrefixLength()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv6MaskPrefixLength:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4MaskPrefixLength:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->getMaskMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaskPrefixLength()I
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ipv4MaskPrefixLength:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cndatacom/sdk/portal/entity/NetInfo;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNetworkInterfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->networkInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->rssi:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->wifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public isLowRSSI()Z
    .locals 2

    iget v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->rssi:I

    const/16 v1, -0x4c

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnknown()Z
    .locals 2

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->ssid:Ljava/lang/String;

    iget-object v1, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->unknown:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cndatacom/sdk/portal/entity/NetInfo;->netObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
