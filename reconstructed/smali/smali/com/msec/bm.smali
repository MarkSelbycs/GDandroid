.class public Lcom/msec/bm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/msec/bm$a;,
        Lcom/msec/bm$b;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Ljava/lang/reflect/Method;


# direct methods
.method public static $aa(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-static {p0}, Lcom/msec/bm;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    const/16 v0, 0x6fc

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 0

    invoke-static {p0}, Lcom/msec/bm;->b(Lcom/koushikdutta/async/AsyncServer;)V

    return-void
.end method

.method private static a(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x6fb

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static b(Lcom/koushikdutta/async/AsyncServer;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x6fa

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
