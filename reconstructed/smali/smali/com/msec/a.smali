.class public Lcom/msec/a;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static final b:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/msec/a;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/msec/a$2;

    invoke-direct {v2}, Lcom/msec/a$2;-><init>()V

    aput-object v2, v1, v0

    sput-object v1, Lcom/msec/a;->b:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Z)Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    new-instance v0, Lcom/msec/a$1;

    invoke-direct {v0, p0}, Lcom/msec/a$1;-><init>(Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x686

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public static a(Ljavax/net/ssl/HttpsURLConnection;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x685

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method private static varargs a([Ljava/io/InputStream;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x684

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public static synthetic a()[Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/msec/a;->a:[Ljava/lang/String;

    return-object v0
.end method
