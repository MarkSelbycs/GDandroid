.class public Lcom/msec/ca$1;
.super Lcom/squareup/okhttp/RequestBody;


# instance fields
.field public final synthetic a:Lcom/squareup/okhttp/RequestBody;

.field public final synthetic b:Lcom/msec/i;

.field public final synthetic c:Lcom/msec/ca;


# direct methods
.method public constructor <init>(Lcom/msec/ca;Lcom/squareup/okhttp/RequestBody;Lcom/msec/i;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/ca$1;->c:Lcom/msec/ca;

    iput-object p2, p0, Lcom/msec/ca$1;->a:Lcom/squareup/okhttp/RequestBody;

    iput-object p3, p0, Lcom/msec/ca$1;->b:Lcom/msec/i;

    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
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

    const/16 p1, 0x6d8

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
