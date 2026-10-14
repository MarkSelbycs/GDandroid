.class public final Lcom/cndatacom/sdk/portal/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final BUILD_TYPE:Ljava/lang/String; = "release"

.field public static final DEBUG:Z = false

.field public static final DEF_DETECT:[Ljava/lang/String;

.field public static final DETECT_SWITCH:Z = true

.field public static final DETECT_URL:Ljava/lang/String; = "http://www.189.cn"

.field public static final DETECT_URLS:[Ljava/lang/String;

.field public static final FORWARD_URL:Ljava/lang/String; = "http://192.168.99.202/forward.cgi"

.field public static final IS_DETECT_TEST:Z = false

.field public static final LIBRARY_PACKAGE_NAME:Ljava/lang/String; = "com.cndatacom.sdk.portal"

.field public static final PORTAL_END_TAG:Ljava/lang/String; = "//config.campus.js.chinatelecom.com-->"

.field public static final PORTAL_START_TAG:Ljava/lang/String; = "<!--//config.campus.js.chinatelecom.com"

.field public static final RECHARGE_ACCOUNT:Ljava/lang/String; = "test1"

.field public static final SCHOOL_ID:Ljava/lang/String; = "1092"

.field public static final THREAD_NUM:I = 0x32

.field public static final USERAGENT:Ljava/lang/String; = "android11_%"

.field public static final USERAGENT_KEY:Ljava/lang/String; = "GD"

.field public static final VERSION:Z = true

.field public static final VERTIFY_ACCOUNT:Ljava/lang/String; = "test"

.field public static final VERTIFY_CODE:Ljava/lang/String; = "123456"

.field public static final VPN_USERAGENT:Ljava/lang/String; = "android%_vpn"


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "http://14.146.227.141:7001/"

    const-string v1, "http://121.8.177.212:7001/"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cndatacom/sdk/portal/BuildConfig;->DEF_DETECT:[Ljava/lang/String;

    const-string v0, "http://14.146.227.141:7001/detect.html"

    const-string v1, ""

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cndatacom/sdk/portal/BuildConfig;->DETECT_URLS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
