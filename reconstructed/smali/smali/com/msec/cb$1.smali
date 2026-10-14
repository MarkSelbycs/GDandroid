.class public Lcom/msec/cb$1;
.super Lc4/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/cb;->a(Lc4/s$a;)Lc4/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc4/z;

.field public final synthetic b:Lcom/msec/i;

.field public final synthetic c:Lcom/msec/cb;


# direct methods
.method public constructor <init>(Lcom/msec/cb;Lc4/z;Lcom/msec/i;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/cb$1;->c:Lcom/msec/cb;

    iput-object p2, p0, Lcom/msec/cb$1;->a:Lc4/z;

    iput-object p3, p0, Lcom/msec/cb$1;->b:Lcom/msec/i;

    invoke-direct {p0}, Lc4/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/msec/cb$1;->a:Lc4/z;

    invoke-virtual {v0}, Lc4/z;->a()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x2000

    div-long v4, v0, v2

    rem-long v2, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    :cond_0
    const-wide/16 v2, 0x2e

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public b()Lc4/t;
    .locals 1

    iget-object v0, p0, Lcom/msec/cb$1;->a:Lc4/z;

    invoke-virtual {v0}, Lc4/z;->b()Lc4/t;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
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

    const/16 p1, 0x6b5

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
