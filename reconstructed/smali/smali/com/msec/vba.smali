.class public final Lcom/msec/vba;
.super Ljava/lang/Object;
.source "com/msec/vba.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/msec/br;->$aa(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p0, Lcom/msec/br$1;

    iget-object p0, p0, Lcom/msec/br$1;->a:Ldc/squareup/okhttp3/RequestBody;

    return-object p0
.end method
