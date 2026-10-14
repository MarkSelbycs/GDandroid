.class public Lcom/msec/ca$2;
.super Lcom/squareup/okhttp/ResponseBody;


# instance fields
.field public final synthetic a:Lcom/squareup/okhttp/MediaType;

.field public final synthetic b:J

.field public final synthetic c:Ljava/io/InputStream;

.field public final synthetic d:Lcom/msec/ca;


# direct methods
.method public constructor <init>(Lcom/msec/ca;Lcom/squareup/okhttp/MediaType;JLjava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/msec/ca$2;->d:Lcom/msec/ca;

    iput-object p2, p0, Lcom/msec/ca$2;->a:Lcom/squareup/okhttp/MediaType;

    iput-wide p3, p0, Lcom/msec/ca$2;->b:J

    iput-object p5, p0, Lcom/msec/ca$2;->c:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    return-void
.end method
