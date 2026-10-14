.class public Lcom/msec/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/okhttp/Interceptor;


# direct methods
.method public static $aa(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/msec/ca$1;

    check-cast p0, Lcom/msec/ca;

    check-cast p1, Lcom/squareup/okhttp/RequestBody;

    check-cast p2, Lcom/msec/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/msec/ca$1;-><init>(Lcom/msec/ca;Lcom/squareup/okhttp/RequestBody;Lcom/msec/i;)V

    return-object v0
.end method

.method public static $ab(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    new-instance v6, Lcom/msec/ca$2;

    move-object v1, p0

    check-cast v1, Lcom/msec/ca;

    move-object v2, p1

    check-cast v2, Lcom/squareup/okhttp/MediaType;

    move-object v5, p4

    check-cast v5, Ljava/io/InputStream;

    move-object v0, v6

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/msec/ca$2;-><init>(Lcom/msec/ca;Lcom/squareup/okhttp/MediaType;JLjava/io/InputStream;)V

    return-object v6
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
