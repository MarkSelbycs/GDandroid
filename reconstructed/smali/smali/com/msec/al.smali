.class public final Lcom/msec/al;
.super Ljava/net/ProxySelector;


# static fields
.field public static a:Lcom/msec/al;


# instance fields
.field private final b:Ljava/net/Proxy;

.field private final c:Ljava/net/ProxySelector;


# direct methods
.method private constructor <init>(Ljava/net/ProxySelector;I)V
    .locals 3

    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    iput-object p1, p0, Lcom/msec/al;->c:Ljava/net/ProxySelector;

    new-instance p1, Ljava/net/Proxy;

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x759

    invoke-static {v2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object p1, p0, Lcom/msec/al;->b:Ljava/net/Proxy;

    return-void
.end method

.method public static a()Ljava/net/ProxySelector;
    .locals 1

    sget-object v0, Lcom/msec/al;->a:Lcom/msec/al;

    return-object v0
.end method

.method public static a(I)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x6c7

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b()Ljava/net/Proxy;
    .locals 1

    sget-object v0, Lcom/msec/al;->a:Lcom/msec/al;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/msec/al;->b:Ljava/net/Proxy;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 1

    iget-object v0, p0, Lcom/msec/al;->c:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x6c6

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
