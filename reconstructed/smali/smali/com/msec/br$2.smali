.class public Lcom/msec/br$2;
.super Ldc/squareup/okhttp3/ResponseBody;


# instance fields
.field public final synthetic a:Ldc/squareup/okhttp3/MediaType;

.field public final synthetic b:J

.field public final synthetic c:Ljava/io/InputStream;

.field public final synthetic d:Lcom/msec/br;


# direct methods
.method public constructor <init>(Lcom/msec/br;Ldc/squareup/okhttp3/MediaType;JLjava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/br$2;->d:Lcom/msec/br;

    iput-object p2, p0, Lcom/msec/br$2;->a:Ldc/squareup/okhttp3/MediaType;

    iput-wide p3, p0, Lcom/msec/br$2;->b:J

    iput-object p5, p0, Lcom/msec/br$2;->c:Ljava/io/InputStream;

    invoke-direct {p0}, Ldc/squareup/okhttp3/ResponseBody;-><init>()V

    return-void
.end method
