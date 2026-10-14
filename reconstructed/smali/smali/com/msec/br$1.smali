.class public Lcom/msec/br$1;
.super Ldc/squareup/okhttp3/RequestBody;


# instance fields
.field public final synthetic a:Ldc/squareup/okhttp3/RequestBody;

.field public final synthetic b:Lcom/msec/i;

.field public final synthetic c:Lcom/msec/br;


# direct methods
.method public constructor <init>(Lcom/msec/br;Ldc/squareup/okhttp3/RequestBody;Lcom/msec/i;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/br$1;->c:Lcom/msec/br;

    iput-object p2, p0, Lcom/msec/br$1;->a:Ldc/squareup/okhttp3/RequestBody;

    iput-object p3, p0, Lcom/msec/br$1;->b:Lcom/msec/i;

    invoke-direct {p0}, Ldc/squareup/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ldc/squareup/okio/BufferedSink;)V
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

    const/16 p1, 0x63c

    invoke-static {p1, v0}, Lcom/msec/vvv;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
