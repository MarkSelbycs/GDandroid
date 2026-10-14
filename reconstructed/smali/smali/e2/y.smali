.class public Le2/y;
.super Ljava/lang/Object;
.source "SerializeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/io/Serializable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Le2/y;->c(Ljava/lang/Object;)[B

    move-result-object p0

    invoke-static {p0}, Le2/y;->b([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lt1/d;->n(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[B"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/io/Serializable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lt1/a;

    invoke-direct {v0}, Lt1/a;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Serializable;

    .line 3
    check-cast p0, Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v2, v1}, Lt1/d;->r(Ljava/io/OutputStream;Z[Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0}, Lt1/a;->c()[B

    move-result-object p0

    return-object p0
.end method
