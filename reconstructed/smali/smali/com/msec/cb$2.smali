.class public Lcom/msec/cb$2;
.super Lc4/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/msec/cb;->a(Lc4/s$a;)Lc4/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc4/t;

.field public final synthetic b:J

.field public final synthetic c:Ljava/io/InputStream;

.field public final synthetic d:Lcom/msec/cb;


# direct methods
.method public constructor <init>(Lcom/msec/cb;Lc4/t;JLjava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/cb$2;->d:Lcom/msec/cb;

    iput-object p2, p0, Lcom/msec/cb$2;->a:Lc4/t;

    iput-wide p3, p0, Lcom/msec/cb$2;->b:J

    iput-object p5, p0, Lcom/msec/cb$2;->c:Ljava/io/InputStream;

    invoke-direct {p0}, Lc4/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public h()J
    .locals 8

    iget-wide v0, p0, Lcom/msec/cb$2;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/16 v2, 0x202e

    int-to-long v2, v2

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

    sub-long/2addr v0, v4

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public i()Lc4/t;
    .locals 1

    iget-object v0, p0, Lcom/msec/cb$2;->a:Lc4/t;

    return-object v0
.end method

.method public n()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/msec/cb$2;->c:Ljava/io/InputStream;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method
