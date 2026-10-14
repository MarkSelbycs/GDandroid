.class public Lcom/msec/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lc4/s;


# direct methods
.method public static $aa(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/msec/cb$1;

    check-cast p0, Lcom/msec/cb;

    check-cast p1, Lc4/z;

    check-cast p2, Lcom/msec/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/msec/cb$1;-><init>(Lcom/msec/cb;Lc4/z;Lcom/msec/i;)V

    return-object v0
.end method

.method public static $ab(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/msec/cb$2;

    move-object v1, p0

    check-cast v1, Lcom/msec/cb;

    move-object v2, p1

    check-cast v2, Lc4/t;

    move-object v5, p4

    check-cast v5, Ljava/io/InputStream;

    move-object v0, v6

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/msec/cb$2;-><init>(Lcom/msec/cb;Lc4/t;JLjava/io/InputStream;)V

    return-object v6
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc4/s$a;)Lc4/a0;
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

    const/16 p1, 0x7c2

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc4/a0;

    return-object p1
.end method
