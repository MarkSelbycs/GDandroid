.class public Lcom/msec/cd$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/msec/cd$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/msec/cd$a;-><init>()V

    return-void
.end method

.method public static a(Lc4/v$b;)Lc4/v$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 p0, 0x67c

    invoke-static {p0, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc4/v$b;

    return-object p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/16 p1, 0x444

    invoke-static {p1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lc4/v$b;

    invoke-direct {p1}, Lc4/v$b;-><init>()V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lc4/v$b;->d(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lc4/v$b;->i(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p2}, Lc4/v$b;->l(JLjava/util/concurrent/TimeUnit;)Lc4/v$b;

    move-result-object p1

    new-instance p2, Lcom/facebook/react/modules/network/ReactCookieJarContainer;

    invoke-direct {p2}, Lcom/facebook/react/modules/network/ReactCookieJarContainer;-><init>()V

    invoke-virtual {p1, p2}, Lc4/v$b;->f(Lc4/m;)Lc4/v$b;

    move-result-object p1

    new-instance p2, Lcom/msec/cb;

    invoke-direct {p2}, Lcom/msec/cb;-><init>()V

    invoke-virtual {p1, p2}, Lc4/v$b;->a(Lc4/s;)Lc4/v$b;

    move-result-object p1

    const/16 p2, 0x3be

    :try_start_0
    invoke-static {p2}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/Provider;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p1}, Lcom/msec/cd$a;->a(Lc4/v$b;)Lc4/v$b;

    :goto_0
    invoke-virtual {p1}, Lc4/v$b;->b()Lc4/v;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x786

    invoke-static {p1}, Lcom/msec/vvv;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
