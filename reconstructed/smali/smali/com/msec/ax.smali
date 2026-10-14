.class public Lcom/msec/ax;
.super Ljava/lang/Object;


# static fields
.field private static e:I = 0x2


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private b:Lcom/msec/i;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/msec/ax;->d:Z

    iput-object p1, p0, Lcom/msec/ax;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/msec/ax;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/msec/i;->c(Ljava/lang/String;)Lcom/msec/i;

    move-result-object p1

    iput-object p1, p0, Lcom/msec/ax;->b:Lcom/msec/i;

    return-void
.end method

.method private a(J)J
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/16 v2, 0x2000

    div-long v4, p1, v2

    rem-long v2, p1, v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v4, v0

    :cond_0
    const-wide/16 v0, 0x2e

    mul-long/2addr v4, v0

    add-long/2addr p1, v4

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x680

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    aput-object p2, v0, p1

    const/16 p1, 0x68f

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x68e

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 p1, 0x68d

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x68c

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/msec/ax;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/msec/ax;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/msec/ax;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0x68b

    invoke-static {v1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/msec/ax;->b:Lcom/msec/i;

    invoke-virtual {v0}, Lcom/msec/i;->f()Z

    move-result v0

    return v0
.end method
